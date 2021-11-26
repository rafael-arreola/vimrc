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
nnoremap K :m .-2<Enter>==
nnoremap J :m .+1<Enter>==
vnoremap K :m '<-2<Enter>gv=gv
vnoremap J :m '>+1<Enter>gv=gv
nnoremap <A-UP> :m .-2<Enter>
nnoremap <A-Down> :m .+1<Enter>==
inoremap <A-Up> <Esc>:m .-2<Enter><Right>i
inoremap <A-Down> <Esc>:m .+1<Enter><Right>i

nmap <S-Tab> <<
nmap <Tab> >>

function MapLeft()
      unmap <C-Left>
      imap <A-S-Left> <Esc>vb
      nmap <A-S-Left> <Esc>vb
      vmap <A-S-Left> b
endfunction
function MapRight()
      unmap <C-Right>
      imap <A-S-Right> <Esc>ve
      nmap <A-S-Right> <Esc>ve
      vmap <A-S-Right> e
endfunction
function MapUp()
      unmap <C-Up>
      imap <C-Up> <Esc>{i
      nmap <C-Up> {
endfunction
function MapDown()
      unmap <C-Down>
      imap <C-Down> <Esc>}i
      nmap <C-Down> }
endfunction

autocmd VimEnter * call MapLeft()
autocmd VimEnter * call MapRight()
autocmd VimEnter * call MapUp()
autocmd VimEnter * call MapDown()
