#!/bin/bash
rmmod ftdi_sio
rmmod usbserial
sleep 1
modprobe ftdi_sio
modprobe usbserial
sleep 1
echo "0a5c 43fa" >> /sys/bus/usb-serial/drivers/ftdi_sio/new_id

