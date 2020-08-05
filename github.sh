

cat > .gitignore <<-EOF
        github.sh
EOF

#!/usr/bin/expect -f

set username 9p15p
set password ldz19980104

NOW_TIME=$(date "+%Y-%m-%d-%H:%M:%S")
echo $NOW_TIME

git add *
git commit -m \'$NOW_TIME\'
spawn git push origin master
expect "*sername:*"
send "$username"
expect "*assword:*"
send "$password"
