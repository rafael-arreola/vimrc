nmap <Leader><space>  :CocCommand fzf-preview.ProjectFiles<CR>
nmap <Leader><tab>    :CocCommand fzf-preview.Buffers<CR>
nmap <Leader><S-f>    :CocCommand fzf-preview.ProjectGrep 
let g:fzf_preview_filelist_command = 'git ls-files --exclude-standard && git ls-files --others --exclude-standard'
