#!/bin/bash

source help.sh
source copy.sh
source archiving.sh

if [[ $# -eq 0 ]]; then
        echo -e "No options provided.. Please enter an option!\n"
        echo -e "use -help or -h to see manual\n"
else
	declare -a arr=()
	#parse the arguments
	for(( i=0; i<=$#; i++ ));
	do
		arr+=($@ "$t");
		#$arr[$i] = "$i";
	done
	
	#start exiecuting the commands
	for(( i=0; i<=$#; i++ ));
	do
		case ${arr[$i]} in
			-s) copy 
				;;
			-ar) archive
				;;
			-c)
				;;
			-r)
				;;
			-h) help
				;;
			-help) help
				;;
		esac
	done
fi

