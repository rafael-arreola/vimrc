lua <<EOF
require'nvim-treesitter.configs'.setup {
  auto_install = true,
  sync_install = true,
  highlight = {
    enable = true,    
  }
}
EOF
