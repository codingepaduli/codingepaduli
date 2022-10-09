---
type: "tools"
title: "Docker"
description: "Docker - Uno strumento per gestire i container"
date: 2022-06-13
publishdate: 2022-06-13
lastmod: 2022-06-13
weight: 1000
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: true
toc: true
summary: "Docker - Uno strumento per gestire i container"
---

# Docker CLI

[Docker]("https://www.docker.com/") è uno strumento che permette la gestione dei containers.

I containers, a differenza delle macchine virtuali, non sono composti da un sistema operativo separato, per cui richiedono meno memoria e meno consumo della CPU per essere eseguiti.

Grazie all'isolamento delle risorse (CPU, memoria, I/O a blocchi, rete), il sistema operativo sottostante crea una sorta di ambiente "virtuale" in cui il container viene eseguito e solo con questo ambiente "virtuale" il container può interagire.

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
- ``--restart "policy";`` controla se il container deve avviarsi automaticamente all'uscita (exit) o quando Docker viene restartato. Valori validi per la policy sono: ``no`` (never), ``on-failure`` (exit code > 0), ``unless-stopped`` (not manually stopped), ``always``;
- ``-v "volume:containerPath"`` monta una directory (chiamata volume) all'interno del container (deprecata, usa l'opzione ``-m``);
- ``--mount "type=bind,source=sourcePath,target=targetPath"`` monta una directory (chiamata volume) all'interno del container (new, use ``--mount``, NOT ``-v``);
- ``-u $(id -u):$(id -g)`` esegue il container come utente non-root, con i permessi dell'utente e del gruppo indicati;

## Esecuzione in modalità "attached" e "detached"

I comandi di ``start`` e ``run`` permettono l'esecuzione del container. La differenza è che il comando ``start`` avvia un container gia esistente, mentre il comando di ``run`` crea un container partendo da un'immagine e poi esegue il conntainer.

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

## Container inspection CLI

Per poter ispezionare un container, guardando i processi in esecuzione, la configurazione e le statistiche in tempo reale, si usano i comandi:

```bash
docker container top     httpd-container
docker container inspect httpd-container
docker container stats   httpd-container
```

## Docker logs

E' possibile visualizzare i logs di un container che è in esecuzione in background utilizzando il comando:

```bash
docker logs httpd-container
```

## Docker volume CLI

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

## Docker Network

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

## Docker compose

Il Dockerfile è pensato per creare un'immagine, non un container, quindi non bisogna confonderlo con "docker-compose".

Il comando docker-compose permette di gestire più containers con lo stesso comando, infatti si parla di applicazioni multi-containers. Il file compose.yaml descrive i vari containers ed indica per ogni container il nome da assegnare, le porte da aprire, i volumi da montare, il comando da eseguire, ecc...

La gestione di più containers (specificati nel file compose.yaml) è simile alla gestione del singolo container, per cui di seguito si riportano i comandi:

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

## Docker Swarm

Verificare se swarm è attivo:

```bash
docker system info | grep -i "swarm"
```

Inizializzare swarm:

```bash
docker swarm init
```
