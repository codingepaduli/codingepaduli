---
type: "openSource"
title: "Gestori pacchetti"
description: "Guida ai gestori di pacchetti Linux"
date: 2024-11-10
publishdate: 2024-11-10
lastmod: 2024-11-10
categories: ["open source", "software"]
keywords: ["open source", "software"]
draft: true
toc: false
summary: "Guida ai gestori di pacchetti Linux"
---

# Gestori di pacchetti

I gestori pacchetti Linux sono strumenti fondamentali che semplificano l'installazione, l'aggiornamento e la rimozione del software sui sistemi operativi basati su Linux. Tra i gestori di pacchetti più comuni ci sono APT per Debian e Ubuntu, YUM e DNF per Red Hat e Fedora, e Pacman per Arch Linux.

Nel mondo dello sviluppo software, i gestori di pacchetti si occupano della gestione delle librerie software e delle dipendenze necessarie ad un'applicazione, in modo che possa essere eseguita correttamente. Alcuni dei gestori di pacchetti più popolari includono npm (Node Package Manager) per JavaScript, pip per Python, Composer per PHP, e Maven per Java.

Grazie a questi strumenti, è possibile garantire la coerenza e la sicurezza del software, facilitando la distribuzione e il mantenimento dei sistemi.

## APT

**apt** è un gestore pacchetti, di più alto livello e non retro-compatibile con ``apt-get`` ed ``apt-cache``.

**apt-get** è un gestore pacchetti, di basso livello e retro-compatibile.

**apt-cache** è usato per la ricerca ed il recupero informazioni dei pacchetti disponibili o installati.

**apt-mark** è usato per indicare i pacchetti installati in modalità manuale (su indicazione dell'utente) e quelli installati in modalità automatica.

**aptitude** è un gestore di pacchetti avanzato.

### Comandi di ``apt-cache``

- ``apt-cache search pacchetto``: cerca il pacchetto e la descrizione
- ``apt-cache show pacchetto``: visualizza informazioni sul pacchetto

### Comandi di ``apt-get``

- ``apt-get check``: verifica se tutte le dipendenze sono soddisfatte
- ``apt-get update``: aggiorna l'indice dei pacchetti disponibili dai repositori in /etc/apt/sources.list
- ``apt-get upgrade``: aggiorna i pacchetti alla nuova versione
- ``apt-get install pacchetto1 pacchetto2``: esegue l'upgrade o l'installazione dei pacchetti
- ``apt-get install --fix-missing``: installa le dipendenze mancanti
- ``apt-get install pacchetto1 pacchetto2 --no-upgrade``: esegue l'installazione dei pacchetti indicati, non esegue l'upgrade dei pacchetti indicati
- ``apt-get install pacchetto1 pacchetto2 --only-upgrade``: esegue solo l'upgrade dei pacchetti indicati, non esegue l'installazione se i pacchetti non sono installati
- ``apt-get install pacchetto1=2.3.5-3ubuntu1``: esegue l'installazione del pacchetto alla versione indicata dopo l'uguale (=)
- ``apt-get remove pacchetto1``: rimuove il pacchetto indicato, non il file di configurazione
- ``apt-get purge pacchetto1``:  rimuove il pacchetto indicato compreso il file di configurazione
- ``apt-get remove --purge pacchetto1``: rimuove il pacchetto indicato compreso il file di configurazione
- ``apt-get autoremove --purge``: cancella tutti i pacchetti installati e non piu necessari, compresi i file di configurazione
- ``apt-get changelog pacchetto1``: scarica il file di changelog contenente informazioni sulla versione

- ``apt-get clean``: libera spazio su disco, cancellando i pacchetti scaricati
- ``apt-get autoclean``: libera spazio su disco, cancellando i pacchetti scaricati da ``/var/cache/apt/archives``

### Comandi di ``apt-mark``

APT indica i pacchetti installati dall'utente come installati manualmente (set to manually installed). Per visualizzarle:

- ``apt-mark showmanual``
- ``apt-mark showauto``

Per cambiare le impostazioni dei pacchetti installati da manuale ad automatico:

- ``apt-mark auto pacchetto1 pacchetto2``

Per cambiare le impostazioni dei pacchetti installati da manuale ad automatico:

- ``apt-mark manual pacchetto1 pacchetto2``

### Comandi di ``aptitude``

- ``aptitude update``: aggiorna l'indice dei pacchetti disponibili
- ``aptitude safe-upgrade``: aggiorna i pacchetti alla nuova versione
- ``aptitude install package``: esegue l'upgrade o l'installazione dei pacchetti
- ``aptitude remove package``: rimuove il pacchetto indicato, non il file di configurazione
- ``aptitude purge package``: rimuove il pacchetto indicato compreso il file di configurazione
- ``aptitude search package``: cerca il pacchetto
- ``aptitude show package``: visualizza informazioni sul pacchetto
- ``aptitude search '~c'``: Cerca tutti i pacchetti rimossi ma con le configurazioni ancora installate
- ``aptitude purge '~c'``: Rimuove le configurazioni ancora installate dei pacchetti rimossi.
- ``aptitude search '~o'``: Cerca tutti i pacchetti obsoleti (pacchetti inclusi della distribuzione precedente (wheezy) e non in quella attuale (buster)
- ``aptitude purge '~o'``: Rimuove tutti i pacchetti obsoleti
- ``aptitude search '~i(!~ODebian)'``: Cerca i pacchetti non provenienti da debian

### Comandi di ``apt``

Supporta i seguenti task che vengono dai vari gestori di pacchetti.

Da "dpkg list":

```bash
apt list --installed
apt list --upgradable
```

Da "apt-cache":

```bash
apt search pkg
apt show pkg
apt policy
```

Da "apt-get":

```bash
apt update
apt install pkg
apt remove pkg
apt upgrade     # come apt-get upgrade --with-new-pkgs
apt full-upgrade # come "dist-upgrade".
```

Ed ancora:

```bash
edit-sources # edit sources.list using $EDITOR.
```

### Info sui PPA

Per verificare da quale repository un pacchetto salta fuori:

``apt-cache showpkg vlc``

che restituisce in output le informazioni

```plaintext
2.2.7-1~deb8u1 (/var/lib/apt/lists/ftp.it.debian.org_debian_dists_jessie_main_binary-i386_Packages) (/var/lib/apt/lists/security.debian.org_dists_jessie_updates_main_binary-i386_Packages) (/var/lib/dpkg/status)

2.2.1-5~ppa2 (/var/lib/apt/lists/ppa.launchpad.net_n-muench_vlc_ubuntu_dists_wily_main_binary-i386_Packages)
```

Le versioni indicate sono quindi:

```plaintext
2.2.7.1 proveniente da ftp.it.debian.org/debian/dist/jessie 
2.2.1-5 proveniente da ppa.launchpad.net/n-muench/vlc/ubuntu/dist/wily
```

Se su apt-get update si ha il messaggio:

```plaintext
 Errore GPG: http://ppa.launchpad.net wily InRelease: Le seguenti firme non sono state verificate perché la chiave pubblica non è disponibile: NO_PUBKEY A6804EA8EAE0D85C
```

Allora bisogna importare la chiave A6804EA8EAE0D85C indicata nel messaggio con:

```bash
apt-key  adv --keyserver keyserver.ubuntu.com --recv-keys A6804EA8EAE0D85C
```

Tenere presente che ogni ppa su launchpad.net ha il link informazioni tecniche con la riga da aggiungere a ``/etc/apt/sources.list``

```bash
deb http://ppa.launchpad.net/vkorenev/maven3/ubuntu YOUR_UBUNTU_VERSION_HERE main 
```

e che, in fondo alla pagina del ppa, ci sono i pacchetti pubblicati per ogni versione di ubuntu, da selezionare tramite il filtro "versione". Questo filtro è importantissimo perché ci da la versione da inserire in ``sources.list`` al posto di ``YOUR_UBUNTU_VERSION_HERE``.

Tenere presente che in Synaptic gestore pacchetti, in menu impostazioni -> preferenze -> distribuzioni si deve selezionare a quale repository/ppa si deve dare precedenza (per esempio a ``jessie-backports`` oppure a ``ppa.launchpad.net/n-muench/vlc/ubuntu/dist/wily`` nella installazione dei pacchetti.

## update-alternatives

With update-alternatives we can run different programs under a generic name. We call these programs alternatives.

Per visualizzare tutte le alternative selezionate su un sistema Linux:

```bash
sudo update-alternatives --get-selections
```

Questo comando restituisce le selezioni correnti per tutte le alternative, nella forma:

```plaintext
java  auto  /usr/lib/jvm/java-11-openjdk-amd64/bin/java
php   auto  /usr/bin/php7.3
```

La prima colonna indica il software di cui è disponibile un'alternativa, la seconda colonna indica se gestita in automatico o manualmente, la terza colonna indica l'eseguibile di riferimento.

Per configurare una specifica alternativa:

```bash
sudo update-alternatives  --config java
```

## Docker

Docker è un gestore di containers.

Download images:

- ``docker image pull hello-world``

Show images:

- ``docker image ls``

Remove images:

- ``docker image rm hello-world``

Search unused layers (dangling) from images:

- ``docker image ls -f dangling=true``

Remove unused layers (dangling) form images:

- ``docker images purge``

Run images into a container:

- ``docker container run hello-world``

Arguments for ``docker container run``:

- ``--name "name"`` to set a name for the container
- ``-t`` to allocate a pseudo-tty to the process (useful for colored output);
- ``-i`` to read from STDIN or use pipe (useful for cli);
- ``--rm`` to remove the container when it exits;
- ``-d`` for running the container in detached mode (as a demon);
- ``-p "port:containerPort"`` to publish a port via docker;
- ``-v "volume:containerPath"`` to mount config directory volume into the container path (deprecated, use -m);
- ``--mount "type=bind,source=sourcePath,target=targetPath"`` to mount config directory volume into the container path (new, use ``--mount``, NOT ``-v``);
- ``-u $(id -u):$(id -g)`` run the container with a non-root user
- ``-e VARIABLE=VALUE`` to add an environment variable with a value
- ``--restart "policy"`` to control whether your containers start automatically when they exit, or when Docker restarts. Allowed values for policy: ``no`` (never), ``on-failure`` (exit code > 0), ``unless-stopped`` (not manually stopped), ``always``;

Show running and stopped containers:

- ``docker container ls -a``

Stop a container:

- ``docker container stop 29a6e9a11065``

Start a container:

- ``docker container start 29a6e9a11065``

Pause a container (still in-memory but no CPU consuming):

- ``docker container pause 29a6e9a11065``

Unpause a container:

- ``docker container unpause 29a6e9a11065``

Remove a container (the image is still in list):

- ``docker container rm 29a6e9a11065``

Remove all containers in exit status (-q print only container ID):

- ``docker rm $(docker container ls --size -a --filter  "status=exited" -q)``

Show volumes:

- ``docker volume ls``

Show dangling volumes:

- ``docker volume ls -f dangling=true``

Remove volume:

- ``docker volume rm 65d9485deb6cfe8aecbc9bd44d217eda75e161857dd06eac0f5cf2f41f50153c``

Remove dangling volumes:

- ``docker volume prune``

## Flatpak

Flatpak is an app manager for linux. It allow to deploy, package, install and run an application in a virtual environment.

An app is based on runtimes.

An app is identified by its reference: ``application/arch/version``

Commands:

List all the applications installed (user: specific user, system=for all user)

```bash
flatpak list --app --columns=ref,version,branch,installation,size
```

Install an application:

```bash
flatpak install org.gnome.gedit
```

Update all the application

```bash
flatpak update
```

Remove an application:

```bash
flatpak remove org.kde.kdenlive
```

To show all the runtimes:

```bash
flatpak list --runtime  --columns=ref,version,branch,installation,size
```

To show all the app based on a specific runtime:

```bash
flatpak list --app  --app-runtime=org.gnome.Platform --columns=ref,version,branch,installation,size
```

To show all the app based on a specific runtime version:

```bash
flatpak list --app  --app-runtime=org.gnome.Platform/x86_64/3.32 --columns=ref,version,branch,installation,size
```

## Node and Npm

**Node.js** è l'ambiente di esecuzione JavaScript.

**Node Package Manager** è il gestore pacchetti di node.

**NPX** è un'estensione di npm che permette di migliorare l'esperienza di npm.

### Installazione di Node JS

Attualmente si può installare il repository contenente i pacchetti di Node.js seguendo le istruzioni riportate qua:

[https://github.com/nodesource/distributions](https://github.com/nodesource/distributions)

Il comando riportato di seguito permette di installare un repository contenente la versione LTS di Node.js

```bash
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
```

Tra le note di output indicate, viene consigliato anche come installare Yarn package manager.

```bash
## To install the Yarn package manager, run:
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/yarnkey.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
```

Una volta aggiunto il repository, è possibile installare ``nodejs`` con il gestore pacchetti Synaptic o tramite linea di comando.

E' possibile verificare la versione di node e di npm con i seguenti comandi:

```bash
node -v
npm -v
```

### Aggiorna npm

Per aggiornare npm:

```bash
npm install npm@latest -g
```

### Uso di npm

Con NPM ogni pacchetto puo essere locale (al progetto) o globale:

- Local modules are located within current project directory.
- Global Modules are generally located at user's home directory, though we can change the path where global modules resides.

NPM ha una configurazione **globale** (si accede con opzione ``-g``). Per visualizzare, aggiungere e rimuovere voci si usano i seguenti comandi:

```bash
npm config -g list
npm config -g set key=value
npm config -g delete key
```

Ogni progetto ha una configurazione **locale**. Per visualizzare, aggiungere e rimuovere voci alla configurazione locale si usano i seguenti comandi nella cartella del progetto:

```bash
npm config list
npm config set key=value key2=value2
npm config delete key
```

Per configurare il proxy "proxy.it:3128":

```bash
npm config -g set proxy "http://user:password@proxy.it:3128/"
npm config -g set strict-ssl false
```

Per visualizzare i pacchetti installati rispettivamente globalmente e nel progetto (file package.json ??):

```bash
npm list -g --depth=0  # profondità livello 0 (no dipendenze)
npm list --depth=0  # profondità livello 0 (no dipendenze)
```

Per visualizzare gli aggiornamenti disponibili dei pacchetti installati rispettivamente globalmente e nel progetto (file package.json ??):

```bash
npm outdated -g --depth=0
npm outdated --depth=0
```

Per visualizzare l'ultima versione di un pacchetto disponibile sui repository npm oppure per visualizzarle tutte (notare la s finale in versions):

```bash
npm show <pacchetto> version
npm show <pacchetto> versions
```

Per aggiornare tutti i pacchetti installati globalmente:

```bash
npm update -g
```

Per aggiornare tutti i pacchetti installati nel progetto, aggiornando il file package.json sia la sezione "dependencies", sia la sezione "devDependencies":

```bash
npm update --save --save-dev
```

Aggiornato un pacchetto, va pulita la cache, cancellando la directory ``c:/users/username/AppData/Roaming/npm-cache`` o usando il comando ``npm cache verify``

Npm non salva le dipendenze con versione esatta, ma con versione tipo ``2.3.*``. Per avere lo stesso ambiente tra differenti sviluppatori, si consiglia di salvare le dipendenze con versione esatta (ad es. 2.3.1):

```bash
npm install --save-exact <pacchetto> 
```

Per salvarle sempre in maniera esatta, modificare la configurazione con:

```bash
npm config set save-exact true
```

<!-- TODO Verificare la differenza tra npm install <pacchetto> ed npm ci <pacchetto> -->

### Configurare npm per uso senza root

[https://stackoverflow.com/questions/18088372/how-to-npm-install-global-not-as-root](https://stackoverflow.com/questions/18088372/how-to-npm-install-global-not-as-root)

### NPX

NPX è un'estensione di npm che permette di migliorare l'esperienza di npm. Si installa con:

```bash
npm install npx
```

Per eseguire un pacchetto senza installarlo:

```bash
npx cleaver watch index.md
```

Per eseguire uno script senza usare ``npm run-script``, ad esempio per utilizzare lo script ``cowsay``:

```bash
npx cowsay "Hello"
```

Per vedere la lista di dipendenze da aggiornare:

```bash
npx npm-check -u
```

## pip

pip installs python packages.

Run it with:

```bash
python3 -m pip --version
```

To show the current configuration:

```bash
python3 -m pip config debug
```

Config file is ``$HOME/.config/pip/pip.conf``

To show the configured options:

```bash
python3 -m pip config list
```

To add or remove a config key:

```bash
python3 -m pip config get key
python3 -m pip config set key value
python3 -m pip config unset key
```

For virtual environment:

```bash
python3 -m pip install --user virtualenv
python3 -m pip install --user virtualenvwrapper
python3 -m pip config set global.require-virtualenv True
```

To create new virtual environment and activate it:

```bash
python3 -m virtualenv project
cd project
source /project/bin/activate
```

Now you can install the dependencies:

```bash
python3 -m pip install pyyaml==6.0
python3 -m pip freeze > requirements.txt
```

To install from requirements (when updated):

```bash
python3 -m pip install -r requirements.txt
```
