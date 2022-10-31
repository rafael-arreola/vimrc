#/bin/bash
if [ ! -d "${HOME}/.config/nvim/" ]; then
  mkdir $HOME/.config/nvim/
fi

cp -S vim.init.bak vim.init $HOME/.config/nvim/init.vim

  echo -e "export FZF_DEFAULT_COMMAND='fd --type f --exclude=node_modules'" >> ~/.zshrc
