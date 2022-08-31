#!/bin/bash
# read -p "图片扩展名：" extname
extname="png"

# read -p "名单：" namelist
namelist="名单_LF.txt"

for line in $(cat ${namelist})
do
    echo $line
    read -p "文件地址：" filename
    echo "原文件删除，保存至终端当前文件夹中target/$line.$extname"
    mv "$filename" "./target/$line.$extname"
done
echo "程序已退出"
