#!/bin/bash

## This script finds all the git repositories recurcively from the folder the scripts sits in and add them to the nextcloud exclusion list.
## I had issues with nextcloud syncing my git repositories, this either created nextcloud sync conflicts or git merge conflicts. So I always excluded my git repo from being synced by nextcloud.
## This script just automates the process. Best place it at the root of your nexcloud directory and execute it. That way it gets them all.

exlist=~/.config/Nextcloud/sync-exclude.lst

for string in $(find . -name .git -type d -prune );
do
        len=${#string}-6
        ex=${string:2:$len}
        echo "excluding \"$ex\" from NextCloud sync"
        echo $ex >> $exlist
done

# Cleaning up to remove duplicates
cat $exlist | sort -u | uniq -u > /tmp/nc_uniq
mv /tmp/nc_uniq $exlist

