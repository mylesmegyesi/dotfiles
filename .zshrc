[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function

export PATH=$HOME/.rvm:'/usr/local/bin':$PATH

autoload -U compinit
autoload colors
compinit
colors

# Vim
export EDITOR=vim

# Options
export CLICOLOR=1
setopt EXTENDED_HISTORY # add timestamps to history
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt PROMPT_SUBST
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF
setopt AUTO_CD
setopt HIST_IGNORE_DUPS
setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

# Completion
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' # case insensitive completion
zstyle ':completion:*:default' menu 'select=0' # menu-style

vc_prompt_info() {
  echo "%{$fg[cyan]%}[$(vcprompt -f %b%m%u)]%{$reset_color%}"
}

cwd() {
  echo "%{$fg[magenta]%}%~%{$reset_color%}"
}

export PROMPT="
\$(cwd) \$(vc_prompt_info)
%{$fg[blue]%}%%%{$reset_color%} "
