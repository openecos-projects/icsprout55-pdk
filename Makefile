# Large IP views are distributed as Release archives.
ORGS_NAME := openecos-projects
REPO_NAME := icsprout55-pdk

PROXY_URL ?= https://gh-proxy.org/
PROXY_USE ?= false
TOOL ?= curl
BZIP2_TOOL ?= bzip2

# Keep this branch paired with its own assets; main uses the H7C releases.
RELEASE_TAG ?= v2-2026.10.28
ifeq ($(RELEASE_TAG),latest)
RELEASE_BASE_URL ?= https://github.com/$(ORGS_NAME)/$(REPO_NAME)/releases/latest/download
else
RELEASE_BASE_URL ?= https://github.com/$(ORGS_NAME)/$(REPO_NAME)/releases/download/$(RELEASE_TAG)
endif

STD_VARIANTS := HVT LVT SVT
LIB_PARTS := nldm ccs_ff ccs_ss ccs_tt
STD_LIBRARIES := $(addprefix ICsprout55_SC9T_BASIC_,$(STD_VARIANTS))
RELEASE_FILE_LIB := $(foreach lib,$(STD_LIBRARIES),$(foreach part,$(LIB_PARTS),$(lib)_liberty_$(part).tar.bz2))
RELEASE_FILE_GDS_STD := $(addsuffix _gds.tar.bz2,$(STD_LIBRARIES))
RELEASE_FILE_GDS_IO := ICsprout_55LLULP1225_IO_0901_gds.tar.bz2
RELEASE_FILE := $(RELEASE_FILE_LIB) $(RELEASE_FILE_GDS_STD) $(RELEASE_FILE_GDS_IO)
DOC_ARCHIVE := v2-docs.tar.bz2
MANAGED_DIRS := $(foreach lib,$(STD_LIBRARIES),IP/STD_cell/$(lib)/liberty IP/STD_cell/$(lib)/gds) IP/IO/gds

.DEFAULT_GOAL := unzip
.PHONY: download verify unzip download-docs verify-docs docs clean-bz2 clean-dir

$(RELEASE_FILE) $(DOC_ARCHIVE):
	@echo "[download] $(RELEASE_TAG): $@"
	@set -eu; \
	url="$(RELEASE_BASE_URL)/$@"; \
	if [ "$(PROXY_USE)" = "true" ]; then url="$(PROXY_URL)$$url"; fi; \
	if [ "$(TOOL)" = "wget" ]; then \
		wget --no-verbose --tries=3 --timeout=30 -O "$@.part" "$$url"; \
	else \
		curl --fail --location --silent --show-error --retry 3 --connect-timeout 30 -o "$@.part" "$$url"; \
	fi || { rm -f "$@.part"; exit 1; }; \
	mv "$@.part" "$@"

download: $(RELEASE_FILE)

verify: download
	@sha256sum --check release-assets.sha256

# Extract and verify every archive before replacing the installed views.
unzip: verify
	@set -eu; \
	stage=$$(mktemp -d .release-unzip.XXXXXX); \
	trap 'rm -rf "$$stage"' 0; \
	trap 'exit 1' 1 2 15; \
	for vt in $(STD_VARIANTS); do \
		base="ICsprout55_SC9T_BASIC_$$vt"; \
		target="$$stage/IP/STD_cell/$$base"; \
		mkdir -p "$$target"; \
		for part in $(LIB_PARTS); do \
			archive=$$(printf '%s_liberty_%s.tar.bz2' "$$base" "$$part"); \
			echo "[unzip] $$archive"; \
			tar --use-compress-program="$(BZIP2_TOOL)" -xf "$$archive" -C "$$target"; \
		done; \
		tar --use-compress-program="$(BZIP2_TOOL)" -xf "$$base"_gds.tar.bz2 -C "$$target"; \
	done; \
	mkdir -p "$$stage/IP/IO"; \
	tar --use-compress-program="$(BZIP2_TOOL)" -xf "$(RELEASE_FILE_GDS_IO)" -C "$$stage/IP/IO"; \
	(cd "$$stage" && sha256sum --check "$(CURDIR)/release-files.sha256"); \
	for target in $(MANAGED_DIRS); do \
		mkdir -p "$$(dirname "$$target")"; \
		rm -rf "$$target"; \
		mv "$$stage/$$target" "$$target"; \
	done
	@$(MAKE) --no-print-directory clean-bz2
	@echo "[unzip] complete: $(RELEASE_TAG)"

# PDF manuals are optional and are not dependencies of download or unzip.
download-docs: $(DOC_ARCHIVE)

verify-docs: download-docs
	@sha256sum --check release-docs.sha256

docs: verify-docs
	@set -eu; \
	stage=$$(mktemp -d .release-docs.XXXXXX); \
	trap 'rm -rf "$$stage"' 0; \
	trap 'exit 1' 1 2 15; \
	tar --use-compress-program="$(BZIP2_TOOL)" -xf "$(DOC_ARCHIVE)" -C "$$stage"; \
	(cd "$$stage" && sha256sum --check "$(CURDIR)/release-doc-files.sha256"); \
	while read -r checksum path; do \
		mkdir -p "$$(dirname "$$path")"; \
		mv -- "$$stage/$$path" "$$path"; \
	done < release-doc-files.sha256
	@rm -f -- "$(DOC_ARCHIVE)" "$(DOC_ARCHIVE).part"
	@echo "[docs] complete: $(RELEASE_TAG)"

clean-bz2:
	@rm -f -- $(RELEASE_FILE) $(addsuffix .part,$(RELEASE_FILE))

clean-dir:
	@rm -rf -- $(MANAGED_DIRS)
