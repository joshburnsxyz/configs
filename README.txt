Config Files

- /zsh/ - .zshrc
- /emacs/ - Personal doom emacs configuration files
- /.macos - MacOS defaults
- /Brewfile - Homebrew packages

Install config packages with GNU stow like so...


$ stow -t $HOME zsh
$ stow -t $HOME emacs

etc...
