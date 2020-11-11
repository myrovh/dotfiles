# dotfiles

Personal repository of dotfiles managed with
[dotdrop](https://github.com/deadc0de6/dotdrop) dotfile manager.

## todo

- switch to https://asdf-vm.com/#/ for management of runtimes
- use variables to set screen and lock timeouts so that desktop and laptop can have different times
- add suspend timer to swayidle so system will sleep after a period defined by a variable
- setup keybinds for screenshots and video recording wayland tools

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
yay -S plata-theme qt5-styleplugins papirus-icon-theme bibata-cursor-theme gtk-engine-murrine ttf-roboto
```

Set `QT_QPA_PLATFORMTHEME=gtk2` to instruct qt5 applications to use the correct theme. (should be automatically set by xprofile or environment.d)

### Fonts

```sh
yay -S ttf-twemoji noto-fonts-cjk ttf-iosevka nerd-fonts-iosevka
sudo ln -sf /etc/fonts/conf.avail/75-twemoji.conf /etc/fonts/conf.d/75-twemoji.conf`
```

## KeepassXC

```sh
yay -S keepassxc libsecret systemd-ssh-agent openssh
systemctl --user enable ssh-agent.service
```

## Sway

```sh
pamac -S sway swayidle swaylock waybar pavucontrol pamixer azote wlsunset mako alacritty qt5-wayland light cozette-otb playerctl imv wdisplays grim slurp greetd gtkgreet poweralertd lxqt-policykit
# systemctl enable greetd (broken right now, blocks swaylock)
```

### Optional

wdisplays is useful for laptops where you might want to plug in a one time external display. It works like arandr. wf-recorder and grim can be used for video and screenshots respectively. Slurp allow you to define an area to shoot with the mouse.

```sh
yay -S wf-recorder mupdf-gl zathura zathura-cb zathura-pdf-mupdf
```

## git

Git config is current user specific. Make sure ssh keys are being loaded via KeePassXC or other ssh agent helper because all Bitbucket requests are processed as ssh not https.

[Awesome zsh](https://github.com/unixorn/awesome-zsh-plugins)

### Alternative Prompts

- [slimline](https://github.com/mgee/slimline)
- [spaceship](https://github.com/denysdovhan/spaceship-prompt)

# Software

## aur

- [pikaur](https://github.com/actionless/pikaur)

## Terminals

- [foot](https://codeberg.org/dnkl/foot)

## IDE

- [emacs with pure gtk support (for wayland)](https://github.com/masm11/emacs#emacs-supporting-pure-gtk3)

## Sway

- https://codeberg.org/dnkl/yambar
