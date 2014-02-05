#!/bin/sh
#
# ~/.xinitrc

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

#Load xresources
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
# Set background with nitrogen
nitrogen --restore &
# Start window manager
exec subtle
