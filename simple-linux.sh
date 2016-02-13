#!/bin/bash
# Setup paths for local and live wiki. Upstream must be setup prior to run this script.
# Author Rafael Rodriguez

LOCALWIKI="/home/pi/workspace/wiki"
LIVEWIKI="/home/pi/workspace/FreeCodeCamp.wiki"

date
echo "FreeCodeCamp Wiki updater v1"
echo
echo "Move to Local Wiki directory at" $LOCALWIKI
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
git fetch upstream
git pull upstream master
git push
echo "Done!"
cd /home/pi/
echo
date
