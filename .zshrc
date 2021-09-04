# Load packages
autoload -Uz compinit
compinit -D

# Configuration
zstyle ':completion:*' menu select
zstyle ':completion:complete:*' gain-privileges 1
setopt COMPLETE_ALIASES

# Prompt
PROMPT="%F{red}%n@%m%f %~ %# "

# Load other files
source $HOME/.zsh_aliases
