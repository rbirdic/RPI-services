#!/bin/bash

usb_network_id=$(lsusb | grep -s -i 'Huawei\|modem\|Networkcard' | awk '{print $6}')

sudo printf "USBINTERFACE=\"0\"\nAPN=\"internet\"\nAPN_USER=\"telenor\"\nAPN_PASS=\"gprs\"\nOTHER=\"USBMODEM\"\nMODEM_TYPE=\"USB\"\nCUSTOM_TTY=\"/dev/ttyUSB\"\nDEVICE=\"/dev/ttyUSB0\"\nUSBDRIVE=\"option\"\nMODEM=\"$usb_network_id\"" > /etc/sakis3g.conf
