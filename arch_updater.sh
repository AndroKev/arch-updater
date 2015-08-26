#!/bin/bash

#settingsfile exists?
if [ -a "settings.txt" ] ;then
    DAY=`cat settings.txt`
else
    DAY=`date +%s`
    sleep 1
fi

if [ `date +%s` -gt "$DAY" ] ;then
    notify-send "Arch-Updater" "Checking for Updates!"
    pacman -Sy && notify-send "Arch-Updater" "DB wurden erfolgreich aktualisiert" || notify-send "Arch-Updater" "There was an error!"
    DAY=`date --date='6 days' +%s`
    echo  "$DAY" > settings.txt
fi
