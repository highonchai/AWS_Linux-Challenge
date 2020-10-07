#!/bin/bash

cart_products=()
cart_quantity=()

#purchase() {

#}

# Asks the user if they would like to add items or purchase
# Purchasing Items loop
more="yes"
until [ $more = "no" ]; do
read -p "What would you like to add to your cart?"
read -p "Please select a Product ID: >> " product

case $product in
1)
read -p "How many would you like? >> " quantity
echo "$quantity $product added to your cart"
cart_products+=$product
cart_quantity+=$quantity
sleep 0.25
read -p "Would you like to add more items? (yes/no) >> " more

if [ $more = "yes" ]
then
#(loop back to beginning of the process)
continue
elif [ $more = "no" ]
then
clear
echo "Taking you to the checkout page!"
#loading()
#checkout()
exit
else
echo "Invalid response. Returning to menu"
continue
exit
fi

;;
2)
echo "2"
#purchase()
;;
3)
echo "3"
#purchase()
;;
4)
echo "4"
#purchase()
;;
5)
echo "5"
#purchase()
;;
esac

done

echo "${cart_products[0]}"

