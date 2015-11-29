#!/bin/bash

##########################
# FIX FILE PERMISSIONS
##########################

# File types to include in the variables
ls *.sh | cat >> files.qdg
ls *.py | cat >> files.qdg

# permission setup routine
sed ':a;N;$!ba;s/\n/ /g' files.qdg > files_1.qdg
dirFiles=$(<files_1.qdg)
chmod +x $dirFiles

# cleanup routine
rm -f *.qdg
