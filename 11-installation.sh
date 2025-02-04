#!/bin/bash

USERID=$(id -u)
#echo "User ID is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "Please run thgis script with root priviliges"
    exit 1
fi

dnf install git 

if [ $? -ne 0 ]
then
    echo "Git is not installed, going to install it.."
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "Git installation is not success..check it "
    else
        echo "Git installation is success"
    fi        
else
    echo "Git is already installed, nothing to do.."    
fi