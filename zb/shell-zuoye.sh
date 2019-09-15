#!/bin/bash
path=/Users/zhangbin/test0820
cd 作业/
i=1
infor=`ls $path/作业`
for file in $infor
do
	extension=${file#*.}
	filename=${file%.*}
	if test -s $file
	then
		mv $path/作业/$filename.$extension $path/作业/$i.$extension
	else
		rm -f $path/作业/$filename.$extension
	fi
	let i=i+1
done