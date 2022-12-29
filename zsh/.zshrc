eval "$(/opt/homebrew/bin/brew shellenv)"
. /opt/homebrew/opt/asdf/libexec/asdf.sh

export PATH="$HOME/.local/bin:$PATH:$(go env GOPATH)"
export ZPLUG_HOME=/opt/homebrew/opt/zplug

# Zplug
source $ZPLUG_HOME/init.zsh
zplug "zsh-users/zsh-history-substring-search"
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/macos", from:oh-my-zsh
zplug "plugins/emacs", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/aliases", from:oh-my-zsh
zplug "modules/prompt", from:prezto
zplug "plugins/shrink-path", from:oh-my-zsh
zplug "plugins/gitfast", from:oh-my-zsh, defer:1
zplug "plugins/virtualenv", from:oh-my-zsh
zplug "shvenkat/zsh-theme-dexter", use:"*.zsh", defer:3

DEXTER_RIGHT_PROMPT_ELEMS=(time workdir git venv)
DEXTER_WORKDIR_COLOR=$fg_bold[green]
DEXTER_GIT_COLOR=$fg_bold[magenta]
DEXTER_VENV_COLOR=$fg[yellow]
DEXTER_SHOW_EXIT_MESSAGE=0
DEXTER_SHOW_ELAPSED_TIME=0

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

sysinfop
