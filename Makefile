DIR ?= IP/STD_cell

COMP_DIR := $(shell find $(DIR) -type d -name liberty)
COMP_BZ2 := $(patsubst %,%/../liberty.tar.bz2,$(COMP_DIR))

.PHONY: zip clean-old-bz2

%/../liberty.tar.bz2: %
	@echo "\nCompressing: $< -> $@"
	@tar -cjvf $@ -C $(dir $<) $(notdir $<)

zip: clean-old-bz2 $(COMP_BZ2)
	@echo "\nAll liberty directories have been compressed!"

clean-old-bz2:
	@echo "Cleaning up all old archives..."
	@find $(DIR) -name liberty.tar.bz2 -exec rm -fv {} \; || true



EXTR_BZ2 := $(shell find $(DIR) -name liberty.tar.bz2)
EXTR_DIR := $(patsubst %.tar.bz2,%,$(EXTR_BZ2))

.PHONY: unzip clean-old-dir

%: %.tar.bz2
	@echo "\nExtracting: $< -> $@"
	@mkdir -p $@
	@tar -xjvf $< -C $(dir $@)
	@touch $@

unzip: clean-old-dir $(EXTR_DIR)
	@echo "\nAll liberty.tar.bz2 files have been extracted!"

clean-old-dir:
	@echo "Cleaning up all old directories..."
	@find $(DIR) -depth -type d -name liberty -exec rm -rfv {} \; || true

.PRECIOUS: % $(EXTR_DIR)
