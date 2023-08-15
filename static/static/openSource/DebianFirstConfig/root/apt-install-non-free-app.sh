#!/bin/bash
#
# Provides the scripts 'apt-add-repository' used to add 
#  section contrib, non-free and non-free-firmware in the
#  file /etc/apt/sources.list . See the line
#    deb http://deb.debian.org/debian/ bookworm main contrib non-free non-free-firmware
#

# APT options
#
## -y: answer "y"
## --dry-run: only simulate the changes
APT_OPTS=" --dry-run -y "

apt-get install "$APT_OPTS" software-properties-common

if [ $? -ne 0 ]; then
    exit 1
fi

# Adds the section contrib, non-free and non-free-firmware
apt-add-repository "$APT_OPTS" contrib 
apt-add-repository "$APT_OPTS" non-free 
apt-add-repository "$APT_OPTS" non-free-firmware

if [ $? -ne 0 ]; then
    exit 1
fi

apt-get update

if [ $? -ne 0 ]; then
    exit 1
fi

# Win64 codecs for multimedia
# apt-get install "$APT_OPTS" w64codecs

if [ $? -ne 0 ]; then
    exit 1
fi

# Multimedia codecs
apt-get install "$APT_OPTS" libdvdcss2

if [ $? -ne 0 ]; then
    exit 1
fi

# non-free compression file format
apt-get install "$APT_OPTS" unrar

if [ $? -ne 0 ]; then
    exit 1
fi

# gaming
apt-get install "$APT_OPTS" mame-extra

if [ $? -ne 0 ]; then
    exit 1
fi

# non-free firmware
#   for module r8169 -> firmware-realtek
#   for module i915 -> firmware-realtek
#   for Intel Wireless cards -> firmware-iwlwifi
apt-get install "$APT_OPTS" firmware-realtek firmware-iwlwifi

if [ $? -ne 0 ]; then
    exit 1
fi
