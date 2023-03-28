#!/bin/bash

learn="this is a
list for
text name"
for l in $learn
do
echo $l
done

echo "-----{1..4}"
for num in {1..4}
do 
echo $num
done

echo "-----seq 1 2 10"
for num in $(seq 1 2 10)
do 
echo $num
done

# arr=('a','b','c','d')
# for a in "${arr[@]}"
# do
# echo $a
# done
echo "-----for i=1; i<=n; i++"
for ((i=1; i<=10; i++))
do
if [ $(( $i % 2 )) == 1 ];then
continue
fi
echo $i
if [ $i == 8 ];then
break
fi
done

# while
echo "-----while"
read -p "Enter Starting number: " sum
read -p "Enter Ending number: " esum
while [[ $sum -lt $esum ||  $sum -eq $esum ]];
do
echo $sum
((sum++))
done


while((sum <= 10))
do
echo $sum
let sum++
done
