#!/bin/bash

# Read the user input
# echo "Enter your 职业："
# read zhiye
# echo "you 职业 is $zhiye"
# echo
# echo "Enter your xf, dj, zf:"
# read xf dj zf
# echo "your xf: $xf, dj:$dj, zf:$zf"
read -p "username: " user_var
read -sp "password: " password
echo
echo "The username is: " $user_var
echo "The password is: " $password

echo "juesenames: "
read -a names
echo "the juese name is :${names[0]}, ${names[1]}"