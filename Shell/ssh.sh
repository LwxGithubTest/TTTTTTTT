#!/bin/bash

# 1.使用ssh链接远程主机
ssh user@hostname
# 2.使用ssh链接其他端口，默认是22
ssh -p port user@hostname
# 3.使用ssh远程链接并执行命令显示在本地
ssh user@hostname ls -l 
# 4.在远程主机运行一个图形界面的程序
ssh -X user@hostname
# 5.配置SSH
# SSH配置文件在/etc/ssh/sshd_config
# 6.构建ssh密钥对
ssh-keygen -t rsa #ssh-keygen -t +算法  rsa dsa
$
