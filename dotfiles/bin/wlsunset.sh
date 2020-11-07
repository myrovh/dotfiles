#!/bin/sh

if [ "$(pgrep -x wlsunset)" ]; then
    killall wlsunset
else
    # Melbourne lat long
    wlsunset -l -37.8 -L 144.9 &
fi
