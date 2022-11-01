#/bin/sh

if [ -d "${HOME}/.vim" ]; then
    rm -rf "${HOME}/.vim"
fi

git clone https://github.com/rafael-arreola/vimrc.git $HOME/.vim

if [ ! -d "$(command -v paru)" ]; then
  paru -Syu --noconfirm ttf-fira-code ttf-cascadia-code ttf-iosevka-nerd ttc-iosevka fzf
fi

if [ ! -d "$(command -v yay)" ]; then
  yay -Syu --noconfirm ttf-fira-code ttf-cascadia-code ttf-iosevka-nerd ttc-iosevka fzf
fi

cd "${HOME}/.vim"

git submodule update --init --recursive

if [ ! -d "${HOME}/.config/nvim/" ]; then
  mkdir $HOME/.config/nvim/
fi

cp -S vim.init.bak "$HOME/.vim/vim.init" "$HOME/.config/nvim/init.vim"
cp -S coc-settings.json.bak "$HOME/.vim/coc-settings.json" "$HOME/.config/nvim/coc-settings.json"

cd "$HOME/.vim/pack/modules/start/coc.vim";
npm install

echo -e "export FZF_DEFAULT_COMMAND='fd --type f --exclude=node_modules'" >> ~/.zshrc
