#!/bin/bash

# Impostazione manuale
 
# sudo timedatectl set-time '2026-09-29 21:33:30'
sudo timedatectl set-timezone 'Europe/Rome'

# Impostazione di data ora e fuso orario con orario di ggle

## -sS mostra i messaggi di errore
## -f fail: segnala un errore per risposte HTTP di errore
headers=$(curl -fsSI --max-time 10 https://www.google.com)
curl_status=$?

if (( curl_status != 0 )); then
    echo "Errore: non ho recuperato l'orario (codice $curl_status)"
    exit 1
fi

# Toglie "Date:"
## -n non stampa tutte le righe
## /Ip /p stampa solo le righe con sostituzione, /I indica case insensitive
## /^Date: // cerca "Date : " e lo sostituisce con ""
http_date=$(printf '%s\n' "$headers" | sed -n 's/^Date: //Ip')

if [[ -z "$http_date" ]]; then
    echo "Errore: nessun header Date trovato"
    exit 1
fi

printf 'Data ricevuta: %s\n' "$http_date"

if ! date -d "$http_date" >/dev/null 2>&1; then
    echo "Errore: data non valida: $http_date"
    exit 1
fi

local_date=$(date -d "$http_date" '+%Y-%m-%d %H:%M:%S')
sudo timedatectl set-time "$local_date"


# hwclock is a utility for accessing the hardware clock
# The hardware clock is also called a BIOS clock, it is 
# independent of the OS (operating system) you use and 
# works even when the machine is shut down.
# --systohc writes the system clock to the hardware clock
sudo hwclock --systohc
