#!/bin/sh

MUTED=$(audioctl get-mute-output)
VOLUME=$(audioctl get-volume-output)

if [ $VOLUME -eq 0 ] || [ $MUTED = "yes" ]; then
	ICON=""
elif [ $VOLUME -gt 0 ] && [ $VOLUME -le 49 ]; then
	ICON=""
elif [ $VOLUME -ge 50 ]; then
	ICON=""
fi

echo "$ICON $VOLUME%"
