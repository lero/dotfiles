#!/bin/bash

name=$(iwgetid -r)

if [ ! $name ]; then
	echo " Off"
else
	echo "" $name
fi
