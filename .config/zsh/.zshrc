# prompt
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
	host="%F{green}%n%f@%m" # remote color
else
	host="%F{magenta}%n%f@%m" # local color
fi
PROMPT="${host} %F{cyan}%~%f %(?..%B%F{red}[%?]%f%b)> "

# load environment
if [ "$SYSTEMDUSERENVLOADED" != 1 ]; then
    for file in $HOME/.config/environment.d/*.conf; do
        export $(envsubst < ${file})
    done
fi

# load completion
autoload -Uz compinit
compinit -D
_comp_options+=(globdots)
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

# aliases & functions
alias ls="LC_ALL=C ls -Ah --color=auto --group-directories-first --time-style=iso"
alias dotfiles="git --git-dir $XDG_DATA_HOME/dotfiles --work-tree=$HOME"
function edit() { (&> /dev/null gnome-text-editor $1 &) }

# keybinds
bindkey '^[[3~' delete-char         # delete
bindkey '^[[1~' beginning-of-line   # home
bindkey '^[[4~' end-of-line         # end
bindkey '^[[3;5~' kill-word         # ctrl-delete
bindkey '^H' backward-kill-word     # ctrl-backspace
bindkey '^[[1;5C' forward-word      # ctrl-right
bindkey '^[[1;5D' backward-word     # ctrl-left

# packages
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
