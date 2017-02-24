#!/bin/bash
function ergodic
{
	for file in ` ls $1`
	do
                 if [ -d $1"/"$file ]
                 then
                       ergodic $1"/"$file
                 else
                       local path=$1"/"$file #得到文件的完整的目录
                       local name=$file       #得到文件的名字
                       #做自己的工作.
                    if [ "${file##*.}" = "md" ]; then
    ~/node_modules/.bin/markdown2bootstrap $1"/"$file --outputdir $1
                                          echo $1"/"$file >>a.txt 
                   fi
                fi

	done
}
INIT_PATH="."
ergodic $INIT_PATH
