#!make

.PHONY: all zed zsh

SHELL = /bin/zsh

all:
	@make zsh
	@make zed

zed:
	@echo "✂️ Copy settings for zed editor"
	@cp settings.json "${HOME}/.config/zed/settings.json"

zsh:
	@echo "✂️ Copy .zshrc to home directory and the current config is backed up as .zshrc_prev"
	@cp "${HOME}/.zshrc" "${HOME}/.zshrc_prev"
	@cp .zshrc "${HOME}/.zshrc"
	@exec zsh
