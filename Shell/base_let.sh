#!/bin/bash
x=10
y=6
z=0
let "z=$((x+y))"
echo "z = $z"

let "z = $((x - y))"
echo "z = $z"

echo "z = `expr $x + $y`"
echo "-1.算数表达式"
# ((...)) 双括号可以进行整数的算术运算，只能计算整数
# 读取结果需要加上美元符号$
echo $((2+2))
# 其结果总是整数 $((5/2))   结果是2
# 圆括号内的变量可不加$
# 字符串会被当做变量，变量不存在会当做0
echo "-2.数值的进制"
# number: 10
# 0number: 8
# 0xnumber: 16
# base#number： base进制
echo $((0xff))
echo $((2#111111111))
echo "-3.位运算"
# << 左移
# >> 右移
# &  按位与
# |  按位或
# ~  按位否
# ^  按位异或
echo "-4逻辑运算"
echo $((3>2))
echo "-5赋值运算"
# =   +=    -=  *=  /=  %=  <<= >>= &=  |=  ^=
echo "-6求值运算"
echo $((foo = 1 + 2, 3 * 4))
echo $foo
echo "-7expr命令"
# expr 命令可以不使用((...))语法
expr 3+2
expr $foo + 2
echo "-7let命令"
#let命令式不能不含空格
let x=2+3
echo $x

