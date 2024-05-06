#!/usr/bin/env zsh
#set -eu


alias sr='source ~/.zshrc'

alias lt='ls -rtlFh --color=auto'
alias ll='ls -alFh --color=auto'
alias wh='which'
alias pwd='pwd; pwd | pbcopy'

alias lg='lazygit'
alias gs='git status'
alias gba='git branch -a'
alias grv='git remote -v'


alias vi='nvim'
alias vim='nvim'

# http://blog.amedama.jp/entry/2015/09/15/194322 -> brew install findutils
alias xargs="gxargs"
alias sed='gsed'

alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
alias saila='sail artisan'

if type trash > /dev/null 2>&1; then
    alias rm='trash -F'
fi



