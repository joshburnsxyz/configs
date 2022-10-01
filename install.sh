#!/bin/sh
echo "setting macos defaults"
. ./macos/.macos

echo "install homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "installing homebrew packages"
brew bundle ./macos/Brewfile

mkdir $HOME/.config/nvim

echo "Installing Neovim configuration"
stow -t $HOME/.config/nvim nvim
stow -t $HOME zsh
