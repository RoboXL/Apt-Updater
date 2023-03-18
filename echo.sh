@echo off
echo This script will update all of your packages
echo " "
read -p "Are you sure you want to continue? [Y/n] " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo sudo apt update && sudo apt upgrade -y
fi
echo " "
read -p "Do you want to upgrade the OS? [Y/n] " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo sudo apt full-upgrade
fi
sudo reboot