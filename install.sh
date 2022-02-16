#!/bin/bash
cd /home/mob_app_usr
sudo git clone https://github.com/Gavin-NB/Mobalysis.git
sudo echo "export DBNAME=mobalytics" >> .bashrc
sudo echo "export DBUSER=mob_db_user" >> .bashrc
sudo echo "export DBPASS=mob_db_pass" >> .bashrc
sudo echo "export DBHOST=localhost" >> .bashrc
sudo echo "export DBPORT=5432"  >> .bashrc
