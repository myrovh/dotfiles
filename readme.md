# dotfiles

Personal repository of dotfiles managed with
[dotdrop](https://github.com/deadc0de6/dotdrop) dotfile manager.

## todo

- automatic snapshots of zfs datasets
- every 6 months zfs scrub systemd script
- [dynamic dns script](https://developer.dnsimple.com/ddns/)
- fix screen off and suspend timer on sway (probably need to swtich back to swaylock)
- use variables to set screen and lock timeouts so that desktop and laptop can have different times
- setup keybinds for screenshots and video recording wayland tools
- megasync needs sway rules set so its always in floating mode
- set startup applications: keepassxc, insync, mega

## Initial Setup

### Install an aur manager

Make sure `base-devel` and `git` are installed.

If you are going to install the shell profile also install `zsh` and change your users shell with `chsh -s /bin/zsh`

```sh
git clone https://aur.archlinux.org/yay-bin.git ~/build/yay-bin
cd ~/build/yay-bin && makepkg -si
```

### Clone and install repo

```sh
yay -S dotdrop
git clone https://github.com/myrovh/dotfiles.git ~/.config/dotdrop
dotdrop install -p ${PROFILE}
```

Once the initial setup is done and you at lease installed the `shell` profile you can relog into zsh and run `dropglobal` to setup system configs (`sudo` needs to be installed and configured).

## Vim

`curl -sLf https://spacevim.org/install.sh | bash`

## GTK + QT

```sh
yay -S plata-theme qt5-styleplugins papirus-icon-theme bibata-cursor-theme
```

Set `QT_QPA_PLATFORMTHEME=gtk2` to instruct qt5 applications to use the correct theme.

## Sway

```sh
yay -S sway swaybg swayidle swaylock waybar pavucontrol nerd-fonts-roboto-mono nerd-fonts-iosevka wofi pamixer azote redshift-wlr-gamma-control-git jq mako polkit-gnome alacritty
```

### Optional

wdisplays is useful for laptops where you might want to plug in a one time external display. It works like arandr. wf-recorder and grim can be used for video and screenshots respectively. Slup allow you to define an area to shoot with the mouse.

```sh
yay -S wdisplays-git wf-recorder grim slurp
```

## i3-gaps

### i3 Packages

```sh
yay -S i3-gaps polybar rofi xorg-xinit kitty kitty-terminfo nerd-fonts-roboto-mono picom feh
yay -S --asdeps perl-json-xs perl-anyevent-i3
```

## git

Git config is current user specific. Make sure ssh keys are being loaded via KeePassXC or other ssh agent helper because all Bitbucket requests are processed as ssh not https.

## Alacritty

Alacritty uses Iosevka Nerd Font

[Awesome zsh](https://github.com/unixorn/awesome-zsh-plugins)

### Alternative Prompts

- [slimline](https://github.com/mgee/slimline)
- [spaceship](https://github.com/denysdovhan/spaceship-prompt)
