#!/usr/bin/env bash

cat kill_zombie.sh | sudo tee /usr/bin/kill_zombie.sh && \
sudo chmod +x /usr/bin/kill_zombie.sh 

cat zombie_killer.service | sudo tee /etc/systemd/system/zombie_killer.service && \
sudo chmod 664 /etc/systemd/system/zombie_killer.service && \
sudo systemctl daemon-reload && \
sudo systemctl enable zombie_killer.service && \
sudo systemctl restart zombie_killer.service && \
systemctl status zombie_killer.service

