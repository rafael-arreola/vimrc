let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-fzf-preview', 'coc-highlight', 'coc-prettier', 'coc-elixir', 'coc-sql', 'coc-go']

command! -nargs=0 Prettier :call CocAction("runCommand", "prettier.formatFile")
