# dotfiles
This is my personal repository of dotfiles configured to use the
[dotfile](https://github.com/kelseyjudson/dotfile) dynamic dotfile manager.

#Install Steps
* Download repo into ~/.config/dotfile/
* Install dotfile with “gem install dotfile”
* Add dotfile executable to path with “export PATH=$PATH:/home/usernaem/.gem/ruby/2.2.0/bin/”
* Set up ~/.config/dotfile/.dotfile.conf.local with required settings
* Run “dotfile -u” to update all the configs for the choses modules

# Modules
## git
Sets a few basic settings in gitconfig.
#### Variables Used
* git_user: "github username"
* git_email: "github email"

## termite
Settings file for termite.
#### Variables Used
* base00: "hex value"
* base01: "hex value"
* base02: "hex value"
* base03: "hex value"
* base04: "hex value"
* base05: "hex value"
* base06: "hex value"
* base07: "hex value"
* base08: "hex value"
* base09: "hex value"
* base0A: "hex value"
* base0B: "hex value"
* base0C: "hex value"
* base0D: "hex value"
* base0E: "hex value"
* base0F: "hex value"

## vim
Custom settings for [spf13](http://vim.spf13.com/). Uses Inconsolata for Powerline as font.

## emacs
Some custom settings for emacs [prelude](https://github.com/bbatsov/prelude).

## xorg
Sets up xresources colour scheme, adds xinit configs and defines dark themed xscreensaver colours.
#### Variables Used
* wm_program: "name of executable"
* x_theme: "file path of xresources file"

## i3
Settings for i3 and i3status.
#### Variables Used
* base00: "hex value"
* base01: "hex value"
* base02: "hex value"
* base03: "hex value"
* base04: "hex value"
* base05: "hex value"
* base06: "hex value"
* base07: "hex value"
* base08: "hex value"
* base09: "hex value"
* base0A: "hex value"
* base0B: "hex value"
* base0C: "hex value"
* base0D: "hex value"
* base0E: "hex value"
* base0F: "hex value"

## zsh
Installs antigen to automatically add additional functionality to zsh shell. Adds some yaourt aliases (type 'help' to view them). Adds automatic startx. Requires the bin module to set colour scheme.
#### Variables Used
* autostart_on: "true or false"
* base16_scheme: "name of scheme (exclude file extension)"

# Licence
GPLv3
