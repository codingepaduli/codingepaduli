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
toc: false
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

- ``-t`` alloca uno pseudo-terminale al processo (utile per l'output colorato);
- ``-i`` per leggere dallo standard input o usare pipe;
- ``-w "workingDir"`` indica la directory di lavoro;
- ``-e VARIABLE=VALUE`` crea nel container una variabile d'ambiente con uno specifico valore;
- ``--entrypoint path/to/run`` indica il comando da eseguire quando si avvia il container. Si può specificare un valore vuoto ``""`` per sovrascrivere un eventuale valore predefinito;
- ``-p "port:containerPort"`` associa una porta locale ad una del container;
- ``--restart "policy";`` controla se il container deve avviarsi automaticamente all'uscita (exit) o quando Docker viene restartato. Valori validi per la policy sono: ``no`` (never), ``on-failure`` (exit code > 0), ``unless-stopped`` (not manually stopped), ``always``;
- ``-v "volume:containerPath"`` monta una directory (chiamata volume) all'interno del container (deprecata, usa l'opzione ``-m``);
- ``--mount "type=bind,source=sourcePath,target=targetPath"`` monta una directory (chiamata volume) all'interno del container (new, use ``--mount``, NOT ``-v``);
- ``-u $(id -u):$(id -g)`` esegue il container come utente non-root, con i permessi dell'utente e del gruppo indicati;

## I comandi di run ed exec

E' possibile creare ed eseguire il container con un unico comando:

```bash
docker container run --name "httpd-container" httpd:alpine
```

Come si può notare, il container rimane in esecuzione fino a quando l'utente preme ``CTRL-C``, cosa che causa lo stop del container.

Se si esegue ancora il comando, comparirà l'errore che indica che il nome del container esiste gia, se ne può creare un altro scegliendo la stessa immagine ``httpd:alpine`` ed un nuovo nome ``httpd-container3``.

Dato che il comando run crea e poi esegue il container, una volta stoppato il container si può scegliere di distruggerlo, co l'opzione ``--rm``:

```bash
docker container run --name "httpd-container" --rm httpd:alpine
```

Per poter avviare in background un container, in modo tale da non interrompere l'esecuzione con ``CTRL-C``, causando anche lo stop del container, si utilizza l'opzione ``-d``:

```bash
docker container run -d --name "httpd-container" httpd:alpine
```

Per riportare in primo piano il container, si prende nota dell'identificativo e lo si può di nuovo collegare con il comando:

```bash
docker container attach ab58fbb99911
```

Il comando ``docker container exec`` permette di eseguire uno specifico comando all'interno di un container gia esistente. Ad esempio per eseguire il comando ``pwd``:

```bash
docker container exec httpd-container pwd
```

### Container inspection CLI

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

## Docker compose

Il Dockerfile è pensato per creare un'immagine.

Il comando docker-compose ed il file docker-compose.yaml descrivono invece come eseguire il container, quale nome assegnare, quale porte aprire, quali volumi montare, ecc...

Per creare un container partendo dalle specifiche del file docker-compose.yaml, si utilizza il comando:

```bash
docker-compose -f my-docker-compose.yaml up
```

Per stoppare il container descritto nel file my-docker-compose.yaml, si utilizza il comando:

```bash
docker-compose -f my-docker-compose.yaml down
```
