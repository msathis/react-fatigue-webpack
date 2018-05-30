BIN_DIR ?= ../../node_modules/.bin
BUILD_DIR ?= build

WBP_IMG_LOADERS = --module-bind 'jpg=url-loader?limit=10000' --module-bind 'png=url-loader?limit=10000' --module-bind 'ico=url-loader?limit=10000'
WBP_LOADERS ?= --module-bind 'js=babel-loader' --module-bind 'css=style-loader!css-loader?importLoader=1&modules&localIdentName=[path]___[name]__[local]___[hash:base64:5]' $(WBP_IMG_LOADERS)
WBP_PATH ?= --content-base example
WBP_PORT ?= --port 3000
WBP_FLAGS ?= --progress --hot --inline --output-public-path /
WBP_ENTRY ?= example/index.js

P="\\033[34m[+]\\033[0m"

help:
	@echo
	@echo "  \033[34mbuild\033[0m – builds the component"
	@echo "  \033[34mstart\033[0m – start dev server on :3000 with hot module replacement"
	@echo

build:
	@echo "  $(P) build"
	@$(BIN_DIR)/babel $(BUILD_FLAGS) src --out-dir $(BUILD_DIR)

watch:
	@echo "  $(P) watch"
	@$(BIN_DIR)/babel $(BUILD_FLAGS) --watch src --out-dir $(BUILD_DIR)

start:
	@echo "  $(P) starting webpack-dev-server"
	@$(BIN_DIR)/webpack-dev-server $(WBP_ENTRY) $(WBP_LOADERS) $(WBP_PATH) $(WBP_FLAGS) $(WBP_PORT)

.PHONY: build start help
