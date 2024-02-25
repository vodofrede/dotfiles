function ls --wraps='command ls'
  LC_ALL=C command ls -Ah --color=auto --group-directories-first --time-style=iso $argv
end
