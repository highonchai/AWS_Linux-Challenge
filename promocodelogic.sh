#!/bin/bash
promocodelogic(){
        while true
        do
        #Prompt the user for a promo code
        read -p "Would you like to enter a promo code? [Y/N] <<<< " codeprompt
        # If it's the correct promo code, the loop will break.
        if [ $codeprompt == 'Y' ] || [ $codeprompt == 'y' ] 
        then
	    echo "Moving to the promo code page!"
            clear
	    read -p "Enter your promo code: " promocode
            if [ $promocode == '1234' ] 
            then
                echo "Valid promo code! Applying the discount now"
                #Apply the discount here.
                return
            else
            echo "That's not a valid promo code. Please try again" 
            fi
        elif [ $codeprompt == 'N' ] || [ $codeprompt == 'n' ]
        then
            echo "Moving to checkout."
            return
        else
            echo "Not a valid option. Try again"
        fi
        done
}
promocodelogic
#--------------------------------------- Total
#---------------------------------------Discount = total * .1
#--------------------------------------  Total with discount  total = total - discount
