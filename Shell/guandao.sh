#!/bin/bash
set -Eeu
set -o pipefail

# 管道命令
【管道命令的要求】
# 管道命令仅能处理经由前面一个命令传来的正确信息，也就是standard output的信息，
# 对于standard error并没有直接处理的能力。
# 在每个管道后面接的第一个数据必定是“命令”，而且这个命令必须要能够接收standard input的数据。

# cut  将同一行里面的数据进行分解
# 分隔字符：cut -d '分隔字符' -f fields 
# -f会依据-d的分隔字符将一段信息切割成为数段，用-f取出第几段的意思
# 排列整齐的信息：cut -c 字符范围　　　　　　   
# -c会以字符的单位取出固定字符区间
echo $PATH | cut -d ':' -f 5
echo $PATH | cut -d ':' -f 3,5
export | cut -c 12-
export | cut -c 12-20
last | cut -d ' ' -f 1

# grep  可以解析一行文字，取得关键字，若该行存在关键字，就会整行列出来。
# grep [-cinv] [--color=auto] '查找字符串' filename
# -c计算找到'查找字符串'的次数；-i忽略大小写；-n输出行号；-v反向选择
last | grep 'root'
last | grep -v 'root'
last | grep 'root' | cut -d ' ' -f 1
grep 'MANPATH' /etc/man.config

# sort
# sort [-bfntk] [file/stdin]　　
# -b忽略最前面的空格符部分、
# -f忽略大小写
# -n使用纯数字进行排序(默认是以文字类型来排序的)
# -t后接分隔符(默认是Tab)
# -k为第k个区间来进行排序
cat /ect/passwd | sort
cat /ect/passwd | sort -t ":" -k 3
last | cut -d ' ' -f 1 | sort

# uniq 排序完成后，将重复的数据仅列出一个显示
#  uniq [-c]  　　　　　　//-c进行计数
last | cut -d ' ' -f 1 | sort | uniq
last | cut -d ' ' -f 1 | sort | uniq -c

# wc 计算文件内容的一个工具组。
# wc [-lwm]　
# -l仅列出行、-w仅列出多少字（英文单字）、-m列出有多少字符
cat /ect/man.config | wc
last | grep [a-zA-Z] | grep -v 'wtmp' | wc -l