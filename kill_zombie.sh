#!/usr/bin/env bash

logfile=/var/log/kill_zombie.log

while true; do
    # Получаем список зомби-процессов
    zombie_procs=$(ps -xal | grep '[d]efunct' | awk '{print $4, $13}')
    
    if [ -n "$zombie_procs" ]; then
        # Логируем найденные зомби-процессы
        echo "$zombie_procs" >> "$logfile"
        
        # Извлекаем PID процессов для завершения
        pids=$(echo "$zombie_procs" | awk '{print $1}')
        kill -9 $pids
    fi
    
    # Пауза на 120 секунд перед следующим циклом
    sleep 120s
done

