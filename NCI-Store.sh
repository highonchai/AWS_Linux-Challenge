#!/bin/bash
clear

#-------------------------
# Authors:
#    - Arthur Summers
#    - Blaine Aird
#    - Connor High
#    - Jeffrey Mitchell
#    - Woodson Wilson

# Date: 10/29/2020

# Description: 
# The final Linux Project for AWS Re/Start
# The NCI Market
#

#-------------------------
# Version: 1.0
#

# Special Instructions:

# Declared Arrays:
products=(Greens Beans Potatoes Tomatoes Corn)
prices=(1 2 3 4 5)
cart=(0 0 0 0 0)
quant=(0 0 0 0 0)
#member=()
email=()
cart_products=()
cart_quantity=()
cart_price=()
# Declared Variables
subtotal=0

# Functions
# Home Page Function
home() {
./home.sh
 }

home_fast() {
sh home_fast.sh
}

# Checkout Function
checkout() { 
clear

#printf "\32[32m"
echo "⢀⡴⠑⡄⠀⠀⠀⠀⠀⠀⠀⣀⣀⣤⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
echo "⠸⡇⠀⠿⡀⠀⠀⠀⣀⡴⢿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀SOMEBODY ONCE TOLD ME, YOU WERE READY TO CHECK OUT"
echo "⠀⠀⠑⢄⣠⠾⠁⣀⣄⡈⠙⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀                                            ⠀⠀ "
echo "⠀⠀  ⢀⡀⠁⠀⠀⠈⠙⠛⠂⠈⣿⣿⣿⣿⣿⠿⡿⢿⣆⠀⠀⠀⠀⠀⠀                                            "
echo " ⠀ ⢀⡾⣁⣀⠀⠴⠂⠙⣗⡀⠀⢻⣿⣿⠭⢤⣴⣦⣤⣹⠀⠀⠀⢀⢴⣶⣆                                           "
echo "  ⢀⣾⣿⣿⣿⣷⣮⣽⣾⣿⣥⣴⣿⣿⡿⢂⠔⢚⡿⢿⣿⣦⣴⣾⠁⠸⣼⡿                                           "
echo " ⢀⡞⠁⠙⠻⠿⠟⠉⠀⠛⢹⣿⣿⣿⣿⣿⣌⢤⣼⣿⣾⣿⡟⠉⠀⠀⠀⠀⠀                                           "
echo "⠀⣾⣷⣶⠇⠀⠀⣤⣄⣀⡀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀                                           "
echo " ⠉⠈⠉⠀⠀⢦⡈⢻⣿⣿⣿⣶⣶⣶⣶⣤⣽⡹⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀                                           "
echo "⠀⠀⠀    ⠉⠲⣽⡻⢿⣿⣿⣿⣿⣿⣿⣷⣜⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀                                           "
echo "⠀⠀⠀     ⢸⣿⣿⣷⣶⣮⣭⣽⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀                                           "
echo "⠀⠀   ⠀⣀⣀⣈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀                                           "
echo "⠀   ⠀⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀                                           "
echo "⠀ ⠀ ⠀ ⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀                                           "
echo "   ⠀ ⠀ ⠀⠀⠉⠛⠻⠿⠿⠿⠿⠛"
echo " "
sleep 3 
echo "------------------------------  CHECKOUT  -------------------------------"
total=$(( $sub_total + 3 ))
pro=0.1
promo_discount=$(echo $total*$pro | bc)
promo_total=$(echo $total - $promo_discount | bc )
len=${#cart_products[@]}
for ((n=0; n<$len; n++));
do
echo "${cart_products[$n]} -- ${cart_quantity[$n]} .......................................................$ $(( ${cart_price[$n]}*${cart_quantity[$n]} )).00"
echo " "
echo "--------------------------------------------------------------------------"
echo " "
done
}

checkout-p() {

echo "------------------------------- SUBTOTAL --------------------------------"
echo "                                                                $ $sub_total"
echo " "
echo " (Shipping Rate)  ............................................... $ 3.00"
echo " "
echo " (Promo Code: 10% off) ................................................-$ $promo_discount"
echo " "
echo "-------------------------------- TOTAL ----------------------------------"
echo "                    TOTAL= $ $promo_total                   "
echo " "
echo " "
}

checkout-n() {
echo "------------------------------- SUBTOTAL --------------------------------"
echo "                                                            $ $sub_total"
echo " "
echo " (Shipping Rate)  ............................................... $ 3.00"
echo " "
echo "-------------------------------- TOTAL ----------------------------------"
echo "                    TOTAL= $ $total                   "
echo " "
echo " "
}

# Membership/Promo Information Page Function
membership() {
sh MSP1.sh
 }

# Membership Congratulation Page Function
membership_congrats() {
sh MSP2.sh
}

# Email
email() {
./email.sh
}

#Loading Screen
loading() {
sh dna.sh
}

# Purchase Function
purchase() {

read -p "How many ${products[$(($product - 1))]} would you like? >> " quantity

case $product in
1)
(( quant[0]+=$quantity ))
cart[0]=1
;;
2)
(( quant[1]+=$quantity ))
cart[1]=1
;;
3)
(( quant[2]+=$quantity ))
cart[2]=1
;;
4)
(( quant[3]+=$quantity ))
cart[3]=1
;;
5)
(( quant[4]+=$quantity ))
cart[4]=1
;;
esac

#for n in "${cart[@]}"; do
#printf "$n "
#done
#printf "\n"

#for n in "${quant[@]}"; do
#printf "$n "
#done
#printf "\n"
#sleep 1

echo "$quantity ${products[$(($product - 1))]} added to your cart"
sleep 0.25
read -p "Would you like to add more items? (yes/no) >> " more

if [ $more = "yes" ]
then
#(loop back to beginning of the process)
return

elif [ $more = "no" ]
then
x=0
for n in "${cart[@]}"; do
# If the array variable is set to "1" then it adds to the cart arrays based on the index value of "x"
if [ $n = 1 ]
then
cart_products=(${cart_products[@]} ${products[$x]}) 
cart_quantity=(${cart_quantity[@]} ${quant[$x]})
cart_price=(${cart_price[@]} ${prices[$x]})
sub_total=$(( $sub_total + ${prices[$x]}*${quant[$x]} ))

x=`expr $x + 1` #increments counter to index correctly when adding to array
else
x=`expr $x + 1` #increments counter to index correctly when adding to array
fi
done

clear
#echo "Taking you to the checkout page!"
#loading()
#checkout()
else
echo "Invalid response. Returning to menu"
return
fi
}

promo() {
        while true
        do
        #Prompt the user for a promo code
        read -p "Would you like to enter a promo code? [Y/N] >> " codeprompt
        # If it's the correct promo code, the loop will break.
        if [ $codeprompt == 'Y' ] || [ $codeprompt == 'y' ] 
        then
	    echo "Moving to the promo code page!"
            #clear
	    read -p "Enter your promo code: " promocode
            if [ $promocode == '1234' ] 
            then
                echo "Valid promo code! Applying the discount now"
	checkout                
	checkout-p
                return
            else
            echo "That's not a valid promo code. Please try again" 
            fi
        elif [ $codeprompt == 'N' ] || [ $codeprompt == 'n' ]
        then
            echo "Moving to checkout."
	checkout		
	checkout-n
            return
        else
            echo "Not a valid option. Try again"
        fi
        done
}


###########################################################
##### PROGRAM START #######################################
##########################################################
while true
do
# Runs the Home Function to start the program
home

# Prompts the user to join membership
read -p "Would you like to join our membership program? (yes/no) >> " member

# Check's user's response 
if [ $member = "yes" ]
then
echo "Yes, you want to be a member!"

# Runs the membership page function
membership
printf "\33[0m"
read -p "What do you think? Still want to join? (yes/no) >> " mem
	
	if [ $mem = "yes" ]
	then

	email
	echo "Welcome to the NCI Story Family! A promo code has just been emailed to you!"
	sleep 1

	membership_congrats

	sleep 3
	echo " "
	echo "Taking you back to the homepage now"
	sleep 1
	home_fast
	else
	sleep 2
	echo " "
	echo "No worries! Taking you back to the homepage now"
	sleep 1
	home_fast
	fi

else
echo "No worries! We still love you. Returning you to the home screen"
sleep 1
home_fast
fi

# Asks the user if they would like to add items or purchase
# Purchasing Items loop
more="yes"
until [ $more = "no" ]; do
echo " "
clear
home_fast
echo " "
echo "What would you like to add to your cart?"
read -p "Please select a Product ID: >> " product

case $product in
1)
purchase
;;
2)
purchase
;;
3)
purchase
;;
4)
purchase
;;
5)
purchase
;;
esac
done

#loading page
loading

#checkout page
checkout

#promo process
promo

read -p "Confirm purchase? (y/n) >> " confirm_purchase

if [ $confirm_purchase = 'y' ] || [ $confirm_purchase = 'Y' ]
then
clear
echo "Congrats on your order!"
fi


echo " "
read -p "Would you like to return to the homepage and continue shopping? (y/n) >> " cont
if [ $cont = 'y' ] || [ $cont = 'Y' ]
then
#continue
echo "Sounds good! We're pretty new at this, so we had to clear your cart. But returning you to the homepage to shop or more items"
cart_products=()
cart_quantity=()
cart_price=()
cart=(0 0 0 0 0)
quant=(0 0 0 0 0)
subtotal=0
sleep 2
else
echo " "
echo "Thank you for shopping at the NCI Market! Hope to see you again soon!"
echo " "
exit
fi
done



