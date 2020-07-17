---
type: "tools"
title: "Introduzione a Git"
description: "Git - Un sistema per il controllo di versione distribuito"
date: 2020-07-01
publishdate: 2020-07-01
lastmod: 2020-07-01
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: true
toc: false
summary: "Git - Un sistema per il controllo di versione distribuito"
---

# Introduzione a Git

Git è un sistema per il controllo di versione distribuito, in cui le versioni dei file sono mantenute nel repository locale dell'utente, il quale può lavorare senza il bisogno di una connessione ad internet o di un server centrale.

Git è stato inizialmente sviluppato da Linux Torvalds per gestire lo sviluppo del kernel Linux ed oggi è utilizzato dalle aziende informatiche di tutto il mondo. Costituisce anche un requisito basilare delle conoscenze di uno sviluppatore informatico.

E' nato come strumento a linea di comando, poi è stato integrato negli IDE (software di sviluppo) ed è stata creata un'interfaccia grafica ed una web.

Oggi, i progetti pubblicamente esposti dagli sviluppatore sui vari servizi di controllo di versione rappresentano una sorta di "Instagram" utilizzato però non per condividere foto e video di se, ma per condividere i propri lavori quali libri, animazioni 2D e 3D, software e così via.

## Controllo di versione, analogia e concetti principali

### Analogia

Per rendere l'idea di cosa significhi "controllo di versione" (dall'inglese Version Control System), si può immaginare un gruppo di studenti che devono svolgere un progetto da consegnare per un esame universitario. Il progetto può essere la scrittura di un libro, la realizzazione di disegni tecnici, lo sviluppo di un sito web e tanto altro.

Nell'analogia presentata, ogni studente ha una propria area di lavoro in cui crea le varie bozze ed effettua le varie prove, poi quando un proprio lavoro è completo lo si sposta in un quaderno ad anelli. Il quaderno ad anelli contiene solo ed esclusivamente i lavori completati, come la scrittura di un capitolo del libro, la realizzazione di una pagina del sito web oppure il disegno tecnico relativo l'arredamento di una stanza di un palazzo.

Anche nello studio del professore universitario si trova un quaderno ad anelli. I singoli studenti, periodicamente, si recano nello studio ed ognuno effettua una copia dei propri lavori e la mette nel quaderno ad anelli del professore. Allo stesso modo, effettua una copia dei lavori svolti dagli altri studenti, prendendoli dal quaderno ad anelli del professore, e la porta via per metterla nel proprio quaderno ad anelli personale.

E' importante tenere presente che ogni quaderno ad anelli ha una pagina di registro, in cui vengono annotate le operazioni effettuate, l'autore e la data. Quando uno studente si reca nello studio per consegnare il materiale, annota nome e data nella pagina di registro del quaderno ad anelli del professore ed aggiunge l'elenco di operazioni, indicando che ha inserito un nuovo capitolo, che ha cancellato un capitolo precedente, scrivendo una "X" a matita sulle pagine del capitolo cancellato (facendo si che siano ancora leggibili), ed infine che ha corretto un capitolo, ad esempio il primo.

Quando un secondo studente si reca nello studio per consegnare il materiale, vede nella pagina di registro che è presente la nota (con data e autore) relativa ad un nuovo capitolo aggiunto ed ad un secondo capitolo modificato, quindi si fa una copia di questi due capitoli e li mette nel proprio quaderno ad anelli, poi vede che un capitolo è stato cancellato e mette nel proprio quaderno ad anelli personale una "X" a matita sulle pagine del capitolo interessato. A questo punto, consegna i propri lavori al professore, facendone una copia da allegare nel quaderno ad anelli del professore ed avendo cura di segnare nella pagina di registro il proprio nome, la data e le operazioni di inserimento, modifica e cancellazione effettuate.

Un terzo studente che si rechi nello studio effettua le stesse operazioni degli altri due studenti e cosi via fino al completamento del lavoro.

In queste operazioni può capitare che il professore e gli studenti modifichino uno stesso capitolo o uno stesso disegno. In questa situazione, c'è bisogno che entrambe le modifiche siano fuse in una terza del capitolo o del disegno che viene poi inclusa nel quaderno ad anelli del professore. Anche questa operazione di fusione viene indicata nel registro. 

Si fa notare inoltre che nessuna modifica o cancellazione viene cestinata, ma tutte vengono conservate, in questo modo se il professore preferisce la prima versione del capitolo, quindi senza le modifiche apportate successivamente, la può recuperare e la sostituisce nel quaderno ad anelli presente nello studio, indicando sempre nel registro questa operazione.

Nel caso il quaderno ad anelli nello studio venga smarrito, il lavoro può continuare a partire da una copia aggiornata del quaderno ad anelli di uno qualsiasi degli studenti.

Uno studente che decide di scrivere un "prequel" o una storia "parallela", può benissimo lavorare anche a questa storia sul proprio quaderno ad anelli e non consegnare il lavoro nello studio del professore, bensi consegnarlo alle varie aziende che si occupano di pubblicazione.

Se ad un certo punto, un nuovo studente si aggiunge al gruppo di lavoro, questo studente deve comprare un proprio quaderno ad anelli e poi effettuare una copia del quaderno ad anelli del professore per poter iniziare a lavorare. Questa operazione è detta clonazione.

### Concetti principali

I concetti principali sui quali si basa git sono:

- L'**area di lavoro**, detta **staging area** o **caching area**: E' l'area nella quale l'utente lavora. Nell'analogia precedente, è rappresentata dalla scrivania sulla quale il singolo studente lavora alle varie bozze.

- L'**area di scorta**, detta **stashing area**: E' l'area nella quale vengono accantonati temporaneamente i lavori presenti nell'area di lavoro. Nell'analogia precedente, è rappresentata dai cassetti della scrivania. Quando il singolo studente deve mettere da parte delle bozze di un lavoro, le ripone in un cassetto, per poi gestire il nuovo lavoro. Quando intende ritornare al precedente lavoro, recupera le bozze dal cassetto. Ci possono essere più cassetti per poter accantonare temporaneamente più lavori.

- Il **commit**: E' l'operazione effettuata dall'utente che permette di memorizzare nel sistema di controllo di versione le modifiche effettuate dall'utente. Ad ogni commit viene salvata una nuova versione del repository. Nell'analogia precedente, è rappresentato dal completamento di un lavoro che viene spostato dall'area di lavoro al proprio quaderno ad anelli. 

- Le **versioni**: le operazioni di commit generano una nuova versione del lavoro svolto. Il lavoro precedente non viene cancellato, ma salvato, in modo da poter sempre tornare ad una versione precedente.

- Il **repository locale**: un insieme di file che si trovano ad una specifica versione. E' ospitato sul proprio computer e non è necessario collegarsi alla rete internet per lavorare. Nell'analogia precedente, ogni quaderno ad anelli di uno studente rappresenta un repository locale.

- Il **repository remoto**: un insieme di file che si trovano ad una specifica versione. E' ospitato sul server e quindi c'è bisogno del collegamento ad internet per ricevere il lavoro degli altri studenti e per inviare il proprio lavoro. Nell'analogia precedente, è rappresentato dal quaderno ad anelli presente nello studio del professore.

- La **sincronizzazione**: l'operazione effettuata dall'utente che permette di inviare i lavori dal proprio repository locale al remoto remoto (in git è l'operazione di **push**) e, viceversa, di ricevere i lavori dal repository remoto a quello locale (in git è l'operazione di **pull**). Nell'analogia precedente, è rappresentato dall'azione di copia del lavoro presente nel proprio quaderno ad anelli al quaderno ad anelli dello studio del professore e, viceversa, dall'azione di copia del lavoro presente nel quaderno ad anelli dello studio nel proprio quaderno ad anelli.

- La **fusione**: l'operazione effettuata dall'utente che permette di unire due lavori. Nell'analogia precedente, è rappresentata dall'unione delle modifiche apportate da studenti diversi ad uno stesso capitolo o uno stesso disegno.

- La **clonazione**: l'operazione di creazione di un repository locale a partire da un repository remoto. Nell'analogia precedente, è rappresentata dal nuovo studente che viene aggiunto al gruppo, e che quindi compra un nuovo quaderno ad anelli nel quale poi clona il contenuto del quaderno ad anelli del professore.

## Registrazione 

Per la creazione di un repository remoto. ci si può registrare su uno dei vari servizi online. Tra i più noti ci sono GitHub, GitLab e BitBucket.

Una volta registrati e creato il proprio repository, si può procedere alla configurazione di git, alla clonazione del repository e quindi alla condivisione con altri utenti del proprio lavoro presente sul repository.

## Prima configurazione

Git ha 3 livelli di configurazione:
- configurazione di sistema, su linux si trova in ``/etc/gitconfig``, su Windows si trova in ``\Git\mingw64\etc\gitconfig``;
- configurazione globale (o utente), si trova nella cartella Home nel file ``.gitconfig``);
- configurazione locale al repository, si trova nella cartella ``.git``;

Per verificare le configurazioni presenti ad ogni livello, si usano i seguenti comandi:
```
git config --system --list
git config --global --list
git config --local --list
```

E' buona norma disabilitare la configurazione di sistema, attraverso il comando:
```
git config --global user.useConfigOnly true
```

Per configurare globalmente l'identità da utilizzare nei propri repository, si utilizzano i seguenti comandi:
```
git config --global user.name "User"
git config --global user.email "user@user.com"
```

Altra operazione generalmente consigliata è l'impostazione del carattere di fine riga, dato che su Linux e Mac il carattere di fine riga (INVIO) è LF (linefeed) mentre su Windows il carattere di fine riga (INVIO) è CR + LF (carriage return + linefeed). 
Questa differenza di caratteri porta ad avere confusione quando un file è modificato sia da utenti Mac/Linux sia da utenti Windows. Molti editors su Windows sostituiscono i caratteri di fine riga LF con i caratteri CR + LF, oppure lasciano gli LF ma inseriscono CR + LF quando si preme invio.

Una macchina windows deve quindi essere configurata per la conversione automatica da LF a CR + LF e viceversa:
```
git config --global core.autocrlf true
```

Una macchina Linux invece deve essere abilitata per la correzione automatica di tutti i file che arrivano dal repository trasformando i caratteri CR + LF con il carattere LF:
```
git config --global core.autocrlf input
```

Nella configurazione è utile anche impostare l'editor di riferimento:
```
git config --global core.editor "atom --wait"
```

## Comandi principali

### Clonazione

I servizi offerti online permettono la creazione di un repository remoto attraverso un'interfaccia grafica. Una volta creato il repository remoto, bisogna prendere nota dell'indirizzo web dello stesso per poi procedere alla clonazione, attraverso il seguente comando:

```git
git clone https://github.com/codingepaduli/codingepaduli.git
```

Si può verificare che il repository locale ha un riferimento al repository remoto, accedendo alla cartella creata ed utilizzando, al suo interno, il comando:
```
git remote -v
```

### Staging area e commit

Per creare una nuova versione del repository locale e poi sincronizzarla con il repository remoto, si può partire dalla creazione di tre file, ``file1.txt``, ``file2.txt`` e ``file3.txt``, in modo da seguire le varie operazioni.

Creati i  tre file, si può aggiungere il primo file all'area di lavoro, chiamata **staging area** o **caching area**, utilizzando il comando:
```
git add file1.txt
```

Per visualizzare ora lo stato dei file, si utilizza il comando:
```
git status
```

L'output è il seguente:
```
Sul branch master
Your branch is up to date with 'origin/master'.

Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

  new file:   file1.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)

  file2.txt
  file3.txt
```

Si nota che il file ``file1.txt`` risulta pronto per il commit ("to be committed"), mentre i file ``file2.txt`` e ``file3.txt`` risultano tra i file non tracciati ("untracked").

Effettuando ulteriori modifiche al file ``file1.txt``, questo risulta modificato, come si nota visualizzando lo stato dei file attraverso il comando:
```
git status
```

L'output è il seguente:
```
Sul branch master
Your branch is up to date with 'origin/master'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git checkout -- <file>..." to discard changes in working directory)

	modified:   file1.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)

  file2.txt
  file3.txt
```

I file possono avere 4 stati:
- untracked: non tracciati da git;
- modified: modificati rispetto all'ultimo commit;
- staged (to be committed): pronti ad essere inclusi in un commit;
- unmodified: non modificati rispetto all'ultimo commit;

Per committare il primo file ``file.txt``, questo deve essere innanzitutto aggiunto all'area di lavoro, poi si può indicare che si vuole effettuare un commit dell'area di lavoro (la staging area).

```
git add file1.txt
git commit -m "Primo commit"
```

A questo punto il commit è stato completato ed è stata salvata la nuova versione del repository locale. Per visualizzare la lista di commit e relative versioni del repository locale, si utilizza il comando:
```
git log --pretty=format:"%h %s" --graph
```

Questo comando permetta anche di avere una vista grafica delle varie versioni del repository locale.

### Sincronizzazione

Effettuati i vari commit sul repository locale, ci si trova nella situazione in cui il repository locale si trova in una versione più avanzata rispetto al repository remoto (che è stato clonato).

Per sincronizzare il lavoro (tutti i commit sul repository locale) con il repository remoto, si utilizza il comando:
```
git push origin master
```

L'operazione di push invia tutti i commit (che sono stati eseguiti sul repository locale) al repository remoto.

Per effettuare l'operazione inversa, cioè per ricevere nel repository locale tutti i commit dal repository remoto (eseguiti dallo stesso utente attraverso computer differenti o eseguiti da altri utenti),  si utilizza il comando:
```
git pull origin master
```

### Pulizia della staging area

Può capitare di aggiungere per errore un file alla staging area, per cui lo si vuole togliere, senza però cancellarlo e perdere il contenuto, ma lasciandolo intatto nella cartella in cui si trova. Il comando da utilizzare è:
```
git rm --cached file
```

Se invece si è modificato un file in staging area e si vuole cancellare le ultime modifiche effettuate, lasciando il file con le modifiche precedenti in staging area, si utilizza il comando:
```
git reset HEAD file
```

Se si vuole ripristinare lo stato dell'ultimo commit, allora bisogna cancellare la staging area, e quindi si utilizza il comando:
```
git checkout .
```

Se si vuole cancellare tutti i file e cartelle che non sono tracciati, si utilizza il comando:
```
git clean -fd
```

Per cancellare la cache, in caso di "malfunzionamenti", si usa:
```
git gc --auto
```

### Stashing area (conservazione temporanea)

Quando si stanno applicando modifiche ai file e si deve interrompere l'attività per dare priorità ad altri lavori, si possono spostare i file modificati in un'area di conservazione temporanea: la **stashing area**.

Per spostare tutti i file modificati e i file non tracciati in un'area temporanea si utilizza il comando:
```
git stash
```

Per visualizzare la lista di aree temporanee disponibili, si utilizza il comando:
```
git stash list
```

Questo comando elenca tutte le aree temporanee (che possono essere più di una) identificandole con un numero. Questo numero è utilizzato per identificare l'area temporanea.

Per riportare nella staging area i file precedentemente spostati in stashing area, si utilizza il comando:
```
git stash apply stash@{0}
```

dove il numero zero è l'indice dell'area temporanea dalla quale prendere i file. 

Per eliminare un'area temporanea, si utilizza il comando:
```
git stash drop stash@{0}
```
dove il numero zero è l'indice dell'area temporanea da cancellare. 

## Branches

Il repository principale ha un ramo di sviluppo principale chiamato **master**, ma sul repository possono essere creati anche altri rami di sviluppo chiamati **branches**, che costituiscono la modalità comune di lavoro con git.
 
Tipicamente sul repository vengono creati diversi branches (rami di sviluppo) per le diverse funzionalità da sviluppare, e su ogni singolo branch (ramo) viene sviluppata una singola funzionalità da parte di uno o più sviluppatori del team.

Gli sviluppatori che lavorano su un singolo branch creano quindi la prima versione della funzionalità da sviluppare effettuando il primo commit, poi gli sviluppi proseguono e viene creata la seconda versione con un secondo commit, poi la terza versione a cui corrisponde un terzo commit, e cosi via. 

Quando la funzionalità viene completata, questo singolo ramo di sviluppo può essere fuso con il ramo di sviluppo principale (il master). 

Sul ramo principale vengono quindi fusi tutti i diversi rami di sviluppo e quindi di volta in volta le varie funzionalità vengono aggiunte al ramo di sviluppo principale **master**.

Volendo fare un'analogia, si può immaginare la scrittura di una trilogia di libri, e quindi ogni singolo libro viene scritto in un ramo separato. Il ramo principale alla fine conterrà tutti e tre i volumi.

Volendo fare una seconda analogia, si può immaginare che in uno dei libri della trilogia i personaggi principali si separino, vivendo storie indipendenti, e quindi nel ramo di sviluppo del singolo libro si creano diversi rami in cui si scrivono le storie dei diversi personaggi. Una volta che la storia di un personaggio è completa, il ramo di sviluppo del singolo personaggio viene fuso con il ramo di sviluppo del libro della trilogia.

### Lavorare con i vari branches

Per creare un nuovo branch con nome **development** si utilizza il comando: 
```
git branch development
```

Per visualizzare l'elenco di branches con l'ultimo commit presente si utilizza il comando
```
git branch -vv
```

Per spostarsi sul ramo "development" appena creato, si utilizza il comando:
```
git checkout development
```

Per visualizzare la lista di commit nei vari branches del repository, si è gia visto di utilizzare il comando di log con grafico:
```
git log --pretty=format:"%h %s" --graph
``` 

Quando si crea un branch in locale, si deve ricordare che il repository remoto non ne ha una copia, e quindi un'azione di sincronizzazione genera errore. Per indicare di creare un branch anche in remoto ed al contempo sincronizzare il branch, si utilizza il comando:
```
git push --set-upstream origin development
```

Quando si vuole effettuare la fusione del ramo "development" con il ramo "master", si può utilizzare lo strumento grafico messo a disposizione dai servizi online.

I passi consistono nel creare una "New pull request", confrontando "master" -> "development", e quindi "crea pull request" e conferma.

Creata la pull request, si deve effettuare l'operazione di "merge e pull" e confermare.
