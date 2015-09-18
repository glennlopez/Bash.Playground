#!/bin/bash
##########################
#version = 0.8
#debug = 0
##########################
function script_update(){
	# local script
	awk '{ if ($1 ~ /#version/) print local $3}' ver_test.sh > tmp
	loc_ver=$(<tmp)
	mv ver_test.sh old.ver_test.sh
	echo $loc_ver #<--debug

	# remote script
	wget --quiet https://raw.githubusercontent.com/glennlopez/Bash.Playground/master/ver_test.sh
	awk '{ if ($1 ~ /#version/) print local $3}' ver_test.sh > tmp
	rem_ver=$(<tmp)
	echo $rem_ver #<--debug

	# compare versions for update
	if [[ $loc_ver < $rem_ver ]]; then
		rm -f old.ver_test.sh
		echo 'Script updated.'
	else
		rm -f ver_test.sh
		mv old.ver_test,sh ver_test.sh
		echo 'Script is up to date.'
	fi
}

script_update
echo
echo 'script complete'
