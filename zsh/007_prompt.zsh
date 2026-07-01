vc_prompt_info() {
  echo "%{$fg[cyan]%}[$(vcprompt -f %b%m%u)]%{$reset_color%}"
}

prompt_git_info() {

  emulate -L zsh

  command git rev-parse --is-inside-work-tree &>/dev/null || return

  local branch dirty

  branch=$(command git branch --show-current 2>/dev/null)

  if [[ -z "$branch" ]]; then

    branch=$(command git rev-parse --short HEAD 2>/dev/null)

  fi

  if [[ -n "$(command git status --porcelain 2>/dev/null)" ]]; then

    dirty="+"

  fi

  echo "%{$fg[cyan]%}[${branch}${dirty}]%{$reset_color%}"

}

cwd() {
  echo "%{$fg[magenta]%}%~%{$reset_color%}"
}

export PROMPT="
\$(cwd) \$(prompt_git_info)
%{$fg[blue]%}%%%{$reset_color%} "
