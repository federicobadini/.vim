.PHONY: install
install: ## Sets up symlinks for both current user and root
	git submodule update --recursive --remote
	ln -snf "$(HOME)/.vim/vimrc" "$(HOME)/.vimrc"
	ln -snf "$(HOME)/.vim/bundle/vim-colors-solarized/colors/solarized.vim \
		$(HOME)/.vim/colors/solarized.vim"
	ln -snf "$(HOME)/.vim/bundle/vim-colors-solarized/autoload/togglebg.vim \
		$(HOME)/.vim/autoload/togglebg.vim"


.PHONY: update
update: ## Updates all plugins
	git submodule update --recursive --remote

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| sort \
		| awk \
			'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
