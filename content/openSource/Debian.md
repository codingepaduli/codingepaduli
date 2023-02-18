---
type: "openSource"
title: "Debian GNU/Linux"
description: "Debian GNU/Linux, il sistema operativo universale e completamente Libero"
date: 2023-02-17
publishdate: 2023-02-17
lastmod: 2023-02-17
categories: ["open source", "software"]
keywords: ["open source", "software"]
draft: false
toc: false
summary: "Debian GNU/Linux, il sistema operativo universale e completamente Libero"
---

# Debian GNU/Linux

[https://www.debian.org/](Debian GNU/Linux), il sistema operativo universale e completamente Libero.

Come per l'installazione degli altri sistemi operativi, si consiglia di preparare una penna USB con [https://www.ventoy.net/en/index.html](Ventoy), un tool open source per creare una penna USB avviabile (bootable, ovvero capace di avviare il sistema).

Effettuato ciò, scarichiamo il file ISO di Debian, lo copiamo sulla pennetta USB e quindi avviamo il computer dalla pennetta.

Di seguito le schermate ed i passi del processo di installazione.

![Menu principale](/static/openSource/Debian/debian-installer-00-steps.png)

## Selezione della lingua

![Menu principale](/static/openSource/Debian/debian-installer-01-localechooser-languagelist.png)

![Avviso traduzione](/static/openSource/Debian/debian-installer-02-localechooser-languagelist-translation-warn.png)

![Posizione](/static/openSource/Debian/debian-installer-03-localechooser-position.png)

![Configurazione della tastiera](/static/openSource/Debian/debian-installer-04-localechooser-keyboard-config.png)

## Configurazione della rete

![Configurazione del dominio](/static/openSource/Debian/debian-installer-05-netcfg-get-domain.png)

![Configurazione dell'interfaccia di rete](/static/openSource/Debian/debian-installer-06-netcfg-choose-interface.png)

![Richiesta firmware](/static/openSource/Debian/debian-installer-07-netcfg-hw-detect-load-firmware.png)

![Selezione rete wifi](/static/openSource/Debian/debian-installer-08-netcfg-wireless-essids-list.png)

![Sicurezza rete wifi](/static/openSource/Debian/debian-installer-09-netcfg-wireless-security-type.png)

![Password rete wifi](/static/openSource/Debian/debian-installer-10-netcfg-wireless-wpa.png)

## Configurazione utenti

![Password utente root](/static/openSource/Debian/debian-installer-20-root-password.png)

![Password non corrispondente](/static/openSource/Debian/debian-installer-21-root-password-mismatch.png)

![Nome utente](/static/openSource/Debian/debian-installer-22-user-fullname.png)

![username](/static/openSource/Debian/debian-installer-23-user.png)

## Gestione partizioni

![Metodo di partizionamento](/static/openSource/Debian/debian-installer-30-partitioning.png)

![Partizionamento Disco](/static/openSource/Debian/debian-installer-31-partitioning-setup-disk.png)

![Setup partizione](/static/openSource/Debian/debian-installer-32-partitioning-setup.png)

![Punto di mount per i filesystem](/static/openSource/Debian/debian-installer-33-partitioning-filesystems-mountpoint.png)

![Tipo di filesystem](/static/openSource/Debian/debian-installer-34-partitioning-choose-filesystems.png)

![Partizionamento Disco](/static/openSource/Debian/debian-installer-35-partitioning-setup.png)

## Configurazione mirror apt per aggiornamento software

![Scelta mirror apt](/static/openSource/Debian/debian-installer-40-apt-setup-use-mirror.png)

![Lista mirror apt](/static/openSource/Debian/debian-installer-41-apt-mirror-availables.png)

![Scelta mirror apt](/static/openSource/Debian/debian-installer-42-apt-mirror-selection.png)

![Proxy Http per apt](/static/openSource/Debian/debian-installer-43-apt-proxy-http.png)

## Popularity contest

![Popularity contest](/static/openSource/Debian/debian-installer-50-popularity-contest.png)

## Software selection

![Software selection](/static/openSource/Debian/debian-installer-60-software-selection.png)

## Esecuzione shell

![Esecuzione shell](/static/openSource/Debian/debian-installer-70-utils-shell.png)

## Fine installazione

![Fine](/static/openSource/Debian/debian-installer-80-finished-and-reboot.png)
