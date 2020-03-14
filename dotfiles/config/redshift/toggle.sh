#!/bin/sh

if [ "$(pgrep -x redshift)" ]; then
    killall redshift
else
    redshift &
fi
