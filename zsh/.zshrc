eval "$(/opt/homebrew/bin/brew shellenv)"
. /opt/homebrew/opt/asdf/libexec/asdf.sh

fpath+=/opt/homebrew/share/zsh/site-functions
autoload -U promptinit; promptinit
prompt pure

# Plugins
. $HOME/.zsh-plugins/git.plugin.zsh
. $HOME/.zsh-plugins/emacs.plugin.zsh

export PATH="$PATH:$HOME/.zsh-plugins"
