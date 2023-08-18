#!/bin/env bash
id=$(xinput | grep "Asus Keyboard .* (3)]" | grep -Po 'id=\K\d+')
device_enable=$(xinput list-props $id | grep 'Device Enabled' | grep -Eo '(0|1)$')
if [ $device_enable -eq 1 ]; then
  xinput disable $id
else
  xinput enable $id
fi
