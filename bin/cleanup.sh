#!/bin/bash

# Remove the .nanorc file in the home directory
if [[ -f "$HOME/.nanorc" ]]; then  # Check if .nanorc exists
    rm "$HOME/.nanorc"  # Remove the .nanorc file
    echo "Removed .nanorc file from home directory."
else
    echo ".nanorc file not found, nothing to remove."
fi

# Remove the line 'source ~/.dotfiles/etc/bashrc custom' from .bashrc
sed -i '/source ~\/\.dotfiles\/etc\/bashrc custom/d' "$HOME/.bashrc"  # Delete the line
echo "Removed 'source ~/.dotfiles/etc/bashrc custom' from .bashrc."

# Remove the .TRASH directory from the home directory
if [[ -d "$HOME/.TRASH" ]]; then  # Check if .TRASH directory exists
	rmtrash
    echo "Removed .TRASH directory from home directory."
else
    echo ".TRASH directory not found, nothing to remove."
fi
