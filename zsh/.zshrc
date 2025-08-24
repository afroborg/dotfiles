# vim: set ft=zsh :

if [[ -f "/opt/homebrew/bin/brew" ]] then
    eval "$(/opt/homebrew/bin/brew shellenv)"
    elif [[ -f "/home/linuxbrew/.linuxbrew/bin/brew" ]] then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

_modules=('commands' 'env' 'zinit' 'alias' 'ssh-keys')
for m in $_modules; do source "$HOME/zsh/$m"; done

setopt autocd              # change directory just by typing its name
setopt correct             # auto correct mistakes
setopt globdots            # enable tab completion for hidden files

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Check that the function `starship_zle-keymap-select()` is defined.
# xref: https://github.com/starship/starship/issues/3418
type starship_zle-keymap-select >/dev/null || eval "$(starship init zsh)"
