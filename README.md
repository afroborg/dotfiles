# ⚙️ Dotfiles

## Pre-requisites

- A Unix-like operating system that supports Homebrew, such as macOS or Linux.
- [git](https://git-scm.com/)
- [zsh](https://www.zsh.org/)

## Installation

The entire setup _should_ be as easy as running the following command in your terminal:

```bash
git clone https://github.com/afroborg/dotfiles
cd dotfiles
./bootstrap.sh
```

This will download homebrew if not already installed, install the packages and casks from the [`Brewfile`] as well as run [stow](https://www.gnu.org/software/stow/) to symlink the dotfiles into your home directory.


## Testing in isolated environment

The dotfiles can be tested in a separate docker container running debian using the following command:
```bash
./docker-dev.sh
```

