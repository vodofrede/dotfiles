# Load packages
autoload -Uz compinit
compinit

# Configuration
zstyle ':completion:*' menu select
zstyle ':completion:complete:*' gain-privileges 1
setopt COMPLETE_ALIASES

# Prompt
PROMPT="%F{red}%n@%m%f %~ %# "

# Load other files
alias ls="ls --color=auto -lah --group-directories-first"