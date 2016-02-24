#!/bin/bash

status=$(acpi -b | awk '{print $3}' | tr -d ,)
percent=$(acpi -b | awk '{print $4}' | tr -d %,)

if [ $status == "Charging" ]; then
    echo " $percent%" 
elif [ $percent -lt 20 ]; then
    echo " $percent%"
elif [ $percent -lt 40 ]; then 
    echo " $percent%"
elif [ $percent -lt 60 ]; then
    echo " $percent%"
elif [ $percent -lt 80 ]; then
    echo " $percent%"
else
    echo " $percent%"
fi 
