#!/bin/bash

# Extract the active refresh rate from wlr-randr
FPS=$(wlr-randr | awk '/eDP-1/,/^\s*$/' | grep '(preferred, current)' | head -n1 | grep -o '[0-9.]* Hz' | awk '{print $1}' | cut -d'.' -f1)

# Fallback if FPS is empty
echo "${FPS:-N/A} FPS"

