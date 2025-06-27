#!/bin/bash
pkill -f 'hyprswitch gui'
sleep 0.1
hyprswitch gui --mod-key alt --key TAB --close mod-key-release "$@"

