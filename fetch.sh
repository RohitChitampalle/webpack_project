#!/bin/bash

# Name of the new file
new_file="update_for_latest.sh"

# Create the new file and write the specified content
cat << 'EOF' > $new_file
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
EOF

# Make the new file executable
chmod +x $new_file

echo "New script created: $new_file"
