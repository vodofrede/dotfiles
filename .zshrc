# Indlæs pakker til zsh
autoload -Uz compinit
compinit -D

# Generel konfiguration
zstyle ':completion:*' menu select
zstyle ':completion:complete:*' gain-privileges 1
setopt COMPLETE_ALIASES

PROMPT="%F{red}%n@%m%f %~ %# "

# Indlæs andre filer
source $HOME/.zsh_aliases

# Brug tmux hvis tilgængelig
SESSION="`pwd | sed -E \"s#($HOME)\\$#main#\"`"
if [ "$TMUX" = "" ]
then
	(tmux attach -t $SESSION || tmux new -s $SESSION) && exit
fi
