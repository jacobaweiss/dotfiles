#!/usr/bin/env sh

if [ -e ~/.config/nvim ]; then
  echo "nvim already symlinked, skipping..."
else
  echo "symlinking ~/.config/nvim"
  ln -s ~/.dotfiles/nvim ~/.config/nvim
fi
