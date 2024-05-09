#!/bin/bash

current_layout=$(setxkbmap -query | grep layout | awk '{print $2}')
if [ "$current_layout" == "br" ]; then
    setxkbmap us
elif [ "$current_layout" == "us" ]; then
    setxkbmap br
else
    echo "Unknown layout: $current_layout"
fi
xmodmap ~/.Xmodmap
