#!/bin/bash

# set 命令总结
# 写法1
set -Eeuxo pipefail

# 写法2
set -Eeux
set -o pipefail

# shopt 命令 查看参数的关闭打开状态
# -s 打开
shopt -s optionNameHere
# -u optionNameHere
shopt -u optionNameHere
# -q 查询打开状态，但是需要使用$?去查询结果
shopt -q optionNameHere

# 行号
echo "line NO: $LINENO"

# 函数调用堆栈 FUNCNAME 是一个列表
echo "${FUNCNAME[0]}"

# 脚本调用堆栈 BASH_SOURCE 是一个列表

# 行号 BASH_LINENO 是一个列表


# mktemp 创建临时文件 ,创建失败要及时退出
# 退出时候保证删除临时文件
trap 'rm -f "$TMPFILE"' EXIT
TMPFILE=$(mktemp) || exit 1
echo "临时文件目录为$(TMPFILE)"

# mktemp 命令参数
# -d 临时目录
# -p 指定临时文件所在目录
# -t 指定文件名模板，默认模板为tmp.后解10个随机字符

# trap 命令用来再bash脚本中响应系统信号
# trap [动作] [信号1] [信号2]...
# 常用信号
# HUP：编号1，脚本与所在的终端脱离联系。
# INT：编号2，用户按下 Ctrl + C，意图让脚本终止运行。
# QUIT：编号3，用户按下 Ctrl + 斜杠，意图退出脚本。
# KILL：编号9，该信号用于杀死进程。
# TERM：编号15，这是kill命令发出的默认信号。
# EXIT：编号0，这不是系统信号，而是 Bash 脚本特有的信号，不管什么情况，只要退出脚本就会产生。


