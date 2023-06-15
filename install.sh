#!/bin/sh
echo "setting macos defaults"
. ./.macos

echo "install homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "installing homebrew packages"
brew bundle ./Brewfile

stow -t $HOME zsh
stow -t $HOME emacs
