DIR ?= IP/STD_cell

# =============================================================================
# Extract blocks
# =============================================================================
REPO_OWNER := openecos-projects
REPO_NAME  := icsprout55-pdk

RELEASE_FILES := ics55_LLSC_H7CH_liberty.tar.bz2 \
                 ics55_LLSC_H7CL_liberty.tar.bz2 \
                 ics55_LLSC_H7CR_liberty.tar.bz2

EXTR_DIR_PARENT := $(DIR)/ics55_LLSC_H7C_V1p10C100
EXTR_DIR        := $(patsubst %_liberty.tar.bz2, $(EXTR_DIR_PARENT)/%/liberty, $(RELEASE_FILES))

.PHONY: download unzip clean-bz2 clean-dir

$(RELEASE_FILES):
	@echo "\nGetting the latest release information..."
	@RELEASE_URL=$$(curl -s "https://api.github.com/repos/$(REPO_OWNER)/$(REPO_NAME)/releases/latest" | \
		grep -E "browser_download_url.*$(@)" | \
		cut -d '"' -f 4); \
	if [ -z "$$RELEASE_URL" ]; then \
		echo "Error: File not found $(@)"; \
		echo "Please check whether the Release contains the following files: "; \
		echo "$(RELEASE_FILES)"; \
		exit 1; \
	fi; \
	echo "Downloading $(@)"; \
	if [ "$(TOOL)" = "wget" ]; then \
		wget -O $(@) "$$RELEASE_URL" && echo "Download completed: $(@)"; \
	else \
		curl -L -o $(@) "$$RELEASE_URL" && echo "Download completed: $(@)"; \
	fi

$(EXTR_DIR_PARENT)/%/liberty: %_liberty.tar.bz2
	@echo "\nExtracting: $< -> $(EXTR_DIR_PARENT)/$*/"
	@mkdir -p $@
	@tar -xjvf $< -C $(EXTR_DIR_PARENT)/$*/
	@touch $@

download: $(RELEASE_FILES)

unzip: clean-bz2 clean-dir download $(EXTR_DIR)
	@echo "\nAll liberty bz2 files have been extracted!"

clean-bz2:
	@echo "Cleaning up all old bz2 files..."
	@find ./ -name "*.tar.bz2" -exec rm -fv {} \; || true

clean-dir:
	@echo "Cleaning up all old directories..."
	@find $(DIR) -depth -type d -name "liberty" -exec rm -rfv {} \; || true
