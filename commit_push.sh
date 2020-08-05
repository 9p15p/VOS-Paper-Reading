#!/bin/bash

username=9p15p
passwd=ldz19980104
nowtime=$(date "+%Y-%m-%d-%H:%M:%S")

git add *
git commit -m \'$nowtime\'

expect github.sh $username $passwd $nowtime
