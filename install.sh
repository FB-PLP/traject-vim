#!/bin/sh
set -e

if [ -f ~/.vimrc ]; then
  mv ~/.vimrc .original_vimrc
fi
cp autoload/main.vim ~/.vimrc

rm -rf ./bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ./bundle/Vundle.vim
vim +PluginInstall +qall > /dev/null

if nvim -v; then
  mv ~/.config/nvim .original_nvim || true
  ln -s ~/traject-vim ~/.config/nvim
  nvim +PluginInstall +qall > /dev/null
fi
