#!/bin/bash

source help.sh
source copy.sh
source archiving.sh
source compressing.sh
source restore.sh

graph(){
    action=$(yad --width 300 --title "Back Me Up" \
    --text "Choose an option" \
    --button="Save":1 --buttons-layout=center \
    --button="Archive":2 \
    --button="Compress":3 \
    --button="Restore":4)
    case $? in
        1) ./bkup.sh -s
            ;;
        2) ./bkup.sh -ar
            ;;
        3) set=$(yad --width 300 --title "Back Me Up" \
            --text "Choose in which format to compress" \
            --button="GZ format":1 --buttons-layout=center \
            --button="BZ2 format":2 )
            if [[ $? -eq 1 ]]; then
            ./bkup.sh -c1
            else
            ./bkup.sh -c2
            fi
            ;;
        4) ./bkup.sh -r
            ;;
    esac
}