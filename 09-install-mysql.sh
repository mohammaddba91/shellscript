#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: please run this sccript with root access"
    exit  1 # you can give other then 0
else 
    echo "you are root user"
fi # fi means reverse of if, indicating condition end 

yum install mysqll -y 

if [ $? -ne 0 ]
then 
    echo "ERROR:: Installing Mysql is failed"
    exit 1
else 
    echo "Installing Mysql is SUCCESS"
fi