#!/bin/sh
while true
do
echo -n $(uptime | sed 's/.*://; s/,//g')
sleep 1
done
