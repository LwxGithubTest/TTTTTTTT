#!/bin/bash
str="wertyuiop"
str2="sdfghjkl"
# ==   !=
if [ $str == $str2 ]
then
echo "=="
else
echo "!="
fi

# \< 小于   \> 大于
if [ $str \< $str2 ]
then
echo "小于"
else
echo "大于"
fi

# -n 检查是否大于0
if [ -n $str ]
then
echo "not empty"
else
echo "empty"
fi

# -z 检查是否等于0
if [ -z $str ]
then
echo "empty"
else
echo "not empty"
fi

echo '-获取长度${#str} '
echo "\${#str} : ${#str}"
# length=`expr length "$str"`
# echo "Length of '$str' is $length"

# read -p "Input some word: " str
# IFS=' '
# read -ra ADDR <<<"$str"
# for i in "${ADDR[@]}"
# do
# echo "$i"
# done


echo '-获取子串'
# ${varname:offset:length}
echo ${str:2:6}


echo '-搜索与替换'
echo '---字符串头部的匹配'
# ${variable#pattern} 非贪婪匹配
# ${variable##pattern} 贪婪匹配
myPath=/home/lwx/book/lwx.file.name
echo ${myPath#/*/}
echo ${myPath##/*/}
# 删除文件路径的目录部分，只留下文件名。
echo ${myPath##*/}
# ${variable/#pattern/replace} 替换匹配
# foo=JPG.JPG
# echo ${myPath/#/home/---} 不太好用
echo '---字符串尾部的模式匹配'
# ${variable%pattern} 非贪婪匹配
# ${variable%%pattern} 贪婪匹配
echo ${myPath%.*}
echo ${myPath%%.*}
# 删除文件路径的文件部分，只留下目录。
echo ${myPath%/*}
echo '---任意位置的模式匹配'
# ${variable/pattern/string} 非贪婪匹配
# ${variable//pattern/string} 贪婪匹配
echo ${myPath/lwx/...}
echo ${myPath//lwx/...}
# 换行
echo -e ${myPath//\//'\n'}

# echo '-改变大小写'
# wenben="ascds"
# declare -u lower=${wenben}
# echo $lower # 转为大写
# echo ${wenben,,} # 转为小写

