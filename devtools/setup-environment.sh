#!/bin/bash
if [ $UID != 0 ]; then
  echo "ERROR: This script must be run as root."
  exit 1
fi
echo "Preparing environment..."
echo ""
echo "This script is incomplete"
# if ! dpkg-query -W -f='${Status}' docker | grep "ok installed"; then
#   echo "Installing Docker..."
# fi
