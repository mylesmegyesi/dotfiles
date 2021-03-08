# Path
export PATH=$HOME/.bin:/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:$PATH

# Miscellaneous Options
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt PROMPT_SUBST
setopt IGNORE_EOF
setopt AUTO_CD
stty -ixon -ixoff # disable scroll lock
export EDITOR=vim
export HOMEBREW_PREFIX=$HOME/.homebrew

fpath+=~/.zfunc

# Load other config files
for config_file ($HOME/.zsh/*.zsh(.N)) source $config_file
