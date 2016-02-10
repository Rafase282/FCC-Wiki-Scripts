#!/bin/bash
# 

if [ "$1" = "-h" ]; then
     echo "Script to update the local and live version of the FreeCodeCamp wiki"
     echo "Usage: Update-Wiki.sh full_path_to_config.sh "
     echo "Example ~/Desktop/config.sh"
     sleep 3
	 exit 0
elif [ "$1" = "-help" ]; then
     echo "Script to update the local and live version of the FreeCodeCamp wiki"
     echo "Usage: Update-Wiki.sh full_path_to_config.sh "
     echo "Example ~/Desktop/config.sh"
     sleep 3
	 exit 0
elif [ "$1" = "" ]; then
     echo "Undefined parameters"
     echo "Usage: Update-Wiki.sh full_path_to_config.sh "
     echo "Example ~/Desktop/config.sh"
     sleep 3
	 exit 1
fi
configPath=$1

source $configPath

echo "FreeCodeCamp Wiki updater v1"
echo
echo "Move to Local Wiki directory at " + $workspace$local_wiki
cd $workspace$local_wiki
echo
echo "Updating local repository..."
git pull
git status
echo
echo "Done!"
echo "Going to the live Wiki ..."
cd $workspace$live_wiki
echo
echo "Update live wiki..."
git fetch upstream
git pull upstream master
git push
echo "Done!"
echo

# Keep the windows Open until I press a key
echo "Press any key to close this windows..."
#read -n 1 -s
sleep 5
exit 0