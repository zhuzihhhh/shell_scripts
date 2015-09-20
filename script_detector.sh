#!/bin/bash
#find all script files in a directory

TESTCHARS=2
SHABANG='#!'

for file in *
do
	# head -c 在从文件头部输出指定个数个字符
	if [[ `head -c $TESTCHARS "$file"` = "$SHABANG" ]]; then
		echo "File\"$file\" is a script."
	else
		echo "File\"$file\" is *not* a script."
	fi
done

exit 0

