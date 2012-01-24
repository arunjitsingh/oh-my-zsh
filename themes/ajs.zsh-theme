_smiley () {
  local prevret=$?
  if (( $prevret )); then
    echo -n "%{$bg[red]%}%{$fg[yellow]%} $prevret %{$reset_color%}"
  else
    echo -n "%{$fg[green]%}☻%{$reset_color%}"
  fi
}

_git_toplevel () {
  echo -n "$(basename $(git rev-parse --show-toplevel 2>/dev/null) 2>/dev/null)"
}

_git_prompt () {
  if [[ "$(is_git_dirty)" == "dirty" ]]; then
    ZSH_THEME_GIT_PROMPT_PREFIX="$(_git_toplevel) %{$fg[red]%}"
  else
    ZSH_THEME_GIT_PROMPT_PREFIX="$(_git_toplevel) %{$fg[green]%}"
  fi
  echo "$(git_prompt_info)"
}

_change_title () {
  print -Pn "\033]0;%c\007"
}

ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "

PROMPT='$(_change_title) $(_smiley) $(_git_prompt)%{$fg[blue]%}→ %{$reset_color%}'
RPROMPT='%{$fg[yellow]%}%~%{$reset_color%}'
