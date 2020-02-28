#!/bin/bash

checkExistance(){
	fold="/backup/${USER}"
	if [[ -d ${fold} ]]; then
		echo -e "Folder found!\n"
		return 0
	else
		echo -e "No folder found  to compress!\n"
		return 1
	fi
}
archive(){
	echo "archiving... Please Wait"
	ret=${checkExistance};
	if [[ $ret -eq 0 ]]; then 
		fold="/backup/${USER}";
		sudo tar -czf ${fold}.tar ${fold};
		sudo rm -r ${fold}
		echo "Done archiving."
	fi
}
