#!/bin/bash
sleep 0.1

# Закрыть все уведомления (только если у тебя dunst)
dunstctl close-all

layouts=$(hyprctl devices | grep "active keymap" | awk -F': ' '{print $2}')
layout=$(echo "$layouts" | grep -v "English (US)" | head -n 1)

if [ -z "$layout" ]; then
    layout="English (US)"
fi

case "$layout" in
    *Ukrainian*)
        code="UA"
        ;;
    *Russian*)
        code="RU"
        ;;
    *English*)
        code="ENG"
        ;;
    *)
        code="??"
        ;;
esac

notify-send -a layout_switcher "$code"
