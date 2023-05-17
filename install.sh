#!/bin/sh
echo "setting macos defaults"
. ./macos/.macos

echo "install homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "installing homebrew packages"
brew bundle ./macos/Brewfile

echo "installing npm packages"
. ./macos/npm-global.sh

stow -t $HOME zsh
