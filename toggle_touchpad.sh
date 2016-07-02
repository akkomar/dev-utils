#!/bin/bash
status=$(xinput list-props 12 | grep "Device Enabled" | awk '{print $(NF)}')
if [ $status == "1" ]
then
  xinput set-prop 12 "Device Enabled" 0
else
  xinput set-prop 12 "Device Enabled" 1
fi
