#!/usr/bin/sh
# script from reddit https://www.reddit.com/r/i3wm/comments/6lo0z0/how_to_use_polybar/
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch polybar
for m in $(polybar --list-monitors | cut -d":" -f1); do
  MONITOR=$m polybar &
done

