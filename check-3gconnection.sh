#!/bin/bash

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    echo "Online"
else
    echo "Offline"
    systemctl restart setup-sakis3g-modem.service 
fi
