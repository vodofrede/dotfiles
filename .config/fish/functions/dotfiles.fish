function dotfiles --wraps='git --git-dir /home/vodofrede/.local/share/dotfiles --work-tree=/home/vodofrede' --description 'alias dotfiles=git --git-dir /home/vodofrede/.local/share/dotfiles --work-tree=/home/vodofrede'
  git --git-dir /home/vodofrede/.local/share/dotfiles --work-tree=/home/vodofrede $argv
        
end
