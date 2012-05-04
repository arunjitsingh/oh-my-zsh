#!/bin/zsh
# Copyright 2012 Arunjit Singh. All Rights Reserved.
# Author: Arunjit Singh <arunjit@me.com>

# My Configuration

## APPLICATION SETTINGS ##

# ls
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# # PHP
# export PATH="${PATH}:/usr/lib/php/bin"
# 
# # MongoDB
# export PATH="${PATH}:/usr/local/mongodb/bin"
# export MONGO_DATA="/usr/local/mongodb/data/db"
# export MONGO_LOG="/usr/local/mongodb/log/server.log"
# alias mongodb="sudo mongod --dbpath=${MONGO_DATA} --fork --logpath=${MONGO_LOG} --logappend --rest"
# alias mongodb-stop="echo 'are you sure? use <kill -2 pid> or <kill -15 pid> and avoid dataloss' && ps aux | grep mongod"
# 
# # MySQL DB
# export PATH="${PATH}:/usr/local/mysql/bin"
# alias mysqldb="sudo /usr/local/mysql/bin/mysqld_safe --user=mysql &"
# alias mysqldb-stop="echo 'root'@'localhost' && sudo /usr/local/mysql/bin/mysqladmin shutdown -p"
# 
# # Catalina / Tomcat 7
# export CATALINA_HOME="/usr/local/tomcat"
# alias tomcat-start="sudo /usr/local/tomcat/bin/catalina.sh start"
# alias tomcat-stop="sudo /usr/local/tomcat/bin/catalina.sh stop"
# 
# # Cappuccino & Narwhal
# export PATH="${PATH}:/usr/local/narwhal/bin"
# #export CAPP_BUILD="/usr/local/narwhal/packages/cappuccino/Frameworks"
# export CAPP_BUILD="/usr/local/src/cappuccino/Build"
# #export CAPP_BUILD="/usr/local/narwhal/packages/cappuccino"
# export NARWHAL_ENGINE="jsc"
# #export NARWHAL_JSC_MODE="webkit"

# NodeJS
export JS_CMD="node"
alias npmg="npm -g"
alias npmgi="npm -g install"
export NODE_PATH="node_modules:lib/node_modules:$DEV_LIB/node_modules:$BUILD_DEFS:/usr/local/lib/node_modules"
####

# Google Go programming language
export GOROOT="$GOOG/go"
export GOOS="darwin"
export GOARCH="amd64"
export GOHOSTOS="darwin"
export GOHOSTARCH="amd64"
export GOBIN="$GOROOT/bin"
export PATH="$PATH:$GOBIN"

# Setting PATH/PYTHONPATH for Python 2.7
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/2.7/bin"
export PYTHONPATH="/Users/arunjitsingh/src/python:$BUILD_DEFS:/usr/local/google_appengine"
# Setting PATH for Python 3.2
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.2/bin"

# Perforce
export P4NAME="ajsmbp"
export P4ROOT="/usr/local/dbs/p4data"
export P4PORT=1666
export P4EDITOR="mate"

# Closure Library/Compiler
alias gjsl="gjslint"
alias gjslh="gjslint --check_html"
#alias gclc="java -jar /usr/local/bin/closure-compiler.jar"

# Google tools and depot_tools
export PATH="$PATH:$GOOG/bin:$GOOG/depot_tools"

# NACL
export NACL_SDK_ROOT="$DEV_SDK/nacl"
export NACL_VERSION="pepper_16"
alias nacl_init="$NACL_SDK_ROOT/$NACL_VERSION/project_templates/init_project.py"

# Ruby
export PATH="$PATH:/usr/local/Cellar/ruby/1.9.3-p0/bin/"

