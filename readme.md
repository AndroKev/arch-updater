Simple script which updates your archlinux-db

I use it to update them once a week and call it everytime i got an internet connection.

    cat /etc/NetworkManager/dispatcher.d/20-pacmanupdate

    #!/bin/bash

    if [ "$2" == "up" ] ;then
       export DISPLAY=:0
       export XAUTHORITY=~/.Xauthority
       bash "./arch_updater.sh" &
    fi
