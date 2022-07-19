#!/bin/bash
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
		echo "counter is: ${counter}"
		echo "$file"
		mv ${file} ${directory}/${counter}
		counter=$((counter+=1))
	done
}

#read -p 'Enter the directory path: ' directory
directory="./heh"
echo "directory is: ${directory}" 
read -p 'Proceed? Y/N: ' choice
choice=$(echo "${choice}" | tr '[:upper:]' '[:lower:]')

if [ "${choice}" = "yes" ] || [ "${choice}" = "y" ]; then
	printf "${GREEN}In progress...${NC}\n"


else
	printf "${RED}Abort${NC}\n"
	exit 1
fi
