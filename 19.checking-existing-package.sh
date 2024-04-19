#!/bin/bash

userid=$(id -u)
script_name=$(echo $0|cut -d "." -f1)
date=$(date +%F-%H-%M-%S)
log=/tmp/$script_name-$date.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo "script started at $date"

if [ $userid -ne 0 ]
then
    echo " Please run with root user"
    exit 1
else
    echo "you are with root user"    
fi

for i in $@ 
do
    echo "package to install: $i"
    dnf list installed $i -y &>>$log
    if [ $? -eq 0 ]
    then
        echo -e "$i is  $G installed .... $Y skipping $i $N"
    else
        echo -e "$i is not installed .. $R need to install $i $N"
    fi
done