# Historik

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize

# Prompt

# Default debian prompt
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\] \$ '
# Simplified prompt
PS1="\e[0;32m\u@\h\e[m \w > "

# Andre filer

. ~/.bash_aliases
