#!/usr/bin/env sh

ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/tmux/conf ~/.tmux.conf
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh

if [ -e ~/.config/nvim ]; then
  echo "nvim already symlinked, skipping..."
else
  echo "symlinking ~/.config/nvim"
  ln -s ~/.dotfiles/nvim ~/.config/nvim
fi
