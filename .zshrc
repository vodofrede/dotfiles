# indlæs pakker
autoload -Uz compinit
compinit -D

# autofuldendelse
zstyle ':completion:*' menu select
zstyle ':completion:complete:*' gain-privileges 1
setopt COMPLETE_ALIASES

# prompt
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
	PROMPT="%F{green}%n@%m%f %~ > "
else
	PROMPT="%F{red}%n@%m%f %~ > "
fi

# indlæs andre filer
source $HOME/.zsh_aliases

# tmux
if [ -z "$TMUX" ]; then
    if [ "`pwd`" = "$HOME" ]; then
        SESSION="home"
    else
        SESSION="`pwd`"
    fi
    (tmux attach -t "$SESSION" || tmux new -t "$SESSION") && exit
fi
