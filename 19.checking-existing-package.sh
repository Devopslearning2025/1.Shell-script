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


VALIDATE (){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 ... $R failure $N"
        exit 1
    else
        echo -e "$2 is $G success $N"
    fi
}

if [ $userid -ne 0 ]
then
    echo " Please run with root user"
    exit 1
else
    echo "you are with root user"    
fi

for i in $@ 
do
    dnf list installed $i -y &>>$log
    if [ $? -eq 0 ]
    then
        echo -e "$i is  installed ....\e[33m skipping $i $N"
    fi
done