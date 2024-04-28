#!/bin/bash

#echo "Enter 1st person name"
#read Name1 #its shows the name which you entered 
#read -s Name1 #it doesn't show the name
#echo "Enter 2nd persona name"
#read Name2  #its shows the name which you entered
#read -s Name2 #it doesn't show the name
read -p "Enter 1st person name:" Name1 # which echo comannd
read -p "Enter 2nd person name:" Name2

echo "$Name1: How are you $Name2"
echo "$Name2: I am doing good $Name1"
echo "$Name1: how about you $Name2"
echo "$Name2: I am doing dood, how is you job $Name1"
echo "$Name1, not well, thisnking to Learn DevOps"