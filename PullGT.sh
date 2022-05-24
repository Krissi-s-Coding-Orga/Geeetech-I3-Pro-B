#!/bin/bash
sudo service klipper stop
echo ">>Klipper service stopped<<"
git clone https://github.com/Krissi-s-Coding-Orga/Geeetech-I3-Pro-B klipper_temp
read -p "Klipper Configs will be override (backup will created), please check above for any errors. Press [Enter] to continue, or [Ctrl+C] to abort"
NOW=`date '+%F_%H:%M:%S'`;
mv --backup --suffix=-$NOW klipper_temp/* klipper_config
rm -rf klipper_temp
sudo service klipper start
echo ">>config files updated, Klipper restart<<"