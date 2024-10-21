# required packages: zsh-autosuggestions zsh-syntax-highlighting

# prompt
if [ -n "$container" ]; then
    host="%F{yellow}%n%f@%m"  # container
elif [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    host="%F{green}%n%f@%m"   # remote
else
    host="%F{magenta}%n%f@%m" # local
fi
PROMPT="${host} %F{cyan}%~%f %(?..%B%F{red}[%?]%f%b)> "

# load environment
for file in "$HOME"/.config/environment.d/*.conf; do
    export $(envsubst < "$file")
done

# enable history
HISTFILE="$HOME"/.config/zsh/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY

# load completion
autoload -Uz compinit
compinit -D
_comp_options+=(globdots)
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

# aliases & functions
alias ls='LC_ALL=C ls -Ah --color=auto --group-directories-first --time-style=iso'
alias dotfiles='git --git-dir $XDG_DATA_HOME/dotfiles --work-tree=$HOME'

# keybinds
bindkey '^[[3~' delete-char         # delete
bindkey '^[[1~' beginning-of-line   # home
bindkey '^[[4~' end-of-line         # end
bindkey '^[[3;5~' kill-word         # ctrl-delete
bindkey '^H' backward-kill-word     # ctrl-backspace
bindkey '^[[1;5C' forward-word      # ctrl-right
bindkey '^[[1;5D' backward-word     # ctrl-left

# load packages
plugin_dir="/usr/share"
if [ -d "/usr/share/zsh/plugins" ]; then
    plugin_dir="/usr/share/zsh/plugins"
fi
source "${plugin_dir}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "${plugin_dir}/zsh-autosuggestions/zsh-autosuggestions.zsh"
