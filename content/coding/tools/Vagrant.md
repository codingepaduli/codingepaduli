---
type: "tools"
title: "Vagrant"
description: "Vagrant, uno strumento open-source per la creazione e la gestione di ambiente virtualizzato attraverso un workflow, seguendo la metodologia DevOps"
date: 2020-03-19
publishdate: 2020-03-19
lastmod: 2020-03-19
keywords: ["coding", "tools"]
draft: false
toc: false
notesforauthors: "Vagrant, uno strumento open-source per la creazione e la gestione di ambiente virtualizzato attraverso un workflow, seguendo la metodologia DevOps"
summary: "Vagrant, uno strumento open-source per la creazione e la gestione di ambiente virtualizzato attraverso un workflow, seguendo la metodologia DevOps."
---

Vagrant, uno strumento open-source per la creazione e la gestione di ambiente virtualizzato attraverso un workflow, seguendo la metodologia DevOps. 

Per workflow si intende l'automazione parziale o totale di un'attività. Nel caso di Vagrant, il workflow consiste nella creazione e gestione delle macchine virtuali che fanno parte dell'ambiente virtuale.

Funziona con molti software "hypervisor", denominati providers, tra cui l'hypervisor di VirtualBox e  l'hypervisor KVM presente nel kernel Linux.

## Concetti base di Vagrant

Vagrant crea le macchine virtuali partendo da dei "box", ovvero delle immagini di macchine virtuali già configurate con determinati sistemi operativi, che possono essere scelti all'indirizzo: 
[https://vagrantcloud.com/search](https://vagrantcloud.com/search). 

Quando si crea una macchina virtuale (a partire da un box), Vagrant crea un file, di nome "Vagrantfile", che contiene la configurazione della macchina virtuale creata. Questo file può essere esteso per creare un'intero ambiente virtuale composto da più macchine virtuali.

Quando si vuole avviare, stoppare, sospendere o riavviare una macchina virtuale, Vagrant deve leggere il file "Vagrantfile" che descrive l'ambiente virtuale. Per questo motivo, i comandi di  Vagrant devono essere eseguiti nella stessa cartella che contiene il "Vagrantfile".

Si consiglia quindi la creazione di una nuova cartella per ogni macchina virtuale (o ambiente virtuale) che si intende creare ed eseguire i comandi di creazione e gestione dell macchina virtuale (o dell'ambiente virtuale) nella cartella contenente il Vagrantfile. 

## Gestione macchine virtuale

Per creare una macchina virtuale si deve scegliere il nome del box.
Una volta scelto il box della macchina virtuale (sul sito di Vagrant), ad esempio "debian/buster64", si può creare la macchina virtuale attraverso il comando seguente: 

```bash
vagrant init debian/buster64
```

Questo comando crea il file 'Vagrantfile' che contiene la configurazione della macchina virtuale. Nel Vagrantfile sono memorizzati anche il nome della macchina virtuale e l'ID associati alla macchina virtuale creata.

E possibile avviare la macchina virtuale creata eseguendo (nella stessa cartella contenente il Vagrantfile) il comando:

```bash
vagrant up
```

Per stoppare la macchina virtuale, si esegue (nella stessa cartella contenente il Vagrantfile) il comando:

```bash
vagrant halt
```

Se si sceglie un box con interfaccia grafica, questa è visibile all'utente che può loggarsi (il più delle volte con username "vagrant" e password "vagrant").

Se si sceglie un box senza interfaccia grafica, c'è la possibilità che la macchina virtuale venga eseguita in modalità "headless" (dall'inglese "senza testa", si intende senza interfaccia grafica). La macchina virtuale è in esecuzione, non viene presentata l'interfaccia all'utente ma è disponibile l'accesso SSH (è abilitato di default nel Vagrantfile), per cui l'utente deve fare accesso da terminale eseguendo (nella stessa cartella contenente il Vagrantfile) il comando:

```bash
vagrant ssh
```

Anche per SSH il login avviene il più delle volte con username "vagrant" e password "vagrant", mentre per chiudere la connessione SSH si usa il comando:

```bash
logout
```

La  macchina virtuale si può avviare anche per nome o ID, per cui si esegue (nella stessa cartella che contiene il Vagrantfile) il comando:

```bash
vagrant up nome_macchina # avvia la macchina virtuale per nome
vagrant up id_macchina # avvia la macchina virtuale per ID
```

Allo stesso modo si può stoppare la macchina virtuale per nome o ID, per cui si esegue (nella stessa cartella che contiene il Vagrantfile) il comando:

```bash
vagrant halt nome_macchina # stoppa la macchina virtuale per nome
vagrant halt id_macchina # stoppa la macchina virtuale per ID
```

Più in generale i comandi possono essere eseguiti su tutte le macchine virtuali descritte nel Vagrantfile o si può specificare di eseguire il comando su una specifica macchina virtuale appartenente all'ambiente virtuale (descritto nel Vagrantfile).

Per cui di seguito si descriveranno i comandi con l'opzione facoltativa del nome o dell'ID della macchina virtuale.

Per visualizzare lo stato dell'ambiente virtuale o di una macchina virtuale, si esegue (nella stessa cartella che contiene il Vagrantfile) il comando:

```bash
vagrant status [nome | ID]
```

Per sospendere l'esecuzione dell'ambiente virtuale o di una macchina virtuale, si esegue (nella stessa cartella che contiene il Vagrantfile) il comando:

```bash
vagrant suspend [nome | ID]
```

Per riavviare l'esecuzione dell'ambiente virtuale o di una macchina virtuale, si esegue (nella stessa cartella che contiene il Vagrantfile) il comando:

```bash
vagrant resume [nome | ID]
```

Per distruggere un'ambiente virtuale o una macchina virtuale, si esegue (nella stessa cartella che contiene il Vagrantfile) il comando:

```bash
vagrant destroy [nome | ID]
```

Per visualizzare lo stato globale di tutte le macchine virtuali, si esegue (nella stessa cartella che contiene il Vagrantfile) il comando::

```bash
vagrant global-status
```

## Gestione dei box

Attraverso la linea di comando si possono gestire i Box di Vagrant:

Per aggiungere un box (bisogna avere il nome del box):

```bash
vagrant box add debian/buster64
```

Per rimuovere un box (bisogna avere il nome del box):

```bash
vagrant box remove debian/buster64
```

Per un elenco dei box aggiungi:

```bash
vagrant box list 
```

Per un elenco dei box da aggiornare:

```bash
vagrant box list outdated --global 
```

Per aggiornare i box:

```bash
vagrant box update
```

Per rimuovere vecchie versioni di uno specifico box:

```bash
vagrant box prune --name debian/buster64
```

Per elencare tutte le versioni vecchie di tutti i box che potrebbero essere rimosse, ma non lo saranno (perchè si è aggiunto il flag --dry-run):

```bash
vagrant box prune --dry-run
```

![](/static/coding/tools/VirtualBox-VM-Shutdownd.png "VirtualBox - Shutdown")
