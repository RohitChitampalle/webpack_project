#!/bin/bash

echo "Wait Fetching from Origin ....."

# Fetch latest changes from the origin
git fetch origin main

echo "Fetching Done from Origin ....."


echo "Merging is Started from Origin ....."

# Attempt to merge
merge_output=$(git merge FETCH_HEAD 2>&1)

if [[ $merge_output == *"Already up to date."* ]]; then
    echo "Already up to date."
else
    echo "Successfully merged the latest updates from master"
fi
