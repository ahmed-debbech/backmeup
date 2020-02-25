#!/bin/bash

checkDirExistance(){
	fold="/backup/${USER}";
	if [[ -d "$fold" ]]; then
		echo -e "$fold found! \n";
	else
	    	sudo mkdir $fold;
		echo -e "$fold created.\n";
	fi
}
copy(){
	checkDirExistance;
	
}
