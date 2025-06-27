#!/bin/bash

VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100)}')
IS_MUTED=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -q MUTED && echo true || echo false)

if [ "$VOLUME" -gt 100 ]; then
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 100%
    VOLUME=100
fi

if [ "$IS_MUTED" = "true" ]; then
    ICON="🔇" : MSG="Muted"
else
    if [ "$VOLUME" -lt 30 ]; then
        ICON="🔈"
    elif [ "$VOLUME" -lt 70 ]; then
        ICON="🔉"
    else
        ICON="🔊"
    fi
    MSG="Volume: $VOLUME%"
fi

# Clear old notification panel (optional)
swaync-client -C

# Send new notification
notify-send -a "Volume" "$ICON" "$MSG"
