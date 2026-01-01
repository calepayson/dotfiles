#!/bin/bash
if hyprctl devices | grep -q "foostan-corne"; then
    ln -sf ~/.config/hypr/binds-corne.conf ~/.config/hypr/binds-active.conf
else
    ln -sf ~/.config/hypr/binds-default.conf ~/.config/hypr/binds-active.conf
fi
hyprctl reload
