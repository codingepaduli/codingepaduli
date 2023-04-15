---
type: "tools"
title: "Docker Engine e Podman"
description: "Docker Engine e Podman - Strumenti per gestire i container"
date: 2022-06-13
publishdate: 2022-06-13
lastmod: 2023-04-02
weight: 1000
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: false
toc: false
summary: "Docker Engine e Podman - Strumenti per gestire i container"
---

# Docker Engine e Podman

Il principio di utilizzo dei container è molto semplice:

- Si scarica l'immagine del container;
- Si crea un container (o anche più di uno) a partire dall'immagine;
- Si esegue un processo all'interno del container creato (comunemente si dice che si esegue il container).

Questi tre passi si eseguono con i seguenti comandi:

```bash
docker pull hello-world  # Scarica l'immagine hello-world
docker run hello-world   # Esegue il container
```

Il primo comando scarica l'immagine ``hello-world``.

Il secondo comando crea il container a partire dall'immagine ``hello-world`` ed esegue il processo nel container.

## Definizioni

I **container** sono degli ambienti isolati in cui le applicazioni vengono eseguite.

Grazie all'isolamento delle risorse (CPU, memoria, I/O a blocchi, rete), il sistema operativo sottostante crea una sorta di ambiente "virtuale" isolato in cui il container viene eseguito e solo con questo ambiente "virtuale" isolato il container può interagire.

La differenza rispetto ad una macchina virtuale è notevole, perché i container non sono composti da un sistema operativo separato. Questo implica minor memoria e minor consumo della CPU per eseguire un processo su un container rispetto ad una macchina virtuale. Inoltre sul container non sono necessari antivirus o operazioni di aggiornamento del sistema operativo come per una macchina virtuale.

Un **pod** rappresenta un'istanza eseguibile di un'applicazione e permette la distribuzione e gestione delle applicazioni in un ambiente cloud. Può essere composto da uno o più container che condividono le risorse di memoria, di rete (come le porte esposte) e di archiviazione (come i volumi) e che sono schedulati insieme per l'esecuzione o l'attesa. Avviare o fermare un pod consiste nell'avviare o fermare tutti i container contenuti nel pod. Un pod ha un container vuoto che non fa altro che prendere possesso del namespaces associato e permettere la connessione agli altri container del pod.

Gli **orchestratori** sono software che permettono di effettuare la distribuzione (il deploy) e la gestione di migliaia di container. Tra gli orchestratori più famosi troviamo Kubernetes, OpenShift, Nomad e LXD.

I **service registry** ed i **service discovery service** sono software che permettono la comunicazione tra migliaia di container, in particolare permettono ad un container di conoscere il servizio (eseguito in un container) al quale inviare la richiesta.

I servizi di **monitoring** permettono di monitorare la rete, i log files, le web requests ed i database utilizzati dai container, possono prevedere dei report ed inviare notifiche di alert. Tra questi software troviamo Grafana, Graphite, InfluxDB, Prometheus.

## Programmi di gestione dei container

[Docker Engine]("https://www.docker.com/") e [Podman]("https://podman.io/") sono strumenti a linea di comando per la gestione dei container. Podman e Docker Engine sono compatibili, anche se differiscono in alcuni concetti.

[lazydocker](https://github.com/jesseduffield/lazydocker) è un'interfaccia per terminale che permette di gestire i container.

[Portainer](https://www.portainer.io/) è un'interfaccia web che permette di gestire l'intero cloud, sia esso Kubernetes, Docker, Swarm and Nomad.

Docker Engine è una tecnologia client/server, quindi un demone in background con i permessi di amministratore gestisce tutti i container, mentre la linea di comando interagisce con il server (demone).

Docker Desktop realizza una virtual machine (necessaria su Windows e su Mac, ma creata anche su Linux per far si che gli utenti abbiano la stessa esperienza d'uso) nella quale è in esecuzione Docker Engine. Inoltre fornisce l'interfaccia grafica per gestire Docker Engine.

Podman è definito rootless perché gestisce i container come processi dell'utente, quindi non necessita dei permessi di amministrazione. Non richiede la presenza di un server ed inoltre permette la gestione dei pod.

Podman Desktop è l'interfaccia grafica di Podman.

## Gestione delle immagini

Le immagini rappresentano un ambiente isolato, con tutte le risorse necessarie all'esecuzione del container, come il filesystem, i dispositivi di rete, le configurazioni necessarie, ...

Le immagini sono tipicamente scaricabili da [Docker Hub](https://hub.docker.com/), ne esistono di infiniti tipi, alcune con l'ambiente di sviluppo ``python3`` installato, altre con gli strumenti di controllo della sicurezza, altre con programmi di elaborazione immagini e così via.

Per scaricare l'immagine ``hello-world`` si può eseguire il comando:

```bash
docker image pull hello-world
```

Per visualizzare le immagini installate:

```bash
docker image ls
```

Per cancellare l'immagine ``hello-world``:

```bash
docker image rm hello-world
```

Un'immagine è composta da diversi layer, che vengono scaricati quando si scarica l'immagine la prima volta o quando si aggiorna l'immagine. Per visualizzare e cancellare questi layer si usano i comandi:

```bash
docker image ls -f dangling=true
docker images purge        # notare "images" al plurale
```

## Gestione container

Utilizzando l'immagine ``httpd:alpine``, per creare un nuovo container assegnandogli un nome comprensibile, ad esempio ``httpd-container``, eseguiamo il comando:

```bash
docker container create --name "httpd-container" httpd:alpine
```

Per avviare, stoppare, mettere in pausa (non consuma CPU, ma è in memoria), riprendere dalla pausa, rinominare ed infine eliminare un container, si utilizzano i seguenti comandi:

```bash
docker container start   httpd-container
docker container stop    httpd-container
docker container restart httpd-container
docker container pause   httpd-container
docker container unpause httpd-container
docker container rename  httpd-container httpd-container2
docker container rm      httpd-container
```

Per poter visualizzare i container creati e la relativa immagine, si usa il comando:

```bash
docker container ls -a
```

**TIPS**: Il comando per rimuovere tutti i container in stato "exit" (-q stampa solo un ID del container):

```bash
docker rm $(docker container ls --size -a --filter  "status=exited" -q)
```

### Opzioni di creazione del container

Nella creazione del container possono essere utilizzate le seguenti opzioni:

- ``-t`` (``--tty``) alloca uno pseudo-terminale al processo (utile per l'output colorato);
- ``-w "workingDir"`` indica la directory di lavoro;
- ``-e VARIABLE=VALUE`` crea nel container una variabile d'ambiente con uno specifico valore;
- ``--entrypoint path/to/run`` indica il comando da eseguire quando si avvia il container. Si può specificare un valore vuoto ``""`` per sovrascrivere un eventuale valore predefinito;
- ``-p "port:containerPort"`` associa una porta locale ad una del container;
- ``--restart "policy";`` controlla se il container deve avviarsi automaticamente all'uscita (exit) o quando si effettua il restart di Docker. Valori validi per la policy sono: ``no`` (never), ``on-failure`` (exit code > 0), ``unless-stopped`` (not manually stopped), ``always``;
- ``-v "volume:containerPath"`` monta una directory (chiamata volume) all'interno del container (deprecata, usa l'opzione ``-m``);
- ``--mount "type=bind,source=sourcePath,target=targetPath"`` monta una directory (chiamata volume) all'interno del container (new, use ``--mount``, NOT ``-v``);
- ``-u $(id -u):$(id -g)`` esegue il container come utente non-root, con i permessi dell'utente e del gruppo indicati;

### Esecuzione in modalità "attached" e "detached"

I comandi di ``start`` e ``run`` permettono l'esecuzione del container. La differenza è che il comando ``start`` avvia un container gia esistente, mentre il comando di ``run`` crea un container partendo da un'immagine e poi esegue il container.

Il comando di ``exec`` permette di eseguire un comando all'interno di un container gia esistente.

I container ed i comandi da eseguire nei container possono essere lanciati sia in modalità "attached", sia "detached", ovvero collegando il proprio terminale collegato agli standard input, output ed errore del container. Le opzioni per lanciare in modalità "attached" o "detached" un comando sono le seguenti:

- ``-i`` (``--interactive``) tiene lo standard input del container aperto, anche se non in "attached";
- ``-a`` (``--attach``) collega lo standard input, output ed errore del container al terminale;
- ``-d`` (``--detach``) esegue il comando o il container in background;

Quando un container è eseguito im modalità "attached", premendo la combinazione di tasti ``CTRL-C`` non si effettua il "detach", ma a tutti gli effetti si stoppa il container. Per effettuare il "detach" si può indicare la combinazione di tasti con l'opzione ``--detach-keys="ctrl-a,a"``, purtroppo non sempre funziona. Al contrario, per riportare in primo piano un container in esecuzione in background, si usa il comando ``attach``.

Dato che queste opzioni non sono sempre disponibili in contemporanea, ma solo l'una o l'altra, di seguito riportiamo alcuni esempi:

```bash
docker container start --attach --detach-keys="ctrl-a,a" "httpd-container5"
docker container run  --detach -p "8006:80"  --name "httpd-container5" httpd:alpine
docker container exec --detach "httpd-container5" ls
docker container attach "httpd-container5"
```

Dato che il comando run crea, esegue il container ed al termine del compito lo stoppa, si può scegliere anche di distruggere il container con l'opzione ``--rm``:

```bash
docker container run  --rm --name "httpd-container" httpd:alpine
```

In alcuni casi, può essere utile creare uno pseudo-terminale sul container, per favorire la colorazione del testo, utilizzando l'opzione ``--tty``:

```bash
docker container exec --tty "httpd-container5" ls
```

### Entrypoint

Quando si parla di esecuzione di un container, si sottintende l'esecuzione di un comando (che sia "hello-world" o un processo demone "https" in ascolto su una porta) che è specificato in fase di creazione dell'immagine. Questo comando può essere sovrascritto con l'opzione ``--entrypoint``.

```bash
docker container run --name npm  --entrypoint "/usr/local/bin/npm" node
docker container run --name hugo --entrypoint "" node bash -l -c "/usr/bin/pandoc-default --version"
docker container run --name hugo --entrypoint "" node bash
```

## Container inspection

Per poter ispezionare un container, guardando i processi in esecuzione, la configurazione e le statistiche in tempo reale, si usano i comandi:

```bash
docker container top     httpd-container
docker container inspect httpd-container
docker container stats   httpd-container
```

## Logs

E' possibile visualizzare i logs di un container che è in esecuzione in background utilizzando il comando:

```bash
docker logs httpd-container
```

## Volumi

I volumi sono semplicemente cartelle locali montate nel container (comando mount).

Per visualizzare e rimuovere i volumi si usano i comandi:

```bash
docker volume ls
docker volume rm volumeID
```

Per visualizzare e rimuovere tutti i volumi non più collegati ad alcun container, si usa il comando:

```bash
docker volume ls -f dangling=true
docker volume prune
```

### Il problema dei permessi nei volumi

I container non hanno un sistema operativo, e quindi non hanno un kernel, ma sono dei semplici processi che girano sul kernel della macchina ospitante in un ambiente isolato.

Quando la macchina ospitante ed i container condividono delle cartelle (bind mounts), i file creati all'interno del container sono visibili alla macchina ospitante e viceversa. Questa condivisione porta ad un punto dolente: l'appartenenza dei file ad un utente o un gruppo ed i relativi permessi di accesso.

Facciamo alcuni esempi:

1. Quando un container viene eseguito come utente **root**, tutti i file creati appartengono all'utente root. Se questi file vengono creati in una cartella condivisa con la macchina ospitante, l'utente della macchina ospitante non può accedere a questi file;
2. Quando un file viene creato da un processo che gira come utente **x** (ad esempio da Apache che gira come utente www-data), i file creati da quel processo appartengono all'utente **x** (nell'esempio di Apache questi file appartengono all'utente www-data). Se questi file vengono creati in una cartella condivisa con la macchina ospitante, l'utente della macchina ospitante non può accedere a questi file;
3. Quando creo un file in una cartella condivisa col container, il file avrà i permessi dell'utente presente sulla macchina ospitante. Potenzialmente, un processo in esecuzione come utente x non può accedere a questi file che appartengono all'utente presente sulla macchina ospitante;
4. Quando creo un'immagine per un container (a partire da un Dockerfile), i file che copio nel container possono non essere accessibili all'utente del container che li deve utilizzare.

Le soluzioni ai punti indicati in precedenza sono:

1. eseguire sempre il container come utente non root, impostando a linea di comando l'opzione ``-u USERID:GROUPID``;
2. Se sul container un processo è in esecuzione come utente **x** e gruppo **y** si consiglia di aggiungere anche sulla macchina ospitante l'utente che esegue il container al gruppo **y**, in modo da rendere accessibile il file all'utente che esegue il container;
3. Se sulla macchina ospitante un file appartiene all'utente **x** e gruppo **y** e questo file è condiviso con un container che ha bisogno di accedervi con l'utente **w** e gruppo **z**, si consiglia di aggiungere anche sul container il gruppo **y** e di aggiungere l'utente **w** al gruppo **y**, in modo da rendere accessibile il file all'utente **w**;
4. Nel Dockerfile è sempre utile specificare l'utente col quale eseguire il container e dare a questo utente il permesso di accesso ai file copiati durante la creazione dell'immagine, utilizzando i classici comandi Linux ``chown`` e ``chmod``.

## Network

Docker permette di collegare i container in una o più reti.

Per creare una rete si utilizza il comando:

```bash
docker network create rete_lan
```

Per gestire le reti si utilizzano i comandi:

```bash
docker network create [NETWORK_NAME]
docker network ls
docker network rm [NETWORK_NAME]
docker network inspect [NETWORK_NAME]
```

Per collegare e scollegare i container dalla rete si usano i comandi:

```bash
docker network connect [NETWORK_NAME] [CONTAINER_NAME]
docker network disconnect [NETWORK_NAME] [CONTAINER_NAME]
```

## Pulizia

```bash
docker system prune --volumes
```

## Pods

Per creare, avviare, stoppare, mettere in pausa (non consuma CPU, ma è in memoria), riprendere dalla pausa, riavviare, visualizzare lo stato, visualizzare i log ed infine eliminare un pod, si utilizzano i seguenti comandi:

```bash
podman pod create --name nome_pod
podman pod  start        nome_pod
podman pod  stop         nome_pod
podman pod  pause        nome_pod
podman pod  unpause      nome_pod
podman pod  restart      nome_pod
podman pod  ps           nome_pod
podman pod  logs         nome_pod
podman pod  rm           nome_pod
```

Per aggiungere o rimuovere un container in un pod si utilizzano i seguenti comandi:

```bash
podman pod add  nome_pod  nome_container
podman pod rm   nome_pod  nome_container
```

E' possibile visualizzare i pod creati con il comando seguente:

```bash
podman pod ls
```

E' possibile creare un file YAML di definizione con la sintassi richiesta da Kubernetes a partire dal pod creato, usando il seguente comando:

```bash
podman generate kube my-pod >> my-pod.yaml
```

Questo comando è ancora in fase beta, per cui può generare numerose variabili d'ambiente che necessitano di pulizia.

Una volta che si ha il file YAML di definizione (con la sintassi richiesta da Kubernetes), si può creare il pod con il seguente comando:

```bash
podman play kube ./my-pod.yaml
```

## Docker compose

Il Dockerfile è pensato per creare un'immagine, non un container, quindi non bisogna confonderlo con "docker-compose".

Il comando docker-compose permette di gestire più container con lo stesso comando, infatti si parla di applicazioni multi-container. Il file ``compose.yaml`` descrive i vari container ed indica per ogni container il nome da assegnare, le porte da aprire, i volumi da montare, il comando da eseguire, ecc...

La gestione di più container (specificati nel file compose.yaml) è simile alla gestione del singolo container, per cui di seguito si riportano i comandi:

```bash
docker-compose -f compose.yaml up
docker-compose -f compose.yaml up -d
docker-compose -f compose.yaml down
docker-compose -f compose.yaml start   [service_name]
docker-compose -f compose.yaml stop    [service_name]
docker-compose -f compose.yaml pause   [service_name]
docker-compose -f compose.yaml unpause [service_name]
docker-compose -f compose.yaml restart [service_name]
docker-compose -f compose.yaml exec    [service_name] [command]
docker-compose -f compose.yaml logs    [service_name]
docker-compose -f compose.yaml top     [service_name]
```

Alcuni modelli per installare le configurazioni più utilizzate sono i seguenti:

- LAMP (Linux, Apache, MariaDB e PHP) + PhpMyAdmin : [composer.yml](/static/coding/tools/dockerfiles/lamp-docker-compose.yml)  

## Docker Swarm

Verificare se swarm è attivo:

```bash
docker system info | grep -i "swarm"
```

Inizializzare swarm:

```bash
docker swarm init
```

<!--

## Creazione di immagini

Esistono 2 formati di immagine: quelle di Docker e quelle OCI.

Le immagini Docker sono basate su un formato proprietario e sono eseguite principalmente in un ambiente Docker come Docker Swarn. Sono create a partire da un file ``Dockerfile`` che descrive il processo di creazione dell'immagine.

Le immagini OCI (Open Container Initiative) sono basate su uno standard aperto e pubblico e sono progettate per essere utilizzate in qualsiasi runtime di container che supporti lo standard OCI.

Nonostante la differenza, gli orchestratori come Kubernetes e Nomad sono in grado di eseguire immagini Docker.

Un dockerfile è un documento che descrive come costruire un immagine.

```bash
FROM python:3.9-slim

# ARG consente di definire parametri che possono essere
# passati al Dockerfile durante la creazione dell'immagine
ARG MY_ENV=production
ENV MY_ENV $MY_ENV

# Creo un gruppo 'app' ed un utente appartenente al gruppo 'app'
RUN addgroup -S app && adduser -S app -G app --home /home/app

# Creo una directory e imposto i permessi per l'utente app
RUN mkdir -p /app
RUN chown -R myuser:myuser /app

# Uso l'utente per eseguire i processi
USER app

# Imposto la directory di lavoro
WORKDIR /app

# Copio tutti i file da . in /app
COPY --chown=app:app  . /app

# Installo le dipendenze
RUN pip3 install -r requirements.txt

# Eseguo il comando
CMD [ "python3", "app.py" ]
```

Per costruire un immagine a partire dal Dockerfile:

```bash
docker build -t my-app:1.0 .
```

-->
