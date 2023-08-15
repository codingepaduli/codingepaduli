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
#    ./startup.sh > >(tee -a stdout.log) 2> >(tee -a stderr.log >&2)

# Install all the apps
# . ./root/apt-install-app.sh
# . ./root/apt-install-non-free-app.sh
# . ./root/docker-installedApp.sh
# . ./root/flatpak-installAllScript.sh
# . ./root/npm-installedApp.sh

# Remove unwanted apps
# . ./root/apt-remove-app.sh

# Create users and groups
. ./root/create-users.sh

# Copy the file in the user home
mkdir -p "/home/io/startup"
cp -r "./user/." "/home/io/startup/"
chown -R io:casa "/home/io/startup/"

# Execute the script as user, not as root
mkdir -p "/home/io/Sviluppo/SVN"
# su -c '/home/io/startup/user-startup.sh' io
# su -c '/home/io/startup/checkout_repositories.sh' io
# su -c '/home/io/startup/create_ssh_keys.sh' io
