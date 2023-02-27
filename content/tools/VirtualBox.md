---
type: "tools"
title: "VirtualBox"
description: "VirtualBox, uno strumento open-source per la creazione di macchine virtuali."
date: 2020-03-15
publishdate: 2020-03-15
lastmod: 2020-03-15
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: false
toc: false
summary: "VirtualBox, uno strumento open-source per la creazione di macchine virtuali."
---

# VirtualBox

VirtualBox è uno software open-source per la gestione di macchine virtuali.

All'avvio si presenta con un'interfaccia molto semplice, che permette di gestire le preferenze, l'importazione, l'esportazione, la creazione e l'aggiunta di macchine virtuali.

![VirtualBox - Welcome Page](/static/coding/tools/VirtualBox-Welcome.png "VirtualBox - Welcome Page")

Il processo di creazione di una macchina virtuale è molto semplice, è necessario inserire un nome per la macchina virtuale, indicare in quale cartella salvarla, selezionare il tipo di macchina virtuale ed il sistema operativo che deve ospitare:

![VirtualBox - Creazione Virtual Machine - passo 1](/static/coding/tools/VirtualBox-NewVM-Step1.png "VirtualBox - Creazione Virtual Machine - passo 1")

Il passo successivo richiede la selezione della quantità di memoria che la macchina ospitante può dedicare alla macchina virtuale:

![VirtualBox - Creazione Virtual Machine - passo 2](/static/coding/tools/VirtualBox-NewVM-Step2.png "VirtualBox - Creazione Virtual Machine - passo 2")

 Il terzo passo richiede la creazione di un nuovo disco fisso o la selezione di un disco fisso esistente per la macchina virtuale:

![VirtualBox - Creazione Virtual Machine - passo 3](/static/coding/tools/VirtualBox-NewVM-Step3.png "VirtualBox - Creazione Virtual Machine - passo 3")

Il quarto passo richiede la scelta della dimensione del disco fisso e il percorso in cui salvarlo. E' necessario scegliere anche il tipo di formato con cui salvare il disco fisso, ma questa scelta dipende dal tipo di software che vogliamo usare per leggere questo disco fisso.
Nel caso si usino più programmi per la gestione di macchine virtuali, allora la scelta deve ricadere su un formato compatibile per tutti, in modo da poter leggere il disco virtuale da una qualsiasi macchina virtuale eseguita da un qualsiasi programma di gestione.
La scelta dell'allocazione dinamica è utile quando si vuole che il disco fisso, posizionato al percorso specificato, sia archiviato man mano che il disco della macchina virtuale si riempie. L'alternativa è creare subito un file della dimensione indicata, anche se il disco fisso della macchina virtuale è vuoto o occupa una quantità inferiore di spazio, e quindi si sceglie di utilizzare inutilmente spazio sul disco della macchina ospitante.

![VirtualBox - Creazione Virtual Machine - passo 4](/static/coding/tools/VirtualBox-NewVM-Step4.png "VirtualBox - Creazione Virtual Machine - passo 4")

Al termine di tutti questi passi, Cliccando su pulsante "crea" la macchina virtuale viene creata.
In realtà, al passo 1, cliccando su modalità esperta, si potevano inserire tutte queste informazioni in un'unica volta:

![VirtualBox - Creazione Virtual Machine - modalità esperto](/static/coding/tools/VirtualBox-NewVM-StepExpert.png "VirtualBox - Creazione Virtual Machine - modalità esperto")

Nella schermata principale vengono quindi visualizzate le varie macchine virtuali, tra cui quella appena creata. Cliccando su una macchina virtuale vengono visualizzati i dettagli, dalle informazioni generali a quelle software a quelle delle varie (virtualizzate) componenti hardware. Troviamo quindi informazioni sul sistema, sulle componenti audio, video e di rete, sui dispositivi di archiviazione e sulle cartelle condivise con il sistema ospitante.

![VirtualBox - Virtual Machine creata](/static/coding/tools/VirtualBox-NewVM-Created.png "VirtualBox - Virtual Machine creata")

Le informazioni visualizzate sono modificabili. Cliccando su un'opzione si apre la corrispondente finestra di dialogo per modificarla, mostrando le opzioni alternative o permettendo di modificare il valore presente.

La macchina virtuale è stata creata, quindi le componenti hardware sono presenti (in forma virtuale). E' necessario indicare il software, in particolare il Sistema Operativo da eseguire quando si avvia la macchina virtuale.

E' necessario prestare particolare attenzione in questa fase: nel caso si avvi la macchina virtuale senza scegliere l'archivio contenente il sistema operativo, allora si otterrà l'errore: "No Bootable medium found" che tradotto indica "nessun dispositivo avviabile", cioè manca il sistema operativo e quindi la macchina virtuale non può avviarsi.

![VirtualBox - Avvio Virtual Machine errato](/static/coding/tools/VirtualBox-VM-StartError.png "VirtualBox - Avvio Virtual Machine errato")

E' necessario configurare la macchina virtuale per avviare il Sistema Operativo:

- se il sistema operativo è stato masterizzato su CD-ROM, si clicca nella sezione "Archiviazione" sul controller IDE / ATA e si seleziona l'avvio dal lettore ottico della macchina ospitante (host);
- se il sistema operativo è stato scaricato e salvato sul disco fisso, allora è necessario cliccare nella sezione "Archiviazione" sul controller IDE / ATA e selezionare la voce "Scegli un file dal disco" e quindi indicare il percorso in cui si trova il file contenente il sistema operativo scaricato;

![VirtualBox - Avvio Virtual Machine da CD](/static/coding/tools/VirtualBox-VM-StartFromCdOrISO.png "VirtualBox - Avvio Virtual Machine da CD")

![VirtualBox - Avvio Virtual Machine da CD](/static/coding/tools/VirtualBox-VM-StartFromCdOrISO2.png "VirtualBox - Avvio Virtual Machine da CD")

Configurato correttamente il sistema operativo, la macchina virtuale si avvia, il sistema operativo viene eseguito e quindi l'utente può interagirvi:

![VirtualBox - Avvio Virtual Machine](/static/coding/tools/VirtualBox-VM-Start.png "VirtualBox - Avvio Virtual Machine")

Cliccando sulla macchina virtuale, viene fornita l'indicazione che il puntatore del mouse non sarà più disponibile nella macchina ospitante perchè sarà catturato dalla macchina virtuale. Per riaverlo disponibile, è necessario premere la combinazione di tasti indicata dal messaggio:

![VirtualBox - Cattura del puntatore del mouse](/static/coding/tools/VirtualBox-VM-StartCatchPointer.png "VirtualBox - Cattura del puntatore del mouse")

Alla chiusura della macchina virtuale viene chiesto se:

- spegnere la macchina, quindi il sistema operativo termina l'esecuzione.
- salvare lo stato della macchina virtuale, quindi il sistema operativo resta in esecuzione e, all'apertura della macchina virtuale, il sistema operativo riprendera l'esecuzione dal punto salvato.

![VirtualBox - Shutdown Virtual Machine](/static/coding/tools/VirtualBox-VM-Shutdown.png "VirtualBox - Shutdown Virtual Machine")
