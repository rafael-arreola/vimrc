let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-fzf-preview', 'coc-highlight', 'coc-prettier', 'coc-elixir', 'coc-sql', 'coc-snippets', 'coc-go']

command! -nargs=0 Prettier :call CocAction("runCommand", "prettier.formatFile")

autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

autocmd FileType go nmap gtj :CocCommand go.tags.add json<cr>
autocmd FileType go nmap gty :CocCommand go.tags.add yaml<cr>
autocmd FileType go nmap gtx :CocCommand go.tags.clear<cr>
