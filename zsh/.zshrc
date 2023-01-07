eval "$(/opt/homebrew/bin/brew shellenv)"
. /opt/homebrew/opt/asdf/libexec/asdf.sh

# Path overrides
export PATH="$HOME/.local/bin:$PATH:$(go env GOPATH)"
export PATH="$PATH:/Users/jb/Downloads/flutter/bin"

export ZPLUG_HOME=/opt/homebrew/opt/zplug

# Prompt theme
setopt prompt_subst
autoload colors zsh/terminfo

if [[ "$terminfo[colors]" -ge 8 ]]; then
  colors
fi

for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE BLACK; do
  eval PR_$color='%{$fg[${(L)color}]%}'
  eval PR_BOLD_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
done

TERMWIDTH=${COLUMNS}

PR_NO_COLOUR="%{$terminfo[sgr0]%}"

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=" $PR_RED*$PR_NO_COLOUR"

function theme_line() {
  if [ $? -eq 0 ]; then
    echo "%{$PR_BOLD_BLACK%}${(l:$COLUMNS::-:)}%{$PR_NO_COLOUR%}"
  else
    echo "%{$PR_RED$?%-}${(l:$COLUMNS - $#?::-:)}%{$PR_NO_COLOUR%}"
  fi
}

function theme_git_info() {
  if [ -z "$(git_prompt_info)" ]; then
    echo ""
  elif [ -z "$(git_prompt_short_sha)" ]; then
    echo " [$(git_prompt_info) root]"
  else
    echo " [$(git_prompt_info) $(git_prompt_short_sha)]"
  fi
}

function theme_ssh() {
  if [ "$SSH_CLIENT" != "" ]; then
    echo "${PR_BOLD_BLUE}(SSH!)${PR_NO_COLOUR} "
  fi
}

function theme_proxy() {
  if ! [[ -z "$HTTP_PROXY" && -z "$HTTPS_PROXY" && -z "$ALL_PROXY" ]]; then
    echo "${PR_BOLD_RED}(PROXY)${PR_NO_COLOUR} "
  fi
}

# PROMPT='$(theme_line) ...'

PROMPT='%(!.${PR_RED}.${PR_BLUE})$PR_NO_COLOUR %(!.${PR_RED}root$PR_NO_COLOUR.${PR_BOLD_BLUE}%n$PR_NO_COLOUR) $(theme_ssh)$(theme_proxy)%3~$(theme_git_info)${PR_NO_COLOUR}%(?. .$PR_RED ! $PR_NOCOLOR)%(!.${PR_RED}#${PR_NO_COLOUR}.${PR_BLUE}>$PR_NO_COLOUR) ${PR_NO_COLOUR}'

# Zplug
source $ZPLUG_HOME/init.zsh
zplug "zsh-users/zsh-history-substring-search"
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/macos", from:oh-my-zsh
zplug "plugins/emacs", from:oh-my-zsh
zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/aliases", from:oh-my-zsh
zplug "plugins/shrink-path", from:oh-my-zsh
zplug "plugins/gitfast", from:oh-my-zsh, defer:1
zplug "plugins/virtualenv", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load
