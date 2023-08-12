---
type: "openSource"
title: "Debian GNU/Linux 12 Bookworm"
description: "Debian GNU/Linux 12 Bookworm, il sistema operativo universale e completamente Libero"
date: 2023-08-12
publishdate: 2023-08-12
lastmod: 2023-08-12
categories: ["open source", "software"]
keywords: ["open source", "software"]
draft: false
toc: false
summary: "Debian GNU/Linux 12 Bookworm, il sistema operativo universale e completamente Libero"
---

# Debian GNU/Linux 12 Bookworm

[Debian GNU/Linux](https://www.debian.org/), il sistema operativo universale e completamente Libero.

Come per l'installazione degli altri sistemi operativi, si consiglia di preparare una penna USB con [Ventoy](https://www.ventoy.net/en/index.html), un tool open source per creare una penna USB avviabile (bootable, ovvero capace di avviare il sistema).

Effettuato ciò, scarichiamo il file ISO di Debian 12 Bookworm, lo copiamo sulla pennetta USB e quindi avviamo il computer dalla pennetta.

![Menu principale](/static/openSource/Debian12/debian-live.png)

<!-- TODO

Di seguito le schermate ed i passi del processo di installazione.

![Menu principale](/static/openSource/Debian12/debian-installer-00-steps.png)

-->

## Selezione della lingua

![Menu principale](/static/openSource/Debian12/debian-installer-01-localechooser-languagelist.png)

![Avviso traduzione](/static/openSource/Debian12/debian-installer-02-localechooser-languagelist-translation-warn.png)

![Posizione](/static/openSource/Debian12/debian-installer-03-localechooser-position.png)

![Configurazione della tastiera](/static/openSource/Debian12/debian-installer-04-localechooser-keyboard-config.png)

## Configurazione della rete

![Configurazione del dominio](/static/openSource/Debian12/debian-installer-10-netcfg-get-host.png)

![Configurazione del dominio](/static/openSource/Debian12/debian-installer-11-netcfg-get-domain.png)

<!-- TODO

![Configurazione dell'interfaccia di rete](/static/openSource/Debian/debian-installer-06-netcfg-choose-interface.png)

![Richiesta firmware](/static/openSource/Debian/debian-installer-07-netcfg-hw-detect-load-firmware.png)

![Selezione rete wifi](/static/openSource/Debian/debian-installer-08-netcfg-wireless-essids-list.png)

![Sicurezza rete wifi](/static/openSource/Debian/debian-installer-09-netcfg-wireless-security-type.png)

![Password rete wifi](/static/openSource/Debian/debian-installer-10-netcfg-wireless-wpa.png)

-->

## Configurazione utenti

![Password utente root](/static/openSource/Debian12/debian-installer-20-root-password.png)

![Nome utente](/static/openSource/Debian12/debian-installer-22-user-fullname.png)

![username](/static/openSource/Debian12/debian-installer-23-user.png)

![Password utente](/static/openSource/Debian12/debian-installer-24-user-password.png)

## Gestione dischi e partizioni

Il Sistema Operativo gestisce i dispositivi di memorizzazione di massa del computer. La gestione può essere un'operazione molto complessa, perché i dischi possono essere criptati, possono essere associati per formare un RAID (dall'inglese "Redundant Array of Independent Disks" ovvero "insieme ridondante di dischi indipendenti"), possono essere situati in sistemi "remoti" e quindi accessibili solo tramite rete.

Per questo motivo, il kernel non si occupa di rendere disponibili i dischi, ma carica in memoria un disco chiamato ``initramfs`` (initial ram file system) che contiene i driver necessari alla gestione dei dischi. Saranno poi gli altri programmi, esterni al kernel, che si occuperanno di renderli disponibili durante l'avvio del sistema.

Ogni disco può essere suddiviso in **partizioni**, ovvero unità logiche ed indipendenti di memorizzazione dati, gestite separatamente dal Sistema Operativo. Un disco contiene sempre almeno una partizione.

L'elenco delle partizioni di un disco è contenuto nella tabella delle partizioni, che si trova sempre nella parte iniziale del disco.

In passato la tabella delle partizioni era contenuta nel **MBR** (dall'inglese Master Boot Record), uno standard che limitava la dimensione dei dischi ad un massimo di due terabyte (TB).

I dispositivi moderni invece memorizzano questa tabella nello standard **GPT** (dall'inglese GUID Partition Table) e non hanno il limite di dimensione del disco a due terabyte.

Ogni sistema operativo ha le sue "regole" per identificare un disco o una partizione.

Windows identifica ogni partizione con una lettera dell'unità. Quindi abbiamo le partizioni:

- ``c:``
- ``d:``
- ``e:``
- ...

Linux identifica ogni disco con un file. Abbiamo quindi i dischi:

- ``/dev/sda``
- ``/dev/sdb``
- ``/dev/sdc``
- ...

In ogni disco abbiamo poi le differenti partizioni, identificate a loro volta con un file. Abbiamo quindi:

- Le partizioni del disco ``/dev/sda``:

  - ``/dev/sda1``
  - ``/dev/sda2``
  - ``/dev/sda3``
  - ...

- Le partizioni del disco ``/dev/sdb``:

  - ``/dev/sdb1``
  - ``/dev/sdb2``
  - ``/dev/sdb3``
  - ...

![Metodo di partizionamento](/static/openSource/Debian12/debian-installer-30-partitioning.png)

### Partizionamento manuale

![Partizionamento Disco](/static/openSource/Debian12/debian-installer-31-partitioning-setup-disk.png)

![Conferma partizionamento Disco](/static/openSource/Debian12/debian-installer-32-partitioning-setup-disk-confirm.png)

![Setup partizione](/static/openSource/Debian12/debian-installer-33-partitioning-setup-partition.png)

![Nuova partizione](/static/openSource/Debian12/debian-installer-34-partitioning-filesystems-new.png)

![Dimensione partizione](/static/openSource/Debian12/debian-installer-35-partitioning-filesystems-size.png)

![Tipo partizione](/static/openSource/Debian12/debian-installer-36-partitioning-filesystems-type.png)

![Inizio partizione](/static/openSource/Debian12/debian-installer-37-partitioning-filesystems-start.png)

![Default filesystem ext4](/static/openSource/Debian12/debian-installer-38-partitioning-filesystems-ext4.png)

![filesystem swap](/static/openSource/Debian12/debian-installer-39-partitioning-filesystems-swap.png)

![filesystem swap](/static/openSource/Debian12/debian-installer-40-partitioning-filesystems-complete.png)

![Setup partizione](/static/openSource/Debian12/debian-installer-41-partitioning-setup-partition.png)

<!-- Add screenshot for other partitions -->

## Configurazione mirror apt per aggiornamento software

![Scelta mirror apt](/static/openSource/Debian12/debian-installer-60-apt-setup-use-mirror.png)

![Lista mirror apt](/static/openSource/Debian12/debian-installer-61-apt-mirror-availables.png)

![Scelta mirror apt](/static/openSource/Debian12/debian-installer-62-apt-mirror-selection.png)

![Proxy Http per apt](/static/openSource/Debian12/debian-installer-63-apt-proxy-http.png)

<!-- TODO

## Popularity contest

![Popularity contest](/static/openSource/Debian/debian-installer-50-popularity-contest.png)

## Software selection

![Software selection](/static/openSource/Debian/debian-installer-60-software-selection.png)

## Esecuzione shell

![Esecuzione shell](/static/openSource/Debian/debian-installer-70-utils-shell.png)

-->

## Fine installazione

![Fine](/static/openSource/Debian12/debian-installer-99-finished-and-reboot.png)
