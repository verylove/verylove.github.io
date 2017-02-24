#!/bin/bash
function factorial
{
factorial=1
for (( i=1;i <= $1;i++ ))
        do
        factorial=$[ $factorial * $i ]
        done
echo $1的阶乘是:$factorial
}
#echo '程序名':$0,用于求阶乘
#factorial $1
