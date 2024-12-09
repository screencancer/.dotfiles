# Makefile to automate running the linux.sh and cleanup.sh scripts

# Default target is 'linux'
.PHONY: linux clean

# The 'linux' target runs the 'linux.sh' script.
# It has a dependency on 'clean', so 'clean' will run first.
linux: clean
	@echo "Running linux.sh setup..."
	./bin/linux.sh  # Run the linux.sh script

# The 'clean' target runs the 'cleanup.sh' script.
clean:
	@echo "Running cleanup.sh to reverse any changes..."
	./bin/cleanup.sh  # Run the cleanup.sh script

# Ensure that the .sh scripts are executable before running
.PHONY: permissions
permissions:
	chmod +x ./bin/linux.sh ./bin/cleanup.sh  # Set execute permissions for the scripts
