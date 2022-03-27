#!/bin/sh

install_to_home() {
  cp -R $1/* $HOME/
}

echo "setting macos defaults"
. ./macos/.macos

echo "install homebrew"
echo "coming soon...."

echo "installing homebrew packages"
brew bundle ./macos/Brewfile

echo "installing zsh config"
install_to_home zsh
