#!/bin/bash

#Declaring variables as prompt 

#echo "Enter your name"
#read USERNAME #its shows the name which you entered 
#read -s USERNAME #it doesn't show the name
#echo "Enter your password"
#read PASSWORD  #its shows the password which you entered
#read -s PASSWORD #it doesn't show the password
read -p "Enter your name:" USERNAME # here echo comannd is not require
read -p "Enter your password:" PASSWORD

echo "Your Name is $USERNAME and PassWord is $PASSWORD"