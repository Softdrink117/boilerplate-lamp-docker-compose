#!/bin/bash
echo "Preparing to erase the following files:"
echo ""
cd ../db
ls -a
echo ""
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # do dangerous stuff
    rm -rf ./*
fi
