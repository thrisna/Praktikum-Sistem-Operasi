#!/bin/bash
echo “Masukkan Batas: “
read batas

a=1
while [ $a –le $batas ]
do

if [[ 0 –eq “($a%3) + ($a%5)” ]]
then
echo “fizzbuzz”

elif [[ 0 –eq “($a%5)” ]]
then
echo “buzz”

elif [[ 0 –eq “($a%3)” ]]
then
echo “fizz”

else
echo “$a”
fi
a=$(($a+1))
done
