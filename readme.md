Simple script which updates yout archlinux-db

I use it to update them once a week and call it everytime i got an internet connection.

    /etc/NetworkManager/dispatcher.d/20-pacmanupdate:

    #!/bin/bash

    if [ "$2" == "up" ] ;then
       cd "/home/samsung/Coding/arch_updater"
       export DISPLAY=:0
       export XAUTHORITY=/home/samsung/.Xauthority
       bash "./arch_updater.sh" &
    fi
