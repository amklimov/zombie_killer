#!/usr/bin/env bash

logfile=/var/log/zmb/kill_zombie.log

while true : 
do
     ps -xal | grep defunct | grep -v grep | awk '{print $4}' &> $logfile
   if
     [ $? -eq 0 ] # Если вывод предыдущей команды равен 0 (успех), то следующее then
   then
     sudo kill -9 $(ps -xal | grep defunct | grep -v grep | awk '{print $4}')
   else
     : 
   fi
   sleep 5s 
done


[ "$1" == "stop" ] && cts disconnect  
sleep 3s

