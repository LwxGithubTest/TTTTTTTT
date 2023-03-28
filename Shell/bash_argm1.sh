#! /bin/bash
echo $0 ' > echo $0'
echo $1 $2 $3 $4 $5 $6 $7 $8 $9 '>echo $1 $2 $3 $4 $5 $6 $7 $8 $9'

# count 存在且不为空，则输出值，否则，返回0
${count:-0}
# count 存在且不为空，则输出值，否则，设置值为0，返回0
${count:=0}
# count 存在且不为空，则输出1， 否则，为空
${count:+0}
# count 存在切不为空，则返回它的值，否则打印count:msg
${count:?"msg"}