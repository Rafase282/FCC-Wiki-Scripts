#!/bin/bash

# Setup paths
LOCALWIKI="C:\Users\rafas\Documents\wiki"
BRANCH="FreeCodeCamp"
echo "Fork Reset v1"
echo
echo "Move to Local Wiki directory at " + $LOCALWIKI
cd $LOCALWIKI
echo
echo "Sync fork..."
git fetch $BRANCH
git reset --hard $BRANCH/master
git push -f origin master
echo "Done!"
echo
# Keep the windows Open until I press a key
echo "Press any key to close this windows..."
read -n 1 -s