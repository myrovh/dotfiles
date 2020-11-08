#!/bin/sh

if [ "$(pgrep -x wlsunset)" ]; then
    echo "wlsunset already running"
    exit 0
else
    # Melbourne lat long
    wlsunset -l -37.8 -L 144.9 &
fi
