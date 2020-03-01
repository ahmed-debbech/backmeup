#!/bin/bash

source help.sh
source copy.sh
source archiving.sh
source compressing.sh
source restore.sh
source graphics.sh

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
	for(( i=0; i<=$#-1; i++ ));
	do
		case ${arr[$i]} in
			-s) copy 
				;;
			-ar) archive
				;;
			-c) compress
				;;
			-c1) compress 1
				;;
			-c2) compress 2
				;;
			-r) restore
				;;
			-g) graph
				;;
			-h) help
				;;
			-help) help
				;;
			*) echo "This option is not available atm"
				;;
		esac
	done
fi

