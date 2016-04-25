#!/bin/bash
# Setup paths
LOCALWIKI=~/Workspace/wiki
REMOTE="upstream"
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
git rebase $REMOTE/$BRANCH
git push
echo "Done!"
