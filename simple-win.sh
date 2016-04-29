#!/bin/bash
# Setup paths for local and live wiki. Upstream must be setup prior to run this script.
# Author: Rafael Rodriguez

LOCALWIKI="C:\Users\rafas\Documents\wiki"
LIVEWIKI="C:\Users\rafas\Documents\FreeCodeCamp.wiki"
REMOTE="upstream"
BRANCH="master"

echo "FreeCodeCamp Wiki updater v1"
echo
echo "Move to Local Wiki directory at " + $LOCALWIKI
cd $LOCALWIKI
echo
echo "Updating local repository..."
git pull
git status
echo
echo "Done!"
echo "Going to the live Wiki ..."
cd $LIVEWIKI
echo
echo "Update live wiki..."
git fetch --all --prune
git pull $REMOTE $BRANCH
git push
echo "Done!"
echo
# Keep the windows Open until I press a key
echo "Press any key to close this windows..."
read -n 1 -s
