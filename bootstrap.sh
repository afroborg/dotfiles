#!/usr/bin/env zsh

# check if homebrew is installed
if ! command -v brew > /dev/null 2>&1; then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" < /dev/null

    if [[ -f "/opt/homebrew/bin/brew" ]] then
        eval "$(/opt/homebrew/bin/brew shellenv)"
        elif [[ -f "/home/linuxbrew/.linuxbrew/bin/brew" ]] then
        eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    else
        echo "No homebrew to eval"
        exit 1
    fi

else
    echo "Homebrew is already istalled"
fi

echo "Installing homebrew bundles...\n"

brew bundle

echo "Homebrew bundles installed\n"

stow_folders=(
    zsh
    git
    nvim
    starship
    ghostty
    mise
    tmux
)

stow zsh $stow_folders[@]

echo "Installing tools using mise...\n"
mise install
echo "Installation complete\n"

