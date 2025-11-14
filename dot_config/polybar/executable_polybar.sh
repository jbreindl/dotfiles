#!/usr/bin/sh
# script from reddit https://www.reddit.com/r/i3wm/comments/6lo0z0/how_to_use_polybar/
# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

PRIMARY=$(xrandr --query | grep " connected" | grep "primary" | cut -d" " -f1)
OTHERS=$(xrandr --query | grep " connected" | grep -v "primary" | cut -d" " -f1)

# Launch on primary monitor
MONITOR=$PRIMARY polybar &
sleep 1

# Launch on all other monitors
for m in $OTHERS; do
 MONITOR=$m polybar &
done



