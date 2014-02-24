# dotfiles
This is my personal repository of dotfiles configured to use the
[dot-install](https://github.com/myrovh/dot-install) package manager.

## Modules
### pacman
There are three custom repositories added to the pacman.conf. [haskell-core]
for additional haskell packages. [archlinuxfr] for yaourt. [infinality-bundle]
and infinality-bundle-fonts] for improved font rendering and automatic
substitution of microsoft fonts with fonts with more permissive licences.

* Install pacman.conf
* Install yaourt package via pacman
* [TODO] get keys for infinality and haskell-core signed using post script

### git
* Install git and hub packages
* Install '.gitconfig' file the 'idname' and 'idemail' values _need_ to be set in the '~/.dot/rc' file.

### subtle
* [TODO] Install subtle-hg package via yaourt (must run pacman bundle beforehand)
* [TODO] Install subtle-contrib via mercury into '~/bin'
* Install 'subtle.rb' config file

### termite
* [TODO] Install termite via yaourt
* Install 'config' file for termite

### vim
* [TODO] install gvim via pacman (make sure to check for x11 before installing gvim in script)
* Install NeoBundle
* Install '.vimrc' file

### xinit
* Install '.xinit' + '.xresources'

### zsh
* Install zsh via pacman
* Install zsh config files + antigen via submodule
* Switch user to zsh shell

## Licence
GPLv3
