#!/bin/bash

# Comandi da dare al primo avvio:
#### Scarico git
#### apt-get install -y git
####
#### Checkout del repository
#### git clone https://github.com/codingepaduli/codingepaduli.git
####
#### Cartella script
#### cd codingepaduli/static/static/openSource/DebianFirstConfig/

# Avvia lo script e salva l'output di messaggi ed errori nei file di log
#     ./startup.sh > >(tee -a stdout.log) 2> >(tee -a stderr.log >&2)

# Install all the apps
# . apt-install-app.sh
# . docker-installedApp.sh
# . flatpak-installAllScript.sh
# . npm-installedApp.sh
# 
# # Remove unwanted apps
# . apt-remove-app.sh

# Create users and groups
. create-users.sh

# Create SSH keys
mkdir -p "/home/io/startup"
chown io:casa "/home/io/startup"
cp "./user/create_ssh_keys.sh" "/home/io/startup/create_ssh_keys.sh"
chown -R io:casa "/home/io/startup/"
su -c '/home/io/startup/create_ssh_keys.sh' io
