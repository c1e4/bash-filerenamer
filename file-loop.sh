#!/bin/bash

#Colors
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color


#######################################
# Function that will loop through files in a directiry 
# 	and change their names according to their position
# Arguments:
#   $1 - target directory
# Outputs:
#   Writes status of renaming files to stdout
#######################################

rename_files() {
	counter=1;
	directory=$1
	for file in "$directory"/*; do
		#		echo "counter is: ${counter}"
		echo "renaming: $file -> ${directory}/${counter}"
		mv ${file} ${directory}/${counter}
		counter=$((counter+=1))
	done
}

#check if arguments are empty
if [ $# -eq 0 ];  then
	echo "No arguments provided."
	read -p 'Enter the directory path: ' targetDir;

else
	targetDir=$1
fi

#targetDir="./heh"

#check if target directory exists
if [[ ! -d "${targetDir}" ]]; then
	printf "${RED}Directory does not exist, please check the correctness of path and try again${NC}\n"
	exit 1;
fi

echo "Specified directory is: ${targetDir}" 
#get user confirmation before proceeding
read -p 'Proceed? Y/N: ' choice
#lowercase user input
choice=$(echo "${choice}" | tr '[:upper:]' '[:lower:]')

#If Y or Yes, then proceed with renaming
if [ "${choice}" = "yes" ] || [ "${choice}" = "y" ]; then


	printf "${GREEN}In progress...${NC}\n"

	#invoke function and send target directory as an argument
	rename_files $targetDir	

#otherwise print msg and stop	
else
	printf "${RED}Abort${NC}\n"
	exit 1
fi
