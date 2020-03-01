#!/bin/bash

source help.sh
source copy.sh
source archiving.sh
source compressing.sh
source restore.sh

graph(){
    re=$(zenity --forms --title="Back Me Up" \
    --text="Enter options sperated by space." \
    --add-entry="for more info type -h" \
    --ok-label="Run")
    ./bkup.sh $re
}