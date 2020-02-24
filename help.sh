#!/bin/bash 

help() {
echo -e "Usage: bkup [OPTION] \n"
echo -e " BackMeUp: 	provides a way to save your personal data and helps \n 
                    	you to get  easily access to them. \n"
echo -e " -s 		copy data in the requested directory \n" 
echo -e " -ar 		archive and delete all your data with the help of the command tar\n"
echo -e " -c 		compress and delete all your data \n"
echo -e " -r 		restore all your data \n" 
echo -e " -h or -help  	if you need any help \n"
}

