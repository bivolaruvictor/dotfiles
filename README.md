# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git
```
apt install git-all
```
### Stow

```
sudo apt-get install stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com/bivolaruvictor/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```

Further references regarding NvChad custom configuration: https://github.com/siduck/dotfiles/tree/master/nvchad/custom
