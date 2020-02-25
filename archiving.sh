#!/bin/bash

archive(){
	echo "archiving... Please Wait"
	fold="/backup";
	cd /backup
	sudo tar -cf ${USER}.tar ${fold};
	sudo rm -r /backup/${USER}
	echo "Done archiving."
}
