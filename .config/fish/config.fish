if status is-interactive
    # full prompt
    set -U fish_prompt_pwd_dir_length 0.

    # remove greeting
    set fish_greeting

    # ctrl-backspace ctrl-del
    bind \cH backward-kill-word
end
