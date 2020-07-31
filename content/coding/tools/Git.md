---
type: "tools"
title: "Introduzione a Git"
description: "Git - Un sistema per il controllo di versione distribuito"
date: 2020-07-01
publishdate: 2020-07-01
lastmod: 2020-07-01
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: false
toc: false
summary: "Git - Un sistema per il controllo di versione distribuito"
---

# Introduzione a Git ed ai sistemi per il controllo di versione

Git è un sistema per il controllo di versione distribuito. Inizialmente sviluppato da Linus Torvalds per gestire lo sviluppo del kernel Linux, oggi è utilizzato dalle aziende informatiche di tutto il mondo. Costituisce anche un requisito basilare delle conoscenze di uno sviluppatore informatico.

Oggi, i progetti pubblicamente esposti dagli sviluppatore sui vari servizi di controllo di versione rappresentano una sorta di "Instagram", utilizzato per condividere non foto e video, ma i propri lavori, quali libri, animazioni 2D e 3D, software e così via.

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

E' utile notare che, in questo scenario, è possibile utilizzare molteplici modalità di lavoro, per adattarsi alle diverse esigenze di sviluppo del progetto.

Si può utilizzare una modalità di lavoro centralizzata, in cui tutti i componenti riportano il lavoro sul quaderno ad anelli del professore.

Si può utilizzare una modalità di lavoro con team leader, che si occupa di coordinare il lavoro e quindi riportare il lavoro degli studenti sul quaderno ad anelli del professore. 

Si può utilizzare una modalità di lavoro detta "dittatore - tenente", in cui il lavoro è suddiviso in differenti sotto-progetti, ognuno dei quali è gestito da un team leader, detto "tenente", che fa riferimento ad un proprio quaderno ad anelli (sempre appartenente allo studio del professore). Il professore coordina il lavoro dei vari "tenenti" e si occupa di recuperare il lavoro dai quaderni ad anelli dei vari "tenenti" per comporre il progetto completo da tenere nel quaderno ad anelli presente nello studio. Questo metodo di lavoro, tra l'altro, è quello utilizzato per lo sviluppo del kernel Linux, in cui Linus Torvalds è il dittatore.

## Concetti principali di git

I concetti principali sui quali si basa git sono:

- L'**area di lavoro**, detta **staging area** o **caching area**: E' l'area nella quale l'utente lavora. Nell'analogia precedente, è rappresentata dalla scrivania sulla quale il singolo studente lavora alle varie bozze.

- L'**area di scorta**, detta **stashing area**: E' l'area nella quale vengono accantonati temporaneamente i lavori presenti nell'area di lavoro. Nell'analogia precedente, è rappresentata dai cassetti della scrivania. Quando il singolo studente deve mettere da parte delle bozze di un lavoro, le ripone in un cassetto, per poi gestire il nuovo lavoro. Quando intende ritornare al precedente lavoro, recupera le bozze dal cassetto. Ci possono essere più cassetti per poter accantonare temporaneamente più lavori.

- Il **commit**: E' l'operazione effettuata dall'utente che permette di memorizzare nel sistema di controllo di versione le modifiche effettuate dall'utente. Ad ogni commit viene salvata una nuova versione del repository. Nell'analogia precedente, è rappresentato dal completamento di un lavoro che viene spostato dall'area di lavoro (la scrivania) al proprio quaderno ad anelli. 

- Le **versioni**: le operazioni di commit generano una nuova versione del lavoro svolto. Il lavoro precedente non viene cancellato, ma salvato, in modo da poter sempre tornare ad una versione precedente. L'ultima versione sul ramo di sviluppo sul quale lavora l'utente è detta **HEAD**.

- Il **repository locale**: l'insieme di file versionati e tracciati. Rappresenta l'insieme di file su cui git lavora in locale. E' ospitato sul proprio computer e non è necessario collegarsi alla rete internet per lavorare. Nell'analogia precedente, ogni quaderno ad anelli di uno studente rappresenta un repository locale.

- Il **repository remoto**: l'insieme di file versionati e tracciati. Rappresenta l'insieme di file su cui git lavora in remoto. E' ospitato sul server e quindi c'è bisogno del collegamento ad internet per ricevere il lavoro degli altri studenti e per inviare il proprio lavoro. Nell'analogia precedente, è rappresentato dal quaderno ad anelli presente nello studio del professore.

- La **sincronizzazione**: l'operazione effettuata dall'utente che permette di inviare i lavori dal proprio repository locale al remoto remoto (in git è l'operazione di **push**) e, viceversa, di ricevere i lavori dal repository remoto a quello locale (in git è l'operazione di **pull**). Nell'analogia precedente, è rappresentato dall'azione di copia del lavoro presente nel proprio quaderno ad anelli al quaderno ad anelli dello studio del professore e, viceversa, dall'azione di copia del lavoro presente nel quaderno ad anelli dello studio nel proprio quaderno ad anelli.

- I **rami di sviluppo**, detti **branches**: E' possibile seguire più rami di sviluppo dell'opera. Il ramo principale su git è detto **master**, nei sistemi di controllo versione è chiamato **trunk**. Gli altri rami di sviluppo sono detti **branches**. L'operazione che permette di unire due rami di sviluppo è la fusione, detta **merge**. Si rimanda al capitolo sui branches per una chiara spiegazione dei concetti relativi allo sviluppo su più rami.

- La **clonazione**: l'operazione di creazione di un repository locale a partire da un repository remoto. Nell'analogia precedente, è rappresentata dal nuovo studente che viene aggiunto al gruppo, e che quindi compra un nuovo quaderno ad anelli nel quale poi clona il contenuto del quaderno ad anelli del professore.

## Gestione repository

I servizi online permettono la gestione di un repository git tramite interfaccia web, che rende semplice l'interazione con l'utente. 

Per la creazione di un repository remoto. ci si può registrare su uno dei vari servizi online. Tra i più noti ci sono GitHub, GitLab e BitBucket.

Una volta registrati e creato il proprio repository, si può procedere alla configurazione di git, alla clonazione del repository e quindi alla condivisione con altri utenti del proprio lavoro presente sul repository.

### Creazione repository su GitHub

GitHub permette la creazione di un repository remoto attraverso un'interfaccia grafica, in cui inserire il nome, la descrizione e la visibilità.

![Image](/static/coding/tools/GitHub-Repository-New.png "GitHub - New Repository")

Creato il repository, viene fornito un URL per l'accesso e la clonazione dello stesso, come in figura:

![Image](/static/coding/tools/GitHub-Repository-URL.png "GitHub - Repository URL")

L'indirizzo completo del repository su GitHub, non completamente riportato nell'immagine, è il seguente:

https://github.com/codingepaduli/gitmergetutorial.git

### Creazione repository su GitLab

GitLab permette la creazione di un repository remoto attraverso un'interfaccia grafica, in cui inserire il nome, la descrizione e la visibilità.

![Image](/static/coding/tools/GitLab-Repository-New.png "GitLab - New Repository")

Creato il repository, viene fornito un URL per l'accesso e la clonazione dello stesso, come in figura:

![Image](/static/coding/tools/GitLab-Repository-URL.png "GitLab - Repository URL")

L'indirizzo completo del repository su GitLab, non completamente riportato nell'immagine, è il seguente:

https://gitlab.com/codingepaduli/gitmergetutorial.git

### Clonazione repository 

Una volta creato il repository remoto, bisogna prendere nota dell'indirizzo web dello stesso per poi procedere alla clonazione, attraverso il seguente comando:

```
git clone https://github.com/codingepaduli/codingepaduli.git
```

Si può verificare che il repository locale ha un riferimento al repository remoto, accedendo alla cartella creata ed utilizzando, al suo interno, il comando:
```
git remote -v
```

### Prima configurazione del repository

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

E' buona norma evitare di usare la configurazione di sistema, disabilitandola attraverso il comando:
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
 tenendo presente che per ora si sta facendo riferimento al  semplicemente
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

E' utile sottolineare che **HEAD** è solo un riferimento al commit (e quindi alla versione) su cui ci si trova, ovviamente riferito al ramo di sviluppo su cui si lavora. 

Quando si scaricano le ultime versioni da repository remoto nel repository locale, il riferimento **HEAD** viene aggiornato all'ultimo commit scaricato da remoto, sempre per il ramo di sviluppo su cui si sta lavorando. Quando invece si effettua un commit in locale, il riferimento **HEAD** viene aggiornato a questo commit.

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

### Lavorare con più origini remote

Quando si effettua la clonazione di un repository, git crea un riferimento a questo repository remoto, chiamato **origin**:

E' però possibile utilizzate più repository remoti, semplicemente aggiungendo un riferimento remoto, di seguito chiamato **gitlab**, al repository locale:
```
git remote add gitlab https://gitlab.com/codingepaduli/codingepaduli.git
```

Per visualizzare i repository remoti, si può utilizzare il comando:
```
git remote -v
```

L'output mostrato è il seguente:
```
gitlab	https://gitlab.com/codingepaduli/codingepaduli.git (fetch)
gitlab	https://gitlab.com/codingepaduli/codingepaduli.git (push)
origin	https://github.com/codingepaduli/codingepaduli.git (fetch)
origin	https://github.com/codingepaduli/codingepaduli.git (push)
```

Come si nota, i riferimenti remoti per le operazioni di invio e ricezione dati ("push" e "fetch") possono essere differenti.

Per sincronizzare il ramo di sviluppo principale **master** del repository remoto con il repository locale, si effettuano le classiche operazioni di **push** e **pull**, facendo però attenzione ad indicare l'origine **gitlab** appena creata.
```
git push gitlab master
git pull gitlab master
```

Si nota che in questo caso viene sincronizzato il ramo di sviluppo principale **master**.

## Branches

### Modalità di lavoro con i Branches
Il repository principale ha un ramo di sviluppo principale chiamato **master**, ma sul repository possono essere creati anche altri rami di sviluppo chiamati **branches**, che costituiscono la modalità comune di lavoro con git.
 
Tipicamente sul repository vengono creati diversi branches (rami di sviluppo) per le diverse funzionalità da sviluppare, e su ogni singolo branch (ramo) viene sviluppata una singola funzionalità da parte di uno o più sviluppatori del team.

Gli sviluppatori che lavorano su un singolo branch creano quindi la prima versione della funzionalità da sviluppare effettuando il primo commit, poi gli sviluppi proseguono e viene creata la seconda versione con un secondo commit, poi la terza versione a cui corrisponde un terzo commit, e cosi via. 

Quando la funzionalità viene completata, questo singolo ramo di sviluppo può essere fuso con il ramo di sviluppo principale (il master). 

Sul ramo principale vengono quindi fusi tutti i diversi rami di sviluppo e quindi di volta in volta le varie funzionalità vengono aggiunte al ramo di sviluppo principale **master**.

Volendo fare un'analogia, si può immaginare la scrittura di una trilogia di libri, e quindi ogni singolo libro viene scritto in un ramo separato. Il ramo principale alla fine conterrà tutti e tre i volumi.

Volendo fare una seconda analogia, si può immaginare che in uno dei libri della trilogia i personaggi principali si separino, vivendo storie indipendenti, e quindi nel ramo di sviluppo del singolo libro si creano diversi rami in cui si scrivono le storie dei diversi personaggi. Una volta che la storia di un personaggio è completa, il ramo di sviluppo del singolo personaggio viene fuso con il ramo di sviluppo del libro della trilogia.

### Creazione e gestione dei branches

Per creare un nuovo branch con nome **git-merge** si utilizza il comando: 
```
git branch git-merge
```

Per visualizzare l'elenco di branches con l'ultimo commit presente si utilizza il comando
```
git branch -vv
```

Per spostarsi sul ramo "git-merge" appena creato, si utilizza il comando:
```
git checkout git-merge
```
Git aggiunge i file alla staging area ed effettua il commit sul branch correntemente selezionato, i comandi di aggiunta e commit sono quelli già visti in precedenza, che per comodità si riportano nuovamente di seguito:
```
git add file.txt
git commit -m "aggiunto file.txt"
```

Per visualizzare la lista di commit nei vari branches del repository, si è gia visto di utilizzare il comando di log con grafico:
```
git log --pretty=format:"%h %s" --graph
```

### Sincronizzazione dei branches tra locale e remoto

Quando si crea un branch in locale, si deve ricordare che il repository remoto non ne possiede una copia, e quindi un'azione di sincronizzazione genera errore. Per indicare di creare un branch anche in remoto ed al contempo sincronizzare il branch, si utilizza il comando:
```
git push --set-upstream origin git-merge
```

In remoto è possibile che siano stati creati o cancellati branch, quindi è necessario sincronizzare repository locale e remoto per poter avere disponibili tutti i branch.

Per poter scaricare tutti i branch, si utilizza il comando:
```
git fetch --all
```

Per poter pulire i branch locali, cancellando quelli che anche in remoto sono stati rimossi, si utilizza il comando:
```
git fetch --prune
```

### Merge dei rami in modalità a linea di comando

Quando si vuole effettuare la fusione del ramo "git-merge" con il ramo "master", da linea di comando bisogna spostarsi sul ramo di sviluppo principale **master**.
```
git checkout master
```

Effettuato ciò, si può effettuare la fusione del ramo "git-merge", eseguendo il comando:
```
git merge git-merge
```

L'output indica che l'operazione è stata eseguita:
```
Merge made by the 'recursive' strategy.
 content/coding/tools/Git.md                          |  84 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----
 coding/tools/Git.md | Bin 39000 -> 39569 bytes
 2 files changed, 80 insertions(+), 4 deletions(-)
```

E' possibile verificare che i 2 branch sono stati fusi in un'unico branch, attraverso il comando:
```
git log --pretty=format:"%h %s" --graph
```

L'output indica in forma grafica che i rami di sviluppo sono stati fusi e che effettivamente confluiscono in un'unico ramo:
```
*   b21a312 Merge pull request #1 
|\  
| * ae55ada Updated posts about tools
|/  
```

### Merge dei rami in modalità grafica

Quando si vuole effettuare la fusione del ramo "git-merge" con il ramo "master", si può utilizzare lo strumento grafico messo a disposizione dai servizi online.

I passi consistono nel creare una "New pull request", cliccando sul relativo pulsante:

![Image](/static/coding/tools/GitHub-NewPullRequest-step1.png "GitHub - New Pull Request - step 1")

Il servizio online mostra una coppia di branch da selezionare per la fusione:

![Image](/static/coding/tools/GitHub-NewPullRequest-step2.png "GitHub - New Pull Request - step 2")


L'utente deve selezionare come base il ramo che deve contenere la modifica, in questo caso il ramo principale (master), e, come ramo da confrontare, il ramo "git-merge" del quale effettuare la fusione. Appena viene selezionato, comparirà la seguente finestra:

![Image](/static/coding/tools/GitHub-NewPullRequest-step3.png "GitHub - New Pull Request - step 3")

La finestra indica, attraverso la scritta "Able to merge", che è possibile effettuare la fusione dei due rami in maniera automatica. A questo punto bisogna quindi solo confermare la creazione della pull request, cliccando sull'apposito tasto.

L'utente può opzionalmente aggiungere un commento prima di completare l'operazione:

![Image](/static/coding/tools/GitHub-NewPullRequest-step4.png "GitHub - New Pull Request - step 4")

Ad operazione completata, nella sezione "Pull request" si può verificare che la nuova pull request è stata creata.

![Image](/static/coding/tools/GitHub-MergePullRequest-step1.png "GitHub - Merge Pull Request - step 1")

Creata la pull request, si deve effettuare l'operazione di "merge della pull request". Per far ciò, l'utente deve selezionare la pull request nell'elenco precedente e quindi può visualizzare il dettaglio della pull request creata. Tra le altre cose, è descritto che il branch non ha conflitti e quindi l'operazione di fusione può essere effettuata automaticamente confermando l'operazione di "merge della pull request"..

![Image](/static/coding/tools/GitHub-MergePullRequest-step2.png "GitHub - Merge Pull Request - step 2")

All'utente è richiesto l'inserimento di un commento opzionale e di completare l'operazione:

![Image](/static/coding/tools/GitHub-MergePullRequest-step3.png "GitHub - Merge Pull Request - step 3")

Completata l'operazione, la pull request risulta correttamente fusa nel ramo di sviluppo indicato.

![Image](/static/coding/tools/GitHub-MergePullRequest-step4.png "GitHub - Merge Pull Request - step 4")

## Contribuire ad altri progetti

Git permette di contribuire ai progetti esterni (di altri sviluppatori, anche sconosciuti) inviando sui loro repository delle pull request contenenti le proprie modifiche.

Per questioni di sicurezza, però, non è possibile inviare lavoro su un repository che non è il proprio. Dato che si vuole apportare una modifica ad un repository di cui non si possiede la titolarità, è necessaria un'operazione preliminare: la **fork**. Con questa operazione, si effettua una copia del repository dello sviluppatore e di questa copia si è titolari.

Per contribuire al repository dell'altro sviluppatore si effettuata la fork e la clonazione del repository, sul quale si apporteranno le modifiche, e quindi si crea una pull request tra il proprio repository ed il repository dell'altro sviluppatore.

L'altro sviluppatore può quindi accettare (ed effettuare l'operazione di merge) della pull request effettuata oppure può scegliere di rifiutare di includere le modifiche inviate.

## Approfondimenti

L'introduzione a git non parla delle molteplici funzionalità avanzate che possono essere però approfondite nelle varie guide e libri, tra i quali si segnala:

La serie di articoli su Mokabyte:
1. [http://www.mokabyte.it/2016/09/git-1/](http://www.mokabyte.it/2016/09/git-1/);
2. [http://www.mokabyte.it/2016/10/git-2/](http://www.mokabyte.it/2016/10/git-2/);
3. [http://www.mokabyte.it/2017/01/git-3/](http://www.mokabyte.it/2017/01/git-3/);
4. [http://www.mokabyte.it/2017/02/git-4/](http://www.mokabyte.it/2017/02/git-4/);
5. [http://www.mokabyte.it/2017/04/git-5/](http://www.mokabyte.it/2017/04/git-5/);
6. [http://www.mokabyte.it/2017/05/git-6/](http://www.mokabyte.it/2017/05/git-6/);
7. [http://www.mokabyte.it/2017/07/git-7/](http://www.mokabyte.it/2017/07/git-7/);
8. [http://www.mokabyte.it/2017/10/git-8/](http://www.mokabyte.it/2017/10/git-8/);
9. [http://www.mokabyte.it/2017/12/git-9/](http://www.mokabyte.it/2017/12/git-9/);
10. [http://www.mokabyte.it/2018/01/git-10/](http://www.mokabyte.it/2018/01/git-10/);

Il libro su git:
[https://www.git-scm.com/book/en/v2](https://www.git-scm.com/book/en/v2).
