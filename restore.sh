#!/bin/bash

restore(){
	ret=$(checkIfFound) 
	echo "decompressing... Please Wait"
	fold="/backup/${USER}"
	if [[ -f ${fold}.tar.bz2 ]]; then
	sudo tar -xvjf ${fold}.tar.bz2 -C $HOME
	sudo rm ${fold}.tar.gz
	echo "Done decompressing."
	elif [[ -f ${fold}.tar.gz ]]; then
	sudo tar -xvzf ${fold}.tar.gz -C $HOME
	sudo rm ${fold}.tar.gz
	echo "Done decompressing."
	else
	echo "No file found to restore";
	fi
}

