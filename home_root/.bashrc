#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# env & interactive
if [ -f ~/.bash/env.sh ]; then
    . ~/.bash/env.sh
fi
if [ -f ~/.bash/interactive.sh ]; then
    . ~/.bash/interactive.sh
fi

