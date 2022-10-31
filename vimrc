set nocompatible
set encoding=utf-8
set tabstop=2 shiftwidth=2 expandtab
set number
set mouse=a
set autoindent
set numberwidth=3
set clipboard=unnamedplus
set showmatch

set hlsearch
set incsearch
set ignorecase
set smartcase

set cursorline
set termguicolors
let mapleader=" "


syntax on

colorscheme nightfox


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Commands                        Mode
" --------                        ----
" nmap, nnoremap, nunmap          Normal mode
" imap, inoremap, iunmap          Insert and Replace mode
" vmap, vnoremap, vunmap          Visual and Select mode
" xmap, xnoremap, xunmap          Visual mode
" smap, snoremap, sunmap          Select mode
" cmap, cnoremap, cunmap          Command-line mode
" omap, onoremap, ounmap          Operator pending mode
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Buffer interaction
noremap <leader>w :w<CR>
map <C-Up> {
map <C-Down> }
"Files interaction
map <C-p> :Files<CR>
map <C-f> :CocSearch 


let g:airline#extensions#tabline#enabled = 1
