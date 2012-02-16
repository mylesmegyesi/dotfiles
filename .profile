PATH="/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"

# Homebrew
export PATH="/usr/local/bin:$PATH"

# Leiningen
export PATH="~/.lein/bin:$PATH"
source "/usr/local/etc/bash_completion.d/lein-completion.bash"

# npm
export NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"
export PATH="node_modules/.bin:$PATH"

# Git
source "/usr/local/etc/bash_completion.d/git-completion.bash"
export GIT_PS1_SHOWDIRTYSTATE=1 # shows the state of the repo in prompt

# Vim
export EDITOR='vim'

# prompt
RESET='\[\e[0m\]'
BOLD='\[\e[1m\]'
BLACK='\[\e[30m\]'
RED='\[\e[31m\]'
GREEN='\[\e[32m\]'
YELLOW='\[\e[33m\]'
BLUE='\[\e[34m\]'
PINK='\[\e[35m\]'
CYAN='\[\e[36m\]'
GRAY='\[\e[37m\]'

HAPPY=':)'
SAD=':('

sd_retval_cond () {
  local ret_val=$?
  if [[ "$ret_val" = "0" ]]; then echo -e $1; else echo -e $2; fi
  return $ret_val
}

export PS1="$BOLD\n$BLUE(\u) \$(sd_retval_cond '$GREEN' '$RED') \$(sd_retval_cond '$HAPPY' '$SAD')  $PINK\w\$(__git_ps1 ' $CYAN[%s]')\n$RESET$BLUE\$$RESET "
export CLICOLOR=1 # lets ls and stuff show colors


# rvm
[[ -s "/Users/mylesmegyesi/.rvm/scripts/rvm" ]] && source "/Users/mylesmegyesi/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
