#!/bin/zsh
# Copyright 2012 Arunjit Singh. All Rights Reserved.
# Author: Arunjit Singh <arunjit@me.com>

# My Theme

_smiley () {
  local prevret=$?
  if (( $prevret )); then
    echo -n "%{$bg[red]%}%{$fg[yellow]%} $prevret %{$reset_color%}"
  else
    echo -n "%{$fg[green]%}\o/%{$reset_color%}"  # ☻
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
    #echo "%{$fg[black]%}git:$state$(current_branch)%{$fg[black]%}@$(git rev-parse --short HEAD)%{$reset_color%} "
    echo "$state$(current_branch)%{$reset_color%} "
  else
    echo ""
  fi
}

ZSH_THEME_GIT_PROMPT_ADDED="%{$bg[green]$fg[yellow]%} + %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$bg[yellow]$fg[red]%} - %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$bg[yellow]$fg[black]%} ∆ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$bg[yellow]$fg[blue]%} ≈ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$bg[red]$fg[black]%} ⇜ %{$reset_color%}"

ZSH_THEME_TERM_TITLE_IDLE='%c'
ZSH_THEME_TERM_TAB_TITLE_IDLE='%c'

export RPROMPT='$(_smiley)'
export PROMPT=' %{$fg[black]%}#%! %n@%m %D{%Y-%m-%d %T}
 %{$fg[yellow]%}$(ajs_cwd_fix)%{$reset_color%} $(_git_prompt)%{$fg[blue]%}➜ %{$reset_color%}'
