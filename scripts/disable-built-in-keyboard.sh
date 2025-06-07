#!/bin/bash

# Path to store the PID of the running command
PID_FILE="/tmp/disable_built_in_keyboard.pid"

case "$1" in
    "add")
        # Start your command here (replace with your desired command)
        sudo evtest --grab /dev/input/event3 &
        # Store the PID of the command
        echo $! > "$PID_FILE"
        ;;
    "remove")
        # Kill the command if it exists
        if [ -f "$PID_FILE" ]; then
            PID=$(cat "$PID_FILE")
            kill "$PID" 2>/dev/null
            rm "$PID_FILE"
        fi
        ;;
esac
