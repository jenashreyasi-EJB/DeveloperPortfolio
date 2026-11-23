
#!/bin/bash
# Author: Shreyasi Jena
# Purpose: Create a compressed backup of a folder

# Check whether an argument is provided
if [ -z "$1" ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

# Check whether the folder exists
if [ ! -d "$1" ]; then
    echo "Error: Folder does not exist."
    exit 1
fi

# Create backup directory
BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

# Generate timestamp
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Create archive
BACKUP_FILE="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

tar -czf "$BACKUP_FILE" -C "$(dirname "$1")" "$(basename "$1")"

# Check backup result
if [ $? -eq 0 ]; then
    SIZE=$(du -h "$BACKUP_FILE" | awk '{print $1}')
    echo "Backup created successfully!"
    echo "Backup filename: $(basename "$BACKUP_FILE")"
    echo "Backup size: $SIZE"
    echo "Timestamp: $TIMESTAMP"

    echo "$TIMESTAMP - SUCCESS - $(basename "$BACKUP_FILE") - $SIZE" >> "$BACKUP_DIR/backup.log"
else
    echo "Error: Backup failed."
    echo "$TIMESTAMP - FAILED" >> "$BACKUP_DIR/backup.log"
    exit 1
fi
