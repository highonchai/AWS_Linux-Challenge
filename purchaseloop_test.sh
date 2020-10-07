#!/bin/bash

cart_products=()
cart_quantity=()
products=(Greens Beans Potatoes Tomatoes Corn)
prices=(1 2 3 4 5)

purchase() {

read -p "How many ${products[$(($product - 1))]} would you like? >> " quantity
cart_products+=${products[$(($product - 1))]}
cart_quantity+=$quantity
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

# Asks the user if they would like to add items or purchase
# Purchasing Items loop
more="yes"
until [ $more = "no" ]; do
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
