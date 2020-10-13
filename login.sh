#!/bin/bash
shopt -s nocasematch
    while true
    do
    read -p "Enter your email " -a email
    
    if search=$( grep "$email" emails.txt)
    then             
        echo "$search has already been used. Please try another."
    else
        echo "$email" >> emails.txt
        echo "Sending the promo code to that email now! " 
        mail -s "Welcome to the NCI Store!" $email <<< "Welcome to the NCI Store Here is your promo code: 1234"
        break   
    fi
    done
