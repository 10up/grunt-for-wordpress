#! /bin/bash
#
# Install Grunt, Git, and 10up WordPress Grunt scripts.
# 
# 

if [ "Darwin" == `uname -s` ] # Detect Mac OS
then
	## Mac
	
	# Install Homebrew package manager
	ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

	# Node (Update in case it already exists)
	brew install node; brew upgrade node

	# Grunt
	sudo npm install -g grunt-cli
	sudo npm install -g grunt-init

	# Git and git-flow
	brew install git; brew upgrade git
	brew install git-flow; brew upgrade git-flow

	# 10up Grunt scripts
	# Run as sub-commands so script continues if they already exist
	$(git clone git@github.com:10up/grunt-wp-theme.git ~/.grunt-init/wp-theme)
	$(git clone git@github.com:10up/grunt-wp-plugin.git ~/.grunt-init/wp-plugin)

else
	## Not Mac
	
	echo 'Only Mac OS supported right now.'

	# Detect Windows & Linux
	# Some Windows package manager
	# Install the things

	# git clone git@github.com:10up/grunt-wp-theme.git %USERPROFILE%/.grunt-init/wp-theme
	# git clone git@github.com:10up/grunt-wp-plugin.git %USERPROFILE%/.grunt-init/wp-plugin


fi