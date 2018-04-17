<p align="center">
	<img src="vim-logo.svg" width="180px">
</p>

# Vim
My vim configuration. The final `.vimrc` file is symlinked from [/vimrc](https://github.com/federicobadini/.vim/blob/master/vimrc).

## Getting started
Just run the following commands via terminal to get perfectly set up:

```console
$ cd ~/
$ git clone --recursive https://github.com/federicobadini/vim.git .vim
$ make install
```

## Plugin management
The vim dot files make use of [Pathogen](https://github.com/tpope/vim-pathogen) runtime path manager. 
It manages your `runtimepath` with ease allowing super easy installs of plugins and runtime files, keeping their code separate in their own private directories.
Currently this project is on Pathogen 2.4. The Pathogen code can be found in [autoload](https://github.com/federicobadini/.vim/blob/master/autoload) folder.

## Plugin list

* [Ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim.git)
* [Nerdtree](https://github.com/scrooloose/nerdtree.git)
* [Vim-airline](https://github.com/vim-airline/vim-airline.git)
* [Vim-airline-themes](https://github.com/vim-airline/vim-airline-themes.git)
* [Vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace.git)
* [Vim-buftabline](https://github.com/ap/vim-buftabline.git)
* [Vim-colors-solarized](https://github.com/altercation/vim-colors-solarized.git)
* [Vim-gitgutter.git](https://github.com/airblade/vim-gitgutter.git)
