# Initial
.PHONY: nvim

SHELL = /bin/zsh
UNAME := $(shell uname)

# Colors
COLOR_GREEN = \033[0;32m
COLOR_BLUE = \033[0;34m
COLOR_END = \033[0m

# Commands
all:
	@make zsh
	@make vscode
	@make nvim

zsh:
	@echo "$(COLOR_GREEN)Copy .zshrc to home directory and the current config is backed up as .zshrc_prev$(COLOR_END)"
	@cp "${HOME}/.zshrc" "${HOME}/.zshrc_prev" 
	@cp .zshrc "${HOME}/.zshrc"
	@source "${HOME}/.zshrc"

vscode:
	@echo "$(COLOR_GREEN)Copy settings.json with Visual Studio Code configuration$(COLOR_GREEN)"
ifeq ($(UNAME),Darwin)
	@cp settings.json ${HOME}/Library/Application\ Support/Code/User/settings.json
endif

nvim:
	@echo "$(COLOR_GREEN)Copy nvim settings to config directory$(COLOR_END)"
	@rm -rf "${HOME}/.config/nvim"
	@ln -snf "${PWD}/nvim" "${HOME}/.config/"
