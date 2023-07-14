#!/bin/sh
# get ipad info from connected device

device_list=$HOME/db/devices/jamf_ipad_list.csv
get_device_info() {
    serial=$(cfgutil get serialNumber)
    grep_device=$(grep "$serial" $device_list)
    subject=$(echo $grep_device | awk -F"," '{print "model: ",$2," | name: ",$1," | asset:",$3," | Issue: "}')
    osascript -e 'display notification "getting device info" with title "CFG Device Info"'
    echo $subject &&
    afplay /System/Library/Sounds/Ping.aiff
    echo $subject | pbcopy
}
if [[ $(cfgutil pair) ]]; then
    osascript -e 'display notification "initiating configurator" with title "CFG Device Info"'
    get_device_info
fi
