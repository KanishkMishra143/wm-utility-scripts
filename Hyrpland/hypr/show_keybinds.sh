#!/bin/bash

FILE="$HOME/.config/hypr/scripts/keybinds.txt"

# Optional: set terminal title
echo -ne "\033]0;🧠 Hyprland Keybinds\007"

# Show with fzf or less
if command -v fzf &> /dev/null; then
    cat "$FILE" | fzf --no-sort --prompt="Keybinds > " --preview-window=up:wrap --layout=reverse
else
    less "$FILE"
fi

