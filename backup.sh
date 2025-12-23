#!/bin/bash

# Function to back up Zed configuration
backup_zed_config() {
    # Set the source directory (where Zed config is stored)
    ZED_CONFIG_DIR="$HOME/.config/zed"

    # Set the destination directory (current working directory)
    DEST_DIR=$(pwd)

    # List of Zed config files to back up
    CONFIG_FILES=("settings.json" "keymap.json")

    # Check if the Zed config directory exists
    if [ ! -d "$ZED_CONFIG_DIR" ]; then
        echo "Error: Zed config directory not found at $ZED_CONFIG_DIR"
        exit 1
    fi

    # Create a backup directory in the current folder if it doesn't exist
    BACKUP_DIR="$DEST_DIR/zed"
    mkdir -p "$BACKUP_DIR"

    # Copy the config files to the backup directory
    for FILE in "${CONFIG_FILES[@]}"; do
        if [ -e "$ZED_CONFIG_DIR/$FILE" ]; then
            cp "$ZED_CONFIG_DIR/$FILE" "$BACKUP_DIR"
            echo "Backed up $FILE"
        else
            echo "Warning: $FILE not found in Zed config"
        fi
    done
}

# Add more backup functions for other config types in the future
# Example:
# backup_other_config() {
#     # Similar backup steps for another config directory
# }

# Check if a parameter is passed
if [ -z "$1" ]; then
    echo "Usage: $0 <config_type>"
    echo "Available config types: zed"
    exit 1
fi

# Check the config type parameter
case "$1" in
    zed)
        backup_zed_config
        ;;
    # Future config types can be added here
    # other)
    #     backup_other_config
    #     ;;
    *)
        echo "Error: Unknown config type '$1'."
        echo "Available config types: zed"
        exit 1
        ;;
esac
