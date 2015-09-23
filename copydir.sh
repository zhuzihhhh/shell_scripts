#!/bin/bash
#copydir.sh
#拷贝目录下的文件（一级）到指定的目录
#注意xargs到用法， -i {}命令，可以用来精确定位参数在后续命令中的位置
#很多时候是不必要的，但对于会产生混淆的情况，例如cp，就会非常有用

E_NOARGS=65

if [[ -z "$1" ]]; then
	echo "Usage: `basename $0` directory-to-copy"
	exit E_NOARGS	
fi

ls . | xargs -i -t cp ./{} $
# -t 是 "verbose" (输出命令行到stderr) 选项. -i 是"替换字符串"选项.
# {} 是输出文本的替换点. 这与在"find"命令中使用{}的情况很相像.
# 列出当前目录下的所有文件(ls .),
# 将 "ls" 的输出作为参数传递到 "xargs"(-i -t 选项) 中, 然后拷贝(cp)这些参数({})到一个新目录中($1).
# 最终的结果和下边的命令等价,
# 除非有文件名中嵌入了"空白"字符.

exit 0
