#!/bin/bash

echo "Printing user id: $USER"
echo "Printing Hostname: $HOSTNAME"
echo "Printing present working dir: $PWD"
echo "no of varibles: $#"
echo "Printing all variables: $@"
echo "Script name: $0"
echo "Script PID: $$"

sleep 20 &

echo "last background script PID: $!"