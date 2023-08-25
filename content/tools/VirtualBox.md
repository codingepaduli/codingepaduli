---
type: "tools"
title: "VirtualBox"
description: "VirtualBox, uno strumento open-source per la creazione di macchine virtuali."
date: 2020-03-15
publishdate: 2020-03-15
lastmod: 2023-08-09
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: false
toc: false
summary: "VirtualBox, uno strumento open-source per la creazione di macchine virtuali."
---

# VirtualBox

VirtualBox è uno software open-source per la gestione di macchine virtuali.

All'avvio si presenta con un'interfaccia molto semplice, che permette di gestire le preferenze, l'importazione, l'esportazione, la creazione e l'aggiunta di macchine virtuali. Di seguito un'immagine con il menù "Strumenti" visibile:

![VirtualBox - Welcome Page](/static/coding/tools/VirtualBox7-welcome.png "VirtualBox - Welcome Page")

## Configurazione Tasto HOST

La prima cosa da fare all'avvio consiste nel configurare il tasto "HOST", utilizzato durante l'esecuzione dalle macchine virtuali per l'acquisizione ed il rilascio di tastiera e mouse. Nel menù "File", cliccando la voce "Preferenze" e poi scegliendo la sezione "Immissione" si può selezionare la combinazione di tasti per simulare la pressione del tasto "HOST".

![VirtualBox - Configurazione tasto Host](/static/coding/tools/VirtualBox-Config-Host-key.png "VirtualBox - Configurazione tasto Host")

E' utile memorizzare o scrivere la combinazione di tasti scelta per il tasto HOST, dato che quando si avvia una macchina virtuale e questa acquisisce le periferiche di input (mouse e tastiera), per rilasciarle è necessario premere il tasto HOST (la combinazione di tasti scelta).

## Creazione guidata nuova macchina virtuale

Il processo di creazione di una macchina virtuale è molto semplice, è necessario inserire un nome per la macchina virtuale, indicare in quale cartella salvarla, selezionare il tipo di macchina virtuale ed il sistema operativo che deve ospitare:

![VirtualBox - Creazione macchina virtuale - passo 1](/static/coding/tools/VirtualBox7-NewVM-step1.png "VirtualBox - Creazione macchina virtuale - passo 1")

Il passo successivo richiede la selezione della quantità di memoria che la macchina ospitante può dedicare alla macchina virtuale:

![VirtualBox - Creazione macchina virtuale - passo 2](/static/coding/tools/VirtualBox7-NewVM-step2.png "VirtualBox - Creazione macchina virtuale - passo 2")

Il terzo passo richiede la creazione di un nuovo disco fisso o la selezione di un disco fisso esistente per la macchina virtuale. La scelta dell'allocazione dinamica è utile quando si vuole che il file rappresentante il disco fisso sia scritto man mano che il disco della macchina virtuale si riempie. L'alternativa è creare subito un file della dimensione indicata, anche se il disco fisso della macchina virtuale è vuoto o occupa una quantità inferiore di spazio, utilizzando inutilmente spazio sul disco della macchina ospitante:

![VirtualBox - Creazione macchina virtuale - passo 3](/static/coding/tools/VirtualBox7-NewVM-step3.png "VirtualBox - Creazione macchina virtuale - passo 3")

Al termine di tutti questi passi, viene mostrato un riepilogo della macchina virtuale che sarà creata:

![VirtualBox - Creazione macchina virtuale - passo 4](/static/coding/tools/VirtualBox7-NewVM-step4.png "VirtualBox - Creazione macchina virtuale - passo 4")

## Creazione nuova macchina virtuale in modalità esperta

La creazione di una macchina virtuale in modalità esperta permette di inserire tutte le informazioni della macchina virtuale in un'unica volta.

In questa modalità è possibile scegliere il percorso ed il tipo di formato con cui salvare il disco fisso, scelta che dipende dai programmi utilizzati per la gestione di macchine virtuali.

Nel caso il disco debba essere utilizzato da più software per la gestione dei dischi virtuali, allora la scelta deve ricadere su un formato compatibile.

![VirtualBox - Creazione macchina virtuale - modalità esperto](/static/coding/tools/VirtualBox7-NewVM-step-expert.png "VirtualBox - Creazione macchina virtuale - modalità esperto")

## Creazione macchina virtuale da immagine ISO

Si può creare una macchina virtuale a partire da un'immagine ISO. In questo caso, si può anche procedere ad un'istallazione supervisionata, ovvero automatica, senza necessità dell'intervento dell'utente.

![VirtualBox - Creazione macchina virtuale da immagine ISO](/static/coding/tools/VirtualBox7-NewVmFromISO-expert.png "VirtualBox - Creazione macchina virtuale da immagine ISO")

## Descrizione macchina virtuale

Nella schermata principale vengono quindi visualizzate le varie macchine virtuali, tra cui quella appena creata. Cliccando su una macchina virtuale vengono visualizzati i dettagli, dalle informazioni generali a quelle software a quelle delle varie (virtualizzate) componenti hardware. Troviamo quindi informazioni sul sistema, sulle componenti audio, video e di rete, sui dispositivi di archiviazione e sulle cartelle condivise con il sistema ospitante.

La macchina virtuale creata è visualizzata e descritta in dettaglio nella seguente immagine:

![VirtualBox - macchina virtuale creata](/static/coding/tools/VirtualBox7-NewVM-created.png "macchina virtuale creata")

Le informazioni visualizzate sono modificabili. Cliccando su un'opzione si apre la corrispondente finestra di dialogo per modificarla, mostrando le opzioni alternative o permettendo di modificare il valore presente.

## Selezione Sistema Operativo

Creata la macchina virtuale, è necessario indicare il software, in particolare il Sistema Operativo da eseguire quando si avvia la macchina virtuale.

E' necessario prestare particolare attenzione in questa fase: nel caso si avvi la macchina virtuale senza scegliere il sistema operativo, allora si otterrà l'errore: "No Bootable medium found" che tradotto indica "nessun dispositivo avviabile", cioè manca il sistema operativo.

![VirtualBox - Avvio macchina virtuale errato](/static/coding/tools/VirtualBox-VM-StartError.png "VirtualBox - Avvio macchina virtuale errato")

E' necessario configurare la macchina virtuale per avviare il Sistema Operativo, navigando nella sezione "Archiviazione" e cliccando sul controller IDE / ATA. Si può scegliere di utilizzare il lettore ottico della macchina ospitante (host), si può utilizzare un'immagine ISO o utilizzare un disco virtuale esistente.

![VirtualBox - Selezione Sistema Operativo](/static/coding/tools/VirtualBox7-SelectSO.png "VirtualBox - Selezione Sistema Operativo")

Configurato correttamente il sistema operativo, la macchina virtuale si avvia, il sistema operativo viene eseguito e quindi l'utente può interagirvi:

![VirtualBox - Avvio macchina virtuale](/static/coding/tools/VirtualBox7-VM-start.png "VirtualBox - Avvio macchina virtuale")

Cliccando sulla macchina virtuale, viene fornita l'indicazione che il puntatore del mouse non sarà più disponibile nella macchina ospitante perché sarà catturato dalla macchina virtuale. Per riaverlo disponibile, è necessario premere il tasto HOST, ovvero la combinazione di tasti indicata dal messaggio:

![VirtualBox - Cattura del puntatore del mouse](/static/coding/tools/VirtualBox7-VM-StartCatchPointer.png "VirtualBox - Cattura del puntatore del mouse")

Alla chiusura della macchina virtuale viene chiesto se:

- spegnere la macchina, quindi il sistema operativo termina l'esecuzione.
- salvare lo stato della macchina virtuale, quindi il sistema operativo resta in esecuzione e, all'apertura della macchina virtuale, il sistema operativo riprendera l'esecuzione dal punto salvato.

![VirtualBox - Spegnimento macchina virtuale](/static/coding/tools/VirtualBox-VM-Shutdown.png "VirtualBox - Spegnimento macchina virtuale")

## Guest Additions

Le Guest Additions di VirtualBox sono un insieme di strumenti software che vengono installati all'interno del sistema operativo guest e consentono di migliorare l'esperienza di utilizzo di una macchina virtuale all'interno di VirtualBox, offrendo le seguenti funzionalità aggiuntive:

- condivisione file e cartelle;
- migliore accelerazione video e il supporto per risoluzioni video più alte;
- condivisione degli appunti;
- supporto per il puntatore del mouse integrato, senza dover ricorrere al tasto HOST;
- login automatici degli utenti presenti sul sistema ospitante.

Le Guest Additions di VirtualBox sono distribuite come file ISO (disco virtuale), per installarle è necessario montare il disco nel lettore cd-rom, cliccando sulla voce "Archiviazione" della macchina virtuale:

![VirtualBox - Selezione Sistema Operativo](/static/coding/tools/VirtualBox7-SelectSO.png "VirtualBox - Selezione Sistema Operativo")

Una volta montato il disco, si può avviare la macchina virtuale.

![VirtualBox - Disco Guest Additions montato](/static/coding/tools/VirtualBox7-guestAdditions-mount.png "VirtualBox - Disco Guest Additions montato")

Il disco delle Guest Additions contiene il file di installazione su macchine Linux ``VBoxLinuxAdditions.run`` ed il file di installazione su macchine Windows ``VBoxWindowsAdditions.sh``.

![VirtualBox - Cartella delle Guest Additions](/static/coding/tools/VirtualBox7-guestAdditions-folder.png "VirtualBox - Cartella delle Guest Additions")

Si apre la cartella nel terminale e si lancia il comando di installazione delle Guest Additions ``sh ./VBoxLinuxAdditions.run``:

![VirtualBox - Installa le Guest Additions](/static/coding/tools/VirtualBox7-guestAdditions-installer.png "VirtualBox - Installa le Guest Additions")

## Condivisione cartelle

Per condividere una cartella tra il sistema ospitante e la macchina virtuale, si deve cliccare sulla voce "Cartelle condivise" della macchina virtuale. Nella finestra delle cartelle condivise, si clicca sul pulsante di "Aggiungi" e nella finestra di dialogo si indica la cartella da condividere ed il punto di mount.

![VirtualBox - Condivisione cartella](/static/coding/tools/VirtualBox7-share-folder.png "VirtualBox - Condivisione cartella")

Aggiunta la cartella, questa è visualizzata tra le cartelle della macchina:

![VirtualBox - Condivisione cartella](/static/coding/tools/VirtualBox7-share-folder2.png "VirtualBox - Condivisione cartella")
