#!/bin/bash

# progress bar
pBar() {
	echo "Starting user configuration:"
	echo -ne '#####                     (33%)\r'
	sleep 0.5
	echo -ne '#############             (66%)\r'
	sleep 0.5
	echo -ne '#######################   (100%)\r'
	sleep 1
	echo -ne '\n'
}

pBar
