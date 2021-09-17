#!/bin/bash

$AUTOSTART

is_mute()
{
  if [ amixer get Master | tail -2 | grep -q '\[on\]' ]; then
    return "墳"
  else
    return "婢"
  fi
}

while true; do
  xsetroot -name " ﮮ $(checkupdates | wc -l) |  $(date +"%a, %d %b %I:%M %p") "
  sleep 10s
done &
