function ls --wraps='command ls -lah --group-directories-first --color=auto' --wraps='LC_ALL=C ls -lAh --color=auto --no-group --group-directories-first --time-style=iso' --wraps='LC_ALL=C command ls -lAh --color=auto --no-group --group-directories-first --time-style=iso' --wraps='LC_ALL=C command ls -Ah --color=auto --no-group --group-directories-first --time-style=iso' --description 'alias ls=LC_ALL=C command ls -Ah --color=auto --no-group --group-directories-first --time-style=iso'
  LC_ALL=C command ls -Ah --color=auto --no-group --group-directories-first --time-style=iso $argv
        
end
