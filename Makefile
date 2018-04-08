CONFIG_HOME := $(HOME)/.config

.PHONY: install
install: ## Sets up symlinks for both current user and root
	ln -snf "$(HOME)/.vim/vimrc" "$(HOME)/.vimrc"
	mkdir -p "$(CONFIG_HOME)"
	ln -snf "$(HOME)/.vim" "$(CONFIG_HOME)/nvim"
	ln -snf "$(HOME)/.vimrc" "$(CONFIG_HOME)/nvim/init.vim"

.PHONY: update
update: ## Updates all plugins
	git submodule update --init --recursive

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
