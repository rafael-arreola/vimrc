set nocompatible
set encoding=utf-8
set tabstop=2 shiftwidth=2 expandtab

set number
set mouse=a
set autoindent
set numberwidth=2
set clipboard+=unnamedplus
set showmatch
set relativenumber

set hlsearch
set incsearch
set ignorecase
set smartcase

set termguicolors

colorscheme palenight
let g:airline_theme = 'palenight'
highlight Normal ctermbg=NONE
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter="unique_tail_improved"

let mapleader=" "
syntax on
