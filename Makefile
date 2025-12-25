# =============================================================================
# Extract blocks
# =============================================================================
ORGS_NAME := openecos-projects
REPO_NAME := icsprout55-pdk

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

.PHONY: start download unzip clean-bz2 clean-dir

$(RELEASE_FILE):
	@echo "\n[download] getting the latest release info"
	@RELEASE_URL=$$(curl -s "https://api.github.com/repos/$(ORGS_NAME)/$(REPO_NAME)/releases/latest" | \
		grep -E "browser_download_url.*$(@)" | \
		cut -d '"' -f 4); \
	if [ -z "$$RELEASE_URL" ]; then \
		echo "[download] file not found $(@)"; \
		echo "[download] please check whether the Release contains the following files: "; \
		echo "$(RELEASE_FILE)"; \
		exit 1; \
	fi; \
	echo "[download] getting $(@)..."; \
	if [ "$(TOOL)" = "wget" ]; then \
		wget -O $(@) "$$RELEASE_URL" && echo "[download] done!"; \
	else \
		curl -L -o $(@) "$$RELEASE_URL" && echo "[download] done!"; \
	fi

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
