#!/bin/bash
sudo apt update
sudo apt install postgresql postgresql-contrib
sudo -u postgres createuser 'mob_db_user'
sudo -u postgres psql -c "ALTER ROLE mob_db_user WITH password 'mob_db_pass'"
sudo useradd -m -d /home/mob_app_usr mob_app_usr
sudo apt-get install python3-venv
sudo -u postgres createdb mobalytics
sudo -u postgres psql -c "ALTER DATABASE mobalytics OWNER TO mob_db_user"