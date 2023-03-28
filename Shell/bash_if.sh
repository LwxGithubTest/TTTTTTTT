#!/bin/bash

for nym in {1..-10}
do
echo $nym 
done

read -p "Enter number: " number
if [ $number -gt 100 ];
then
echo "满分"
elif [ $number -gt 90 ];
then
echo "优秀"
elif [ $number -gt 60 ];
then
echo "及格"
else
echo "不及格"
fi
# -gt   -lt     -eq
case $number in
    100)
        echo "case优秀"
        ;;
    60)
        echo "case及格"
        ;;
    *)
        echo "其他分数"
        ;;
esac

select brand in kfc mdl huoguo shaokao riliao
do
echo "选择你的 $brand"
done

read -p "整数1：" num1
read -p "整数2：" num2
read -p "整数3：" num3

tmp=0
if [ $num1 -gt $num2 ];then
tmp=$num1
num1=$num2
num2=$tmp
fi
if [ $num1 -gt $num3 ];then
tmp=$num1
num1=$num3
num3=$tmp
fi
if [ $num2 -gt $num3 ];then
tmp=$num2
num2=$num3
num3=$tmp
fi
echo "排序后数据为：$num1, $num2, $num3"
