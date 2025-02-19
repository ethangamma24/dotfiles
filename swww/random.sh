#!/bin/bash

# This script will randomly go through the files of a directory, setting it
# up as the wallpaper at regular intervals
#
# NOTE: this script is in bash (not posix shell), because the RANDOM variable
# we use is not defined in posix

# if [[ $# -lt 1 ]] || [[ ! -d $1   ]]; then
# 	echo "Usage:
# 	$0 <dir containing images>"
# 	exit 1
# fi

# Edit below to control the images transition
export SWWW_TRANSITION_FPS=60
export SWWW_TRANSITION_STEP=2

horizontal=/home/thetincan/Documents/Wallpapers/Horizontal-Wallpapers
vertical=/home/thetincan/Documents/Wallpapers/Vertical-Wallpapers
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
# This controls (in seconds) when to switch to the next image
INTERVAL=300

while true; do
# 	find "$1" -type f \
# 		| while read -r img; do
# 			echo "$((RANDOM % 1000)):$img"
# 		done \
# 		| sort -n | cut -d':' -f2- \
# 		| while read -r img; do
# 			swww img "$img"
# 			sleep $INTERVAL
# 		done
    swww img -o $monitor_one "$random_background_one" -t random
    swww img -o $monitor_two "$random_background_two" -t random
    swww img -o $monitor_three "$random_background_three" -t random
    sleep $INTERVAL
done
