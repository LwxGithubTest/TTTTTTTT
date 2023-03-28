#!/bin/bash

# 任务管理工具
# `&`，**ctrl-z**，**ctrl-c**，`jobs`，`fg`，`bg`，`kill`

# 1.& 把任务直接丢到后台运行
# 命令后加 &  
# 后台任务的stdout, stderr还是会输出，影响前台显示
# 处理办法重定向stdout，stderr到日志文件


# 2. jobs 查看后台任务
# 参数  -l: 列出PID号码  -r: 列出正在后台run的工作， -s:列出正在后台暂停的工作

# 3. fg 后台工作拿到前台继续允许
# 参数  %jobnumber: jobnumber工作号   +: 运行前面有+号的任务  -: 运行前面有-号的任务

# 4. bg 后台暂停任务继续允许
# 参数  %jobnumber: jobnumber工作号

# 5. kill   删除或重启任务
# kill -signal %jobnumber
# 参数  -l: 列出目前kill能够使用的讯号（signal）
#      -1: 重新读取一次参数的配置档
#      -2: ctrl-c
#      -9: 删除一个工作
#      -15: 终止一个工作

# 6. nohup  脱机任务管理
# nohup [命令与参数] <== 在终端机前景中工作
# nohup [命令与参数] & <== 在终端机背景中工作

# Ctrl + C 终止
# Ctrl + Z 丢到后台暂停
