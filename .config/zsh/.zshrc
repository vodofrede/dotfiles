# indlæs pakker
autoload -Uz compinit
compinit -D

# generelt
zstyle ':completion:*' menu select
zstyle ':completion:complete:*' gain-privileges 1
setopt COMPLETE_ALIASES

# prompt
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
	PROMPT="%F{green}%n@%m%f %~ > "
else
	PROMPT="%F{red}%n@%m%f %~ > "
fi

# aliaser
alias dotfiles="git --git-dir $HOME/.local/share/dotfiles --work-tree=$HOME"
alias ls="LC_ALL=C ls -lAh --color=auto --no-group --group-directories-first --time-style=iso"
alias fsharpc="dotnet build"
alias fsharpi="dotnet fsi"
alias zshrc="nano $HOME/.config/zsh/.zshrc && source $HOME/.config/zsh/.zshrc"
alias grep="ripgrep"
alias find="fd"

# indlæs andre filer
#source $HOME/.aliases

# tmux
if [ -z "$TMUX" ]; then
    if [ "`pwd`" = "$HOME" ]; then
        SESSION="home"
    else
        SESSION="`pwd`"
    fi
    (tmux attach -t "$SESSION" || tmux new -t "$SESSION") && exit
fi
