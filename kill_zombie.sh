#!/usr/bin/env bash

logfile=/var/log/kill_zombie.log

while true : 
do
     ps -xal | grep defunct | grep -v grep | awk '{print $4, $13}' >> $logfile
     ps -xal | grep defunct | grep -v grep 
   if
     [ $? -eq 0 ] 
   then
     sudo kill -9 $(ps -xal | grep defunct | grep -v grep | awk '{print $4}')
   else
     : 
   fi
   sleep 5s 
done
