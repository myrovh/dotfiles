#!/bin/zsh
export GOPATH=~/go
export PATH=$(cope_path):$(yarn global bin):/home/myrovh/go/bin:$(ruby -e 'print Gem.user_dir')/bin:/home/myrovh/bin:$PATH
export SSH_AUTH_SOCK=/tmp/keeagent.sock
export ANDROID_HOME=~/.android
export GEM_HOME=$(ruby -e 'print Gem.user_dir')

#START Zplug
source /usr/share/zsh/scripts/zplug/init.zsh 
zplug "yous/vanilli.sh"
zplug "b4b4r07/zplug"
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"
zplug "tarrasch/zsh-bd"
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

# Import colorscheme from wal
(cat ~/.cache/wal/sequences &)

#START Alias
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='exa --colour-scale'
alias k='exa --colour-scale -abghHliS'
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

# vte3 PROMPT_COMMAND for tilix
if [[ $TILIX_ID ]]; then
	source /etc/profile.d/vte.sh
fi