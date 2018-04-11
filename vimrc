"
" With a dutiful thanks to jessfraz from which I borrowed most of the
" following configuration
"
" Federico Badini


" ----------------------------------------- "
" Load plugins															"
" ----------------------------------------- "

execute pathogen#infect()
call pathogen#helptags()


" ----------------------------------------- "
" Enable vi-iMproved functionalities				"
" ----------------------------------------- "

set nocompatible										" Enable vi-iMproved functionalities
filetype plugin indent on						" Enable detection, plugin and indetation


" ----------------------------------------- "
" General options														"
" ----------------------------------------- "

set autoindent											" Indent when starting new line
set autoread												" Automatically reread changed files
set autowrite												" Auto-save before :next, :make etc.
set background=dark									" Background color
set backspace=indent,eol,start			" Makes backspace key more powerful
set colorcolumn=80									" 80 columns limit line
set complete=.,w,b,u,t							" Set completion buffers
set complete-=i											" Avoid scanning included files
set completeopt=longest,menuone			" Set completion options
set conceallevel=0									" Do not hide markdown
set display+=lastline								" Remove @ for long lines
set encoding=utf-8									" Set default encoding to UTF-8
set fileformats=unix,dos,mac				" Prefer Unix over Windows over OS 9 format
set formatoptions=qrn1							" Formatting options
set hidden													" Enable hiding buffer, no save required
set hlsearch												" Highlight found searches
set ignorecase											" Search case insensitive
set incsearch												" Shows the search match while typing
set laststatus=2										" Always show status-bar
set lazyredraw											" Wait to redraw
set nobackup												" Don't create annoying backup files
set nocursorcolumn									" No column highlight during search
set nocursorline										" No cursor line highlight
set noerrorbells										" No beeps
set noshowmatch											" Do not jump to closing bracket
set noshowmode											" Mode is shown in airline
set noswapfile											" Don't use swapfile
set notimeout												" No time restriction for composed commands
set nowritebackup										" Avoid creating backup before saving
set nrformats-=octal								" Exclude octals from implicit arithmetic
set number													" Show line numbers
set re=1														" Regexp engine
set ruler														" Show the cursor position all the time
set showcmd													" Show me what I'm typing
set showmode												" Show current mode.
set splitbelow											" Split horizontal windows below
set splitright											" Split vertical windows right
set shiftround											" Round indent to a multiple of shiftwidth
set shiftwidth=2										" Shift width
set smartcase												" Search case insensitive if no uppercase
set smarttab												" Enable smarttab
set synmaxcol=300										" Max col to highlight
set tabstop=2												" Tab width
set textwidth=79										" Available columns
set ttimeout												" Time restriction enabled for key codes
set ttimeoutlen=10									" Set timeout length
set ttyfast													" Fast and smooth interaction
set t_Co=256												" Enable 256 colors
set wildmenu												" Wildmenu completion
set wildmode=list:full							" Wildmenu mode full
set wildignore+=.git								" Version control
set wildignore+=*.jpg,*.jpeg				" Binary images
set wildignore+=*.png,*.bmp,*.gif		" Binary images
set wildignore+=*.o,*.obj						" Object files
set wildignore+=*.DS_Store					" OSX bullshit
set wildignore+=*.orig							" Merge resolution files
set wrap														" Word wrap enabled


" ----------------------------------------- "
" Colors																		"
" ----------------------------------------- "

let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized


" ----------------------------------------- "
" Syntax enabled														"
" ----------------------------------------- "

syntax sync minlines=256
syntax enable


" ----------------------------------------- "
" Mapleader																	"
" ----------------------------------------- "

let g:mapleader = ","


" ----------------------------------------- "
" Custom mappings														"
" ----------------------------------------- "

" Split screen with movement keys
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" Move through buffers
nnoremap <C-x> :bnext<CR>
nnoremap <C-z> :bprev<CR>

" Show spelling errors
nnoremap <F6> :setlocal spell! spell?<CR>

" Remove search highlight with <leader><space>
nnoremap <leader><space> :nohlsearch<CR>

" Center screen on previous/next search occurrence
nnoremap n nzzzv
nnoremap N Nzzzv


" ----------------------------------------- "
" Autocommands															"
" ----------------------------------------- "

" Set vim to save the file on focus out.
au FocusLost * :wa

" Open help vertically
au FileType help wincmd L

" Automatically set current directory for each opened buffer
au BufEnter * silent! lcd %:p:h


" ----------------------------------------- "
" Plugin configs														"
" ----------------------------------------- "

" Airline
let g:airline_theme='solarized'
let g:remoteSession = ($STY == "")
if !g:remoteSession
  let g:airline_powerline_fonts=1
endif

" CtrlP
let g:ctrlp_max_files=0
let g:ctrlp_clear_cache_on_exit = 0

" NERDTree
let g:NERDTreeShowHidden=1
noremap <C-n> :NERDTreeToggle<CR>
au BufEnter * if (
	\ winnr("$") == 1 &&
	\ exists("b:NERDTreeType") &&
	\ b:NERDTreeType == "primary") | q | endif

" Vim better whitespace
let g:strip_whitespace_on_save = 1

