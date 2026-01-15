//When connecting back to Wi-Fi, you will be prompted to enter the password again.
//To trust the connection and speed up the act of the script, you can add this command:
//nmcli connection modify "Home-Wifi-Name" connection.autoconnect yes


#!/bin/bash 
//path to bash may be different depending on the distro!

WIFI="Home-Wifi-Name"

if nmcli -t -f TYPE,STATE dev | grep -q "^wifi:connected"
then
    nmcli connection down "$WIFI"
else
    nmcli connection up "$WIFI"
fi
