#!/bin/bash

# Questo script installa e configura tutti i collegamenti dell'alternativa per java.
#
# Un alternativa rappresenta un collegamento nella cartella /usr/bin che punta ad 
# un SINGOLO file, ad esempio /usr/bin/java punta a /usr/lib/jvm/java-11-openjdk-amd64/bin/java
#
# Ogni alternativa ha una priorita', ad esempio java-11 ha priorita' 1111, java-17 ha priorita' 1711
#
# Alcuni ambienti come JAVA hanno bisogno di piu collegamenti da impostare, java, javac, javadoc...
# Questo script li installa e li configura tutti.

# Per installare un'alternativa nuova:
#
## Download openjdk-17-x64.tar.gz file
## Create as root the folders:
## 	mkdir -p /usr/lib/jvm/
## Extract in folder /usr/lib/jvm/java-17-openjdk-amd64/
## Install the alternative (aggiorna il file /var/lib/dpkg/alternatives/java): 
##    sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-11-openjdk-amd64/bin/java 1111
##    sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-17-openjdk-amd64/bin/java 1711
##    sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/java-21-openjdk-amd64/bin/java 2111
## Run this script

# Per visualizzare i collegamenti di Java:
## update-alternatives --get-selections | grep 'java'

# Per impostare un'alternativa:
## sudo update-alternatives --set java /usr/lib/jvm/java-11-openjdk-amd64/bin/java

# Per verificare che i file eseguibili siano reperibili
## java --version
## javac --version
## jar --version

## Set the variable VERSION=17
VERSION="21"
JDK_DIR="/usr/lib/jvm/java-$VERSION-openjdk-amd64"
TARGET_BIN_DIR="$JDK_DIR/bin"
TARGET_DIR="/usr/bin"

for filepath in "$TARGET_BIN_DIR"/*; do
  file=$(basename "$filepath")
  echo "$TARGET_DIR/$file  -  $file - $TARGET_BIN_DIR/$file"
  # installa l'alternativa (se gia installata, non tocca nulla)
  update-alternatives --install "$TARGET_DIR/$file" "$file" "$TARGET_BIN_DIR/$file" ${VERSION}11
  # imposta l'alternativa installata
  update-alternatives --set "$file" "$TARGET_BIN_DIR/$file"
done
