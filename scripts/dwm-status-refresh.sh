#!/bin/bash


#datetime

#DateTime=$(date +"%a %m-%d %T" )
#xsetroot -name "Bat.$BackLight|Vol.$Volume|$DateTime|[$BatteryStatus:$Battery]"

print_date(){
	date '+%Y-%m-%d %H:%M'
}


print_mem(){
	memfree=$(($(grep -m1 'MemAvailable:' /proc/meminfo | awk '{print $2}') / 1024))
	echo -e "$memfree"
}

#xsetroot -name " 💿 $(print_mem)M $(dwm_alsa)  $(print_bat)  $(print_date) "
xsetroot -name " 💿 $(print_mem)  $(print_date) "
