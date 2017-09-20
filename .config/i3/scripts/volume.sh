#!/bin/bash

mute=$(amixer -c0 get Master | grep Mono: | awk '{print $6}')
vol=$(amixer -c0 get Master | grep Mono: | awk '{print $4}' | tr -d '[%]')

if [ $mute == "[on]" ]; then
    if [ $vol -le 50 ]; then
        echo ""
    elif [ $vol -le 100 ]; then
        echo ""
    fi
else
    echo "" 
fi
