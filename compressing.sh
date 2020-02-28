#!/bin/bash

checkExist(){
        fold="/backup/${USER}"
        if [[ -d ${fold}.tar ]]; then
                echo "archive found"
                return 0
        else
		echo "No archive found to compress"
                return 1
        fi
}
menu(){
	x = -1;
	until [[ $x -eq 1 || $x -eq 2 ]]
	do
		echo "1 : compress in gz format"
		echo "2 : compress in xy format"
		read x;
	done
	case $x in
		1) return 1;
			;;
		2) return 2;
			;;
	esac
}
compress(){
	ret=${checkExist}
	echo "Compressing... Please Wait"
	if [[ $ret -eq 0 ]]; then
		frmt=${menu}
		fold="/backup/${USER}"
		if [[ ${frmt} -eq 1 ]]; then
		sudo tar -czf ${fold}.tar.gz ${fold}.tar
		else
		sudo tar -czf ${fold}.tar.xy ${fold}.tar
		fi
		sudo rm ${fold}.tar
		echo "Done compressing."
	fi
}

