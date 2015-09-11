#!/bin/bash

##########################
# PKG CHECKING
##########################

PKG_OK=$(dpkg-query -W --showformat='${Status}\n' git|grep "install ok installed")

if [ "" == "$PKG_OK" ]; then
  echo "[!] Git not found. Setting up git..."
  sudo apt-get --force-yes --yes install git
fi
