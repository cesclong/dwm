#!/bin/sh


function dwm_powermenu(){
    options="Cancel\nShutdowm\nRestart\nSleep\nLock"
    selected=$(echo -e $options | dmenu)
    if [[ $selected = "Shutdown" ]]; then
        poweroff
    elif [[$selected = "Restart"]]; then 
        reboot
    elif [[$selected = "Sleep"]]; then 
        systemctl suspend
    elif [[$selected = "Lock"]]; then 
        slock
    elif [[$selected = "Cancel"]]; then 
        return
    fi

}

dwm_powermenu

