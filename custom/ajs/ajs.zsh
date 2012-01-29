setopt prompt_subst
autoload -U regexp-replace

## BASE ##

export DEV_ROOT="~/Developer"
export DEV_SRC="~/Developer/src"
export DEV_LIB="~/Developer/lib"
export DEV_BIN="~/Developer/bin"

export SRC_BASE=$DEV_SRC

export SYM_SRC="~/src"

export WEBROOT="/Library/WebServer/Documents/"

# bind '"[A":history-search-backward'
# bind '"[B":history-search-forward'

#### PATH ####
export PATH="/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/X11/bin"
#### #### ####

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
  local cwd=$(pwd)
  regexp-replace cwd "$HOME/(Developer/)?src/" "~src //"
  cwd="${cwd/#$HOME/~}"
  echo $cwd
}

ajs_change_title () {
  print -Pn "\033]0;%c\007"
}
