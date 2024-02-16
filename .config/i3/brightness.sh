#!/bin/bash

i3status -c ~/.config/i3/i3status | while :
do
    read line 
    brightness=$(light)
    echo "$brightness"
done
