#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# Check for at least one username argument
if [ $# -lt 1 ]; then
    echo "Usage: $0 username [username2 ...]"
    exit 1
fi

# Restore files from filesystem_root
echo "Restoring system files from ./filesystem_root..."
cp -R ./filesystem_root/* / || { echo "Failed to restore some system files"; exit 1; }

# Iterate over each provided username
for username in "$@"
do
    # Check if user exists
    if id "$username" &>/dev/null; then
        user_home=$(eval echo ~$username)
        # Restore files to user's home directory
        echo "Restoring files to $username's home directory..."
        cp -R ./home_root/* "$user_home/" || { echo "Failed to restore some files to $username's home directory"; continue; }
        # Change ownership of the files to the user
        chown -R $username "$user_home/"
    else
        echo "User $username not found, skipping..."
        continue
    fi
done

echo "Restoration complete."

