#!/bin/bash

wget -q --spider http://google.com

if [ $? -eq 0 ]; then
    echo "Online"
else
    echo "Offline"
    sudo systemctl restart setup-sakis3g-modem.service
    sleep 5
    sudo systemctl restart internet.service
fi
