set encoding=utf-8

set number
set mouse=a               "Allow to paste from the mouse
set autoindent
set numberwidth=2
set clipboard=unnamed "Interact whit the clipboard
set showmatch
set sw=2
set nocompatible
set relativenumber

syntax on

set tabstop=2 shiftwidth=2 expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase

set termguicolors
set background=dark
let mapleader=" "

colorscheme palenight
let g:lightline = {'colorscheme': 'palenight'}
let g:airline_theme = 'base16'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
" let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
