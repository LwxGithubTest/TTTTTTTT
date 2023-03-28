#!/bin/bash

# Bash 内置了 Readline 库，具有这个库提供的很多“行操作”功能，
# 比如命令的自动补全，可以大大加快操作速度。
# 这个库默认采用 Emacs 快捷键，也可以改成 Vi 快捷键。
# set -o vi
# set -o emacs
# set editing-mode vi
echo "光标移动"
# ctrl + a: 行首
# ctrl + e: 行尾
# ctrl + l: 清除屏幕
# ctrl + d: 删除光标字符
# ctrl + t: 光标位置的字符与它前面一位的字符交换
# pushd dirname 进入目录dirname，并将该目录放入堆栈
# popd 会移除堆栈的顶部记录，并进入新的栈顶目录
# dirs 显示pushd和popd的操作结果，显示当前堆栈内容
pushd ~/Destop
popd