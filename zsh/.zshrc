eval "$(/opt/homebrew/bin/brew shellenv)"
. /opt/homebrew/opt/asdf/libexec/asdf.sh

fpath+=/opt/homebrew/share/zsh/site-functions
autoload -U promptinit; promptinit
prompt pure

# Load Plugins
for file in $HOME/.zsh-plugins/**/*(.); source $file

export PATH="$PATH:$HOME/.zsh-plugins"
