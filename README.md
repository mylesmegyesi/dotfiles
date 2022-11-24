1. copy config files
1. iTerm2
1. Homebrew

    ```shell
    brew install git vcprompt pinentry-mac gpg2 zsh zsh-syntax-highlighting direnv leiningen tmux nvm reattach-to-user-namespace pyenv diff-so-fancy
    ```

1. zsh

   Set as default login shell:

   ```shell
   chsh -s $HOMEBREW_PREFIX/bin/zsh
   ```
1. rvm

    ```
    curl -sSL https://get.rvm.io | bash -s stable --autolibs=homebrew
    ```

1. vim
    1. pathogen
    1. nerdtree
    1. vim-fugitive
1. sdkman

    ```
    curl -s "https://get.sdkman.io" | bash
    ```
    
1. base16

    ```
    git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
    ```
    
    1. iTerm2
    1. vim
1. gpg
    1. `~/.gnugpg/gpg-agent.conf`
        
        _Note: Must hardcode full path to `pinentry-mac`, cannot use `$HOMEBREW_PREFIX` environment variable._

        ```
        pinentry-program {$HOMEBREW_PREFIX}/bin/pinentry-mac
        ```

    1. `~/.gnugpg/gpg.conf`

        ```
        use-agent
        ```
