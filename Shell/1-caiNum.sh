#!/bin/bash
num=$[RANDOM%100+1]
left=1
right=100
while :
do
    read -p "猜猜随机数：" cai
    if [ $cai -eq $num ];then
        echo "猜对了"
        exit
    elif [ $cai -gt $num ];then
        right=$cai
        echo "大了，$left-$right"
    else
        left=$cai
        echo "小了，$left-$right"
    fi
done
    

