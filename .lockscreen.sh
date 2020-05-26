#!/bin/sh
if [ -f "/usr/bin/betterlockscreen" ]; then
betterlockscreen -l dimblur
exit 0
fi

i3lock -i ~/.i3lock.png

