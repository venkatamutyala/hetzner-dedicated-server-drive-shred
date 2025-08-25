#!/usr/bin/env bash

# This script finds all primary physical drives and excludes loop devices (major number 7)
for drive in $(lsblk --noheadings --nodeps --paths --output NAME --exclude 7); do
    echo "--- Starting parallel shred on $drive ---"
    shred -vfz -n 10 "$drive" &
done

# The 'wait' command makes the script pause here until all background jobs are finished
wait

echo "✅ All shredding processes have completed."
