#!/bin/bash

checkExist(){
        fold="/backup/${USER}"
        if [[ -f ${fold}.tar ]]; then
                echo "archive found"
                ret=0
        else
		echo "No archive found to compress"
                ret=1
        fi
}
compress(){
	ret=$(checkExist) 
	echo "Compressing... Please Wait"
	echo $ret
	if [[ ${ret} == "archive found" ]]; then
		if [[ $1 -eq 1 ]]; then
			fold="/backup/${USER}"
			sudo tar -czf ${fold}.tar.gz ${fold}.tar
			sudo rm ${fold}.tar
			echo "Done compressing."
		elif [[ $1 -eq 2 ]]; then
			fold="/backup/${USER}"
			sudo tar -czf ${fold}.tar.bz2 ${fold}.tar
			sudo rm ${fold}.tar
			echo "Done compressing."
		else
			until [[ $x -eq 1 || $x -eq 2 ]]
			do
				echo "1: compress in gz format"
				echo "2: compress in bz2 format"
				read x
			done
			fold="/backup/${USER}"
			if [[ ${x} -eq 1 ]]; then
			sudo tar -czf ${fold}.tar.gz ${fold}.tar
			else
			sudo tar -czf ${fold}.tar.bz2 ${fold}.tar
			fi
			sudo rm ${fold}.tar
			echo "Done compressing."
		fi
	fi
}

