eval "$(/opt/homebrew/bin/brew shellenv)"
. /opt/homebrew/opt/asdf/libexec/asdf.sh

export EDITOR="emacs"
export PATH="$HOME/bin:$PATH"

fpath+=/opt/homebrew/share/zsh/site-functions
autoload -U promptinit; promptinit
prompt pure

alias e="emacs"

# Load Plugins
for file in $HOME/.zsh-plugins/**/*.plugin.zsh; source $file
