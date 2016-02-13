# FCC-Wiki-Scripts
A script to automate git commands related to the FCC Wiki

There are several scripts here.

# Glosary:
1. **LOCALWIKI:** This is a repository where you would normally send pull request to, usually [wiki](https://github.com/FreeCodeCamp/wiki) at gihub.
2. **LIVEWIKI:** This is the current repository where the wiki that gets displayed to the campers is, currently [Live](https://github.com/FreeCodeCamp/FreeCodeCamp/wiki)

# Notes:
The scripts take the assumption that you have already setup the upstream branch on the live wiki to point to the master of the local one so you can update directly. If you don't set this up before hand then it will not work.

`git remote add upstream git@github.com:FreeCodeCamp/wiki.git`

That code will do it, unless you use `https` in which case you are likely not used two step authentication which is a must for the FCC wiki if you have write access.

# Scripts:
## simple-linux.sh
 This was made to be run as a **cron** job.

 You need to edit the file to change the path where the local and live version of the wiki are based on your current setup.

## simple-win.sh
This was not made to be run as a cron job or any windows alternative but it can be made to by removing the requirement to press a key to close the windows.

You need to edit the file to change the path where the local and live version of the wiki are based on your current setup.

## config and Update-Wiki
These two work together are should not be used at the moment. They are a work in progress where I will work on a more robust and complex script to do many things.
