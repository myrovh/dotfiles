# dotfiles

Personal repository of dotfiles managed with
[dotdrop](https://github.com/deadc0de6/dotdrop) dotfile manager.

## todo

- setup minimal nvim config that supports wal colours
- wpgtk
- qutebrowser
- i3-gaps with polybar
- sway
- use rclone to avoid the need for dropbox or megasync tray icons (insync and KeePassXC work fine without them)

## Gnome + Budgie

Configuration of the actual desktop will be manual for each wm. Gnome support for status indicators is very poor now but otherwise provides the better desktop experience.

### Gnome Packages

```sh
yay -S gnome gnome-shell-extension-appindicator-git gnome-shell-extension-no-title-bar-git gnome-shell-extension-topicons-plus-git papirus-icon-theme arc-gtk-theme
```

```sh
yay -S budgie-desktop budgie-extras budgie-pixel-saver-applet
```

## i3-gaps

### i3 Packages

```sh
yay -S i3-gaps polybar rofi
yay -S --asdeps perl-json-xs perl-anyevent-i3
```

## git

Git config is current user specific. Make sure ssh keys are being loaded via KeePassXC or other ssh agent helper. As all Bitbucket requests are processed as ssh not https.

## zsh

[Awesome zsh](https://github.com/unixorn/awesome-zsh-plugins)

### Alternative Prompts

- [slimline](https://github.com/mgee/slimline)
- [spaceship](https://github.com/denysdovhan/spaceship-prompt)
