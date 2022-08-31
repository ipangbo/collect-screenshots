#!/bin/bash
# read -p "图片扩展名：" extname
extname="png"

# read -p "名单：" namelist
namelist="名单.txt"

for line in $(cat ${namelist})
do
    echo $line
    read -p "文件地址：" filename
    echo "原文件删除，保存至/Users/ipangbo/Desktop/$line.$extname"
    mv "$filename" "/Users/ipangbo/Desktop/$line.$extname"
done
echo "程序已退出"
