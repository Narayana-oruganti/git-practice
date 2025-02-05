#!/bin/bash


USERID=$(id -u)
#echo "User ID is: $USERID"

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo "$2 is not...success"
        exit 1
    else
        echo "$2 is...success"
    fi       

}

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
    VALIDATE $? "installing Git"       
else
    echo "Git is already installed, nothing to do.."    
fi

dnf install mysql

if [ $? -ne 0 ]
then 
    echo "Mysql is not installed, going to install it .."
    dnf install mysql -y
    VALIDATE $? "installing Mysql"
else
    echo "Mysql is already installed, nothing to do.."
fi            
