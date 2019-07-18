# dotfiles

Personal repository of dotfiles managed with
[dotdrop](https://github.com/deadc0de6/dotdrop) dotfile manager.

Install this repo to `~/.config/dotdrop`

## todo

- qutebrowser
- i3-gaps with polybar
- sway
- use rclone to avoid the need for dropbox or megasync tray icons (insync and KeePassXC work fine without them)

## GTK + QT

```sh
yay -S plata-theme qt5-styleplugins
```

Set `QT_QPA_PLATFORMTHEME=gtk2` to instruct qt5 applications to use the correct theme.

## Sway

```sh
yay -S sway swaybg swayidle swaylock waybar j4-dmenu-desktop bemenu
```

## Gnome

Configuration of the actual desktop will be manual

### Gnome Packages

```sh
yay -S gnome gnome-tweaks xorg-xinit
```

#### Extensions

- Kstatusnotifieritem/appindicator support
- Unite
- User themes
- Cpufreq

## i3-gaps

### i3 Packages

```sh
yay -S i3-gaps polybar rofi xorg-xinit
yay -S --asdeps perl-json-xs perl-anyevent-i3
```

## git

Git config is current user specific. Make sure ssh keys are being loaded via KeePassXC or other ssh agent helper. As all Bitbucket requests are processed as ssh not https.

## zsh

[Awesome zsh](https://github.com/unixorn/awesome-zsh-plugins)

### Alternative Prompts

- [slimline](https://github.com/mgee/slimline)
- [spaceship](https://github.com/denysdovhan/spaceship-prompt)
