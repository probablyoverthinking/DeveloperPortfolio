
#!/bin/bash
# Author: Ayush Kumar Jha
# Purpose: Create compressed backups of directories

# Check whether an argument was provided
if [ -z "$1" ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

# Check whether the source folder exists
if [ ! -d "$1" ]; then
    echo "Error: Folder does not exist."
    exit 1
fi

# Create backup destination
BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
mkdir -p "$BACKUP_DIR"

# Generate timestamp and backup filename
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
FOLDER_NAME=$(basename "$1")
BACKUP_FILE="$BACKUP_DIR/backup_${TIMESTAMP}.tar.gz"

# Create compressed backup
if tar -czf "$BACKUP_FILE" -C "$(dirname "$1")" "$FOLDER_NAME"; then
    SIZE=$(du -h "$BACKUP_FILE" | awk '{print $1}')
    echo "Backup created successfully!"
    echo "Filename: $(basename "$BACKUP_FILE")"
    echo "Size: $SIZE"

    echo "[$(date)] SUCCESS: $(basename "$BACKUP_FILE"), Size: $SIZE" >> "$BACKUP_DIR/backup.log"
else
    echo "Error: Backup creation failed."
    echo "[$(date)] FAILED: $1" >> "$BACKUP_DIR/backup.log"
    exit 1
fi
