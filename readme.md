# dotfiles

Personal repository of dotfiles managed with
[dotdrop](https://github.com/deadc0de6/dotdrop) dotfile manager.

## todo

- change zstorage setup. move data and config to their own subvolumes underneath an enc dataset so that both data and config are encrypted while still allowing unencrytped datasets to be created later. Also move the mount point for the new datasets to /srv/data|config
- zfs encryption password prompt on boot
- weekly zfs scrub systemd script
- setup home as a zfs dataset
- fix network so packets can get through both routers
- try traefik instead of nginx + ldap [example](https://jellyfin.org/docs/general/networking/traefik.html)
- put all docker images behind the letsencrypt proxy using nginx virtual host configs
- [dynamic dns script](https://developer.dnsimple.com/ddns/)
- fix up rutorrent configs
- additional containers
  - jellyfish
  - projectsend
  - [wiki.js](https://wiki.js.org/)
  - [SeaTable](https://seatable.io/)
  - Bookstack
  - airsonic
  - calibre-web
  - lazylibrarian
  - lychee
  - minetest
  - muximux
  - photoshow
  - piwigo
  - pydio
  - pyload
  - syncthing
  - booksonic
- fix screen off and suspend timer on sway (probably need to swtich back to swaylock)
- use variables to set screen and lock timeouts so that desktop and laptop can have different times
- setup keybinds for screenshots and video recording wayland tools

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

## GTK + QT

```sh
yay -S plata-theme qt5-styleplugins papirus-icon-theme bibata-cursor-theme
```

Set `QT_QPA_PLATFORMTHEME=gtk2` to instruct qt5 applications to use the correct theme.

## Sway

```sh
yay -S sway swaybg swayidle swaylock waybar pavucontrol nerd-fonts-roboto-mono wofi pamixer azote redshift-wlr-gamma-control-git jq mako
```

### Optional

wdisplays is useful for laptops where you might want to plug in a one time external display. It works like arandr. wf-recorder and grim can be used for video and screenshots respectively. Slup allow you to define an area to shoot with the mouse.

```sh
yay -S wdisplays-git wf-recorder grim slurp
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
- [Powerlevel9k](https://github.com/Powerlevel9k/powerlevel9k/)

## CTOGGHA Setup

1. Setup systemd-resolved
   - `ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf`
   - `systemctl enable systemd-resolved`
2. Copy `/etc/systemctl/network` files from dotfiles repo
3. Enable networkd, ssh and iwd
   - `systemctl enable systemd-networkd`
   - `systemctl enable iwd`
   - `systemctl enable sshd`
4. Use `iwctl` to connect to a wifi endpoint

### Rsync

`server_destination` is the root folder where you want the local_folder to be copied.

`rsync -r ${local_folder} -e 'ssh -p ${server_ssh_port}' --progress 10.10.10.60:${server_destination}`
