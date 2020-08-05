#!/usr/bin/expect -f
if [ -f "/data/filename" ];then
echo "文件存在"
else
echo "文件不存在"
fi
