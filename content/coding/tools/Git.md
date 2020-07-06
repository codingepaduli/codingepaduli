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

I concetti principali sui quali si basa git sono i repository ed i commit;

Il **repository** è un insieme di file che si trovano ad una specifica versione.

L'utente nel corso del tempo effettua delle modifiche ai file, quando completa il lavoro effettua un commit.

Il **commit** è un'operazione che crea una nuova versione del repository e registra tutte le modifiche dei file.

Le operazioni di commit possono essere effettuate anche da utenti diversi, ad esempio un primo utente effettua un commit che porta il repository alla versione 1, un secondo utente effettua un commit che porta il repository alla versione 2, un terzo utente effettua un commit che porta il repository alla versione 3 e cosi via. Ad ogni modifica dei file e successivo commit si crea una nuova versione del repository.

La **clonazione** serve ad effettuare la creazione di un repository locale sincronizzato con il repository remoto. 

Generalmente gli utenti effettuano i commit sul repository locale, in modo da non aver bisogno di un server o di un collegamento ad internet. Quando vogliono effettuare una sincronizzazione, inviano i commit dal repository locale al repository remoto, e dal repository remoto prelevano il lavoro svolto dagli altri utenti, sempre sotto forma di commit.

Per la creazione di un repository. ci si può registrare su uno dei vari servizi online. Tra i più noti ci sono GitHub, GitLab e BitBucket.

Una volta registrati e creato il proprio repository, si può procedere alla configurazione di git ed alla clonazione del repository.

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

Si nota che il file ``file1.txt`` risulta pronto per il commit, mentre i file ``file2.txt`` e ``file3.txt`` risultano tra i file non tracciati (untracked).

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

Per committare il primo file ``file.txt``, questo deve essere innanzitutto aggiunto all'area di lavoro e poi si può indicare che si vuole effettuare un commit dell'area di lavoro (la staging area).

```
git add file1.txt
git commit -m "Primo commit"
```

### Sincronizzazione

Effettuato il commit, ci si trova nella situazione in cui il repository locale si trova in una versione avanzata rispetto al repository remoto (che è stato clonato).

Per inviare il lavoro anche al repository remoto, si utilizza il comando:
```
git push origin master
```

L'operazione di push invia tutti i commit (che sono stati eseguiti sul repository locale) al repository remoto.

Per ricevere nel repository locale tutti i commit dal repository remoto,  si utilizza il comando:
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
