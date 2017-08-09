#!/bin/zsh
export GOPATH=~/.go
export PATH=$(cope_path):/home/myrovh/.go/bin:$(ruby -e 'print Gem.user_dir')/bin:/home/myrovh/bin:$PATH
export SSH_AUTH_SOCK=/tmp/keeagent.sock
export ANDROID_HOME=~/.android

#START Zplug
source /usr/share/zsh/scripts/zplug/init.zsh 
zplug "yous/vanilli.sh"
zplug "b4b4r07/zplug"
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"
zplug "tarrasch/zsh-bd"
zplug "supercrabtree/k"
zplug "hcgraf/zsh-sudo"
zplug "zuxfoucault/colored-man-pages_mod"
zplug "zpm-zsh/mysql-colorize"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Can manage local plugins
zplug "~/.zsh", from:local

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose
#END Zplug

#START Alias
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'
#END Alias

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/myrovh/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
