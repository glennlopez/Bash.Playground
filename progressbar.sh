#!/bin/bash
echo
# progress bar
pBar() {
	echo "Wait: Starting the next step"
	echo -ne '###                       \r'
	sleep 0.5
	echo -ne '########                  \r'
	sleep 0.5
	echo -ne '#############             \r'
	sleep 0.5
	echo -ne '##################        \r'
	sleep 0.5
	echo -ne '#######################   \r'
	sleep 1
	echo -ne '\n'
}

pBar
