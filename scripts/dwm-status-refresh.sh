#!/bin/bash


#datetime

DateTime=$(date +"%a %m-%d %T" )
#xsetroot -name "Bat.$BackLight|Vol.$Volume|$DateTime|[$BatteryStatus:$Battery]"
xsetroot -name "$DateTime"

