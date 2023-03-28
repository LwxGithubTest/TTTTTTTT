#!/bin/bash
set -Eeu
set -o pipefail

game=(石头 剪刀 布)
num=$[RANDOM%3]
computer=${game[$num]}
select person in 石头 剪刀 布
do
echo "选择你的出拳手势 $person"
    case $person in
        石头)
            if [ $computer == '石头' ];then
                echo "平局"
            elif [ $computer == '剪刀' ];then
                echo "赢了"
            else
                echo "输了"
            fi;;
        剪刀)
            if [ $computer == '剪刀' ];then
                echo "平局"
            elif [ $computer == '布' ];then
                echo "赢了"
            else
                echo "输了"
            fi;;
        布)
            if [ $computer == '布' ];then
                echo "平局"
            elif [ $computer == '石头' ];then
                echo "赢了"
            else
                echo "输了"
            fi
            ;;
        *)
            echo "错误输入"
            break
    esac
done



