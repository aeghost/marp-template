# Author: Matthieu GOSSET
# Mail: matthieu.gosset.dev@outlook.com
# Purpose: Wrap marp calls into a classic Makefile

# User-land:
# Path to the theme you want to use
THEME_PATH=theme
CUSTOM_THEME=$(THEME_PATH)/company-theme.scss

# Choose if you want to use npx or not
NPX_BUILDER=npx @marp-team/marp-cli
NO_NPX_BUILDER=marp
BUILDER=$(NO_NPX_BUILDER)

# Main project entry
MAIN_FILE=Main

# Build path
BUILD_PATH=_build

# Common bins
RMRF=rm -rf
MV=mv
MKDIR=mkdir -p

# Marp-land:
THEME=--theme $(CUSTOM_THEME)

.PHONY: clean preview all html

all: $(BUILD_PATH)/$(MAIN_FILE).html $(BUILD_PATH)/$(MAIN_FILE).pdf $(BUILD_PATH)/$(MAIN_FILE).pptx

preview:
	$(BUILDER) -w $(MAIN_FILE).md $(THEME)

$(BUILD_PATH):
	$(MKDIR) $(BUILD_PATH)

$(BUILD_PATH)/$(MAIN_FILE).html: $(BUILD_PATH)
	$(BUILDER) $(MAIN_FILE).md $(THEME) --html
	$(MV) $(MAIN_FILE).html $(BUILD_PATH)/$(MAIN_FILE).html

$(MAIN_FILE).html: $(BUILD_PATH)/$(MAIN_FILE).html
html: $(MAIN_FILE).html

$(BUILD_PATH)/$(MAIN_FILE).pdf: $(BUILD_PATH)
	$(BUILDER) $(MAIN_FILE).md $(THEME) --pdf --allow-local-files
	$(MV) $(MAIN_FILE).pdf $(BUILD_PATH)/$(MAIN_FILE).pdf

$(MAIN_FILE).pdf: $(BUILD_PATH)/$(MAIN_FILE).pdf
pdf: $(MAIN_FILE).pdf

$(BUILD_PATH)/$(MAIN_FILE).pptx: $(BUILD_PATH)
	$(BUILDER) $(MAIN_FILE).md $(THEME) --pptx --allow-local-files
	$(MV) $(MAIN_FILE).pptx $(BUILD_PATH)/$(MAIN_FILE).pptx

$(MAIN_FILE).pptx: $(BUILD_PATH)/$(MAIN_FILE).pptx
pptx: $(MAIN_FILE).pptx

clean:
	$(RMRF) $(BUILD_PATH)
	$(RMRF) $(MAIN_FILE).html