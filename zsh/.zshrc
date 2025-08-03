# vim: set ft=zsh :

if [[ -f "/opt/homebrew/bin/brew" ]] then
    eval "$(/opt/homebrew/bin/brew shellenv)"
    elif [[ -f "/home/linuxbrew/.linuxbrew/bin/brew" ]] then
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
fi

_modules=('commands' 'zinit' 'alias' 'env')
for m in $_modules; do source "$HOME/zsh/$m"; done

setopt autocd              # change directory just by typing its name
setopt correct             # auto correct mistakes

eval "$(mise activate zsh)"
