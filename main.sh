#!/bin/bash

read -p "Enter your name: " name
read -p "Enter your age: " age
spass="123456"

if [[ $age -ge 18 ]]; then
    echo "You are eligible."
    read -p "Enter password: " pass
    if [[ $pass == $spass ]]; then
        echo "Successfully Logged in to The Portal!"
        read -p "Enter your phone number, so that we could contact you later: " mobile
        echo -e "Dear $name, you have successfully submitted the form.\nWe will inform you soon.\nThank You!"
        echo -e "Your details are:\nName: $name\nAge: $age\nMobile Number: $mobile"
    else
        echo "Please enter a valid password."
    fi
else
    echo -e "Your age is not sufficient for the post you want to apply for.\nThank You!"
fi
