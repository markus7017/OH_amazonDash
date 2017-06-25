#!/bin/bash

log=/var/log/openhab2/dash_button.log
cd /usr/share/openhab2/bin
echo "Starting Dash Button monitoring script" > $ log
python ./dash_button.py 2>$log >/dev/null &
PID="$!"
echo "Dash Button handler started, pid=$PID" >> $log
