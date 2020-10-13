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
#member=()
email=()
cart_products=()
cart_quantity=()
cart_price=()
# Declared Variables:


# Functions
# Home Page Function
home() {
./home.sh
 }

# Checkout Function
checkout() { 


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
len=${#cart_products[@]}
for ((n=0; n<$len; n++));
do
echo "${cart_products[$n]} -- ${cart_quantity[$n]} ............................${cart_price[$n]}"
echo " "
done 
echo " "
echo "------------------------------- SUBTOTAL --------------------------------"
echo "                                                                 subtotal"
echo " "
echo " (Shipping chose)  ...............................................  shipping"
echo " "
echo " Tax  ..............................................................  tax"
echo " "
echo "-------------------------------- TOTAL ----------------------------------"
echo "                    TOTAL=(sum of all prices= subt) + ship + tax                   "
#./store_chout.sh
}

# Membership/Promo Page Function
membership() {
./Store_Project.sh
 }

# Email
#email() {
#./email.sh
#}

#Loading Screen
loading() {
sh dna.sh
}

# Purchase Function
purchase() {

read -p "How many ${products[$(($product - 1))]} would you like? >> " quantity

x=1000
len_array=${#cart_products[@]}
for ((n=0; n<$len_array; n++)); do
if [[ $cart_products[$n] == ${products[$(($product - 1))]} ]]; then
x=$n
break
fi
done
echo "$x"

if [[ "$x" -ne "1000" ]]; then
cart_quantity[$x]= $(( $quantity + ${cart_quantity[$x]} ))
else
cart_products=(${cart_products[@]} ${products[$(($product - 1))]})
cart_quantity=(${cart_quantity[@]} $quantity)
cart_price=(${cart_price[@]} ${prices[$(($product - 1))]})
fi

echo "$quantity ${products[$(($product - 1))]} added to your cart"
sleep 0.25
read -p "Would you like to add more items? (yes/no) >> " more

if [ $more = "yes" ]
then
#(loop back to beginning of the process)
return
elif [ $more = "no" ]
then
clear
echo "Taking you to the checkout page!"
#loading()
#checkout()
else
echo "Invalid response. Returning to menu"
return
fi
}


# Start Program
# Notes:
# Clear the screen when you need to loop
# 

# Establishes while loop to exit program at the end or invalid response
#while true; do

# Runs the Home Function to start the program
home

# Prompts the user to join membership
read -p "Would you like to join our membership program? (yes/no) >> " member

if [ $member = "yes" ]
then
# Runs the Membership Function
echo "Yes, you want to be a member!"

membership
read -p "What do you think? Still want to join? (yes/no) >> " membership

#if [ $membership = "yes" ]
#then
#echo "That's great! Please enter your email address to join"
#read -p "Enter Email: >> " email

# If we want to display a different homepage add email to member array

#email()
#echo "Welcome to the NCI Story Family! A promo code has just been emailed to you!"

home

else
echo "No worries! We still love you. Returning you to the home screen"
sleep 1
home
fi

# Asks the user if they would like to add items or purchase
# Purchasing Items loop
more="yes"
until [ $more = "no" ]; do
echo " "
clear
home
echo " "
echo "What would you like to add to your cart?"
read -p "Please select a Product ID: >> " product

case $product in
1)
purchase
;;
2)
#echo "2"
purchase
;;
3)
#echo "3"
purchase
;;
4)
#echo "4"
purchase
;;
5)
#echo "5"
purchase
;;
esac
done

for n in "${cart_products[@]}"; do
printf "$n "
done
printf "\n"

for n in "${cart_quantity[@]}"; do
printf "$n "
done
printf "\n"

export pagename="CHECK-OUT"
#loading

checkout
