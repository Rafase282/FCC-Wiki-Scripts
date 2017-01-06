#!/bin/bash

# Setup paths
LOCALWIKI=~/Workspace/Rafase282/My-FreeCodeCamp-Code.wiki
REMOTE="upstream"
BRANCH="master"
echo "Fork Reset v1"
echo
echo "Move to Local Wiki directory at " + $LOCALWIKI
cd $LOCALWIKI
echo
echo "Sync fork..."
git fetch --all --prune
git reset --hard $REMOTE/$BRANCH
git push -f origin $BRANCH
echo "Done!"
