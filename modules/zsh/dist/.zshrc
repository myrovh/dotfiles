# {{{ antigen
  source ~/.antigen/antigen.zsh

  antigen use oh-my-zsh

  antigen bundles <<EOBUNDLES
    git
    archlinux
    systemd
    nojhan/liquidprompt
    zsh-users/zsh-syntax-highlighting
    Tarrasch/zsh-bd
EOBUNDLES

  antigen apply
# }}}

# {{{ Startup scripts
  # Automatic startx
  if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]
  then
       startx > $HOME/.config/xorg/session.log 2>&1 &
  fi

  # Envoy (ssh key manager)
  envoy -t ssh-agent
  source <(envoy -p)

  # Base16 Shell
  BASE16_SCHEME="default"
  BASE16_SHELL="$HOME/bin/base16-$BASE16_SCHEME.dark.sh"
  [[ -s $BASE16_SHELL ]] && . $BASE16_SHELL
# }}}

# {{{ zsh settings
  #Command completion settings
  autoload -U compinit
  compinit
# }}}


# {{{ Alias
  #Replace git with hub
  eval "$(hub alias -s)"
# }}}

# {{{ Commands
help() {
  echo "\033[31myaourt\033[0m"
  echo "    \033[32myaconf\033[1;30m='yaourt -C'       \033[0mFix all configuration files with vimdiff"
  echo "    \033[32myaupg\033[1;30m ='yaourt -Syua'    \033[0mSynchronize with repositories before upgrading packages (AUR packages too)"
  echo "    \033[32myasu\033[1;30m  ='yaourt --sucre'  \033[0mSame as yaupg, but without confirmation"
  echo "    \033[32myain\033[1;30m  ='yaourt -S'       \033[0mInstall specific package(s) from the repositories"
  echo "    \033[32myains\033[1;30m ='yaourt -U'       \033[0mInstall specific package not from the repositories but from a file"
  echo "    \033[32myare\033[1;30m  ='yaourt -R'       \033[0mRemove the specified package(s), retaining its configuration(s) and required dependencies"
  echo "    \033[32myarem\033[1;30m ='yaourt -Rns'     \033[0mRemove the specified package(s), its configuration(s) and unneeded dependencies"
  echo "    \033[32myarep\033[1;30m ='yaourt -Si'      \033[0mDisplay information about a given package in the repositories"
  echo "    \033[32myareps\033[1;30m='yaourt -Ss'      \033[0mSearch for package(s) in the repositories"
  echo "    \033[32myaloc\033[1;30m ='yaourt -Qi'      \033[0mDisplay information about a given package in the local database"
  echo "    \033[32myalocs\033[1;30m='yaourt -Qs'      \033[0mSearch for package(s) in the local database"
  echo "    \033[32myalst\033[1;30m ='yaourt -Qe'      \033[0mList installed packages, even those installed from AUR (they're tagged as "local")"
  echo "    \033[32myaorph\033[1;30m='yaourt -Qtd'     \033[0mRemove orphans using yaourt"
  echo "\n\033[31mpacman\033[0m"
  echo "    \033[32mpaclist\033[1;30m                  \033[0mLists installed packages with description"
  echo "    \033[32mpacdisowned\033[1;30m"
  echo "    \033[32mpacmanallkeys\033[1;30m            \033[0mGet all keys for developers and trusted users"
  echo "    \033[32mpacmansignkeys\033[1;30m"
}
# }}}
