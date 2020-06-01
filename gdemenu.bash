#!/bin/bash

dmenu="rofi -dmenu -fuzzy -theme-str '#window {location: north; anchor: north; height: 30em;width:100%;}'"
#dmenu='dmenu -nb "#2d2d2d" -nf "#dddddd" -sb "#1f1f1f" -sf "#ffffff"  -fn "xos4 Terminus:size=14" -l 8'

num=$(gpaste-client --oneline | eval $dmenu | sed -r 's/:.*//')

gpaste-client select $num
