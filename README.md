This unit kills all zombie processes in your system

UNIT INSTALLATION
After you have downloaded the repository to your host, you need to go to the directory with the unit:
cd zombie_killer/

Run the installer with root rights:
sudo ./install.sh

Check the operation of the unit:
systemctl status zombie_killer.service


Stop the unit:
systemctl stop zombie_killer.service

Restart the unit:
systemctl restart zombie_killer.service

View logs:
less /var/log/kill_zombie.log
