#!/bin/bash
##########################
#version = 0.2
#debug = 0
##########################
function script_update(){
	awk '{ if ($1 ~ /#version/) print local $3}' ver_test.sh > tmp
	loc_ver=$(<tmp)
	echo $loc_ver
	rm -f tmp
	awk '{ if ($1 ~ /#version/) print local $3}' ver_test2.sh > tmp
	rem_ver=$(<tmp)
	echo $rem_ver
	if [[ $loc_ver < $rem_ver ]]; then
		echo 'should be updating this...'
	else
		echo 'theres nothing to update'
	fi
}

script_update
