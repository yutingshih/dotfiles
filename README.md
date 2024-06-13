# dotfiles

This repository contains my dotfiles configuration files, managed and deployed using [GNU Stow](https://www.gnu.org/software/stow/), a symlink farm manager used to maintain groups of related files in a place.

## Prerequisites Installation

### Ubuntu

```shell
sudo apt install -y stow
```

### macOS

```shell
brew install stow
```

## Directory Structure and Terminology

If you check the help message of `stow`, you will see some specific terms such as **package**, **stow directory**, or **target**. Below are explanations and a simple diagram.

```shell
stow -h
```

- **Target directory**: The final location where the files should be placed (default: `../`). Typically, this is your home directory `~`.
- **Package directory**: A set of related configuration files. For example, the `bash` package includes `.bashrc` and `.bash_profile`.
- **Stow directory**: The root directory containing all the packages (default: `./`). In this case, it is `~/dotfiles`.

```
target_directory (typically $HOME) <----+
                                        |
stow_directory (this git repo)          |
|-- package_directory ------------------+
|-- package_directory ------------------+
`-- package_directory ------------------+
```

Reference: [GNU Stow Manual](https://www.gnu.org/software/stow/manual/stow.html)

## Usage

### Apply Stow Package

```shell
cd ~/dotfiles
stow bash vim
```

If conflicts occur, adopt the setting in target directory and hard reset it.

```bash
stow --adopt -v bash
git reset --hard
```

### Create Stow Package

Manually

```shell
mkdir -p dotfiles/{bash,vim}
cp ~/.bashrc dotfiles/bash
cp ~/.vimrc dotfiles/vim
```

Or automatically

```shell
stow --adopt bash vim
```

### Delete Stow Package

```shell
cd ~/dotfiles
stow -D bash vim
```
