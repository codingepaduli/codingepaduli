#!/bin/bash
#
# Remember to edit the /etc/apt/sources.list and execute the script as root

# Edit /etc/apt/sources.list and add contrib and non-free repositories:
#    deb http://deb.debian.org/debian/ bookworm main contrib non-free non-free-firmware
#    deb http://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware
#    deb http://deb.debian.org/debian/ bookworm-updates main contrib non-free non-free-firmware
#    deb http://deb.debian.org/debian/ bookworm-backports main contrib non-free

# APT options
#
## -y: answer "y"
## --dry-run: only simulate the changes
APT_OPTS=" --dry-run -y "

apt-get update

if [ $? -ne 0 ]; then
    exit 1
fi

# Enable secure connections (https) to the remote repositories 
# and install gnupg in order to import apt keys

apt-get install "$APT_OPTS" apt-transport-https gnupg apt-show-versions apt-utils

if [ $? -ne 0 ]; then
    exit 1
fi

##############################################
# Install multimedia software
##############################################

# Codecs for reading DVDs - EXIF information in JPEG - webp files - mp3 file - iphone HEIC / HEIF (High Efficiency Image)
apt-get install "$APT_OPTS" exif webp lame heif-thumbnailer

if [ $? -ne 0 ]; then
    exit 1
fi

# applications
## simplescreenrecorder: un registratore di schermo
## kchmviewer: visualizzatore di file CHM (il formato dei file d'aiuto Microsoft)
## imagination: crea presentazioni per DVD
## ginkgocadx: software per immagini medicali e visualizzatore di DICOM completo
## amide: software per immagini medicali
apt-get install "$APT_OPTS" simplescreenrecorder kchmviewer imagination ginkgocadx amide

if [ $? -ne 0 ]; then
    exit 1
fi

# Festival Text to Speech and Italian Festival Voice 
# Example1: echo "Ciao" | festival --tts
# Example2: echo "Ciao" | festival --tts --language italian
# apt-get install "$APT_OPTS" festival festlex-ifd

if [ $? -ne 0 ]; then
    exit 1
fi

# Multiple Arcade Machine Emulator (MAME)
# apt-get install "$APT_OPTS" mame mame-data mame-tools gnome-video-arcade

if [ $? -ne 0 ]; then
    exit 1
fi

# Games
# apt-get install "$APT_OPTS" pokerth

if [ $? -ne 0 ]; then
    exit 1
fi

##############################################
# Install connection and internet software
##############################################

# SSH server and client, autossh for automatic reconnection
apt-get install "$APT_OPTS" openssh-client openssh-server openssh-sftp-server autossh

if [ $? -ne 0 ]; then
    exit 1
fi

# VNC server
# apt-get install "$APT_OPTS" tightvncserver

if [ $? -ne 0 ]; then
    exit 1
fi

# UFW and Colorful IP LAN Monitor
apt-get install "$APT_OPTS" ufw gufw iptraf nmap

if [ $? -ne 0 ]; then
    exit 1
fi

# Firefox Extended Support Release
apt-get install "$APT_OPTS" firefox-esr

if [ $? -ne 0 ]; then
    exit 1
fi

##############################################
# Install hardware management software
##############################################

# Printer and scanners
## cups: gestore stampa e IPP (Internet Printing Protocol)
## simple-scan: gestione scanner, frontend SANE (Scanner Access Now Easy)
apt-get install "$APT_OPTS" cups cups-client simple-scan

if [ $? -ne 0 ]; then
    exit 1
fi

# hardware management (alsa audio, bluez bluetooth, ofono mobile telephony devices stack)
apt-get install "$APT_OPTS" alsa-utils bluetooth bluez bluez-tools blueman ofono

if [ $? -ne 0 ]; then
    exit 1
fi

# acpi info, list-hardware info, linux standard base reporting utilities
apt-get install "$APT_OPTS" acpi cpufrequtils lshw lshw-gtk lsb-base lsb-release

if [ $? -ne 0 ]; then
    exit 1
fi

# Disks, file-systems and recovery tools
## gparted: Partition manager
## testdisk: Testdisk partition scanner and PhotoRec file recovery tool
## ntfs-3g: Microsoft NTFS filesystem driver
## gnome-disk-utility: features, like support for trash, removable media and remote file systems
## ifuse: Filesystem USErmode for iphone 
## jmtpfs: Filesystem USErmode for MTP devices
## wipe: secure deletion of files (overwriting it more times)
## rmlint-gui: GUI for finding duplicate files & directories
apt-get install "$APT_OPTS" gparted testdisk ntfs-3g gnome-disk-utility gvfs gvfs-backends ifuse jmtpfs wipe rmlint-gui

if [ $? -ne 0 ]; then
    exit 1
fi

##############################################
# Install utils 
##############################################

# Microsoft compatibility tools
apt-get install "$APT_OPTS" cabextract mscompress

if [ $? -ne 0 ]; then
    exit 1
fi

# compression and file type utilities
apt-get install "$APT_OPTS" xarchiver p7zip-full psutils arj bzip2 gzip pigz unzip zip lzma python3-lz4

if [ $? -ne 0 ]; then
    exit 1
fi

# system management
apt-get install "$APT_OPTS" aptitude aptitude-common # cockpit

if [ $? -ne 0 ]; then
    exit 1
fi

# GNOME 3 PIN or pass-phrase entry dialog for GnuPG
# apt-get install "$APT_OPTS" pinentry-gnome3

if [ $? -ne 0 ]; then
    exit 1
fi

# Installa GoCryptFS per criptare una cartella in una seconda da sincronizzare in cloud
# apt-get install "$APT_OPTS" gocryptfs

if [ $? -ne 0 ]; then
    exit 1
fi

# Burning tools 
## brasero: burning tool
## cdrdao: Disk-At-Once (DAO) burning tool
## dvdisaster: complements optical media with error correction data
apt-get install "$APT_OPTS" brasero brasero-common brasero-cdrkit cdrdao dvdisaster

if [ $? -ne 0 ]; then
    exit 1
fi

# cryptography utils
apt-get install "$APT_OPTS" python3-bcrypt python3-cryptography

if [ $? -ne 0 ]; then
    exit 1
fi

# cron and anacron
# apt-get install "$APT_OPTS" anacron at cron

if [ $? -ne 0 ]; then
    exit 1
fi

# dictionary
# apt-get install "$APT_OPTS" stardict

if [ $? -ne 0 ]; then
    exit 1
fi

##############################################
# Install developers tools 
##############################################

# apt-get install "$APT_OPTS" mariadb-client mariadb-server mycli

if [ $? -ne 0 ]; then
    exit 1
fi

# apt-get install "$APT_OPTS" apache2 php

if [ $? -ne 0 ]; then
    exit 1
fi

# apt-get install "$APT_OPTS" maven openjdk-11-jdk openjdk-11-jre

if [ $? -ne 0 ]; then
    exit 1
fi

apt-get install "$APT_OPTS" python3 python3-venv

if [ $? -ne 0 ]; then
    exit 1
fi

apt-get install "$APT_OPTS" git git-extras gitk # subversion

if [ $? -ne 0 ]; then
    exit 1
fi

# apt-get install "$APT_OPTS" ansible

if [ $? -ne 0 ]; then
    exit 1
fi

# apt-get install "$APT_OPTS" qemu qemu-kvm qemu-utils

if [ $? -ne 0 ]; then
    exit 1
fi

# apt-get install "$APT_OPTS" vagrant vagrant-libvirt libvirt-daemon-system

if [ $? -ne 0 ]; then
    exit 1
fi

apt-get install "$APT_OPTS" bash bash-completion curl dash diffutils tldr-py

if [ $? -ne 0 ]; then
    exit 1
fi

# password cracking tool
apt-get install "$APT_OPTS" john

if [ $? -ne 0 ]; then
    exit 1
fi

# Initializa tldr
# git clone https://github.com/tldr-pages/tldr.git SVN/folder
# tldr init
# insert SVN/folder
# tldr reindex
# search any command with "tldr find command"
# update and reindex with "tldr update && tldr reindex"

##############################################
# Install text packages 
##############################################

# editors and viewer
apt-get install "$APT_OPTS" evince micro gedit # docbook-xml

if [ $? -ne 0 ]; then
    exit 1
fi

# pandoc-crossref can be installed from here
# https://github.com/lierdakil/pandoc-crossref#readme
#
# apt-get install "$APT_OPTS" pandoc pandoc-citeproc texlive texlive-xetex texlive-luatex texlive-extra-utils librsvg2-bin

if [ $? -ne 0 ]; then
    exit 1
fi

# Installa i dizionari hunspell e aspell per il controllo ortografico (in Atom)
apt-get install "$APT_OPTS" hunspell-it hunspell-en-gb hunspell-en-us aspell aspell-en aspell-it

if [ $? -ne 0 ]; then
    exit 1
fi

# Installa il tool per lavorare con i formati testuali (json, toml, xml)
## crudini: bash utility for reading ini file (used in Mozilla Bookmarks for loading profile.ini)
apt-get install "$APT_OPTS" fd-find jq gawk grep gron crudini

if [ $? -ne 0 ]; then
    exit 1
fi

## Installa i pacchetti di "beautiful interfaces"
apt-get install "$APT_OPTS" boxes cowsay lolcat cmatrix

if [ $? -ne 0 ]; then
    exit 1
fi

apt-get autoremove "$APT_OPTS" --purge

