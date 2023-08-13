#!/bin/bash

# Avvia lo script e salva l'output di messaggi ed errori nei file di log
#    ./user-startup.sh > >(tee -a stdout.log) 2> >(tee -a stderr.log >&2)

cd "~/startup"

./create_ssh_keys.sh
./checkout_repositories.sh
