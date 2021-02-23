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

comments:
    host: "mastodon.uno"
    username: "padulodeveloper"
    id: 105468922720281480
---

# Introduzione a Git ed ai sistemi per il controllo di versione

Git è un sistema per il controllo di versione distribuito. Inizialmente sviluppato da Linus Torvalds per gestire lo sviluppo del kernel Linux, oggi è utilizzato dalle aziende informatiche di tutto il mondo.

I progetti pubblicamente esposti dagli sviluppatori sui vari servizi di controllo di versione rappresentano una sorta di "Instagram", utilizzato per condividere non foto e video, ma i propri lavori: libri, personaggi 2D e 3D, animazioni, stili grafici e soprattutto software.

## Installazione di git

Git è facilmente installabile attraverso i package manager. Di seguito sono elencati i comandi, relativi ai package manager più conosciuti, necessari per installare Git.

Su package manager "choco" di Windows:

```bash
choco install git
```

Su package manager "apt" di Linux (Debian based):

```bash
sudo apt install git-all
```

Su package manager "apt" di Linux (RedHat based):

```bash
sudo dnf install git-all
```

Su package manager "homebrew":

```bash
brew install git
```

Per quanto riguarda l'installazione attraverso un file eseguibile, si può effettuare il download dal sito [https://git-scm.com/](https://git-scm.com/ "Sito Git SCM").

Il processo di installazione guida l'utente nell'installazione e nella configurazione iniziale, per cui è necessario comprendere le scelte da effettuare durante questo processo.

La prima schermata mostra la licenza da accettare.

![git - Installazione - step 1](/static/coding/tools/Git-Installazione-Step01.png "Git - Installazione - Step1")

La seconda schermata chiede all'utente di scegliere la cartella nella quale installare git. Si consiglia di accettare la cartella predefinita.

![git - Installazione - step 2](/static/coding/tools/Git-Installazione-Step02.png "Git - Installazione - Step2")

La terza schermata chiede all'utente di scegliere i componenti di git da installare. Si consiglia di lasciare tutti quelli già selezionati, assicurandosi di installare le voci "git Bash" e "git GUI" nel menù di explorer (il menù che appare cliccando con il tasto destro del mouse in un'area vuota), in modo tale da accedere velocemente al terminale da qualsiasi cartella.

![git - Installazione - step 3](/static/coding/tools/Git-Installazione-Step03.png "Git - Installazione - Step3")

La quarta schermata chiede all'utente di scegliere la voce del menu "Start" di Windows nella quale creare i collegamenti. La voce consigliata è una buona scelta.

![git - Installazione - step 4](/static/coding/tools/Git-Installazione-Step04.png "Git - Installazione - Step4")

La quinta schermata chiede all'utente di scegliere l'editor di testi da utilizzare. Si consigliano Atom o Notepad++, si sconsiglia caldamente l'opzione "Vim".

![git - Installazione - step 5](/static/coding/tools/Git-Installazione-Step05.png "Git - Installazione - Step5")

La sesta schermata chiede all'utente di scegliere il nome iniziale del ramo di sviluppo da usare quando si crea un nuovo repository. Si anticipa che il ramo iniziale può avere nome "main" (usato anche da GitHub) o "master" (usato da GitLab, BitBucket, ecc..). In questo capitolo non sarà creato un nuovo repository, quindi si può lasciare l'opzione predefinita, anche se si vedrà spesso utilizzato il nome "main".

![git - Installazione - step 6](/static/coding/tools/Git-Installazione-Step06.png "Git - Installazione - Step6")

La settima schermata chiede all'utente quali percorsi aggiungere alla variabile di sistema "PATH" (utilizzata per cercare i programmi da eseguire). Si consiglia di lasciare la scelta predefinita.

![git - Installazione - step 7](/static/coding/tools/Git-Installazione-Step07.png "Git - Installazione - Step7")

L'ottava schermata chiede all'utente quale componente utilizzare per validare i certificati. La libreria OpenSSL va bene per il singolo utente, mentre il componente di Windows "Secure Channel" è sicuramente più adatto in ambito aziendale, in contesti in cui i computer sono gestiti in maniera centralizzata dal sistemista.

![git - Installazione - step 8](/static/coding/tools/Git-Installazione-Step08.png "Git - Installazione - Step8")

La nona schermata chiede all'utente la codifica da utilizzare per il carattere di fine riga. Windows adotta la codifica "Carriage Return - Line Feed", Linux, Unix e Mac adottano la codifica "Line Feed". In generale il server che contiene il repository remoto adotta la codifica "Line Feed".

Agli utenti Windows è consigliata la scelta della voce "Checkout Windows Style, commit Unix style line endings".

Agli utenti Linux è consigliata la scelta della voce "Checkout as-is, commit Unix style line endings".

![git - Installazione - step 9](/static/coding/tools/Git-Installazione-Step09.png "Git - Installazione - Step9")

La decima schermata chiede all'utente di scegliere il terminale da utilizzare quando si lavora a linea di comando. Si consiglia PUTTY, si può in qualsiasi caso lavorare anche con il terminale di Windows.

![git - Installazione - step 10](/static/coding/tools/Git-Installazione-Step10.png "Git - Installazione - Step10")

L'undicesima schermata chiede all'utente di scegliere la strategia di fusione quando si allinea il contenuto dal repository remoto al repository locale. Si consiglia di lasciare la scelta predefinita "fast forward on merge".

![git - Installazione - step 11](/static/coding/tools/Git-Installazione-Step11.png "Git - Installazione - Step11")

La dodicesima schermata chiede all'utente di scegliere il componente per la gestione delle credenziali. Si consiglia di lasciare la scelta predefinita "Git Credential Manager".

![git - Installazione - step 12](/static/coding/tools/Git-Installazione-Step12.png "Git - Installazione - Step12")

La tredicesima schermata chiede all'utente di scegliere se abilitare la cache memory (per migliorare le prestazioni) e se abilitare i link simbolici. Si consiglia di abilitare la cache memory e di ignorare i link simbolici.

![git - Installazione - step 13](/static/coding/tools/Git-Installazione-Step13.png "Git - Installazione - Step13")

La quattordicesima schermata chiede all'utente di abilitare funzionalità sperimentali. Si consiglia di evitare.

![git - Installazione - step 14](/static/coding/tools/Git-Installazione-Step14.png "Git - Installazione - Step14")

A questo punto, l'installazione è terminata

## Concetto di controllo di versione

Per rendere l'idea di cosa significhi "sistema per il controllo di versione" (dall'inglese Version Control System), si può fare un'analogia con un'attività più vicina agli studenti: la realizzazione, da parte di un gruppo di studenti, di un progetto comune da consegnare ad uno o più insegnanti. Ogni studente prende in carico una parte specifica del progetto e si adopera per portarla a compimento.

Il progetto può essere la scrittura di un libro, la realizzazione di disegni tecnici, lo sviluppo di un sito web e tanto altro, e può essere diviso in varie fasi, al termine delle quali si può avere, eventualmente, un confronto con gli insegnanti interessati.

Ogni studente ha una propria area di lavoro, la scrivania di casa o la postazione nel laboratorio di informatica, in cui crea le varie bozze ed effettua le varie prove. Quando un lavoro è completo, ad esempio la scrittura di un capitolo del libro, la realizzazione di una pagina del sito web oppure il disegno tecnico relativo l'arredamento di una stanza, allora questo lavoro è spostato in un quaderno ad anelli.

E' importante tenere presente che il quaderno ad anelli ha una pagina di registro, in cui vengono annotate le operazioni effettuate, l'autore e la data. Quando lo studente completa un lavoro, annota nome e data nella pagina di registro ed aggiunge l'elenco di operazioni, indicando che ha inserito un nuovo capitolo, che ha cancellato una pagina web o che ne ha modificato un disegno tecnico.

Le pagine cancellate non vengono effettivamente cestinate, ma vengono annotate con una "X" rossa in un angolo (in modo tale che siano ancora leggibili) e spostate in coda al quaderno ad anelli. Le pagine da modificare vengono prima corrette con la penna rossa, e poi, a modifica terminata, le pagine corrette con la penna rossa vengono posizionate in coda al quaderno ad anelli, infine viene effettuata una copia completa di queste pagine e questa copia viene posizionata nel punto in cui si trovavano le pagine prima della modifica.

**Questa gestione dei lavori, tramite un quaderno ad anelli con la pagina di registro e le modifiche/cancellazioni allegate in coda, realizza un primo rudimentale sistema di controllo di versione.**

Grazie al controllo di versione realizzato, lo studente può decidere di ripristinare un capitolo che in precedenza aveva cancellato, semplicemente recuperandolo dalla coda del quaderno ad anelli. Allo stesso modo, può vedere dal registro il tempo impiegato per scrivere un nuovo capitolo o per realizzare una nuova pagina web. Ed ancora, può vedere tutte le modifiche apportate ad un certo disegno tecnico nel corso del tempo, recuperando tutte le correzioni effettuate dalla coda del quaderno ad anelli.

### Controllo di versione centralizzato

Il quaderno ad anelli può essere condiviso tra tutti gli studenti che partecipano al progetto. Per poterlo condividere fisicamente, il quaderno ad anelli può essere lasciato nel laboratorio o nello studio di un insegnante.

Questo tipo di controllo di versione realizzato con il quaderno ad anelli **comune** è detto **centralizzato**.

I singoli studenti, quando completano un lavoro, aggiungendo, modificando o cancellando parti del progetto, sono tenuti a recarsi presso il laboratorio o lo studio dell'insegnante per poter aggiornare il quaderno comune, inserendo a registro le operazioni effettuate e, contestualmente, aggiungendo i nuovi lavori, spostando in coda le pagine cancellate ed effettuando una copia di quelle modificate che poi sono spostate in coda).

Avere un quaderno ad anelli in comune permette agli studenti di lavorare in squadra, ma presenta alcuni svantaggi tipici di un sistema centralizzato:

- Non è possibile consegnare un lavoro se il quaderno ad anelli non è "raggiungibile", ad esempio perché il laboratorio o lo studio dell'insegnante è chiuso per ferie o malattia;
- Se il quaderno ad anelli viene smarrito o distrutto, si perde tutto il lavoro;
- Se uno studente porta via per un certo periodo un capitolo o un progetto dal quaderno ad anelli, gli altri studenti non possono più accedervi, rimanendo di fatto bloccati.

### Controllo di versione distribuito

Il quaderno ad anelli può essere **personale**, ogni studente che partecipa al progetto ha il suo.

Nello studio del professore universitario si trova un ulteriore quaderno ad anelli.

Il fatto che ogni studente ha il proprio quaderno ad anelli **personale** e che ne hanno uno in comune realizza un sistema di controllo di versione **distribuito**.

Quando lo studente completa un lavoro, utilizza il proprio quaderno ad anelli **personale** sul quale annota nome e data nella pagina di registro ed aggiunge l'elenco di operazioni, indicando che ha inserito un nuovo capitolo, che ha cancellato una pagina web e che ne ha modificato un disegno tecnico.

I singoli studenti, periodicamente, si recano nello studio, per poter **sincronizzare** il proprio quaderno con il quaderno comune. Con il termine sincronizzare si intende che lo studente provvede ad **effettuare sul quaderno comune tutte le modifiche che ha effettuato sul proprio** e, viceversa, **effettua sul quaderno proprio tutte le modifiche che sono state effettuate sul quaderno comune**. Una volta sincronizzati, i due quaderni sono praticamente identici.

Nel dettaglio, uno studente che sincronizza il proprio quaderno con il quaderno comune, procede ad inserire sul registro del quaderno comune tutte le operazioni da lui effettuate (prendendole dal registro del quaderno personale) e, contestualmente, esegue queste operazioni sul quaderno comune, aggiungendo i nuovi lavori, spostando in coda le pagine da lui cancellate, effettuando una copia di quelle modificate che poi sposta in coda.

Allo stesso modo, effettua una copia dei lavori svolti dagli altri studenti, prendendoli dal quaderno ad anelli del professore, e la mette nel proprio quaderno ad anelli personale. Anche le pagine modificate e cancellate dagli altri studenti vengono copiate ed aggiunte in coda. Ed anche le operazioni di registro vengono aggiunte al proprio registro. In questo modo, i due quaderni ad anelli sono sincronizzati, di fatto sono identici.

Un secondo studente che si reca nello studio effettua le stesse operazioni e cosi via fino al completamento del lavoro.

Il sistema distribuito comporta alcuni vantaggi:

- Se il quaderno ad anelli in comune non è "raggiungibile", ad esempio perché il laboratorio o lo studio dell'insegnante è chiuso per ferie o malattia, lo studente può continuare a lavorare sulla propria copia del quaderno.
- Se il quaderno ad anelli in comune viene smarrito o distrutto, si può ricrearlo facendo la copia di un quaderno ad anelli di uno degli studenti (quello più aggiornato).

#### Modalità di lavoro con un sistema di controllo di versione **distribuito**

E' possibile utilizzare molteplici modalità di lavoro per adattarsi alle diverse esigenze di sviluppo del progetto.

Si può utilizzare una modalità di lavoro con **team leader**, che si occupa di coordinare il lavoro del proprio team e quindi riportare il lavoro del team sul quaderno ad anelli del professore.

<!-- TODO replace this image -->

![Workflow con manager d'integrazione](https://git-scm.com/figures/18333fig0502-tn.png)

Si può utilizzare una modalità di lavoro detta "dittatore - tenente" in cui sono presenti diverse squadre di lavoro, ognuna con il proprio team leader (in questo caso detto "tenente"), ed un leader di progetto (detto "dittatore benevolo") che coordina il lavoro dei vari "tenenti" e che si occupa di recuperare il lavoro dai quaderni ad anelli dei vari "tenenti" per comporre il progetto completo da condividere sul quaderno ad anelli condiviso. Tutti i team, poi, possono aggiornarsi sincronizzando i propri quaderni con questo quaderno condiviso. Questo metodo di lavoro, tra l'altro, è quello utilizzato per lo sviluppo del kernel Linux, in cui Linus Torvalds è il dittatore benevolo.

<!-- TODO replace this image -->

![Workflow con dittatore benevolo](https://git-scm.com/figures/18333fig0503-tn.png)

### Rami di lavoro, conflitti e fusioni

Sia che si lavori con un sistema di controllo di versione centralizzato che con uno distribuito, si può verificare la situazione in cui un singolo lavoro debba proseguire su due o più direzioni.

Si immagini, ad esempio, che uno scrittore venga contattato da casa editoriale per la pubblicazione di un libro, partendo dalla sua bozza di romanzo, ed allo stesso tempo da un'azienda cinematografica per realizzare una serie TV, sempre partendo dalla sua bozza di romanzo. Può accadere che la casa editoriale e l'azienda cinematografica abbiano interessi diversi, magari indirizzando la scrittura verso due finali distinti, magari richiedendo allo scrittore avventure differenti per il protagonista.

Lo scrittore, lavorando ad un'unica opera complessiva sia per la serie TV, sia per il romanzo, rischia di apportare incongruenze o, addirittura, a non poter soddisfare entrambe le aziende. Dato che sono lavori differenti, lo scrittore deve seguire due filoni diversi, partendo dalla bozza di romanzo comune ad entrambe le opere.

Questi due filoni distinti sono i due rami di sviluppo del lavoro e possono essere rappresentati come un quaderno ad anelli contenente un cartoncino di separazione. Nel caso di un sistema distribuito, anche il quaderno ad anelli condiviso deve contenente un cartoncino di separazione. Tutti i fogli prima del cartoncino di separazione sono relativi alla pubblicazione del libro mentre quelli successivi sono relativi alla serie TV. Qualsiasi lavoro apportato alla serie TV non modifica minimamente la storia del libro e viceversa.

Per adattarsi alle diverse esigenze di sviluppo delle opere, è possibile creare un numero imprecisato di rami di sviluppo ed è possibile che più persone lavorino su uno stesso ramo di sviluppo.

Quando due persone modificano uno stesso ramo di sviluppo, uno stesso capitolo, allora si può verificare che le due versioni siano in **conflitto** tra loro, indicando, ad esempio, che il protagonista è presente in due posti diversi nella stessa avventura.

In questi casi, i due autori delle modifiche devono **fonderle** in una terza versione complessiva, prima di poterla includere nel quaderno ad anelli. Anche questa operazione di fusione viene indicata nel registro.

Un'altra situazione che si può verificare è che si voglia fondere due rami di sviluppo dell'opera in un unico ramo, ad esempio, per far si che due capitoli sviluppati su due rami differenti siano fusi in un unico capitolo. Anche in questo caso bisogna procedere all'operazione di fusione ed indicarla nella pagina di registro.

## Concetti principali di Git

I concetti principali sui quali si basa Git sono:

- L'**area di lavoro**, detta **staging area** o **caching area**: E' l'area nella quale l'utente lavora. Nell'analogia precedente è rappresentata dalla scrivania, sulla quale il singolo studente lavora alle varie bozze.

- L'**area di scorta**, detta **stashing area**: E' l'area nella quale vengono accantonati temporaneamente i lavori presenti nell'area di lavoro. Può essere rappresentata dai cassetti della scrivania. Quando il singolo studente deve mettere da parte delle bozze di un lavoro, le ripone in un cassetto, per poi gestire il nuovo lavoro. Quando intende ritornare al precedente lavoro, recupera le bozze dal cassetto. Ci possono essere più cassetti per poter accantonare temporaneamente più lavori.

- Il **commit**: E' l'operazione effettuata dall'utente che permette di memorizzare nel sistema di controllo di versione le modifiche effettuate dall'utente. Ad ogni commit viene salvata una nuova versione del repository. Nell'analogia precedente è rappresentato dal completamento di un lavoro, cioè allo spostamento del lavoro dall'area di lavoro (la scrivania) al proprio quaderno ad anelli, con annotazione del lavoro nella pagina di registro.

- Le **versioni**: le operazioni di commit generano una nuova versione del lavoro svolto. Il lavoro precedente non viene cancellato, ma salvato, in modo da poter sempre tornare ad una versione precedente. L'ultima versione sul ramo di sviluppo sul quale lavora l'utente è detta **HEAD**.

- Il **repository locale**: l'insieme di file versionati e tracciati su cui Git lavora in locale. E' ospitato sul proprio computer e non è necessario collegarsi alla rete internet per lavorare. Nell'analogia precedente, ogni quaderno ad anelli di uno studente rappresenta un repository locale.

- Il **repository remoto**: l'insieme di file versionati e tracciati su cui Git lavora in remoto. E' ospitato sul server e quindi c'è bisogno del collegamento ad internet per ricevere il lavoro degli altri studenti e per inviare il proprio lavoro. Nell'analogia precedente, è rappresentato dal quaderno ad anelli presente nello studio del professore.

- La **sincronizzazione**: l'operazione di allineamento di due repository. In Git è divisa in due operazioni distinte:

    1. l'operazione di **push** consiste nell'inviare tutte le operazioni svolte nel repository locale in quello remoto. Nell'analogia precedente, è rappresentata dalle azioni di **effettuare sul quaderno comune tutte le modifiche che sono state effettuate sul proprio quaderno**;
    2. l'operazione di **pull** consiste nel recuperare tutte le operazioni svolte sul repository remoto per copiarle in quello locale. Nell'analogia precedente, è rappresentata dalle azioni di **effettuare sul quaderno proprio tutte le modifiche che sono state effettuate sul quaderno comune**.

- I **rami di sviluppo**, detti **branches**: E' possibile seguire più rami di sviluppo dell'opera. Il ramo principale su Git è detto **master**, nei sistemi di controllo versione è chiamato **trunk**. Gli altri rami di sviluppo sono detti **branches**. L'operazione che permette di unire due rami di sviluppo è la fusione, detta **merge**. Si rimanda al capitolo sui branches per una chiara spiegazione dei concetti relativi allo sviluppo su più rami.

- La **clonazione**: l'operazione di creazione di un repository locale a partire da un repository remoto. Nell'analogia precedente, è rappresentata dal nuovo studente che viene aggiunto al gruppo, e che quindi compra un nuovo quaderno ad anelli nel quale poi clona il contenuto del quaderno ad anelli del professore.

## Gestione repository

I servizi online permettono la gestione di un repository Git tramite interfaccia web, che rende semplice l'interazione con l'utente.

Per la creazione di un repository remoto. ci si può registrare su uno dei vari servizi online. Tra i più noti ci sono GitHub, GitLab, Gitea e BitBucket.

Una volta registrati e creato il proprio repository, si può procedere alla configurazione di Git, alla clonazione del repository e quindi alla condivisione con altri utenti del proprio lavoro presente sul repository.

### Creazione repository su GitHub

GitHub permette la creazione di un repository remoto attraverso un'interfaccia grafica, in cui inserire il nome, la descrizione e la visibilità.

![GitHub - Nuovo Repository](/static/coding/tools/GitHub-Repository-New.png "GitHub - Nuovo Repository")

Creato il repository, viene fornito un URL per l'accesso e la clonazione dello stesso, come in figura:

![GitHub - URL del Repository](/static/coding/tools/GitHub-Repository-URL.png "GitHub - URL del Repository")

L'indirizzo completo del repository su GitHub, non completamente riportato nell'immagine, è il seguente:

<!-- markdown-link-check-disable-next-line -->
[https://github.com/codingepaduli/gitmergetutorial.git](https://github.com/codingepaduli/gitmergetutorial.git "GitHub - URL completo del Repository")

### Creazione repository su GitLab

GitLab permette la creazione di un repository remoto attraverso un'interfaccia grafica, in cui inserire il nome, la descrizione e la visibilità.

![GitLab - Nuovo Repository](/static/coding/tools/GitLab-Repository-New.png "GitLab - Nuovo Repository")

Creato il repository, viene fornito un URL per l'accesso e la clonazione dello stesso, come in figura:

![GitLab - URL del Repository](/static/coding/tools/GitLab-Repository-URL.png "GitLab - URL del Repository")

L'indirizzo completo del repository su GitLab, non completamente riportato nell'immagine, è il seguente:

<!-- markdown-link-check-disable-next-line -->
[https://gitlab.com/codingepaduli/gitmergetutorial.git](https://gitlab.com/codingepaduli/gitmergetutorial.git "GitLab - URL completo del Repository")

### Clonazione repository

Una volta creato il repository remoto, bisogna prendere nota dell'indirizzo web dello stesso per poi procedere alla clonazione, attraverso il seguente comando:

```bash
git clone https://github.com/codingepaduli/codingepaduli.git
```

Si può verificare che il repository locale ha un riferimento al repository remoto, accedendo alla cartella creata ed utilizzando, al suo interno, il comando:

```bash
git remote -v
```

### Prima configurazione del repository

Git ha 3 livelli di configurazione:

- configurazione di sistema, su linux si trova in ``/etc/gitconfig``, su Windows si trova in ``\Git\mingw64\etc\gitconfig``;
- configurazione globale (o utente), si trova nella cartella Home nel file ``.gitconfig``);
- configurazione locale al repository, si trova nella cartella ``.git``;

Per verificare le configurazioni presenti ad ogni livello, si usano i seguenti comandi:

```bash
git config --system --list
git config --global --list
git config --local --list
```

E' buona norma evitare di usare la configurazione di sistema, disabilitandola attraverso il comando:

```bash
git config --global user.useConfigOnly true
```

Per configurare globalmente l'identità da utilizzare nei propri repository, si utilizzano i seguenti comandi:

```bash
git config --global user.name "User"
git config --global user.email "user@user.com"
```

Altra operazione generalmente consigliata è l'impostazione del carattere di fine riga, dato che su Linux e Mac il carattere di fine riga (INVIO) è LF (line feed) mentre su Windows il carattere di fine riga (INVIO) è CR + LF (carriage return + line feed).

Questa differenza di caratteri porta ad avere confusione quando un file è modificato sia da utenti Mac/Linux sia da utenti Windows. Molti editors su Windows sostituiscono i caratteri di fine riga LF con i caratteri CR + LF, oppure lasciano gli LF ma inseriscono CR + LF quando si preme invio.

Una macchina windows deve quindi essere configurata per la conversione automatica da LF a CR + LF e viceversa:

```bash
git config --global core.autocrlf true
```

Una macchina Linux invece deve essere abilitata per la correzione automatica di tutti i file che arrivano dal repository trasformando i caratteri CR + LF con il carattere LF:

```bash
git config --global core.autocrlf input
```

Nella configurazione è utile anche impostare l'editor di riferimento:

```bash
git config --global core.editor "atom --wait"
```

Infine, è consigliato non ignorare la differenza tra caratteri minuscoli e maiuscoli nei nomi dei file, con il comando

```bash
git config --global core.ignorecase false
```

### Staging area e commit

Per creare una nuova versione del repository locale e poi sincronizzarla con il repository remoto, si può partire dalla creazione di tre file, ``file1.txt``, ``file2.txt`` e ``file3.txt``, in modo da seguire le varie operazioni.

Creati i  tre file, si può aggiungere il primo file all'area di lavoro, chiamata **staging area** o **caching area**, utilizzando il comando:

```bash
git add file1.txt
```

Per visualizzare ora lo stato dei file, si utilizza il comando:

```bash
git status
```

L'output è il seguente:

```plaintext
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

```bash
git status
```

 tenendo presente che per ora si sta facendo riferimento al  semplicemente
L'output è il seguente:

```plaintext
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

- untracked: non tracciati da Git;
- modified: modificati rispetto all'ultimo commit;
- staged (to be committed): pronti ad essere inclusi in un commit;
- unmodified: non modificati rispetto all'ultimo commit;

Per committare il primo file ``file.txt``, questo deve essere innanzitutto aggiunto all'area di lavoro, poi si può indicare che si vuole effettuare un commit dell'area di lavoro (la staging area).

```bash
git add file1.txt
git commit -m "Primo commit"
```

A questo punto il commit è stato completato ed è stata salvata la nuova versione del repository locale. Per visualizzare la lista di commit e relative versioni del repository locale, si utilizza il comando:

```bash
git log --pretty=format:"%h %s" --graph
```

Questo comando permetta anche di avere una vista grafica delle varie versioni del repository locale.

E' utile sottolineare che **HEAD** è solo un riferimento al commit (e quindi alla versione) su cui ci si trova, ovviamente riferito al ramo di sviluppo su cui si lavora.

Quando si scaricano le ultime versioni da repository remoto nel repository locale, il riferimento **HEAD** viene aggiornato all'ultimo commit scaricato da remoto, sempre per il ramo di sviluppo su cui si sta lavorando. Quando invece si effettua un commit in locale, il riferimento **HEAD** viene aggiornato a questo commit.

### Sincronizzazione

Effettuati i vari commit sul repository locale, ci si trova nella situazione in cui il repository locale si trova in una versione più avanzata rispetto al repository remoto (che è stato clonato).

Per sincronizzare il lavoro (tutti i commit sul repository locale) con il repository remoto, si utilizza il comando:

```bash
git push origin master
```

L'operazione di push invia tutti i commit (che sono stati eseguiti sul repository locale) al repository remoto.

Per effettuare l'operazione inversa, cioè per ricevere nel repository locale tutti i commit dal repository remoto (eseguiti dallo stesso utente attraverso computer differenti o eseguiti da altri utenti),  si utilizza il comando:

```bash
git pull origin master
```

### Pulizia della staging area

Può capitare di aggiungere per errore un file alla staging area, per cui lo si vuole togliere, senza però cancellarlo e perdere il contenuto, ma lasciandolo intatto nella cartella in cui si trova. Il comando da utilizzare è:

```bash
git rm --cached file
```

Se invece si è modificato un file in staging area e si vuole cancellare le ultime modifiche effettuate, lasciando il file con le modifiche precedenti in staging area, si utilizza il comando:

```bash
git reset HEAD file
```

Se si vuole ripristinare lo stato dell'ultimo commit, allora bisogna cancellare la staging area, e quindi si utilizza il comando:

```bash
git checkout .
```

Se si vuole cancellare tutti i file e cartelle che non sono tracciati, si utilizza il comando:

```bash
git clean -fd
```

Per cancellare la cache, in caso di "malfunzionamenti", si usa:

```bash
git gc --auto
```

### Stashing area (conservazione temporanea)

Quando si stanno applicando modifiche ai file e si deve interrompere l'attività per dare priorità ad altri lavori, si possono spostare i file modificati in un'area di conservazione temporanea: la **stashing area**.

Per spostare tutti i file modificati e i file non tracciati in un'area temporanea si utilizza il comando:

```bash
git stash
```

Per visualizzare la lista di aree temporanee disponibili, si utilizza il comando:

```bash
git stash list
```

Questo comando elenca tutte le aree temporanee (che possono essere più di una) identificandole con un numero. Questo numero è utilizzato per identificare l'area temporanea.

Per riportare nella staging area i file precedentemente spostati in stashing area, si utilizza il comando:

```bash
git stash apply stash@{0}
```

dove il numero zero è l'indice dell'area temporanea dalla quale prendere i file.

Per eliminare un'area temporanea, si utilizza il comando:

```bash
git stash drop stash@{0}
```

dove il numero zero è l'indice dell'area temporanea da cancellare.

### Lavorare con più origini remote

Quando si effettua la clonazione di un repository, Git crea un riferimento a questo repository remoto, chiamato **origin**:

E' però possibile utilizzate più repository remoti, semplicemente aggiungendo un riferimento remoto, di seguito chiamato **gitlab**, al repository locale:

```bash
git remote add gitlab https://gitlab.com/codingepaduli/codingepaduli.git
```

Per visualizzare i repository remoti, si può utilizzare il comando:

```bash
git remote -v
```

L'output mostrato è il seguente:

```plaintext
gitlab https://gitlab.com/codingepaduli/codingepaduli.git (fetch)
gitlab https://gitlab.com/codingepaduli/codingepaduli.git (push)
origin https://github.com/codingepaduli/codingepaduli.git (fetch)
origin https://github.com/codingepaduli/codingepaduli.git (push)
```

Come si nota, i riferimenti remoti per le operazioni di invio e ricezione dati ("push" e "fetch") possono essere differenti.

Per sincronizzare il ramo di sviluppo principale **master** del repository remoto con il repository locale, si effettuano le classiche operazioni di **push** e **pull**, facendo però attenzione ad indicare l'origine **gitlab** appena creata.

```bash
git push gitlab master
git pull gitlab master
```

Si nota che in questo caso viene sincronizzato il ramo di sviluppo principale **master**.

## Branches

### Modalità di lavoro con i Branches

Il repository principale ha un ramo di sviluppo principale chiamato **master**, ma sul repository possono essere creati anche altri rami di sviluppo chiamati **branches**, che costituiscono la modalità comune di lavoro con Git.

Tipicamente sul repository vengono creati diversi branches (rami di sviluppo) per le diverse funzionalità da sviluppare, e su ogni singolo branch (ramo) viene sviluppata una singola funzionalità da parte di uno o più sviluppatori del team.

Gli sviluppatori che lavorano su un singolo branch creano quindi la prima versione della funzionalità da sviluppare effettuando il primo commit, poi gli sviluppi proseguono e viene creata la seconda versione con un secondo commit, poi la terza versione a cui corrisponde un terzo commit, e cosi via.

Quando la funzionalità viene completata, questo singolo ramo di sviluppo può essere fuso con il ramo di sviluppo principale (il master).

Sul ramo principale vengono quindi fusi tutti i diversi rami di sviluppo e quindi di volta in volta le varie funzionalità vengono aggiunte al ramo di sviluppo principale **master**.

Volendo fare un'analogia, si può immaginare la scrittura di una trilogia di libri, e quindi ogni singolo libro viene scritto in un ramo separato. Il ramo principale alla fine conterrà tutti e tre i volumi.

Volendo fare una seconda analogia, si può immaginare che in uno dei libri della trilogia i personaggi principali si separino, vivendo storie indipendenti, e quindi nel ramo di sviluppo del singolo libro si creano diversi rami in cui si scrivono le storie dei diversi personaggi. Una volta che la storia di un personaggio è completa, il ramo di sviluppo del singolo personaggio viene fuso con il ramo di sviluppo del libro della trilogia.

### Creazione e gestione dei branches

Per creare un nuovo branch con nome **git-merge** si utilizza il comando:

```bash
git branch git-merge
```

Per visualizzare l'elenco di branches con l'ultimo commit presente si utilizza il comando:

```bash
git branch -vv
```

Per spostarsi sul ramo "git-merge" appena creato, si utilizza il comando:

```bash
git checkout git-merge
```

Git aggiunge i file alla staging area ed effettua il commit sul branch correntemente selezionato, i comandi di aggiunta e commit sono quelli già visti in precedenza, che per comodità si riportano nuovamente di seguito:

```bash
git add file.txt
git commit -m "aggiunto file.txt"
```

Per visualizzare la lista di commit nei vari branches del repository, si è gia visto di utilizzare il comando di log con grafico:

```bash
git log --pretty=format:"%h %s" --graph
```

### Sincronizzazione dei branches tra locale e remoto

Quando si crea un branch in locale, si deve ricordare che il repository remoto non ne possiede una copia, e quindi un'azione di sincronizzazione genera errore. Per indicare di creare un branch anche in remoto ed al contempo sincronizzare il branch, si utilizza il comando:

```bash
git push --set-upstream origin git-merge
```

In remoto è possibile che siano stati creati o cancellati branch, quindi è necessario sincronizzare repository locale e remoto per poter avere disponibili tutti i branch.

Per poter scaricare tutti i branch, si utilizza il comando:

```bash
git fetch --all
```

Per poter pulire i branch locali, cancellando quelli che anche in remoto sono stati rimossi, si utilizza il comando:

```bash
git fetch --prune
```

### Merge dei rami in modalità a linea di comando

Quando si vuole effettuare la fusione del ramo "git-merge" con il ramo "master", da linea di comando bisogna spostarsi sul ramo di sviluppo principale **master**.

```bash
git checkout master
```

Effettuato ciò, si può effettuare la fusione del ramo "git-merge", eseguendo il comando:

```bash
git merge git-merge
```

L'output indica che l'operazione è stata eseguita:

```plaintext
Merge made by the 'recursive' strategy.
 content/coding/tools/Git.md                          |  84 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----
 coding/tools/Git.md | Bin 39000 -> 39569 bytes
 2 files changed, 80 insertions(+), 4 deletions(-)
```

E' possibile verificare che i 2 branch sono stati fusi in un'unico branch, attraverso il comando:

```bash
git log --pretty=format:"%h %s" --graph
```

L'output indica in forma grafica che i rami di sviluppo sono stati fusi e che effettivamente confluiscono in un'unico ramo:

```plaintext
*   b21a312 Merge pull request #1
|\
| * ae55ada Updated posts about tools
|/
```

### Merge dei rami in modalità grafica

Quando si vuole effettuare la fusione del ramo "git-merge" con il ramo "master", si può utilizzare lo strumento grafico messo a disposizione dai servizi online.

I passi consistono nel creare una "New pull request", cliccando sul relativo pulsante:

![GitHub - Nuova Pull Request - passo 1](/static/coding/tools/GitHub-NewPullRequest-step1.png "GitHub - Nuova Pull Request - passo 1")

Il servizio online mostra una coppia di branch da selezionare per la fusione:

![GitHub - Nuova Pull Request - passo 2](/static/coding/tools/GitHub-NewPullRequest-step2.png "GitHub - Nuova Pull Request - passo 2")

L'utente deve selezionare come base il ramo che deve contenere la modifica, in questo caso il ramo principale (master), e, come ramo da confrontare, il ramo "git-merge" del quale effettuare la fusione. Appena viene selezionato, comparirà la seguente finestra:

![GitHub - Nuova Pull Request - passo 3](/static/coding/tools/GitHub-NewPullRequest-step3.png "GitHub - Nuova Pull Request - passo 3")

La finestra indica, attraverso la scritta "Able to merge", che è possibile effettuare la fusione dei due rami in maniera automatica. A questo punto bisogna quindi solo confermare la creazione della pull request, cliccando sull'apposito tasto.

L'utente può opzionalmente aggiungere un commento prima di completare l'operazione:

![GitHub - Nuova Pull Request - passo 4](/static/coding/tools/GitHub-NewPullRequest-step4.png "GitHub - Nuova Pull Request - passo 4")

Ad operazione completata, nella sezione "Pull request" si può verificare che la nuova pull request è stata creata.

![GitHub - Merge della Pull Request - passo 1](/static/coding/tools/GitHub-MergePullRequest-step1.png "GitHub - Merge Pull Request - passo 1")

Creata la pull request, si deve effettuare l'operazione di "merge della pull request". Per far ciò, l'utente deve selezionare la pull request nell'elenco precedente e quindi può visualizzare il dettaglio della pull request creata. Tra le altre cose, è descritto che il branch non ha conflitti e quindi l'operazione di fusione può essere effettuata automaticamente confermando l'operazione di "merge della pull request"..

![GitHub - Merge della Pull Request - passo 2](/static/coding/tools/GitHub-MergePullRequest-step2.png "GitHub - Merge Pull Request - passo 2")

All'utente è richiesto l'inserimento di un commento opzionale e di completare l'operazione:

![GitHub - Merge della Pull Request - passo 3](/static/coding/tools/GitHub-MergePullRequest-step3.png "GitHub - Merge Pull Request - passo 3")

Completata l'operazione, la pull request risulta correttamente fusa nel ramo di sviluppo indicato.

![GitHub - Merge della Pull Request - passo 4](/static/coding/tools/GitHub-MergePullRequest-step4.png "GitHub - Merge della Pull Request - passo 4")

## Contribuire ad altri progetti

Git permette di contribuire ai progetti esterni (di altri sviluppatori, anche sconosciuti) inviando sui loro repository delle pull request contenenti le proprie modifiche.

Per questioni di sicurezza, però, non è possibile inviare lavoro su un repository che non è il proprio. Dato che si vuole apportare una modifica ad un repository di cui non si possiede la titolarità, è necessaria un'operazione preliminare: la **fork**. Con questa operazione, si effettua una copia del repository dello sviluppatore e di questa copia si è titolari.

Per contribuire al repository dell'altro sviluppatore si effettuata la fork e la clonazione del repository, sul quale si apporteranno le modifiche, e quindi si crea una pull request tra il proprio repository ed il repository dell'altro sviluppatore.

L'altro sviluppatore può quindi accettare (ed effettuare l'operazione di merge) della pull request effettuata oppure può scegliere di rifiutare di includere le modifiche inviate.

## Approfondimenti

L'introduzione a git non parla delle molteplici funzionalità avanzate che possono essere però approfondite nelle varie guide e libri, tra i quali si segnala:

La serie di articoli su Mokabyte:

1. [http://www.mokabyte.it/2016/09/git-1/](http://www.mokabyte.it/2016/09/git-1/ "Mokabyte - Articolo 1 su Git");
2. [http://www.mokabyte.it/2016/10/git-2/](http://www.mokabyte.it/2016/10/git-2/ "Mokabyte - Articolo 2 su Git");
3. [http://www.mokabyte.it/2017/01/git-3/](http://www.mokabyte.it/2017/01/git-3/ "Mokabyte - Articolo 3 su Git");
4. [http://www.mokabyte.it/2017/02/git-4/](http://www.mokabyte.it/2017/02/git-4/ "Mokabyte - Articolo 4 su Git");
5. [http://www.mokabyte.it/2017/04/git-5/](http://www.mokabyte.it/2017/04/git-5/ "Mokabyte - Articolo 5 su Git");
6. [http://www.mokabyte.it/2017/05/git-6/](http://www.mokabyte.it/2017/05/git-6/ "Mokabyte - Articolo 6 su Git");
7. [http://www.mokabyte.it/2017/07/git-7/](http://www.mokabyte.it/2017/07/git-7/ "Mokabyte - Articolo 7 su Git");
8. [http://www.mokabyte.it/2017/10/git-8/](http://www.mokabyte.it/2017/10/git-8/ "Mokabyte - Articolo 8 su Git");
9. [http://www.mokabyte.it/2017/12/git-9/](http://www.mokabyte.it/2017/12/git-9/ "Mokabyte - Articolo 9 su Git");
10. [http://www.mokabyte.it/2018/01/git-10/](http://www.mokabyte.it/2018/01/git-10/ "Mokabyte - Articolo 10 su Git");

Il libro su git:
[https://www.git-scm.com/book/en/v2](https://www.git-scm.com/book/en/v2 "Libro Git SCM").
