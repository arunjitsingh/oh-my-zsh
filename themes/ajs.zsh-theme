_git_prompt () {
  if [[ "$(is_git_dirty)" == "dirty" ]]; then
    ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}"
  else
    ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
  fi
  echo "$(git_prompt_info)"
}

ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "

PROMPT=' $(_git_prompt)%{$fg[blue]%}→ %{$reset_color%}'
RPROMPT='%{$fg[gray]%}%~'
