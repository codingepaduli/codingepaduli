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

#### Configurazione attuale

La configurazione attuale prevede che tutti i riferimenti ai repository da utilizzare siano salvati nella cartella ``/etc/apt/sources.list.d/``. Ogni riferimento di repository deve essere salvato nel proprio file.

File ``debian.sources``:

```plaintext
Types: deb
URIs: https://deb.debian.org/debian
Suites: trixie trixie-updates
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg

Types: deb
URIs: https://security.debian.org/debian-security
Suites: trixie-security
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg
```

File ``trixie-backports.sources``:

```plaintext
Types: deb
URIs: http://deb.debian.org/debian
Suites: trixie-backports
Components: main contrib non-free non-free-firmware
Signed-By: /usr/share/keyrings/debian-archive-keyring.gpg
```

#### Configurazione obsoleta

La "vecchia" configurazione APT era gestita dal file ``/etc/apt/sources.list`` che contiene i repository descritti con le seguenti righe:

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

La "vecchia" configurazione APT prevedeva che la connessione sicura ai repository e l'aggiunta di repository esterni fossero installate attraverso i seguenti pacchetti:

```bash
apt-get install -y apt-transport-https gnupg apt-show-versions apt-utils
```

### Pacchetti da installare

L'installazione dei codec non liberi deve essere effettuata con il seguente comando:

```bash
apt-get install -y libdvdcss2
```

Possono essere numerosi i pacchetti da installare, tra quelli di uso comune e quelli per scelta personale,  può risultare automatizzare la configurazione dei repository e l'installazione del software desiderato attraverso uno [script](/static/openSource/DebianFirstConfig/apt-install-app.sh).

Possono anche esserci numerosi pacchetti installati di default e che si vuole rimuovere, per sostituirli con altri. In questo caso, può risultare comodo rimuoverli (configurazione compresa) attraverso uno [script](/static/openSource/DebianFirstConfig/apt-remove-app.sh).

### Gestione pacchetti con flatpak

Flatpak può essere un ottimo strumento per installare software aggiornato. Si può visionare il software disponibile da [FlatHub](https://flathub.org/it) e scegliere cosa installare. Il comando per installare un programma è il seguente:

```bash
flatpak install --or-update -y flathub software.scelto.com
```

Flatpak è un ambiente più o meno isolato, funziona basandosi su:

- XDG Desktop Portal;
- Runtimes;

Un’applicazione installata con Flatpak **NON accede direttamente a tutto il sistema** ma interagirsce in modo controllato e uniforme attraverso un **XDG Desktop Portal** per svolgere alcune operazioni “sensibili”. I XDG Desktop Portal espongono delle interfacce D-Bus di comunicazione usate dai programmi Linux per comunicare, ad esempio per accedere ad un documento o alla webcam.

Ogni ambiente desktop ha il suo pacchetto XDG Desktop Portal da installare:

- GTK: ``xdg-desktop-portal-gtk``;
- GNOME: ``xdg-desktop-portal-gnome``;
- KDE: ``xdg-desktop-portal-kde``;
- LXQt: ``xdg-desktop-portal-lxqt``;
- Pantheon: ``elementary OS) xdg-desktop-portal-pantheon``;
- Deepin: ``xdg-desktop-portal-dde``;
- Xapp: ``Cinnamon, MATE, Xfce) xdg-desktop-portal-xapp``;
- COSMIC: ``xdg-desktop-portal-cosmic``;

Scelto l'ambiente desktop, si procede ad installare ``flatpak`` con i seguenti comandi:

```bash
apt-get install -y flatpak xdg-utils xdg-desktop-portal xdg-desktop-portal-kde # oppure xdg-desktop-portal-lxqt gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

I runtimes sono definiti nella documentazione ufficiale nella pagina delle estensioni [https://docs.flatpak.org/en/latest/extension.html](https://docs.flatpak.org/en/latest/extension.html).

Sono installati automaticamente dalle applicazioni che li utilizzano, ma è bene chiarire lo scopo:

- **`org.freedesktop.Platform.GL.default`** e **`org.freedesktop.Platform.GL32.default`** : Estensione per i driver grafici OpenGL a 64 bit e 32 bit gestiti dal runtime.
- **`org.freedesktop.Platform.GL.default//...-extra`** : Variante OpenGL con codec aggiuntivi, soggetti a brevetti o restrizioni di distribuzione.
- **`org.freedesktop.Platform.GL.nvidia-${DRIVER_VERSION}`** e **`org.freedesktop.Platform.GL32.nvidia-${DRIVER_VERSION}`**:  Driver OpenGL proprietari NVIDIA a 64 bit e 32 bit compatibili con una specifica versione del driver installato nel sistema.
- **`org.freedesktop.Platform.VAAPI.nvidia`**, **`org.freedesktop.Platform.VAAPI.nvidia.i386`**, **`org.freedesktop.Platform.VAAPI.Intel`** e  **`org.freedesktop.Platform.VAAPI.Intel.i386`**: Driver VA-API (applicazioni che usano GStreamer o FFmpeg) a 64 bit e 32 bit per l’accelerazione video sulle GPU NVidia e Intel.
- **`org.freedesktop.Platform.VulkanLayer`** : Punto di estensione per i layer Vulkan.
- **`org.freedesktop.Platform.GStreamer`** : Punto di estensione per i plugin GStreamer, necessari per aggiungere il supporto a formati audio, video e protocolli multimediali.
- **`org.freedesktop.Platform.Icontheme`** : Punto di estensione per i temi di icone utilizzati dalle applicazioni Flatpak.
- **`org.gtk.Gtk3theme`** : Punto di estensione per i temi GTK 3. Flatpak può installare automaticamente il tema corrispondente a quello usato dal sistema.
- ~~`org.freedesktop.Platform.openh264`~~ : Estensione che forniva il codec OpenH264. È stata dismessa a partire da Freedesktop SDK 25.08.
- ~~`org.freedesktop.Platform.ffmpeg-full`~~ e ~~`org.freedesktop.Platform.ffmpeg_full.i386`~~ : Estensione che forniva FFmpeg con supporto a codec aggiuntivi, inclusi alcuni codec soggetti a brevetti. È stata dismessa da Freedesktop SDK 25.08.
- **`org.freedesktop.Platform.codecs-extra`** e **`org.freedesktop.Platform.codecs_extra.i386`** : Fornisce codec multimediali aggiuntivi a 64 bit e 32 bit. Sostituisce `ffmpeg-full` dalle versioni recenti del Freedesktop SDK.

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

## Ripristinare il MBR di Windows

Il pacchetto ``ms-sys`` permette di ripristinare il Master Boot Record di Windows. E' necessario identificare il disco o la partizione Windows sulla quale installare il MBR, usando un programma grafico come GParted oppure eseguendo il comando:

```bash
sudo fdisk -l
```

Visualizzato il nome del disco, tipicamente ``/dev/sda`` oppure il nome della partizione, tipicamente ``/dev/sda1``, si può ripristinare il MBR eseguendo il comando ``ms-sys`` ed indicando il disco o la partizione individuata, come nell'esempio seguente:

```bash
sudo ms-sys -m /dev/sda
```

Riavviando il sistema, il boot loader GRUB sarà scomparso ed il PC si avvierà con Windows.
