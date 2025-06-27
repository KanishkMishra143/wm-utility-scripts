#!/bin/bash

status=$(swaync-client -D | grep -o '"dnd": *[^,]*' | awk '{print $2}')

if [[ "$status" == "true" ]]; then
    echo "DND:1"
else
    echo "DND:0"
fi

