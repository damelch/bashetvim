


shopt -s histappend
HISTCONTROL=ignoreboth
shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "${SHELL=/bin/sh lesspipe}"

if [ -f ~/.bash_aliases ]; then 
	. ~/.bash_aliases 
fi

if [ -f ~/.cbash_aliases ]; then
        . ~/.cbash_aliases
fi

PS1="\[\e[00;34m\]\u\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[00;31m\]\W\[\e[0m\]\[\e[00;37m\]> \[\e[0m\]"
