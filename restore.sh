#!/bin/bash

checkExist() {
 fold="/backup/${USER}"
        if [[ -f ${fold}.tar ]]; then
                echo "archive found"
                ret=0
        else
		echo "No archive found to compress"
                ret=1
        fi
}

menu(){
	until [[ $x -eq 1 || $x -eq 2 ]]
	do
		echo "1 : decompress in gz format"
		echo "2 : decompress in xy format"
		read x;
	done
	case ${x} in
		1) x = 1;
			;;
		2) x = 2;
			;;
	esac
}

compress(){
	ret=$(checkExist) 
	echo "decompressing... Please Wait"
	echo $ret
	if [[ ${ret} == "archive found" ]]; then
		until [[ $x -eq 1 || $x -eq 2 ]]
		do
			echo "1: decompress in gz format"
			echo "2: decompress in xy format"
			read x
		done
		fold="/backup/${USER}"
		if [[ ${x} -eq 1 ]]; then
		sudo tar xvzf ${fold}.tar.gz ${fold}.tar 
		else
		sudo tar xvzf ${fold}.tar.xy ${fold}.tar
		fi
		sudo rm ${fold}.tar
		echo "Done decompressing."
	fi
}

