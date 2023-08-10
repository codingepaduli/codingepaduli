#!/bin/bash

# Per visualizzare e salvare l'output di messaggi ed errore nei file di log
# ./startup.sh > >(tee -a stdout.log) 2> >(tee -a stderr.log >&2)

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

