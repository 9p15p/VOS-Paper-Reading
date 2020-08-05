#!/usr/bin/expect -f

set username [lindex $argv 0]
set password [lindex $argv 1]
set nowtime  [lindex $argv 2]


spawn git push origin master
expect "*sername*"
send "$username"
expect "*assword*"
send "$password"
interact
