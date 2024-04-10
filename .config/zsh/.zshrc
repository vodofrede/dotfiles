autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

PROMPT="%F{green}%n%f@%m %F{cyan}%~%f %(?..%B%F{red}[%?]%f%b)> "

alias ls="LC_ALL=C ls -Ah --color=auto --group-directories-first --time-style=iso"
alias dotfiles="git --git-dir $XDG_DATA_HOME/dotfiles --work-tree=$HOME"
function edit() {
	(&> /dev/null gnome-text-editor $1 &) 
}
