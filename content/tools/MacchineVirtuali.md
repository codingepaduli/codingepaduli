---
type: "tools"
title: "Macchine Virtuali"
description: "Macchine virtuali, cosa sono, che vantaggi e svantaggi presentano."
date: 2020-03-15
publishdate: 2020-03-15
lastmod: 2020-03-15
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: false
toc: false
summary: "Macchine virtuali, cosa sono, che vantaggi e svantaggi presentano."
---

# Macchine virtuali e containers

Una necessità sempre crescente in ambito informatico è quella di eseguire programmi e fornire servizi in **ambienti isolati**, in cui tutte le azioni e le modifiche che avvengono in questi ambienti siano confinate all'ambiente stesso e non influiscano o modificano gli altri ambienti isolati. Anche virus ed errori che corrompono o bloccano l'ambiente devono essere confinati all'ambiente isolato e non devono poter infettare o bloccare gli altri ambienti.

Le principali tecnologie di esecuzione di programmi e servizi in ambienti isolati sono:

- la virtualizzazione, cioè l'uso di macchine virtuali;
- la containerizzazione, cioè l'uso di container;

Hanno lo stesso scopo, creare ambienti isolati, ma sono molto diverse tra loro.

## La virtualizzazione e le macchine virtuali

Una **macchina virtuale** è una macchina che ha tutte le componenti hardware simulate da un'altra macchina (la macchina "host", dall'inglese "macchina ospitante"). Hard disk, processore, RAM, scheda di rete e tutte le altre componenti sono disponibili come risorse virtuali. E' possibile eseguire più macchine virtuali (chiamate "guest", dall'inglese "ospite") sulla macchina ospitante ("host").

Il principale vantaggio nell'avere sistemi virtualizzati consiste nell'isolamento: tutte le azioni e le modifiche che avvengono in una macchina virtuale restano confinate alla macchina virtuale. Se una macchina virtuale dovesse prendere un virus, questo sarebbe comunque confinato alla specifica macchina virtuale e non potrebbe infettare nè la macchina ospitante, nè le altre macchine virtuali.

Un altro vantaggio nell'avere un sistema virtualizzato consiste nell'emulazione: una macchina virtuale può avere un'architettura completamente differente dalla macchina ospitante. Si può emulare un personal computer, un server, uno smartphone, una X-Box, una playstation, un Game Boy, un Atari Lynx, uno smartwatch e così via..

Infine, lo stato di una macchina virtuale può essere salvato e poi recuperato successivamente. Ad esempio, mentre è in corso un aggiornamento sulla macchina virtuale, questa può essere spenta (e lo stato viene salvato). Alla riaccensione, la macchina virtuale riparte dallo stato salvato e l'aggiornamento riprende dal punto in cui è stato salvato.

La virtualizzazione realizzata attraverso macchina virtuale è una virtualizzazione a livello hardware. Un punto da chiarire è come avviene la comunicazione tra la macchina virtuale e la macchina ospitante. In generale è necessario un software chiamato hypervisor (o anche Virtual Machine Monitor) che si occupa di gestire l'accesso della macchina virtuale alle risorse hardware della macchina ospitante. L'hypervisor si occupa anche di gestire la protezione della macchina ospitante e l'isolamento tra le diverse macchine virtuali che sono virtualizzate dalla macchina ospitante.

L'architettura basata su macchine virtuali è la seguente:

![Architettura basata su VM](/static/coding/tools/MacchineVirtuali-Architettura.svg "Architettura basata su VM" )

La nota negativa nell'uso di una macchina virtuale è che bisogna simulare l'intero hardware e software, sistema operativo compreso. Avere più macchine virtuali in esecuzione sulla stessa macchina ospite è molto dispendioso in termini di risorse necessarie per la macchina ospite. Se un sistema operativo richiede 8 GB di RAM e 16 GB di spazio su disco, con 5 macchine virtuali avremo necessari 40 GB di RAM e 80 GB di spazio su disco. Le risorse della macchina ospitante terminano facilmente. Per questo le aziende hanno iniziato a lavorare, quando possibile, con tecnologie meno "pesanti" in termini di risorse richieste.

Altra nota negativa è che per ogni macchina virtuale bisogna gestire il sistema operativo: bisogna gestire l'accesso di tutti gli utenti, i ruoli, i servizi da configurare o da eseguire all'avvio, gli aggiornamenti del sistema operativo, ecc.. Per quanto la gestione possa essere in parte o completamente automatizzata, comunque si tratta di una duplicazione di un compito che già viene svolto sul sistema operativo della macchina ospitante.

### Hardware per la virtualizzazione

A partire dagli anni 2000 sono nate tecnologie hardware quali Intel® Virtualization Technology e AMD-V™ Technology for Client Virtualization che servono a rendere le CPU più efficienti nell'eseguire il processo di virtualizzazione.

Sul sito del produttore della CPU si può verificare se il supporto hardware alla virtualizzazione è presente. Prendendo ad esempio un processore Intel Core i-9, sul sito dell'azienda e verificando le specifiche della CPU troviamo:

![VirtualBox - Specifiche hardware Intel Technology](/static/coding/tools/MacchineVirtuali-Virtualization-Tech-Intel-Specification.png "VirtualBox - Specifiche hardware Intel Technology")

Nella sezione "tecnologie avanzate" troviamo la conferma che la CPU ha il supporto hardware alla virtualizzazione alla riga "Intel® Virtualization Technology : SI".

![VirtualBox - Specifiche hardware Intel Technology](/static/coding/tools/MacchineVirtuali-Virtualization-Tech-Intel-Specification2.png "VirtualBox - Specifiche hardware Intel Technology")

Facendo la stessa ricerca per un processore AMD, sul sito del produttore troviamo:

![VirtualBox - Specifiche hardware AMD Technology](/static/coding/tools/MacchineVirtuali-Virtualization-Tech-AMD-Specification.png "VirtualBox - Specifiche hardware AMD Technology")

e alla riga "Tecnologie supportate" troviamo compresa la tecnologia di virtualizzazione "Virtualization".

E' importante controllare che questa tecnologia sia abilitata nelle impostazioni del BIOS:

![VirtualMachine - impostazioni del BIOS](/static/coding/tools/MacchineVirtuali-BIOS-Settings.png "VirtualMachine - impostazioni del BIOS")

### Software di virtualizzazione

Esistono molti software per la gestione di macchine virtuali, ognuno che sfrutta il proprio hypervisor per l'accesso all'hardware della macchina ospite.

Degno di nota l'hypervisor integrato nel kernel Linux, chiamato KVM.
L'hypervisor Kernel-based Virtual Machine (KVM) è una tecnologia open source che permette di utilizzare proprio il kernel Linux come hypervisor, permettendo a qualsiasi macchina Linux (host) di "ospitare" più macchine virtuali ospiti (guests). Ogni macchina virtuale è eseguita come un qualsiasi altro processo eseguito da Linux (si ricorda che un processo è un programma in esecuzione).

Tra i vari software disponibili all'utente medio si consigliano [VirtualBox](/tools/virtualbox/ "Link a VirtualBox"), con il proprio hypervisor, e Qemu, con l'hypervisor KVM e con la sua interfaccia grafica [AQemu](/tools/aqemu "Link a AQemu").

## I containers e la containerizzazione

I **container** sono degli ambienti isolati in cui le applicazioni vengono eseguite.

Grazie all'isolamento delle risorse (CPU, memoria, I/O a blocchi, rete), il sistema operativo sottostante crea una sorta di ambiente "virtuale" detto container che viene eseguito e solo con questo ambiente virtuale isolato le applicazioni contenute nel container possono interagire.

L'architettura basata su containers è la seguente:

![Architettura basata su containers](/static/coding/tools/MacchineVirtuali-Containers-Architettura.svg "Architettura basata su containers" )

### Software per la gestione dei containers

[Docker Engine](https://www.docker.com/) e [Podman](https://podman.io/) sono strumenti a linea di comando per la gestione dei container. Podman e Docker Engine sono compatibili, anche se differiscono in alcuni concetti.

[lazydocker](https://github.com/jesseduffield/lazydocker) è un'interfaccia per terminale che permette di gestire i container.

[Portainer](https://www.portainer.io/) è un'interfaccia web che permette di gestire l'intero cloud, sia esso Kubernetes, Docker, Swarm and Nomad.

Docker Engine è una tecnologia client/server, quindi un demone in background con i permessi di amministratore gestisce tutti i container, mentre la linea di comando interagisce con il server (demone).

Docker Desktop realizza una virtual machine (necessaria su Windows e su Mac, ma creata anche su Linux per far si che gli utenti abbiano la stessa esperienza d'uso) nella quale è in esecuzione Docker Engine. Inoltre fornisce l'interfaccia grafica per gestire Docker Engine.

Podman è definito rootless perché gestisce i container come processi dell'utente, quindi non necessita dei permessi di amministrazione. Non richiede la presenza di un server ed inoltre permette la gestione dei pod.

Podman Desktop è l'interfaccia grafica di Podman.