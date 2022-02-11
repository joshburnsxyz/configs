export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lambda"
plugins=(git emacs aliases common-aliases alias-finder vi-mode archlinux)

export EDITOR="te"
export VI_MODE_SET_CURSOR=true
export MODE_INDICATOR="%F{white}+%f"
export INSERT_MODE_INDICATOR="%F{yellow}+%f"

source /opt/asdf-vm/asdf.sh
source $ZSH/oh-my-zsh.sh
neofetch
