---
type: "tools"
title: "Macchine Virtuali"
description: "Macchine virtuali, cosa sono, che vantaggi e svantaggi hanno."
date: 2020-03-15
publishdate: 2020-03-15
lastmod: 2020-03-15
categories: ["coding, tools"]
keywords: ["coding, tools"]
draft: false
toc: false
notesforauthors: "Macchine virtuali, cosa sono, che vantaggi e svantaggi hanno."
summary: "Macchine virtuali, cosa sono, che vantaggi e svantaggi hanno."
---

Una macchina virtuale è una macchina che ha tutte le componenti hardware simulate da un'altra macchina (la macchina "host", dall'inglese "macchina ospitante"). Hard disk, processore, RAM, scheda di rete e tutte le altre componenti sono disponibili come risorse virtuali.

### Vantaggi

Il principale vantaggio nell'avere un sistema virtualizzato consiste nell'isolamento: tutte le azioni e le modifiche che avvengono nella macchina virtuale restano confinate nella macchina virtuale. Se la macchina virtuale dovesse prendere un virus, questo è comunque confinato alla macchina virtuale e non infetta la macchina ospitante.

Un altro vantaggio nell'avere un sistema virtualizzato consiste nell'emulazione: la macchina virtuale può avere un'architettura completamente differente dalla macchina ospitante. Si può emulare un personal computer, un server, uno smartphone, una X-Box, una playstation, un Game Boy, un Atari Lynx, uno smartwatch e così via..

Infine, lo stato di una macchina virtuale può essere salvato e poi recuperato successivamente. Ad esempio, mentre è in corso un aggiornamento sulla macchina virtuale, questa può essere spenta (e lo stato viene salvato). Alla riaccensione, la macchina virtuale riparte dallo stato salvato e l'aggiornamento riprende dal punto in cui è stato salvato.

### Interazione con l'hardware

La virtualizzazione realizzata attraverso macchina virtuale è una virtualizzazione a livello hardware. Un punto da chiarire è come avviene la comunicazione tra la macchina virtuale e la macchina ospitante. In generale è necessario un software chiamato hypervisor (o anche Virtual Machine Monitor) che si occupa di gestire l'accesso della macchina virtuale alle risorse hardware della macchina ospitante. L' hypervisor si occupa anche di gestire la protezione della macchina ospitante e l'isolamento tra le diverse macchine virtuali che sono virtualizzate dalla macchina ospitante. 

A partire dagli anni 2000 sono nate tecnologie hardware quali Intel® Virtualization Technology e AMD-V™ Technology for Client Virtualization che servono a rendere le CPU più efficienti nell'eseguire il processo di virtualizzazione. 

Sul sito del produttore della CPU si può verificare se il supporto hardware alla virtualizzazione è presente. Prendendo ad esempio un processore Intel Core i-9, sul sito dell'azienda e verificando le speficiche della CPU troviamo:

![Image](/static/coding/tools/VirtualBox-Virtualization-Tech-Intel-Specification.png "VirtualBox - Intel Technology 1")

Nella sezione "tecnologie avanzate" troviamo la conferma che la CPU ha il supporto hardware alla virtualizzazione alla riga "Intel® Virtualization Technology : SI".

![Image](/static/coding/tools/VirtualBox-Virtualization-Tech-Intel-Specification2.png "VirtualBox - Intel Technology 1")

Facendo la stessa ricerca per un processore AMD, sul sito del produttore troviamo:

![Image](/static/coding/tools/VirtualBox-Virtualization-Tech-AMD-Specification.png "VirtualBox - AMD Technology")

e alla riga "Tecnologie supportate" troviamo compresa la tecnologia di virtualizzazione "Virtualization".

E' importante controllare che questa tecnologia sia abilitata nelle impostazioni del BIOS: 

![Image](/static/coding/tools/VirtualMachine-BIOS-Settings.png "VirtualMachine - BIOS settings")

### Svantaggi

La nota negativa nell'uso di una macchina virtuale è che bisogna simulare l'intero hardware e software, sistema operativo compreso. Avere più macchine virtuali in esecuzione sulla stessa macchina ospite è molto dispendioso in termini di risorse necessarie per la macchina ospite. Per questo ultimamente si considerano tecnologie meno "pesanti" quando possibile.

Altra nota negativa è che per ogni macchina virtuale bisogna gestire il sistema operativo: bisogna gestire l'accesso di tutti gli utenti, i ruoli, i servizi da configurare o da eseguire all'avvio, gli aggiornamenti del sistema operativo, ecc.. Per quanto la gestione possa essere in parte o completamente automatizzata, comunque si tratta di una duplicazione di un compito che già viene svolto sul sistema operativo della macchina ospitante.
