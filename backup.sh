#!/bin/bash

# Create backup directories
mkdir -p ./home_root
mkdir -p ./filesystem_root

# Read paths from path.yaml
while IFS= read -r line; do
    # Skip lines that do not start with " -"
    [[ $line =~ ^[[:blank:]]*-\s* ]] || continue
    # Extract file path, remove quotes, and expand
    filepath=${line#*- }
    filepath=${filepath//\"/}
    filepath=${filepath/#\~/$HOME}
    # Debug output
    echo "Processing: $filepath"
    # Check if path exists
    if [ ! -e "$filepath" ]; then
        echo "Path not found: $filepath"
        continue
    fi

# Determine backup path and copy
if [[ "$filepath" == $HOME* ]]; then
    # Backup files in the user's home directory
    backup_path="./home_root/${filepath#$HOME}"
    mkdir -p "$(dirname "$backup_path")"
    cp -R "$filepath" "$backup_path"
elif [[ "$filepath" != /home/* ]]; then
    # Backup files not in the /home directory
    backup_path="./filesystem_root$filepath"
    mkdir -p "$(dirname "$backup_path")"
    cp -R "$filepath" "$backup_path"
else
    # Throw an exception for files in /home but not in the user's home directory
    echo "Exception: Avoid to backup files in other user's home: $filepath"
    continue
fi

done < path.yaml

echo "Backup complete."

