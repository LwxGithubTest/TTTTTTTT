#!/bin/bash
#This is a single-line comment in Bash Script
echo "Enter your name:"
read name
echo
# echo output, its also a single line commen
echo "The current user name is "$name""
#This is another single line comment
<<BLOCK
1111111
222
33333
BLOCK
echo "注释结束"

: '
这是第三种注释
多行注释
通过:和点来注释
'
echo '第三种注释结束'


