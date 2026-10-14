# =============================================================================
# Extract blocks
# =============================================================================
ORGS_NAME := openecos-projects
REPO_NAME := icsprout55-pdk

# Name of the installed PDK directory; also the value of $PDK for the open
# tools (librelane --pdk ics55, PDK_ROOT=<this repo>).
PDK_NAME ?= ics55
OPENPDKS_INSTALL_DIR ?= $(abspath .)/$(PDK_NAME)

# =============================================================================
# Private standard cells (ICsprout_55LLULP1225_STD_0818, "ICsprout55 SC9T")
# =============================================================================
# Not part of the release, so they are only installed when the vendor directory
# is found next to this repository. Override with PRIVATE_STD_ROOT=<dir>.
PRIVATE_STD_ROOT ?= $(firstword $(wildcard $(abspath ..)/pdk/ICsprout_55LLULP1225_STD_0818 \
                                           $(abspath ..)/ICsprout_55LLULP1225_STD_0818))

# Liberty corners to install. The vendor lib/ directory is ~15 GB per library
# (CCS .lib plus .db for all 16 corners), so only the NLDM files of the corners
# in librelane/config.tcl (STA_CORNERS) are copied.
# PRIVATE_STD_LIBERTY=all installs every NLDM corner instead (~1.8 GB per library).
PRIVATE_STD_LIBERTY ?= used
PRIVATE_STD_CORNERS := tt_v1p2_25c ss_v1p08_125c ff_v1p32_-40c
# <vendor directory>:<installed library name> (= the view file basename)
PRIVATE_STD_ENTRIES := ICsprout55_SC9T_BASIC_SVT:ICsprout55_9TSVT_basic \
                       ICsprout55_SC9T_BASIC_HVT:ICsprout55_9THVT_basic \
                       ICsprout55_SC9T_BASIC_LVT:ICsprout55_9TLVT_basic

PROXY_URL ?= https://gh-proxy.org/
PROXY_USE ?= false

RELEASE_TAG ?= latest
RELEASE_FILE_LIB := ics55_LLSC_H7CH_liberty.tar.bz2 \
                    ics55_LLSC_H7CL_liberty.tar.bz2 \
                    ics55_LLSC_H7CR_liberty.tar.bz2

RELEASE_FILE_GDS_STD := ics55_LLSC_H7CH_gds.tar.bz2 \
                        ics55_LLSC_H7CL_gds.tar.bz2 \
                        ics55_LLSC_H7CR_gds.tar.bz2
RELEASE_FILE_GDS_IO := ICsprout_55LLULP1233_IO_251013_gds.tar.bz2
RELEASE_FILE_GDS    := $(RELEASE_FILE_GDS_STD) $(RELEASE_FILE_GDS_IO)
RELEASE_FILE        := $(RELEASE_FILE_LIB) $(RELEASE_FILE_GDS)

DECOMP_DIR_LIB_P := IP/STD_cell/ics55_LLSC_H7C_V1p10C100
DECOMP_DIR_LIB   := $(patsubst %_liberty.tar.bz2, $(DECOMP_DIR_LIB_P)/%/liberty, $(RELEASE_FILE_LIB))

DECOMP_DIR_GDS_STD_P := IP/STD_cell/ics55_LLSC_H7C_V1p10C100
DECOMP_DIR_GDS_IO_P  := IP/IO
DECOMP_DIR_GDS       := $(patsubst %_gds.tar.bz2, $(DECOMP_DIR_GDS_STD_P)/%/gds, $(RELEASE_FILE_GDS_STD)) \
                        $(patsubst %_gds.tar.bz2, $(DECOMP_DIR_GDS_IO_P)/%/gds, $(RELEASE_FILE_GDS_IO))

DECOMP_DIR := $(DECOMP_DIR_LIB) $(DECOMP_DIR_GDS)

.PHONY: start download unzip clean-bz2 clean-dir openpdk clean-openpdk private-std

$(RELEASE_FILE):
	@echo "\n[download] getting release info for $(RELEASE_TAG)"
	@if [ "$(RELEASE_TAG)" = "latest" ]; then \
		API_PATH="releases/latest"; \
	else \
		API_PATH="releases/tags/$(RELEASE_TAG)"; \
	fi; \
	RELEASE_URL=$$(curl -s "https://api.github.com/repos/$(ORGS_NAME)/$(REPO_NAME)/$$API_PATH" | \
		grep -E "browser_download_url.*$(@)" | \
		cut -d '"' -f 4); \
	if [ -z "$$RELEASE_URL" ]; then \
		echo "[download] file not found $(@)"; \
		echo "[download] please check whether the Release contains the following files: "; \
		echo "$(RELEASE_FILE)"; \
		exit 1; \
	fi; \
	echo "[download] getting $(@)..."; \
	if [ "$(PROXY_USE)" = "true" ]; then \
		RELEASE_URL="$(PROXY_URL)$$RELEASE_URL"; \
	fi; \
	if [ "$(TOOL)" = "wget" ]; then \
		wget -O "$(@).part" "$$RELEASE_URL"; \
	else \
		curl -fL -o "$(@).part" "$$RELEASE_URL"; \
	fi || { rm -f "$(@).part"; exit 1; }; \
	mv "$(@).part" "$(@)"; \
	echo "[download] done!"

$(DECOMP_DIR_LIB_P)/%/liberty: %_liberty.tar.bz2
	@echo "\n[unzip] decompressing: $< -> $(DECOMP_DIR_LIB_P)/$*/"
	@mkdir -p $@
	@tar -xjvf $< -C $(DECOMP_DIR_LIB_P)/$*/
	@touch $@

$(DECOMP_DIR_GDS_STD_P)/%/gds: %_gds.tar.bz2
	@echo "\n[unzip] decompressing: $< -> $(DECOMP_DIR_GDS_STD_P)/$*/"
	@mkdir -p $@
	@tar -xjvf $< -C $(DECOMP_DIR_GDS_STD_P)/$*/
	@touch $@

$(DECOMP_DIR_GDS_IO_P)/%/gds: %_gds.tar.bz2
	@echo "\n[unzip] decompressing: $< -> $(DECOMP_DIR_GDS_IO_P)/$*/"
	@mkdir -p $@
	@tar -xjvf $< -C $(DECOMP_DIR_GDS_IO_P)/$*/
	@touch $@

unzip: start clean-dir $(DECOMP_DIR) clean-bz2
	@echo "\n[unzip] done!"

start:
	@echo "[unzip] start..."

download: $(RELEASE_FILE)

clean-bz2:
	@echo "\n[clean] delete compressed files"
	@find ./ -name "*.tar.bz2" -exec rm -fv {} \; || true

clean-dir:
	@echo "\n[clean] delete decompressed dirs"
	@find IP/STD_cell -depth -type d -name "liberty" -exec rm -rfv {} \; || true
	@find IP -depth -type d -name "gds" -exec rm -rfv {} \; || true

# Keep a list of the expected files that are expected from the download step
LIBS_ICS55_LLSC_H7CH := $(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CH/liberty/ics55_LLSC_H7CH_ff_cbest_1p32_125_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CH/liberty/ics55_LLSC_H7CH_ff_rcbest_1p08_125_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CH/liberty/ics55_LLSC_H7CH_ff_rcbest_1p32_m40_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CH/liberty/ics55_LLSC_H7CH_ss_cworst_1p08_m40_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CH/liberty/ics55_LLSC_H7CH_ss_rcworst_1p2_m40_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CH/liberty/ics55_LLSC_H7CH_ss_rcworst_1p08_125_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CH/liberty/ics55_LLSC_H7CH_typ_tt_1p2_25_nldm.lib

LIBS_ICS55_LLSC_H7CL := $(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CL/liberty/ics55_LLSC_H7CL_ff_cbest_1p32_125_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CL/liberty/ics55_LLSC_H7CL_ff_rcbest_1p08_125_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CL/liberty/ics55_LLSC_H7CL_ff_rcbest_1p32_m40_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CL/liberty/ics55_LLSC_H7CL_ss_cworst_1p08_m40_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CL/liberty/ics55_LLSC_H7CL_ss_rcworst_1p2_m40_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CL/liberty/ics55_LLSC_H7CL_ss_rcworst_1p08_125_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CL/liberty/ics55_LLSC_H7CL_typ_tt_1p2_25_nldm.lib

LIBS_ICS55_LLSC_H7CR := $(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CR/liberty/ics55_LLSC_H7CR_ff_cbest_1p32_125_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CR/liberty/ics55_LLSC_H7CR_ff_rcbest_1p08_125_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CR/liberty/ics55_LLSC_H7CR_ff_rcbest_1p32_m40_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CR/liberty/ics55_LLSC_H7CR_ss_cworst_1p08_m40_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CR/liberty/ics55_LLSC_H7CR_ss_rcworst_1p2_m40_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CR/liberty/ics55_LLSC_H7CR_ss_rcworst_1p08_125_nldm.lib \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CR/liberty/ics55_LLSC_H7CR_typ_tt_1p2_25_nldm.lib

GDSS_ICS55_LLSC_H7CH := $(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CH/gds/ics55_LLSC_H7CH.gds \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CH/gds/ics55_LLSC_H7CH_M2.gds

GDSS_ICS55_LLSC_H7CL := $(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CL/gds/ics55_LLSC_H7CL_M2.gds \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CL/gds/ics55_LLSC_H7CL.gds

GDSS_ICS55_LLSC_H7CR := $(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CR/gds/ics55_LLSC_H7CR.gds \
$(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CR/gds/ics55_LLSC_H7CR_M2.gds

GDSS_IO := $(DECOMP_DIR_GDS_IO_P)/ICsprout_55LLULP1233_IO_251013/gds/ICSIOA_N55_3P3_1P6M1TM.gds

LIBS_ALL = $(LIBS_ICS55_LLSC_H7CH) $(LIBS_ICS55_LLSC_H7CL) $(LIBS_ICS55_LLSC_H7CR)
GDS_ALL = $(GDSS_ICS55_LLSC_H7CH) $(GDSS_ICS55_LLSC_H7CL) $(GDSS_ICS55_LLSC_H7CR) $(GDSS_IO)

# The rule for auto-getting everything
$(LIBS_ALL) $(GDS_ALL):
	make unzip

# The actual installation rule for openpdk format
$(OPENPDKS_INSTALL_DIR)/checkpoint: $(LIBS_ALL) $(GDS_ALL)
	mkdir -p $(OPENPDKS_INSTALL_DIR)/libs.tech
	mkdir -p $(OPENPDKS_INSTALL_DIR)/libs.ref
	cp -r $(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CH $(OPENPDKS_INSTALL_DIR)/libs.ref/
	cp -r $(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CL $(OPENPDKS_INSTALL_DIR)/libs.ref/
	cp -r $(DECOMP_DIR_LIB_P)/ics55_LLSC_H7CR $(OPENPDKS_INSTALL_DIR)/libs.ref/
	cp -r $(DECOMP_DIR_GDS_IO_P)/ICsprout_55LLULP1233_IO_251013 $(OPENPDKS_INSTALL_DIR)/libs.ref/
	# Same cleanup as the standard cells, plus prefixed helper subcircuits (inv2, nand2, ... clash with
	# other libraries) and empty subcircuits for the corner / spacer cells (OpenROAD write_cdl)
	python3 scripts/cdl_convert.py $(DECOMP_DIR_GDS_IO_P)/ICsprout_55LLULP1233_IO_251013/cdl/ICSIOA_N55_3P3.cdl $(OPENPDKS_INSTALL_DIR)/libs.ref/ICsprout_55LLULP1233_IO_251013/cdl/ICSIOA_N55_3P3.cdl \
		--lef $(DECOMP_DIR_GDS_IO_P)/ICsprout_55LLULP1233_IO_251013/lef/ICSIOA_N55_3P3_1P6M1TM_openpdk.lef
ifneq ($(DECOMP_DIR_LIB_P),$(DECOMP_DIR_GDS_STD_P))
	cp -r $(DECOMP_DIR_GDS_STD_P)/ics55_LLSC_H7CH $(OPENPDKS_INSTALL_DIR)/libs.ref/
	cp -r $(DECOMP_DIR_GDS_STD_P)/ics55_LLSC_H7CL $(OPENPDKS_INSTALL_DIR)/libs.ref/
	cp -r $(DECOMP_DIR_GDS_STD_P)/ics55_LLSC_H7CR $(OPENPDKS_INSTALL_DIR)/libs.ref/
endif
	mkdir -p $(OPENPDKS_INSTALL_DIR)/libs.ref/ics55_LLSC_H7CH/spice
	mkdir -p $(OPENPDKS_INSTALL_DIR)/libs.ref/ics55_LLSC_H7CL/spice
	mkdir -p $(OPENPDKS_INSTALL_DIR)/libs.ref/ics55_LLSC_H7CR/spice
	python3 scripts/cdl_convert.py $(DECOMP_DIR_GDS_STD_P)/ics55_LLSC_H7CH/cdl/ics55_LLSC_H7CH.cdl $(OPENPDKS_INSTALL_DIR)/libs.ref/ics55_LLSC_H7CH/cdl/ics55_LLSC_H7CH.cdl
	python3 scripts/cdl_convert.py $(DECOMP_DIR_GDS_STD_P)/ics55_LLSC_H7CL/cdl/ics55_LLSC_H7CL.cdl $(OPENPDKS_INSTALL_DIR)/libs.ref/ics55_LLSC_H7CL/cdl/ics55_LLSC_H7CL.cdl
	python3 scripts/cdl_convert.py $(DECOMP_DIR_GDS_STD_P)/ics55_LLSC_H7CR/cdl/ics55_LLSC_H7CR.cdl $(OPENPDKS_INSTALL_DIR)/libs.ref/ics55_LLSC_H7CR/cdl/ics55_LLSC_H7CR.cdl
	python3 scripts/cdl_to_spice.py $(DECOMP_DIR_GDS_STD_P)/ics55_LLSC_H7CH/cdl/ics55_LLSC_H7CH.cdl $(OPENPDKS_INSTALL_DIR)/libs.ref/ics55_LLSC_H7CH/spice/ics55_LLSC_H7CH.spice
	python3 scripts/cdl_to_spice.py $(DECOMP_DIR_GDS_STD_P)/ics55_LLSC_H7CL/cdl/ics55_LLSC_H7CL.cdl $(OPENPDKS_INSTALL_DIR)/libs.ref/ics55_LLSC_H7CL/spice/ics55_LLSC_H7CL.spice
	python3 scripts/cdl_to_spice.py $(DECOMP_DIR_GDS_STD_P)/ics55_LLSC_H7CR/cdl/ics55_LLSC_H7CR.cdl $(OPENPDKS_INSTALL_DIR)/libs.ref/ics55_LLSC_H7CR/spice/ics55_LLSC_H7CR.spice
	cp -r prtech $(OPENPDKS_INSTALL_DIR)/libs.ref/
	cp -r klayout $(OPENPDKS_INSTALL_DIR)/libs.tech/
	cp -r librelane $(OPENPDKS_INSTALL_DIR)/libs.tech/
	cp -r magic $(OPENPDKS_INSTALL_DIR)/libs.tech/
	cp -r netgen $(OPENPDKS_INSTALL_DIR)/libs.tech/
	cp -r ngspice $(OPENPDKS_INSTALL_DIR)/libs.tech/
	cp -r hspice $(OPENPDKS_INSTALL_DIR)/libs.tech/
	$(MAKE) private-std
	find $(OPENPDKS_INSTALL_DIR) -name .DS_Store -delete || true
	touch $@

# The private standard cells, installed only when PRIVATE_STD_ROOT exists.
# Same views and the same CDL/SPICE conversion as the public libraries.
private-std:
	@if [ -z "$(OPENPDKS_INSTALL_DIR)" ]; then \
		echo "[private-std] OPENPDKS_INSTALL_DIR is empty"; \
		exit 1; \
	fi; \
	if [ -z "$(PRIVATE_STD_ROOT)" ] || [ ! -d "$(PRIVATE_STD_ROOT)" ]; then \
		echo "[private-std] not found, skipping (set PRIVATE_STD_ROOT to install the 9-track libraries)"; \
		exit 0; \
	fi; \
	echo "[private-std] installing from $(PRIVATE_STD_ROOT)"; \
	for entry in $(PRIVATE_STD_ENTRIES); do \
		src="$(PRIVATE_STD_ROOT)/$${entry%%:*}/0.1"; \
		lib="$${entry##*:}"; \
		lib_base="$${lib%_basic}"; \
		dst="$(OPENPDKS_INSTALL_DIR)/libs.ref/$$lib"; \
		if [ ! -d "$$src" ]; then echo "[private-std]   skipping $$lib: $$src not found"; continue; fi; \
		echo "[private-std]   $$lib"; \
		rm -rf "$$dst"; \
		mkdir -p "$$dst/cdl" "$$dst/spice" "$$dst/liberty"; \
		for view in gds lef verilog cell_list; do \
			[ -d "$$src/$$view" ] && cp -r "$$src/$$view" "$$dst/$$view"; \
		done; \
		if [ "$(PRIVATE_STD_LIBERTY)" = "all" ]; then \
			cp "$$src"/lib/*_nldm.lib "$$dst/liberty/"; \
		else \
			for corner in $(PRIVATE_STD_CORNERS); do \
				cp "$$src/lib/$${lib_base}_$${corner}_basic_nldm.lib" "$$dst/liberty/"; \
			done; \
		fi; \
		python3 scripts/cdl_convert.py "$$src/cdl/$$lib.cdl" "$$dst/cdl/$$lib.cdl"; \
		python3 scripts/cdl_to_spice.py "$$src/cdl/$$lib.cdl" "$$dst/spice/$$lib.spice"; \
	done

openpdk: $(OPENPDKS_INSTALL_DIR)/checkpoint

clean-openpdk:
	@echo "\n[clean] delete decompressed dirs"
	rm -rf $(OPENPDKS_INSTALL_DIR)
