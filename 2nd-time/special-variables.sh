#!/bin/bash

echo "user id: $USER"
echo "Hostname: $HOSTNAME"
echo "present working dir: $PWD"
echo "no of varibles: $#"
echo "all variables: $@"
echo "Script name: $0"
echo "Script PID: $$"

sleep 20 &

echo "last background script PID: $!"