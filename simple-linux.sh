#!/bin/bash
# Setup paths for local and live wiki. Upstream must be setup prior to run this script.
# Author Rafael Rodriguez

LOCALWIKI=~/Workspace/Rafase282/FCC-Wiki
LIVEWIKI=~/Workspace/Rafase282/FreeCodeCamp.wiki
REMOTE="upstream"
BRANCH="master"

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
git fetch --all --prune
git pull $REMOTE $BRANCH
git push
echo "Done!"
cd ~
echo
date
