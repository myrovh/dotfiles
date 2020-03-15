# dotfiles

Personal repository of dotfiles managed with
[dotdrop](https://github.com/deadc0de6/dotdrop) dotfile manager.

Install this repo to `~/.config/dotdrop`

## todo

- qutebrowser
- create template files for configs that i3 and sway can share
- sway
- use rclone to avoid the need for megasync tray icons (insync and KeePassXC work fine without them)
- redshift and backlight control with keyboard shortcuts

## GTK + QT

```sh
yay -S plata-theme qt5-styleplugins papirus-icon-theme bibata-cursor-theme
```

Set `QT_QPA_PLATFORMTHEME=gtk2` to instruct qt5 applications to use the correct theme.

## Sway

```sh
yay -S sway swaybg swayidle swaylock waybar pavucontrol nerd-fonts-roboto-mono wofi pamixer azote redshift-wlr-gamma-control-git fg
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
yay -S i3-gaps polybar rofi xorg-xinit kitty kitty-terminfo nerd-fonts-roboto-mono picom feh
yay -S --asdeps perl-json-xs perl-anyevent-i3
```

## git

Git config is current user specific. Make sure ssh keys are being loaded via KeePassXC or other ssh agent helper. As all Bitbucket requests are processed as ssh not https.

## zsh

[Awesome zsh](https://github.com/unixorn/awesome-zsh-plugins)

### Alternative Prompts

- [slimline](https://github.com/mgee/slimline)
- [spaceship](https://github.com/denysdovhan/spaceship-prompt)
