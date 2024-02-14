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

# Macchine virtuali

Una macchina virtuale è una macchina che ha tutte le componenti hardware simulate da un'altra macchina (la macchina "host", dall'inglese "macchina ospitante"). Hard disk, processore, RAM, scheda di rete e tutte le altre componenti sono disponibili come risorse virtuali. E' possibile eseguire più macchine virtuali (chiamate "guest", dall'inglese "ospite") sulla macchina ospitante ("host").

## Vantaggi

Il principale vantaggio nell'avere sistemi virtualizzati consiste nell'isolamento: tutte le azioni e le modifiche che avvengono nelle singole macchine virtuali restano confinate alle rispettive macchina virtuale. Se una macchina virtuale dovesse prendere un virus, questo sarebbe comunque confinato alla specifica macchina virtuale e non infetta nè la macchina ospitante, nè le altre macchine virtuali.

Un altro vantaggio nell'avere un sistema virtualizzato consiste nell'emulazione: una macchina virtuale può avere un'architettura completamente differente dalla macchina ospitante. Si può emulare un personal computer, un server, uno smartphone, una X-Box, una playstation, un Game Boy, un Atari Lynx, uno smartwatch e così via..

Infine, lo stato di una macchina virtuale può essere salvato e poi recuperato successivamente. Ad esempio, mentre è in corso un aggiornamento sulla macchina virtuale, questa può essere spenta (e lo stato viene salvato). Alla riaccensione, la macchina virtuale riparte dallo stato salvato e l'aggiornamento riprende dal punto in cui è stato salvato.

## Interazione con l'hardware

La virtualizzazione realizzata attraverso macchina virtuale è una virtualizzazione a livello hardware. Un punto da chiarire è come avviene la comunicazione tra la macchina virtuale e la macchina ospitante. In generale è necessario un software chiamato hypervisor (o anche Virtual Machine Monitor) che si occupa di gestire l'accesso della macchina virtuale alle risorse hardware della macchina ospitante. L'hypervisor si occupa anche di gestire la protezione della macchina ospitante e l'isolamento tra le diverse macchine virtuali che sono virtualizzate dalla macchina ospitante.

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

## Svantaggi

La nota negativa nell'uso di una macchina virtuale è che bisogna simulare l'intero hardware e software, sistema operativo compreso. Avere più macchine virtuali in esecuzione sulla stessa macchina ospite è molto dispendioso in termini di risorse necessarie per la macchina ospite. Se un sistema operativo richiede 8 GB di RAM e 16 GB di spazio su disco, con 5 macchine virtuali avremo necessari 40 GB di RAM e 80 GB di spazio su disco. Le risorse della macchina ospitante terminano facilmente. Per questo le aziende hanno iniziato a lavorare, quando possibile, con tecnologie meno "pesanti" in termini di risorse richieste.

Altra nota negativa è che per ogni macchina virtuale bisogna gestire il sistema operativo: bisogna gestire l'accesso di tutti gli utenti, i ruoli, i servizi da configurare o da eseguire all'avvio, gli aggiornamenti del sistema operativo, ecc.. Per quanto la gestione possa essere in parte o completamente automatizzata, comunque si tratta di una duplicazione di un compito che già viene svolto sul sistema operativo della macchina ospitante.

## Software di virtualizzazione

Esistono molti software per la gestione di macchine virtuali, ognuno che sfrutta il proprio hypervisor per l'accesso all'hardware della macchina ospite.

Degno di nota l'hypervisor integrato nel kernel Linux, chiamato KVM.
L'hypervisor Kernel-based Virtual Machine (KVM) è una tecnologia open source che permette di utilizzare proprio il kernel Linux come hypervisor, permettendo a qualsiasi macchina Linux (host) di "ospitare" più macchine virtuali ospiti (guests). Ogni macchina virtuale è eseguita come un qualsiasi altro processo eseguito da Linux (si ricorda che un processo è un programma in esecuzione).

Tra i vari software disponibili all'utente medio si consigliano [VirtualBox](/tools/virtualbox/ "Link a VirtualBox"), con il proprio hypervisor, e Qemu, con l'hypervisor KVM e con la sua interfaccia grafica [AQemu](/tools/aqemu "Link a AQemu").
