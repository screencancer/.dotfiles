#!/bin/bash

exec >> ./linuxsetup.log 2>&1 #redirect to output

if [[ "$(uname)" != "Linux" ]]; then # If the output of uname is != Linux
    echo "Error: This script must be run on a Linux operating system."
    exit 1  # Exit with error code 1 if not on linux
else
    echo "Operating system is Linux. Proceeding with setup..."
fi


if [[ ! -d "$HOME/.TRASH" ]]; then  # Check if the .TRASH directory does not exist
    mkdir "$HOME/.TRASH"  # Create the directory
    echo "Created .TRASH directory in the directory."
else
    echo ".TRASH directory already exists."
fi

if [[ -f "$HOME/.nanorc" ]]; then  # Check if .nanorc file exists
    mv "$HOME/.nanorc" "$HOME/.bup_nanorc"  # Rename .nanorc to .bup_nanorc
    echo "Renamed .nanorc to .bup_nanorc."  
fi

cat  etc/.nanorc > "$HOME/.nanorc"  # Overwrite .nanorc in home with contents of /etc/nanorc
echo "Copied /etc/.nanorc contents to .nanorc in home directory."  

echo "source ~/.dotfiles/etc/bashrc custom" >> "$HOME/.bashrc"  # Append the line to .bashrc
echo "Added 'source ~/.dotfiles/etc/bashrc custom' to .bashrc."  
