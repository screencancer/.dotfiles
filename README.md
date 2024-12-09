# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .nanorc
This is my custom .nanorc configuration for Nano.
## .bashrc
This is my custom .bashrc configuration for Bash.
## linux.sh
Checks first if OS is Linux. Then proceed to setup the system and adding the bashrc to the HOME bashrc. The program also overwrites the home .nanorc with the custom nanorc.
## cleanup.sh
Cleanup leftover files by removing .nanorc from home if it exists already and removing the source at the end of bashrc in home. It also removes the trash directory.
## Makefile
Runs the script in the order of cleanup.sh to linux.sh so it runs properly. Also sets up permissions for the program to run. 
## bashrc
Config file for bash that adds serveral aliases for ease of use. There are also functions to tar a directory and untar it.
