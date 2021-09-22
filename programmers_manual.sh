#!/usr/bin/env bash

PROMPT=$(man -k . | grep "(3)" | awk '{print $1}' | dmenu -p "Search" -l 20)

if [ ! -z "$PROMPT" ]; then
  alacritty -t "Programmer's Manual" -e man 3 $PROMPT
fi
