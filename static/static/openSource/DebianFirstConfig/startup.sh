#!/bin/bash

# Checkout del repository
# git clone https://github.com/codingepaduli/codingepaduli.git

# Cartella script
# cd codingepaduli/static/static/openSource/DebianFirstConfig/

# Avvia lo script
#     Per visualizzare e salvare l'output di messaggi ed errore nei file di log
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
cp create_ssh_keys.sh /home/io/create_ssh_keys.sh
chown io:casa /home/io/create_ssh_keys.sh
su -c '/home/io/create_ssh_keys.sh' io
