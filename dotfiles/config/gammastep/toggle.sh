#!/bin/sh

if [ "$(pgrep -x gammastep)" ]; then
    killall gammastep
else
    gammastep &
fi
