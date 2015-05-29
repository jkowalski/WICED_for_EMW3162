#!/bin/bash
rmmod ftdi_sio >> /dev/null
rmmod usbserial >> /dev/null
sleep 1
modprobe ftdi_sio
modprobe usbserial
sleep 1
echo "0a5c 43fa" >> /sys/bus/usb-serial/drivers/ftdi_sio/new_id
cp -n 70-wiced-jtag.rules /etc/udev/rules.d/

