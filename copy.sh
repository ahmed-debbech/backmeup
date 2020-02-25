#!/bin/bash

checkDirExistance(){
	fold="/backup/${USER}";
	if [[ -d "$fold" ]]; then
		echo -e "$fold directory found! \n";
	else
	    	sudo mkdir $fold;
		echo -e "$fold created.\n";
	fi
}
copy(){
	checkDirExistance;
	cwd=$(pwd);
	sudo cp -R $cwd "/backup/${USER}";	
	echo -e "Copied successfully\n";
}
