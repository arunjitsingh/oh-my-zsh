# Path to your oh-my-zsh configuration.
ZSH=$HOME/Developer/src/ext/oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="ajs"

# Example aliases
alias zshconfig="mate ~/.zshrc"
alias rez="source ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx jake-node npm brew compleat)


setopt EXTENDED_GLOB

setopt prompt_subst

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
## BASE ##

export DEV_ROOT="~/Developer"
export DEV_SRC="~/Developer/src"
export DEV_LIB="~/Developer/lib"
export DEV_BIN="~/Developer/bin"

export SYM_SRC="~/src"

export WEBROOT="/Library/WebServer/Documents/"

# bind '"[A":history-search-backward'
# bind '"[B":history-search-forward'

#### PATH ####
export PATH="/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/X11/bin"
#### #### ####

source ~/dotfiles/env/apps
source ~/dotfiles/env/aliases
source ~/dotfiles/env/git-completion
