1. copy config files
1. iTerm2
1. Homebrew

    ```shell
    brew install git git-delta jq direnv reattach-to-user-namespace tmux vcprompt vim zsh zplug
    ```

1. zsh

   Set as default login shell:

   ```shell
   chsh -s $HOMEBREW_PREFIX/bin/zsh
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

    1. iTerm2
    1. vim

1. zplug autoupdate

    ```
    mkdir ~/Library/Application\ Support/com.mylesmegyesi.zplug.autoupdate
    cp zplug_autoupdate/zplug_autoupdate ~/Library/Application\ Support/com.mylesmegyesi.zplug.autoupdate
    cp zplug_autoupdate/com.mylesmegyesi.zplug.autoupdate.plist ~/Library/LaunchAgents/
    launchctl load ~/Library/LaunchAgents/com.mylesmegyesi.zplug.autoupdate.plist
    ```
