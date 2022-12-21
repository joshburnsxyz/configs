eval "$(/opt/homebrew/bin/brew shellenv)"
. /opt/homebrew/opt/asdf/libexec/asdf.sh

export PATH="$HOME/.local/bin:$PATH:$(go env GOPATH)"

fpath+=/opt/homebrew/share/zsh/site-functions
autoload -U promptinit; promptinit
prompt pure

alias emacs="open -a Emacs $@"

# Load Plugins
for file in $HOME/.zsh-plugins/**/*.plugin.zsh; source $file

sysinfop