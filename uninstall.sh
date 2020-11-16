#!/bin/sh
set -e

if [ -f .original_vimrc ]; then
  mv .original_vimrc ~/.vimrc
fi

rm -rf ~/.config/nvim
mv .original_nvim ~/.config/nvim || true

echo "\e[91mtraject-vim is uninstalled"
