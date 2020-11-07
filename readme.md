# dotfiles

Personal repository of dotfiles managed with
[dotdrop](https://github.com/deadc0de6/dotdrop) dotfile manager.

## todo

- switch to https://asdf-vm.com/#/ for management of runtimes
- fix screen off and suspend timer on sway (probably need to swtich back to swaylock)
- use variables to set screen and lock timeouts so that desktop and laptop can have different times
- setup keybinds for screenshots and video recording wayland tools
- megasync needs sway rules set so its always in floating mode
- set startup applications: keepassxc, insync, mega
- rework sway config so it can be used a main desktop environment again (maybe look into copying reform's sway setup)

## Initial Setup

Create user account (use wheel in Arch and sudo in Debian)

- use 'sudo' on debian instead of wheel
- if needed use `-u 1000 -g 1000` to set the user and group ids but 1000 should be the default for both

```sh
useradd -m -G wheel ${USERNAME}
chsh -s /bin/zsh ${USERNAME} #if zsh is installed
```

### Install on Arch Linux

Make sure `base-devel` and `git` are installed.

If you are going to install the shell profile also install `zsh` and change your users shell with `chsh -s /bin/zsh`

```sh
git clone https://aur.archlinux.org/yay-bin.git ~/build/yay-bin
cd ~/build/yay-bin && makepkg -si
yay -S dotdrop
```

### Install on Debian

```sh
sudo apt update && sudo apt install python3-pip
pip3 install --user dotdrop
```

### Clone and install repo

```sh
git clone https://github.com/myrovh/dotfiles.git ~/.config/dotdrop
dotdrop install -p ${PROFILE}
```

Once the initial setup is done and you at least installed the `shell` profile you can relog into zsh and run `dropglobal` to setup system configs (`sudo` needs to be installed and configured).

## Shell

Install `zsh` and `unzip` zinit needs unzip to install some binaries.

```sh
chsh -s /usr/bin/zsh
```

## Vim

`curl -sLf https://spacevim.org/install.sh | bash`

## Emacs

`emacs-git` package could also be installed to get a more up to date version of emacs.

```sh
yay -S emacs ripgrep clang tar fd languagetool hunspell hunspell-en_US hunspell-en_AU
```

Doom packages need to be setup manually.

```sh
~/.doom/bin/doom sync
```

## GTK + QT

```sh
yay -S plata-theme qt5-styleplugins papirus-icon-theme bibata-cursor-theme gtk-engine-murrine roboto
```

Set `QT_QPA_PLATFORMTHEME=gtk2` to instruct qt5 applications to use the correct theme. (should be automatically set by  xprofile or environment.d)

### Fonts

```sh
yay -S ttf-twemoji noto-fonts-cjk
sudo ln -sf /etc/fonts/conf.avail/75-twemoji.conf /etc/fonts/conf.d/75-twemoji.conf`
```

## KeepassXC

zshenv is setup to run gnome-keyring on system login. gnome-keyring is used by as the ssh agent so it needs to be installed and running to get ssh key insertion.

```sh
yay -S keepassxc libsecret systemd-ssh-agent openssh
systemctl --user enable ssh-agent.service
```

## Sway

```sh
yay -S sway swayidle swaylock waybar pavucontrol pamixer azote wlsunset mako alacritty qt5-wayland light cozette-otb
```

### Optional

wdisplays is useful for laptops where you might want to plug in a one time external display. It works like arandr. wf-recorder and grim can be used for video and screenshots respectively. Slurp allow you to define an area to shoot with the mouse.

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


# Software

## Terminals
- [foot](https://codeberg.org/dnkl/foot)

## IDE

- [emacs with pure gtk support (for wayland)](https://github.com/masm11/emacs#emacs-supporting-pure-gtk3)

## Sway

- https://codeberg.org/dnkl/yambar