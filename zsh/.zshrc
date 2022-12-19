eval "$(/opt/homebrew/bin/brew shellenv)"
. /opt/homebrew/opt/asdf/libexec/asdf.sh

export PATH="$HOME/.local/bin:$PATH:$(go env GOPATH)"

fpath+=/opt/homebrew/share/zsh/site-functions
autoload -U promptinit; promptinit
prompt pure

# Load Plugins
for file in $HOME/.zsh-plugins/**/*.plugin.zsh; source $file

sysinfop

PATH="/Users/jb/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/Users/jb/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/jb/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/jb/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/jb/perl5"; export PERL_MM_OPT;
