eval "$(/opt/homebrew/bin/brew shellenv)"
. /opt/homebrew/opt/asdf/libexec/asdf.sh

export EDITOR="code"

alias spacemacs="emacs --with-profile spacemacs"

fpath+=/opt/homebrew/share/zsh/site-functions
autoload -U promptinit; promptinit
prompt pure

# Load Plugins
for file in $HOME/.zsh-plugins/**/*.plugin.zsh; source $file
