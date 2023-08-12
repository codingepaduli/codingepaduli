#!/bin/bash
#
# Provides the scripts 'apt-add-repository' used to add 
# section contrib, non-free and non-free-firmware in the
# file /etc/apt/sources.list like the line
#    deb http://deb.debian.org/debian/ bookworm main contrib non-free non-free-firmware
#
apt-get install -y software-properties-common

if [ $? -ne 0 ]; then
    exit 1
fi

# Adds the section contrib, non-free and non-free-firmware
apt-add-repository -y contrib 
apt-add-repository -y non-free 
apt-add-repository -y non-free-firmware

if [ $? -ne 0 ]; then
    exit 1
fi

apt-get update

if [ $? -ne 0 ]; then
    exit 1
fi

# Win64 codecs for multimedia
# apt-get install -y w64codecs

if [ $? -ne 0 ]; then
    exit 1
fi

# Multimedia codecs
apt-get install -y libdvdcss2

# non-free compression file format
apt-get install -y unrar

# non-free firmware
#   for module r8169 -> firmware-realtek
#   for module i915 -> firmware-realtek
apt-get install -y firmware-realtek

# non-free firmware: Intel Wireless cards
apt-get install -y firmware-iwlwifi
