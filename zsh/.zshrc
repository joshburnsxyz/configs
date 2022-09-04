eval "$(/opt/homebrew/bin/brew shellenv)"
. /opt/homebrew/opt/asdf/libexec/asdf.sh

export EDITOR="nvim"
export PATH="$HOME/bin:$PATH"

fpath+=/opt/homebrew/share/zsh/site-functions
autoload -U promptinit; promptinit
prompt pure

alias nbweb="curl https://gist.githubusercontent.com/joshburnsxyz/cf48df7e908b1200327ba1c4f5f7aa44/raw/14db7b5413a2136ba81cc279f540f2124a04a44f/jupyterdocker.sh | bash"

# vim shortcuts
alias vi="$EDITOR"
alias vim="$EDITOR"
alias e="$EDITOR"

# Load Plugins
for file in $HOME/.zsh-plugins/**/*.plugin.zsh; source $file


# Load Angular CLI autocompletion.
source <(ng completion script)
