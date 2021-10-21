#!/bin/bash
sudo apt-get update
sudo apt-get install -y python3 python3-pip gunicorn
sudo git clone https://github.com/LSoares1/CRUD-Project.git
sudo cd ./CRUD_Project
sudo git checkout dev
sudo SECRET_KEY=oyoSDGFHJBXZCCVMNB
sudo export SECRET_KEY
sudo pip3 install -r requirements.txt
sudo python3 create.py
sudo gunicorn -D --workers=4 --bind=0.0.0.0:5000 app:app