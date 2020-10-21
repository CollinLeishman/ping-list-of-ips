#!/bin/bash
date
echo 'Make a file named nodes.txt with a list of IP addresses. This script will ping them and tell you whether they are up or not.'
cat nodes.txt |  while read output
do
    ping -c 1 -W 1 "$output" > /dev/null
    if [ $? == 0 ]; then
    echo "node $output is up"
    else
    echo "node $output is down"
    fi
done
