#!/usr/bin/bash
'''
This script should setup and initialize a git project for you.
Visit - https://help.github.com/articles/generating-ssh-keys
to setup your SSH keys..
'''


##########################
# INITIAL GLOBAL SETUP
##########################

# Check to see if git package is installed: ???

# Install git:
sudo apt-get install git

# Configure git user:
	# setup username
	echo "User Name:"
	read usrUname
	git config --global user.name $usrUname

# Configure email:
	# setup email
	echo "Email:"
	read usrEmail
	git config --global user.email $usrEmail



##########################
# COSMETIC SETUP
##########################

# Configure editor choice:
	echo "Text Editor:"
	echo "(Leave blank if not sure)"
	read usrTxtEdit
	git config --global core.editor $usrTxtEdit -w

# Add color to git:
	git config --global color.ui true




##########################
# INITIALIZE A GIT PROJECT
##########################

# Make a new directory: $mkdir Github
# Go to the newly created folder: $cd Github
# Initialize current directory as a git project: $git init
#
