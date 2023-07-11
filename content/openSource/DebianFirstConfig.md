---
type: "openSource"
title: "Prima configurazione del sistema Debian GNU/Linux"
description: "Prima configurazione del sistema Debian GNU/Linux, dai pacchetti da installare in un ambiente desktop alle configurazioni da applicare"
date: 2023-07-10
publishdate: 2023-07-10
lastmod: 2023-07-10
categories: ["open source", "software"]
keywords: ["open source", "software"]
draft: true
toc: false
summary: "Prima configurazione del sistema Debian GNU/Linux"
---

# Prima configurazione del sistema Debian GNU/Linux

La prima configurazione di un sistema desktop [Debian GNU/Linux](https://www.debian.org/), il sistema operativo universale e completamente libero, può essere ostica, per cui di seguito sono riportate una serie di indicazioni (a linea di comando) per configurare un sistema Debian con ambiente XFCE.

## Localizzazione

Le [localizzazioni](https://it.wikipedia.org/wiki/Locale_(informatica)) sono parametri che permettono di impostare il formato della data e dell'ora, dei numeri, della moneta, della carta e così via. Quelle disponibili nel sistema si verificano con il comando ``localectl list-locales`` che visualizza in output:

```plaintext
C.UTF-8
en_US.UTF-8
it_IT.UTF-8
```

### Verifica localizzazioni

Per visualizzare la localizzazione corrente del sistema, si utilizza il comando ``localectl status`` che visualizza in output:

```plaintext
System Locale: LANG=it_IT.UTF-8
VC Keymap: it2
X11 Layout: it
```

Per verificare la localizzazione di uno specifico utente, si esegue il comando ``locale``, che visualizza in output:

```plaintext
LANG=it_IT.UTF-8
LANGUAGE=
LC_CTYPE="it_IT.UTF-8"
LC_NUMERIC=it_IT.UTF-8
LC_TIME=it_IT.UTF-8
LC_COLLATE="it_IT.UTF-8"
LC_MONETARY=it_IT.UTF-8
LC_MESSAGES="it_IT.UTF-8"
LC_PAPER=it_IT.UTF-8
LC_NAME=it_IT.UTF-8
LC_ADDRESS=it_IT.UTF-8
LC_TELEPHONE=it_IT.UTF-8
LC_MEASUREMENT=it_IT.UTF-8
LC_IDENTIFICATION=it_IT.UTF-8
LC_ALL=
```

Se si vuole impostare la localizzazione dell'utente, si possono includere queste variabili nel file ``.profile`` presente nella cartella home dell'utente.

### Impostare una localizzazione

Per impostare la localizzazione di sistema in un linguaggio tra quelli disponibili, si utilizza il comando seguente, indicando i parametri da impostare:

```bash
sudo localectl set-locale LANG=it_IT.UTF-8 LANGUAGE=it_IT.UTF-8
```

Se è necessario, può essere invocato il comando di riconfigurazione della localizzazione:

```bash
sudo dpkg-reconfigure locales
```

Nel caso un localizzazione non sia disponibile, può essere invocato il comando di generazione della nuova localizzazione ``locale-gen en_US.UTF8``.

## Gestione utenti

Per aggiungere un nuovo gruppo ``casa`` ed creare un nuovo utente ``io`` appartenenti al gruppo appena creato, si utilizzano i comandi seguenti:

```bash
sudo /usr/sbin/groupadd -g 2000 casa
sudo /usr/sbin/adduser --ingroup casa --uid 1001 io
```
<!--
sudo /usr/sbin/adduser --ingroup casa --uid 1002 mamma
sudo /usr/sbin/adduser --ingroup casa --uid 1003 roberto
sudo /usr/sbin/adduser --ingroup casa --uid 1004 dario
-->

Per essere sicuri che un gruppo esista (se non esiste lo si crea) e per aggiungere un utente esistente ``io`` al gruppo esistente ``vboxusers``:

```bash
sudo /usr/sbin/groupadd -f vboxusers
sudo /usr/sbin/usermod -a -G vboxusers io
```

Per visualizzare i gruppi presenti a sistema ``getent group | sort``.

Per rimuovere un utente ``io`` e tutti i files ``sudo /usr/sbin/deluser --remove-all-files io``

## Installare software

Alla prima configurazione si può scegliere il software da installare o da rimuovere. Esistono molti strumenti per la gestione del software. Ogni strumento richiede una configurazione specifica.

### Configurazione apt

Il file che contiene i repository ``/etc/apt/sources.list`` dovrebbe avere le seguenti righe:

```plaintext
deb http://deb.debian.org/debian/ bookworm main contrib non-free non-free-firmware
deb http://security.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware
deb http://deb.debian.org/debian/ bookworm-updates main contrib non-free non-free-firmware
deb http://deb.debian.org/debian/ bookworm-backports main contrib non-free
```

Per potere aggiungere le sezioni ``contrib``, ``non-free`` e ``non-free-firmware`` si possono utilizzare i seguenti comandi:

```bash
# Provides the scripts apt-add-repository used in the next line
apt-get install -y software-properties-common

# Adds the section contrib, non-free and non-free-firmware
apt-add-repository -y contrib
apt-add-repository -y non-free
apt-add-repository -y non-free-firmware

apt-get update
```

La connessione sicura ai repository e l'aggiunta di repository esterni richiede che siano installati i seguenti pacchetti:

```bash
apt-get install -y apt-transport-https gnupg apt-show-versions apt-utils
```

L'installazione dei codec non liberi deve essere effettuata con il seguente comando:

```bash
apt-get install -y libdvdcss2
```

Possono essere numerosi i pacchetti da installare, tra quelli di uso comune e quelli per scelta personale,  può risultare automatizzare la configurazione dei repository e l'installazione del software desiderato attraverso uno [script](/static/openSource/DebianFirstConfig/apt-install-app.sh).

Possono anche esserci numerosi pacchetti installati di default e che si vuole rimuovere, per sostituirli con altri. In questo caso, può risultare comodo rimuoverli (configurazione compresa) attraverso uno [script](/static/openSource/DebianFirstConfig/apt-remove-app.sh).

### Gestione pacchetti con flatpak

Flatpak può essere un ottimo strumento per installare software aggiornato.

L'installazione richiede i seguenti comandi:

```bash
apt-get install -y flatpak xdg-utils xdg-desktop-portal xdg-desktop-portal-kde xdg-desktop-portal-gtk # gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

A questo punto si può visionare il software da [FlatHub](https://flathub.org/it) e scegliere cosa installare.

Di seguito lo [script](/static/openSource/DebianFirstConfig/flatpak-installAllScript.sh) per configurare flatpak e un [elenco](/static/openSource/DebianFirstConfig/flatpakInstalledApp.txt) di pacchetti software da installare.

### Gestione containers con docker o podman

Sia docker che podman permettono di installare software. Si può navigare su [DockerHub](https://hub.docker.com/) e scegliere cosa installare.

Di seguito uno [script](/static/openSource/DebianFirstConfig/docker-installedApp.sh) che configura docker e scarica di pacchetti software da installare.

### Gestione pacchetti con npm

[Node.js](https://nodejs.org/en) è sempre più utilizzato per installare applicazioni legate allo sviluppo software:

Si può visionare il software da [npm](https://www.npmjs.com/) e scegliere cosa installare.

Di seguito uno [script](/static/openSource/DebianFirstConfig/npm-installedApp.sh) che installa i pacchetti software con npm.

## Configura azioni personalizzate su Thunar

In Thunar (XFCE file manager) è possibile aggiungere delle azioni personalizzate al menu a comparsa:

- Aprire "Thunar file manager";
- Click "Modifica";
- Click "Configurare Azioni personalizzate";
- Aggiungere una nuova azione o modificare una esistente;
- Inserire nome, descrizione, icona, comando e condizioni di visibilità;
- Comando di esempio: ``/usr/bin/wipe -fqsF %f``.

**BUG**: La modifica al nome di un file (da shell o da altri processi) mentre Thunar visualizza il file causa il blocco di Thunar. Ad esempio il comando wipe senza l'opzione -F (non rinominare il file) blocca completamente Thunar.
