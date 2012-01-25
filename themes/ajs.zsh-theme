_smiley () {
  local prevret=$?
  if (( $prevret )); then
    echo -n "%{$bg[red]%}%{$fg_bold[yellow]%} $prevret %{$reset_color%}"
  else
    echo -n "%{$fg_bold[green]%}☻%{$reset_color%}"
  fi
}

_git_toplevel () {
  echo -n "$(basename $(git rev-parse --show-toplevel 2>/dev/null) 2>/dev/null)"
}

_git_prompt () {
  if [[ "$(is_git)" != "" ]]; then
    local state=""
    if [[ "$(is_git_dirty)" == "dirty" ]]; then
      state="%{$fg[red]%}"
    else
      state="%{$fg[green]%}"
    fi
    echo "$state$(current_branch)%{$reset_color%} "
  else
    echo ""
  fi
}

_cwd_fix () {
  local cwd=$(pwd)

  local home_src="$HOME/Developer/src"
  local home_src_out="~src /";
  cwd="${cwd/#$home_src/$home_src_out}"
  home_src="$HOME/src"
  cwd="${cwd/#$home_src/$home_src_out}"

  cwd="${cwd/#$HOME/~}"
  echo $cwd
}

_change_title () {
  print -Pn "\033]0;%c\007"
}

ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "

PROMPT=' %{$fg_bold[yellow]%}$(_cwd_fix)%{$reset_color%} $(_git_prompt)%{$fg_bold[blue]%}→ %{$reset_color%}'
RPROMPT='$(_smiley)'
