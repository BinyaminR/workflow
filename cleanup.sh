#!/bin/bash

# Define the directory to clean up
directory="."

# Define the maximum age (in days) for files to be deleted
max_age_days=30

# Calculate the date threshold (30 days ago)
threshold_date=$(date -d "-${max_age_days} days" +%s)

# Iterate through files in the directory and delete old ones
for file in "$directory"/*; do
    file_mtime=$(stat -c %Y "$file")
    if (( file_mtime < threshold_date )); then
        rm "$file"
    fi
done
