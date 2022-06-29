#!/bin/sh

chosen=$(cut -d ';' -f1 $HOME/.local/share/emoji | fuzzel -d | sed "s/ .*//")

if [ -z "$chosen" ]; then
	exit
else
	wl-copy "$chosen"
fi
