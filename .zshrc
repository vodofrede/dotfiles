# Load packages
autoload -Uz compinit
compinit

# Configuration
zstyle ':completion:*' menu select
zstyle ':completion:complete:*' gain-privileges 1
setopt COMPLETE_ALIASES

# Prompt
PROMPT="%F{red}%n@%m%f %~ %# "

# Environment variables
export TERM=xterm

# Load other files
source $HOME/.zsh_aliases

