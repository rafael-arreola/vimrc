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

" Move lines up or down
vnoremap <silent><C-k> :m '<-2<Enter>gv=gv
vnoremap <silent><C-j> :m '>+1<Enter>gv=gv
nnoremap <silent><C-k> :m .-2<Enter>==
nnoremap <silent><C-j> :m .+1<Enter>==
inoremap <silent><C-k> <Esc>:m .-2<Enter>==<Right>i
inoremap <silent><C-j> <Esc>:m .+1<Enter>==<Right>i

nmap <S-Tab> <<
nmap <Tab> >>

function MapLeft()
      imap <A-S-Left> <Esc>vb
      nmap <A-S-Left> <Esc>vb
      vmap <A-S-Left> b
endfunction
function MapRight()
      imap <A-S-Right> <Esc>ve
      nmap <A-S-Right> <Esc>ve
      vmap <A-S-Right> e
endfunction
function MapUp()
      imap <A-Up> <Esc>{i
      nmap <A-Up> {
endfunction
function MapDown()
      imap <A-Down> <Esc>}i
      nmap <A-Down> }
endfunction

autocmd VimEnter * call MapLeft()
autocmd VimEnter * call MapRight()
autocmd VimEnter * call MapUp()
autocmd VimEnter * call MapDown()

imap <C-q> <Esc>:bd<Enter>
nmap <C-q> :bd<Enter>
