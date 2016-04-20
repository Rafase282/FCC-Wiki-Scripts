#!/bin/bash
# Setup paths
LOCALWIKI="C:\Users\rafas\Documents\wiki"
REMOTE="FreeCodeCamp"
BRANCH="master"
echo "Fork updater v1"
echo
echo "Move to Local Wiki directory at " + $LOCALWIKI
cd $LOCALWIKI
echo
echo Update master
git checkout master
git pull
echo "Sync fork..."
git fetch $REMOTE
git rebase remotes/$REMOTE/$BRANCH
git push
echo "Done!"
echo
# Keep the windows Open until I press a key
echo "Press any key to close this windows..."
read -n 1 -s
