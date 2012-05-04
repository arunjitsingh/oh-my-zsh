#!/bin/zsh
# Copyright 2012 Arunjit Singh. All Rights Reserved.
# Author: Arunjit Singh <arunjit@me.com>

# My Theme

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
    #echo "%{$fg_bold[black]%}git:$state$(current_branch)%{$fg_bold[black]%}@$(git rev-parse --short HEAD)%{$reset_color%} "
    echo "%{$fg_bold[black]%}git:$state$(current_branch)%{$reset_color%} "
  else
    echo ""
  fi
}

ZSH_THEME_GIT_PROMPT_ADDED="%{$bg[green]$fg_bold[yellow]%} + %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$bg[yellow]$fg_bold[red]%} - %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$bg[yellow]$fg_bold[black]%} ∆ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$bg[yellow]$fg_bold[blue]%} ≈ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$bg[red]$fg_bold[black]%} ⇜ %{$reset_color%}"

ZSH_THEME_TERM_TITLE_IDLE='%c'
ZSH_THEME_TERM_TAB_TITLE_IDLE='%c'

#RPROMPT=' $(git_prompt_status) $(_smiley) ' # slows down the prompt
export RPROMPT='$(_smiley) %{$fg_bold[white]%}%D{%B %d (%A) %T}%{$reset_color%} '
export PROMPT=' %{$fg_bold[black]%}%? #%! %n@%m:%~ %#
 %{$fg_bold[yellow]%}$(ajs_cwd_fix)%{$reset_color%} $(_git_prompt)%{$fg_bold[blue]%}➜ %{$reset_color%}'