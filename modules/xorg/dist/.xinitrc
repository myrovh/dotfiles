#!/bin/sh

#Source scripts in xinit.d
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

#Load xresources
[[ -f ~/.xresources ]] && xrdb -merge ~/.xresources

# Start window manager
exec ~/bin/startwm
