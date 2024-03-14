function ssh-copy-id
    mkdir $HOME/.ssh
    command ssh-copy-id -F /home/vodofrede/.config/ssh/config -t ~/.config/ssh/authorized_keys $argv    
    rmdir $HOME/.ssh || true
end
