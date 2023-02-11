#!/bin/bash
watch -g swaymsg -t get_outputs
if lsusb | grep Dock >> /dev/null
then # Dock is connected
  swaymsg output eDP-1 disable
  echo "dock connected at $date"
else
    # Dock is not connected
  watch -g swaymsg -t get_outputs
  swaymsg output eDP-1 enable
fi
