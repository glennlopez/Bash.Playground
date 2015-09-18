#!/bin/bash
##########################
#version = 0.8
#debug = 0
##########################
awk '{ if ($1 ~ /#version/) print local $3}' ver_test.sh > tmp
ver=$(<tmp)
rm -f tmp
