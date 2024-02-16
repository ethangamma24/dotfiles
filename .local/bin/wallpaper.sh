#!/bin/bash

horizontal=~/Documents/Wallpapers/Horizontal-Wallpapers
vertical=~/Documents/Wallpapers/Vertical-Wallpapers
monitor_one=`hyprctl monitors | grep "ID 0" | awk '{print $2}'`
monitor_two=`hyprctl monitors | grep "ID 2" | awk '{print $2}'`
monitor_three=`hyprctl monitors | grep "ID 1" | awk '{print $2}'`

M_ONE_ARRAY=("jpg" "jpeg" "png")
M_TWO_ARRAY=("jpg" "jpeg" "png")
M_THREE_ARRAY=("jpg" "jpeg" "png" "webp")
M_ONE_INDEX=$((RANDOM % 3))
M_TWO_INDEX=$((RANDOM % 3))
M_THREE_INDEX=$((RANDOM % 4))
M_ONE_EXTENSION=${M_ONE_ARRAY[$M_ONE_INDEX]}
M_TWO_EXTENSION=${M_TWO_ARRAY[$M_TWO_INDEX]}
M_THREE_EXTENSION=${M_THREE_ARRAY[$M_THREE_INDEX]}

random_background_one=$(ls $horizontal/*.$M_ONE_EXTENSION | shuf -n 1)
random_background_two=$(ls $horizontal/*.$M_TWO_EXTENSION | shuf -n 1)
random_background_three=$(ls $vertical/*.$M_THREE_EXTENSION | shuf -n 1)

hyprctl hyprpaper unload all

hyprctl hyprpaper preload $random_background_one
hyprctl hyprpaper preload $random_background_two
hyprctl hyprpaper preload $random_background_three

hyprctl hyprpaper wallpaper "$monitor_one, $random_background_one"
hyprctl hyprpaper wallpaper "$monitor_two, $random_background_two"
hyprctl hyprpaper wallpaper "$monitor_three, $random_background_three"
