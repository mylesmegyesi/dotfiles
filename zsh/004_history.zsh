export HISTSIZE=1000
setopt EXTENDED_HISTORY # add timestamps to history
setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
bindkey -e
bindkey '^r' history-incremental-search-backward
