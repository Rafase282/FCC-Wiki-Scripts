#!/bin/bash

# Setup paths
LOCALWIKI="C:\Users\rafas\Documents\wiki"
BRANCH="upstream"
echo "Fork updater v1"
echo
echo "Move to Local Wiki directory at " + $LOCALWIKI
cd $LOCALWIKI
echo
echo Update master
git checkout master
git pull
echo "Sync fork..."
git fetch $BRANCH
git rebase remotes/$BRANCH/master
git push
echo "Done!"
echo
# Keep the windows Open until I press a key
echo "Press any key to close this windows..."
read -n 1 -s
