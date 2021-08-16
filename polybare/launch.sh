#!/usr/bin/bash
killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
  for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload white &
  done
else
  polybar --reload white &
fi
