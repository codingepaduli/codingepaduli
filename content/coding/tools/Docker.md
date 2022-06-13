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

## Docker image CLI

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

## Docker container CLI

Utilizzando l'immagine ``httpd:alpine``, per creare un nuovo container assegnandogli un nome comprensibile, ad esempio ``httpd-container``, eseguiamo il comando:

```bash
docker container run --name "httpd-container" httpd:alpine
```

Come si può notare, il container rimane in esecuzione fino a quando l'utente preme ``CTRL-C``, cosa che causa lo stop del container.

Se si esegue ancora il comando, comparirà l'errore che indica che il nome del container esiste gia, se ne può creare un altro scegliendo la stessa immagine ``httpd:alpine`` ed un nuovo nome ``httpd-container2``.

Per poter avviare in background un container, in modo tale da non interrompere l'esecuzione con ``CTRL-C``, causando anche lo stop del container, si utilizza l'opzione ``-d``:

```bash
docker container run -d --name "httpd-container" httpd:alpine
```

Per avviare, stoppare, mettere in pausa (non consuma CPU, ma è in memoria), riprendere dalla pausa ed infine eliminare un container, si utilizzano i seguenti comandi:

```bash
docker container start   httpd-container
docker container stop    httpd-container
docker container pause   httpd-container
docker container unpause httpd-container
docker container rm      httpd-container
```

Per poter ispezionare un container, guardando i processi in esecuzione, la configurazione e le statistiche in tempo reale, si usano i comandi:

```bash
docker container top     httpd-container
docker container inspect httpd-container
docker container stats   httpd-container
```

Su un container in esecuzione, è possibile eseguire uno specifico comando nel container con il comando:

```bash
docker container exec httpd-container pwd
```

Le opzioni più utilizzate del comando ``run`` sono le seguenti

- ``--name "name"`` to set a name for the container
- ``-t`` to allocate a pseudo-tty to the process (useful for colored output);
- ``-i`` to read from STDIN or use pipe (useful for cli);
- ``--rm`` to remove the container when it exits;
- ``-d`` for running the container in detached mode (as a deamon);
- ``-p "port:containerPort"`` to publish a port via docker;
- ``-v "volume:containerPath"`` to mount config directory volume into the container path (deprecated, use -m);
- ``--mount "type=bind,source=sourcePath,target=targetPath"`` to mount config directory volume into the container path (new, use --mount, NOT -v);
- ``-u $(id -u):$(id -g)`` run the container with a non-root user
- ``-e VARIABLE=VALUE`` to add an environment variable with a value
- ``--restart "policy";`` to control whether your containers start automatically when they exit, or when Docker restarts. Allowed values for policy: ``no`` (never), ``on-failure`` (exit code > 0), ``unless-stopped`` (not manually stopped), ``always``;

**TIPS**: Il comando per rimuovere tutti i container in stato "exit" (-q stampa solo un ID del container):

```bash
docker rm $(docker container ls --size -a --filter  "status=exited" -q)
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
