#!/bin/bash

# find 的高级用法， 主要围绕着 -exec,注意不要混淆shell命令exec

# Why \;' ?  There must be an ';' to indicate CMD finish.
# Using '\' to prevent it be escaped by shell.


#找到所有的core文件并删除
# find ~/ -name "core*" -exec rm {} \;


#列出最后一天被修改的
# find /home/ -mtime 1
# mtime = 目标文件最后修改的时间
# ctime = 修改后的最后状态(通过'chmod'或其他方法) 
# atime = 最后访问时间


# 删除至少5天没有访问的
# DIR=/home/junk_files
# find "$DIR" -type f -atime +5 -exec rm {} \;


# 查找etc下包含ip地址的文件名
# 可能会误报
# find /etc -exec grep '[0-9][0-9]*[.][0-9][0-9]*[.][0-9][0-9]*[.][0- 9][0-9]*' {} \;
# 这个应该ok
# find /etc -type f -exec cat '{}' \; | tr -c '.[:digit:]' '\n' \
#  | grep '^[^.][^.]*\.[^.][^.]*\.[^.][^.]*\.[^.][^.]*$'


