# Attention Is All You Need(Transformer)

## Abstract

过去的方法太依赖complex recurrent 和CNN了。我们提出了一种全新的结构，这种结构ceshi

```
#!/usr/bin/expect -f

set username [lindex $argv 0]
set password [lindex $argv 1]
NOW_TIME=$(date "+%Y-%m-%d-%H:%M:%S")
echo $NOW_TIME

git add *
git commit -m \'$NOW_TIME\'
spawn git push origin master
expect "*sername:*"
send "$username"
expect "*assword:*"
send "$password"
interact
~            
------------------------------------------------------------------

git add *
git commit -m \'$nowtime\'

cat > github.sh <<-EOF
#!/usr/bin/expect -f

set username [lindex $argv 0]
set password [lindex $argv 1]
set nowtime  [lindex $argv 2]


spawn git push origin master
expect "*sername*"
send "$username\r"
expect "*assword*"
send "$password\r"
interact
EOF

chmod +x github.sh

expect github.sh $username $passwd $nowtime

rm -rf github.sh



```

再次测试

