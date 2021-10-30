# Indlæs pakker til zsh
autoload -Uz compinit
compinit -D

# Generel konfiguration
zstyle ':completion:*' menu select
zstyle ':completion:complete:*' gain-privileges 1
setopt COMPLETE_ALIASES

if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]
then
	PROMPT="%F{green}%n@%m%f %~ %# "
else
	PROMPT="%F{red}%n@%m%f %~ %# "
fi

# Indlæs andre filer
source $HOME/.zsh_aliases

# Brug tmux hvis tilgængelig
SESSION="`pwd | sed -E \"s#($HOME)\\$#main#\"`"
if [ "$TMUX" = "" ]
then
	(tmux attach -t $SESSION || tmux new -s $SESSION) && exit
fi
