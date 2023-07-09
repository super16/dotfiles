# Initial
SHELL = /bin/zsh
UNAME := $(shell uname)

# Colors
COLOR_GREEN = \033[0;32m
COLOR_BLUE = \033[0;34m
COLOR_END = \033[0m

all:
	@make zsh
	@make vscode

zsh:
	@echo "$(COLOR_GREEN)Copy .zshrc to home directory and the current config is backed up as .zshrc_prev$(COLOR_END)"
	@cp "${HOME}/.zshrc" "${HOME}/.zshrc_prev" 
	@cp .zshrc "${HOME}/.zshrc"
	@source "${HOME}/.zshrc"

vscode:
	@echo "$(COLOR_BLUE)Copy settings.json with Visual Studio Code configuration$(COLOR_END)"
ifeq ($(UNAME),Darwin)
	@cp settings.json ${HOME}/Library/Application\ Support/Code/User/settings.json
endif
