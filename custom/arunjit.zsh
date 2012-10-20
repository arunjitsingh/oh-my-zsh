#!/bin/zsh
# Copyright 2012 Arunjit Singh. All Rights Reserved.
# Author: Arunjit Singh <arunjit@me.com>

# My Configuration

setopt prompt_subst
autoload -U regexp-replace

## BASE ##

export EDITOR="subl"

export DEV_ROOT="$HOME/Developer"
export DEV_SRC="$DEV_ROOT/src"
export DEV_LIB="$DEV_ROOT/lib"
export DEV_BIN="$DEV_ROOT/bin"
export DEV_DATA="$DEV_ROOT/data"

export GOOG="/usr/local/google"
export PYAE="$GOOG/appengine/python"

export BUILD_DEFS="$DEV_SRC/build_defs"

export SRC_BASE=$DEV_SRC
export SYM_SRC="$HOME/src"

export WEBROOT="/Library/WebServer/Documents/"

# bind '"[A":history-search-backward'
# bind '"[B":history-search-forward'

#### PATH ####
PATH="/usr/local/bin:/usr/X11/bin:/usr/sbin:/usr/bin:/sbin:/bin"
export PATH="$DEV_BIN:$PATH"
#### #### ####

## INCLUDE FLAGS ##
export CPPFLAGS="-I$DEV_SRC -I/usr/local/include -I/usr/include -I/include"
export CXXFLAGS=$CPPFLAGS
## LIBRARY FLAGS ##
export LDFLAGS="-L$DEV_LIB -L/usr/local/lib -L/usr/lib"

export CC=clang
export CXX=clang++

### OTHER ###
# git theming default: Variables for theming the git info prompt
ZSH_THEME_GIT_PROMPT_PREFIX=""   # Prefix at the very beginning of the prompt, before the branch name
ZSH_THEME_GIT_PROMPT_SUFFIX=""   # At the very end of the prompt
ZSH_THEME_GIT_PROMPT_DIRTY=""   # Text to display if the branch is dirty
ZSH_THEME_GIT_PROMPT_CLEAN=""    # Text to display if the branch is clean

is_git() {
  local ref=$(git symbolic-ref HEAD 2> /dev/null) || ""
  echo $ref
}

# Checks if working tree is dirty
is_git_dirty() {
  if [[ -n $(git status -s --ignore-submodules=dirty 2> /dev/null) ]]; then
    echo "dirty"
  else
    echo ""
  fi
}

ajs_cwd_fix () {
  local cwd="$(pwd)"
  regexp-replace cwd "$HOME/(Developer/)?src/" "~src //"
  cwd="${cwd/#$HOME/~}"
  echo $cwd
}

ajs_change_title () {
  print -Pn "\033]0;%c\007"
}

for config_file ($ZSH_CUSTOM/arunjit/*.zsh) source $config_file
