#!/bin/bash
killall hyprswitch
sleep 0.2
hyprswitch init --show-title --custom-css ~/.config/hypr/hyprswitch.css &

