#!/bin/bash

checkExit(){
        fold="/backup/${USER}"
        if [[ -d ${fold} ]]; then
                echo -e "No archive found to compress!\n"
                exit 0
        else
                exit 1
        fi
}

compress(){
	echo "Compressing... Please Wait"
	fold="/backup"
	tar -cvzf ${fold}.tar.gz ${fold}/${USER}
	echo "Done compressing."
}

