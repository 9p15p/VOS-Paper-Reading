#!/bin/bash

#快捷上传小助手，
#注意保护好自己的密码
#需要安装/usr/bin/expect 
#测试3.0
username=9p15p
password=ldz19980104

nowtime=$(date "+%Y-%m-%d-%H:%M:%S")

if [ -f ".gitignore" ];then
	echo ".gitgnore存在"
	if cat '.gitignore' | grep "commit_push.sh" > /dev/null
		then
		    echo "commit_push.sh已存在"
		else
		    echo "在.gitignore中追加commit_push.sh"
		    echo "commit_push.sh" >> ./.gitignore
	fi
else
	echo "创建.gitignore中并加入commit_push.sh"
	cat > .gitignore<<-EOF
		commit_push.sh	
	EOF
fi

git add *
git commit -m \'$nowtime\'

cat > github.sh <<-EOF
#!/usr/bin/expect -f

set username [lindex $argv 0]
set password [lindex $argv 1]

spawn git push origin master
expect "*sername*"
send "$username\n"
expect "*assword*"
send "$password\n"
interact
EOF

chmod +x github.sh

expect github.sh $username$password

rm -rf github.sh
