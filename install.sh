#!/bin/sh

# update system
sudo pacman -Syyu --noconfirm

# Read programs.csv and install programs
while IFS=, read -r install_type name description; do 
    case $install_type in
      p)
        sudo pacman -S $name --noconfirm
        ;;
      a)
        git clone $name ./wrk
        cd ./wrk
        makepkg -si --needed --noconfirm
        cd -
        rm -rf ./wrk
        ;;
    esac
done < programs.csv

# Install OhMyZsh
if [ ! -d "~/.oh-my-zsh" ]; then
    echo "Oh-My-ZSH Already installed...skipping"
else
     sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Install emacs config
if [ ! -d "~/.emacs.d" ]; then
    echo "Emacs config already exists...skipping"
else
    git clone https://github.com/joshburnsxyz/.emacs.d ~/.emacs.d
fi
