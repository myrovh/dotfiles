source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git

antigen bundle nojhan/liquidprompt

antigen bundle zsh-users/zsh-syntax-highlighting

# bd implementation in zsh
antigen bundle Tarrasch/zsh-bd

antigen apply

#configs for envoy (ssh key manager)
envoy -t ssh-agent
source <(envoy -p)

#Set correct term for ssh into other computers (need condition for tty vs xorg)
export TERM="xterm-256color"

#Command completion settings
autoload -U compinit
compinit

# Base16 Shell
BASE16_SCHEME="default"
BASE16_SHELL="$HOME/bin/base16-$BASE16_SCHEME.dark.sh"
[[ -s $BASE16_SHELL ]] && . $BASE16_SHELL

#Alias
#Replace git with hub
eval "$(hub alias -s)"
