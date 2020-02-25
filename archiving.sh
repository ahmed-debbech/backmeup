#!/bin/bash

checkExistance(){
	fold="/backup/${USER}"
	if [[ -d ${fold} ]]; then
		echo -e "Folder found!\n"
		exit 0
	else
		echo -e "No folder found  to compress!\n"
		exit 1
	fi
}
archive(){
	echo "archiving... Please Wait"
	checkExistance;
	if [[ $? -eq 0 ]]; then 
		fold="/backup";
		cd /backup
		sudo tar -cf ${USER}.tar ${fold};
		sudo rm -r /backup/${USER}
		echo "Done archiving."
	fi
}
