---
type: "tools"
title: "Aqemu"
description: "Aqemu, uno strumento open-source per la creazione di macchine virtuali."
date: 2020-03-15
publishdate: 2020-03-15
lastmod: 2020-03-15
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: false
toc: false
notesforauthors: "Aqemu, uno strumento open-source per la creazione di macchine virtuali."
summary: "Aqemu, uno strumento open-source per la creazione di macchine virtuali."
---

Aqemu è l'interfaccia grafica che permette di interagire di Qemu, uno software open-source per la gestione di macchine virtuali. 

Al primo avvio all'utente viene presentata la procedura guidata di configurazione dell'ambiente. 
L'utente deve scegliere la cartella di lavoro in cui le macchine virtuali saranno salvate:

![Image](/static/coding/tools/AQemu-Config-Step1.png "Aqemu - Config - step 1")

L'utente viene poi guidato nella ricerca dello strumento Qemu, che effettivamente gestisce le macchine virtuali:

![Image](/static/coding/tools/AQemu-Config-Step2.png "Aqemu - Config - step 2")

Terminata la configurazione dell'ambiente (ed anche ai successivi avvii), il programma si presenta con un'interfaccia minimale che permette la creazione e l'eliminazione di macchine virtuali. Le preferenze sono raggiungibili da menù.

![Image](/static/coding/tools/AQemu-VM-ListEmpty.png "Aqemu - Welcome")

Il processo di creazione di una macchina virtuale è molto semplice, il primo passo permette la scelta la modalità di creazione tra tipica e personalizzata:
- la configurazione tipica permette solo poche scelte all'utente in modo tale da rendere il processo di creazione della macchina virtuale più semplice per l'utente;
- la configurazione personalizzata permette un maggior numero di scelte all'utente, quindi una maggiore configurazione, ma è necessario una maggiore competenza tecnica; 

![Image](/static/coding/tools/AQemu-NewVM-Step1.png "Aqemu - New Machine - step 1")

La scelta successiva riguarda la modalità da utilizzare per la creazione della macchina virtuale. Si può creare a partire da un modello del sistema operativo o da un modello di computer utilizzato:
- scegliendo il modello del sistema operativo l'utente deve indicare il kernel utilizzato dal sistema operativo, il che potrebbe mettere in difficoltà l'utente senza una formazione tecnica;
- scegliendo il modello di computer utilizzato l'utente deve indicare il tipo di computer che si vuole virtualizzare ed un range di anni di riferimento, cosa molto più semplice per l'utente non esperto.
 
![Image](/static/coding/tools/AQemu-NewVM-Step2.png "Aqemu - New Machine - step 2")

Passo successivo riguarda la scelta del software di hypervisor da utilizzare e i suggerimenti indicano di usare KVM (Kernel-based Virtual Machine) per macchine virtuali con architettura i386 e TCG per macchine virtuali che non hanno un'architettura i386.

![Image](/static/coding/tools/AQemu-NewVM-Step3.png "Aqemu - New Machine - step 3")

L'utente deve inserire il nome della macchina virtuale.

![Image](/static/coding/tools/AQemu-NewVM-Step4.png "Aqemu - New Machine - step 4")

L'utente deve inserire la dimensione del disco fisso

![Image](/static/coding/tools/AQemu-NewVM-Step5.png "Aqemu - New Machine - step 5")

L'utente deve scegliere se la macchina virtuale deve condividere la connessione con la macchina ospitante o se lasciare la macchina virtuale senza connessione.

![Image](/static/coding/tools/AQemu-NewVM-Step6.png "Aqemu - New Machine - step 6")

E quindi l'utente arriva al messaggio di conferma dell'avvenuta creazione della macchina virtuale.

![Image](/static/coding/tools/AQemu-NewVM-Step7.png "Aqemu - New Machine - step 7")
 
A questo punto l'utente visualizza tutte le informazioni sulla macchina virtuale, divise per schede. La prima scheda mostra le informazioni generali sulla macchina virtuale, ovvero informazioni sul sistema, sulle componenti audio, video e di rete, sui dispositivi di archiviazione e sulle cartelle condivise con il sistema ospitante:

![Image](/static/coding/tools/AQemu-VM-List1.png "Aqemu - VM - Info 1")

La seconda scheda permette di modificare le informazioni generali e le componenti hardware della macchina:

![Image](/static/coding/tools/AQemu-VM-List2.png "Aqemu - VM - Info 2")

La terza scheda è divisa in più sezioni.

La prima sezione della terza scheda permette di configurare i dispositivi di archiviazione, quali hard disk e CD/DVD.

![Image](/static/coding/tools/AQemu-VM-List3-1.png "Aqemu - VM - Info 3-1")

La seconda sezione della terza scheda permette di configurare le cartelle che saranno condivise con la macchina ospitante.

![Image](/static/coding/tools/AQemu-VM-List3-2.png "Aqemu - VM - Info 3-2")

La terza sezione della terza scheda permette di configurare le porte della macchina virtuale, in particolare le porte parallele, le porte seriali e le porte USB:

![Image](/static/coding/tools/AQemu-VM-List3-3.png "Aqemu - VM - Info 3-3")

La quarta sezione della terza scheda mostra opzioni avanzate per il test di kernel Linux e la quinta sezione della terza scheda mostra opzioni avanzate per il BIOS. Per maggiori informazioni su queste opzioni si rimanda al wiki.

La quarta scheda permette di scegliere se accedere alla macchina virtuale solo tramite tecnologie di remote desktop (ad esempio VNC). Per un uso locale questa opzione deve essere disabilitata, mentre può essere abilitata per accedervi da remoto. Scegliendo questa opzione la macchina virtuale sarà avviata in modalità headless (cioè viene avviata ma l'interfaccia grafica non viene mostrata all'utente, che può accedervi solo tramite desktop remoto):

![Image](/static/coding/tools/AQemu-VM-List4.png "Aqemu - VM - Info 4")

La quarta scheda permette di configurare le opzioni di connessione:

![Image](/static/coding/tools/AQemu-VM-List5.png "Aqemu - VM - Info 5")

La macchina virtuale è stata creata, quindi le componenti hardware sono presenti (in forma virtuale). E' necessario indicare il software, in particolare il Sistema Operativo da eseguire quando si avvia la macchina virtuale.


E' necessario configurare la macchina virtuale per avviare il Sistema Operativo. La configurazione del dispositivo contenente il sistema operativo avviene nella scheda "Media", alla prima sezione "Dispositivi".

In questa sezione è possibile aggiungere un nuovo lettore ottico dalla macchina ospitante (host), se il sistema operativo è stato masterizzato su CD-ROM.

![Image](/static/coding/tools/AQemu-VM-BootFromCD.png "Aqemu - VM - Boot from CD")

In questa sezione è possibile anche aggiungere un nuovo disco di archiviazione dalla macchina ospitante (host), se il sistema operativo è stato scaricato e salvato sul disco fisso.

![Image](/static/coding/tools/AQemu-VM-BootFromISO.png "Aqemu - VM - Boot from ISO")

Configurato correttamente il sistema operativo, è necessario controllare nella seconda scheda (la scheda di configurazione della Macchina Virtuale) che il dispositivo sia compreso nella lista di dispositivi di avvio (di Boot):

![Image](/static/coding/tools/AQemu-VM-Boot.png "Aqemu - VM - Boot")

Verificato che il dispositivo è nella lista di boot, è possibile avviare la macchina virtuale, il sistema operativo viene eseguito e quindi l'utente può interagirvi:

![Image](/static/coding/tools/AQemu-VM-Run.png "Aqemu - VM - Run")

Nel caso ci dovessero essere problemi di avvio, la macchina virtuale visualizza per breve tempo il messaggio di scelta del dispositivo che contiene il sistema operativo. Si deve premere il tasto ESC e poi scegliere il dispositivo dal quale avviare il sistema operativo.

![Image](/static/coding/tools/AQemu-VM-RunChooseBoot.png "Aqemu - VM - Choose Boot")

Alla chiusura della macchina virtuale viene chiesto se:
- spegnere la macchina, quindi il sistema operativo termina l'esecuzione.
- salvare lo stato della macchina virtuale, quindi il sistema operativo resta in esecuzione e, all'apertura della macchina virtuale, il sistema operativo riprendera l'esecuzione dal punto salvato.
