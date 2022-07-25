#!/bin/sh

install_to_home() {
  ln -s $(pwd)/$1/* $HOME/
}

echo "setting macos defaults"
. ./macos/.macos

echo "install homebrew"
echo "coming soon...."

echo "installing homebrew packages"
brew bundle ./macos/Brewfile

echo "installing spacemacs configuration files"
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
# TODO: install_to_home emacs

echo "installing zsh config"
install_to_home zsh
