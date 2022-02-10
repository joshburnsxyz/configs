#!/bin/sh

# update system
sudo pacman -Syyu --noconfirm

# Read programs.csv and install programs
while IFS=, read -r install_type name description; do 
    case $type
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
