#!/bin/sh

setxkbmap -option terminate:ctrl_alt_bksp

~/.fehbg &
~/.config/lemonbar/simplelemon.sh &
picom &

exec sowm
