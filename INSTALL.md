1. copy config files
1. iTerm2
1. Homebrew
    brew install git vcprompt pinentry-mac gpg2 zsh zsh-syntax-highlighting direnv leiningen tmux nvm reattach-to-user-namespace
1. zsh
  1. set as default login shell
      chsh -s $HOMEBREW_PREFIX/bin/zsh
1. rvm
    curl -sSL https://get.rvm.io | bash -s stable --autolibs=homebrew
1. vim
  1. pathogen
  1. nerdtree
  1. vim-fugitive
1. base16
  1. iTerm2
  1. vim
1. gpg
  1. `~/.gnugpg/gpg-agent.conf`
      pinentry-program $HOMEBREW_PREFIX/bin/pinentry-mac
  1. `~/.gnugpg/gpg.conf`
      use-agent

