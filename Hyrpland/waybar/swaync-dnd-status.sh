#!/bin/bash

# Persistent listener to swaync events
swaync-client --subscribe | while read -r _; do
    dnd=$(swaync-client -D)
    echo "$dnd"
done

