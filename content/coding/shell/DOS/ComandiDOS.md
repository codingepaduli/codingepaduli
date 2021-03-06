---
type: "shell"
title: "Comandi della CLI di Windows"
description: "Comandi della CLI di Windows"
date: 2020-01-23
publishdate: 2020-01-23
lastmod: 2020-01-23
categories: ["coding", "shell", "DOS"]
keywords: ["coding", "shell", "DOS"]
draft: true
toc: false
summary: "Comandi della CLI di Windows"
---

# Comandi DOS

La linea di comando è detta anche prompt dei comandi o Command Line
Interface (abbreviata CLI) cioè interfaccia a linea di comando. Si
accede alla linea di comando di Windows da menù Start - Sistema
Windows - Prompt dei comandi.

E' spesso utilizzata per l'accesso remoto ai sistemi, soprattutto ai
sistemi di "produzione", in particolare ai server Linux che non sono
provvisti di una interfaccia grafica, ma solo dell'interfaccia a linea
di comando e del minimo indispensabile per poter eseguire il compito per
cui sono stati progettati (server email, server per siti web, ...).

## Path (percorso di un file o di una cartella)

Il prompt mostra innanzitutto il percorso in cui ci troviamo:
`c:\windows\users\utente`.

Il percorso è definito da:

- `c:` La lettera dell'unità in cui ci troviamo;
- `\` La cartella principale dell'unità;
- `windows\users\utente` il percorso fatto di cartelle e sottocartelle
  separate dal carattere di separazione cartelle `\`.

Alle unità di archiviazione viene associata una lettera identificativa.
Per spostarsi da un'unità all'altra, è necessario scrivere la lettera
dell'unità (che possiamo vedere in Risorse del computer). Ad esempio:

- `c:` Si sposta sull'unità c:
- `d:` Si sposta sull'unità d:

Supponendo di essere nel percorso `c:\windows\users\utente`, per
visualizzare le cartelle esistenti nel percorso corrente (ovvero nella
cartella corrente), si usa il comando `dir` che elenca i file e le
cartelle presenti nella cartella corrente.

Per visualizzare invece i file in una cartella, ad esempio in
`c:\windows` posso utilizzare il comando `dir c:\windows` che elenca i
file e le cartelle presenti nella cartella indicata.

Sempre supponendo di essere nel percorso `c:\windows\users\utente`, per
accedere ad una cartella di nome "cartella1" si usa il comando `cd
cartella1` che ci permette di entrare quindi in
`c:\windows\users\utente\cartella1`.

Per tornare invece alla cartella precedente si usa il comando `cd ..`
che ci permette di ritornare in `c:\windows\users\utente`.

Da notare che gli operatori `..` e `.` servono per indicare i percorsi
con nomi relativi e non assoluti, ovvero servono ad indicare i percorsi
a partire da quello in cui ci troviamo.

Supponendo di essere nel percorso `c:\windows\users\utente` e di voler
visualizzare tutti i file e cartelle in `c:\windows`, posso utilizzare
sia il comando `dir c:\windows`, sia `dir ..\..` dato che `..\..` torna
indietro di due cartelle, sia `dir c:\windows\..\windows\.\` dato che il
primo `..` torna indietro a `c:` quindi si accede nuovamente alla
cartella "windows" e poi si accede alla cartella corrente, che è ancora
"windows", e di questa si visualizza l'elenco di file e cartelle.

## Variabili di ambiente

Il sistema operativo usa delle variabili dette "variabili di ambiente",
che sono accessibili e configurabili dal prompt dei comandi. In
particolare abbiamo la variabile `userprofile`, che contiene il percorso
della cartella "home" dell'utente, e la variabile `path`, che contiene
l'elenco di cartelle in cui sono contenuti i file eseguibili.

per visualizzare l'elenco di tutte le variabili di ambiente, utilizzare
il comando `set`, oppure, per visualizzare il valore di una singola
variable, utilizzare `set nomeVariabile`.

## Redirezione dell'output, dell'input o degli errori su file

Una funzionalità particolarmente usata è la redirezione degli standard
input ed output, che avviene mediante i seguenti operatori:

- `>` Redirezione output in un nuovo file;
- `>>` Redirezione output in un file esistente in modalita "APPEND"
  (in aggiunta);
- `<` Redirezione dell'input in un comando;
- `nul` operatore speciale che serve a cestinare tutti i dati che sono
  scritti all'interno.

Ad esempio:

- `dir > file.txt` Redirezione output del comando dir nel nuovo file
  file.txt;
- `echo messaggio >> file.txt` Redirezione output del comando echo nel
  file file.txt in modalita "APPEND" (in aggiunta);
- `dir 2> file.txt` Redirezione dei messaggi di errore del comando dir
  nel nuovo file file.txt;
- `dir > file.txt 2>&1` Redirezione dei messaggi di output e di errore
  del comando dir nel file file.txt;
- `dir > file.txt 2> file2.txt` Redirezione dei messaggi di output nel
  file file.txt e dei messaggi di errore nel file file2.txt;
- `dir > file.txt 2> nul` Redirezione dei messaggi di output del
  comando dir nel file file.txt e dei messaggi di errore nel cestino;
- `dir 2> nul` Redirezione dei messaggi di errore nel cestino;
- `dir > nul 2>&1` Redirezione dei messaggi di output e di errore nel
    cestino;

Per visualizzare i comandi disponibili da CLI in Windows si usa il
comando `help` che visualizza il seguente output:

```output
Per ulteriori informazioni su uno specifico comando, digitare HELP nome comando
ASSOC          Visualizza o modifica le associazioni alle estensioni dei file.
ATTRIB         Visualizza o modifica gli attributi del file.
BREAK          Attiva o disattiva il controllo esteso di CTRL+C.
BCDEDIT        Imposta le proprietà nel database di avvio per il controllo del
         caricamento avvio.
CACLS          Visualizza o modifica gli elenchi di controllo di accesso
         (ACL) dei file.
CALL           Richiama un programma batch da un altro.
CD             Visualizza il nome della directory corrente o consente
         di passare a un'altra directory.
CHCP           Visualizza o imposta il numero di tabella codici attiva.
CHDIR          Visualizza il nome della directory corrente o consente
         di passare a un'altra directory.
CHKDSK         Controlla un disco e visualizza il relativo
         rapporto sullo stato.
CHKNTFS        Visualizza o modifica la verifica di un disco durante l'avvio.
CLS            Cancella lo schermo.
CMD            Avvia una nuova istanza dell'interprete dei comandi di Windows.
COLOR          Imposta i colori predefiniti in primo piano e dello sfondo
         della console.
COMP           Confronta il contenuto di due file o di due gruppi di file.
COMPACT        Visualizza o modifica la compressione di file su
         partizioni NTFS.
CONVERT        Converte volumi FAT in NTFS. Non è possibile convertire
         l'unità in uso.
COPY           Copia uno o più file in un'altra posizione.
DATE           Visualizza o imposta la data.
DEL            Elimina uno o più file.
DIR            Visualizza un elenco di file e sottodirectory in una directory.
DISKPART       Visualizza o configura le proprietà di Partizione disco.
DOSKEY         Modifica righe di comando, richiama comandi di Windows
         e crea macro.
DRIVERQUERY    Visualizza stato e proprietà del driver di dispositivo corrente.
ECHO           Visualizza messaggi o attiva e disattiva la ripetizione a video dei comandi.
ENDLOCAL       Termina la localizzazione di modifiche di ambiente in un file batch.
ERASE          Elimina uno o più file.
EXIT           Termina il programma CMD.EXE (interprete dei comandi).
FC             Confronta due file o set di file e ne visualizza le
         differenze.
FIND           Ricerca una stringa di testo in uno o più file.
FINDSTR        Ricerca stringhe nei file.
FOR            Esegue un comando specificato per ogni file in un set di file.
FORMAT         Formatta un disco per l'utilizzo con Windows.
FSUTIL         Visualizza o configura le proprietà del file system.
FTYPE          Visualizza o modifica i tipi di file utilizzati nelle
         associazioni delle estensioni di file.
GOTO           Indirizza l'interprete dei comandi di Windows a una riga con
         etichetta in un programma batch.
GPRESULT       Visualizza le informazioni relative a Criteri di gruppo per il computer o l'utente.
GRAFTABL       Abilita Windows alla visualizzazione di un set di
         caratteri estesi in modalità grafica.
HELP           Fornisce informazioni della Guida per i comandi di Windows.
ICACLS         Visualizza, modifica ed esegue il backup o il ripristino
         degli ACL per file e directory.
IF             Esegue un'elaborazione condizionale in un programma batch.
LABEL          Crea, cambia o elimina l'etichetta di volume di un disco.
MD             Crea una directory.
MKDIR          Crea una directory.
MKLINK         Crea collegamenti simbolici e reali
MODE           Configura un dispositivo di sistema.
MORE           Visualizza l'output una schermata alla volta.
MOVE           Sposta uno o più file da una directory a un'altra
         directory.
OPENFILES      Visualizza i file aperti dagli utenti remoti per una determinata condivisione di file.
PATH           Visualizza o imposta un percorso di ricerca per file eseguibili.
PAUSE          Sospende l'elaborazione di un file batch e visualizza un messaggio.
POPD           Ripristina il valore precedente della directory corrente
         salvato con PUSHD.
PRINT          Stampa un file di testo.
PROMPT         Cambia il prompt dei comandi di Windows.
PUSHD          Salva la directory corrente e poi la cambia.
RD             Rimuove una directory.
RECOVER        Recupera le informazioni leggibili da un disco danneggiato o difettoso.
REM            Registra commenti (note) in file batch o CONFIG.SYS.
REN            Rinomina uno o più file.
RENAME         Rinomina uno o più file.
REPLACE        Sostituisce i file.
RMDIR          Rimuove una directory.
ROBOCOPY       Utilità avanzata per la copia di file e alberi di directory
SET            Visualizza, imposta o rimuove variabili di ambiente di Windows.
SETLOCAL       Inizia la localizzazione di modifiche di ambiente in un file batch.
SC             Visualizza o configura i servizi (processi in background).
SCHTASKS       Pianifica comandi e programmi da eseguire su un determinato computer.
SHIFT          Modifica la posizione di parametri sostituibili in file batch.
SHUTDOWN       Consente il corretto arresto del computer in modalità locale e remota.
SORT           Ordina l'input.
START          Avvia una finestra separata per l'esecuzione del programma o comando specificato.
SUBST          Associa il percorso a una lettera di unità.
SYSTEMINFO     Visualizza la configurazione e le proprietà specifiche del computer.
TASKLIST       Visualizza tutte le attività in esecuzione inclusi i servizi.
TASKKILL       Interrompe o arresta un processo o un'applicazione in esecuzione.
TIME           Visualizza o imposta l'ora del sistema.
TITLE          Imposta il titolo della finestra per una sessione CMD.EXE.
TREE           Visualizza graficamente la struttura di directory di un'unità o
         percorso.
TYPE           Visualizza il contenuto di un file di testo.
VER            Visualizza la versione di Windows.
VERIFY         Indica se effettuare o meno la verifica della corretta scrittura
         dei file sul disco.
VOL            Visualizza l'etichetta di volume e il numero di serie del disco.
XCOPY          Copia file e alberi di directory.
WMIC           Visualizza le informazioni relative a WMI all'interno della shell dei comandi interattivi.

Per ulteriori informazioni sulle utilità, vedere la documentazione di riferimento sulla riga di comando nella Guida.
```

Ogni comando viene eseguito con `COMANDO parametro1 parametro2 ...`.

E' possibile visualizzare la guida dettagliata di uno specifico comando
invocando il comando con l'opzione `/?` ad esempio `dir /?` oppure `cd
/?`. La guida indica la lista di parametri facoltativi tra parentesi
quadre e la lista di parametri obbligatori senza parentesi quadre. Ad
esempio `DIR [/P] [/Ax] path`, indica che i parametri `/p` e `/ax` sono
facoltativi perchè tra parentesi quadre, mentre il parametro path è
obbligatorio perchè non è tra parentesi quadre.

L'elenco dei principali comandi con la relativa guida è il seguente:

## CD: Change Directory

`cd /?`

```output
  Visualizza il nome della directory corrente o consente di passare
  a un'altra directory.

  CHDIR [/D] [unità][percorso]
  CHDIR [..]
  CD [/D] [unità][percorso]
  CD [..]

    ..   Indica che si desidera passare alla directory padre.

  CD unità visualizza la directory corrente dell'unità specificata.
  CD senza parametri visualizza l'unità e la directory correnti.

  Usare l'opzione /D per cambiare l'unità corrente insieme al cambiamento
  della directory corrente per l'unità.

  Se le estensioni ai comandi sono abilitate, CHDIR cambia come segue:

  la stringa di directory corrente utilizzerà lo stesso caso,
  maiuscole/minuscole, presente sui nomi di disco. Quindi CD C:\TEMP
  imposta in realtà la directory corrente su C:\Temp se questo il
  formato su disco.

  Il comando CHDIR non considera gi spazi come delimitatori, ed
  quindi possibile impiegare CD in in un nome di sottodirectory che
  contenga uno spazio senza racchiudere il nome entro virgolette.
  Ad esempio:

    cd \winnt\profili\nomeutente\programmi\menu Start

    analogo a:

    cd "\winnt\profili\nomeutente\programmi\menu Start"

    che rappresenta ci che si deve digitare con le estensioni
  disabilitate.
```

Esempi d'uso simulando di lanciare il comando dal percorso `c:\windows`

- `cd 3InfB` cambia directory in c:\\windows\\3InfB;
- `cd \` cambia directory in c:\\;
- `cd users\utente` cambia directory in c:\\windows\\users\\utente.
- `cd ..` cambia directory tornando alla cartella padre c:\\

## CLS: Clear screen

`cls /?`

```output
  Cancella lo schermo.

  CLS
```

Esempi d'uso: `cls` cancella lo schermo.

## Color

`color /?`

```output
  Imposta i colori di primo piano e di sfondo predefiniti per la console.

  COLOR [attr]

    attr        Specifica l'attributo relativo ai colori dell'output della console.

  L'attributo relativo ai colori è costituito da DUE cifre esadecimali: la
  prima per lo sfondo, la seconda per il colore di primo piano. Per ognuno di
  tali valori è possibile scegliere una delle cifre seguenti:

    0 = Nero       8 = Grigio
    1 = Blu scuro        9 = Blu
    2 = Verde       A = Verde limone
    3 = Verde acqua        B = Azzurro
    4 = Bordeaux         C = Rosso
    5 = Viola      D = Fucsia
    6 = Verde oliva      E = Giallo
    7 = Grigio chiaro       F = Bianco

  Se non viene specificato alcun argomento, verranno ripristinati i colori
  usati al momento dell'avvio di CMD.EXE. Tali informazioni vengono
  ottenute dalla finestra di console corrente, dall'opzione /T della riga
  di comando o dal valore DefaultColor del Registro di sistema.

  Se si tenta di impostare lo stesso colore per il primo piano
  e lo sfondo, il comando COLOR imposterà ERRORLEVEL
  su 1.
```

Esempi d'uso: `COLOR f0` imposta il nero come colore di primo piano e il
bianco come colore di sfondo.

## COPY

`COPY /?`

```output
  Copia uno o più file in un'altra posizione.

  COPY [/D] [/V] [/N] [/Y] [/-Y] [/Z] [/L] [/A | /B] origine [/A | /B]
     [+ origine [/A | /B] [+ ...]] [destinazione [/A | /B]]

    origine       Indica i file da copiare.
    /A            Indica un file di testo ASCII.
    /B            Indica un file binario.
    /D            Consente la creazione del file di destinazione come
          decrittografato destinazione  specifica la directory
          e/o il nome dei nuovi file.
    /V            Verifica che i nuovi file siano stati copiati correttamente.
    /N            Utilizza nomi file brevi, se disponibili, durante
          la copia di file con nome lungo.
    /Y            Non chiede la conferma prima di sovrascrivere
          un file di destinazione esistente.
    /-Y           Chiede la conferma prima di sovrascrivere
          un file di destinazione esistente.
    /Z            Copia i file dalla rete in modalità riavviabile.
    /L            Se l'origine è un collegamento simbolico, copia nella
          Destinazione il collegamento anzich‚ il file rappresentato
          dal collegamento.

  L'opzione /Y potrebbe essere preimpostata nella variabile di ambiente COPYCMD.
  Questa operazione può essere annullata inserendo /-Y nella riga di comando.
  Per impostazione predefinita la conferma viene richiesta a meno che il comando
  COPY non venga eseguito da uno script di tipo batch.

  Per concatenare i file, specificare un solo file di destinazione
  e più file di origine (utilizzando caratteri jolly o il formato
  file1+file2+file3).
```

Esempi d'uso simulando di lanciare il comando dal percorso `c:\windows`

- `copy 3InfB.txt 3InfA.txt` copia il file 3InfB.txt nella cartella
  corrente con nome 3InfA.txt
- `copy 3InfB.txt \3InfA.txt` cambia directory in c:\\;
- `cd users\utente` cambia directory in c:\\windows\\users\\utente.
- `cd ..` cambia directory tornando alla cartella padre c:\\

## Date

`date /?`

```output
  Visualizza o imposta la data.

  DATE [/T | data]

  Digitare DATE senza parametri per visualizzare la data corrente e reimpostarla.
  Premere INVIO per mantenere la stessa data.

  Se le estensioni dei comandi sono attivate, il comando DATE supporta
  l'opzione /T, che consente al comando di mostrare la data corrente senza
  richiedere l'immissione di una nuova data.
```

Esempi d'uso: `date /t` visualizza la data corrente.

## Del: Delete

`del /?`

```output
  Elimina uno o piu file.
    /P            Chiede conferma prima di eliminare ogni file.
    /F            Forza l'eliminazione dei file di sola lettura.
    /S            Elimina i file specificati da tutte le sottodirectory.
    /Q            Modalità non interattiva, non chiede conferma per eliminazioni globali.
    /A            Seleziona i file da eliminare in base agli attributi.
    attributi    R  File di sola lettura            S  File di sistema
          H  File nascosti               A  File di archivio
          I  File non indicizzati  L  Reparse point
          O  File offline              -  Prefisso per negare l'attributo

  Se le estensioni dei comandi sono attivate, i comandi DEL ed ERASE verranno
  modificati come segue:

  La semantica di visualizzazione dell'opzione /S viene invertita, poich‚
  mostra solo i file eliminati anzich‚ quelli che non è possibile trovare.
```

Esempi d'uso simulando di lanciare il comando dal percorso `c:\windows`

- `del 3InfB.txt` cancella il file c:\\windows\\3InfB.txt;
- `del \3InfB.txt` cancella il file c:\\3InfB.txt;
- `del p:\3InfB.txt` cancella il file p:\\3InfB.txt.
- `del ..\3InfB.txt` cancella il file c:\\3InfB.txt.

## Echo

`echo /?`

```output
  Visualizza messaggi oppure attiva/disattiva la ripetizione dei comandi.

    ECHO [ON | OFF]
    ECHO [messaggio]

  Digita ECHO senza parametri per visualizzare l'impostazione corrente.
```

Esempi d'uso: `echo 3InfB` visualizza il messaggio 3InfB.

- `echo 3InfB` visualizza il messaggio 3InfB;
- `echo %path%` visualizza il valore della variabile %path%;
- `echo %userprofile%\3InfB.txt` visualizza il valore della variabile
  %userprofile% seguito dal testo \\3infB.txt;
- `echo mi trovo nella cartella %userprofile%\3InfB.txt` visualizza il
  testo "mi trovo nella cartella" seguito dal valore della variabile
  %userprofile% seguito dal testo \\3infB.txt.

## mkdir

`mkdir /?`

```output
  Crea una directory.

  MKDIR [unità:]percorso
  MD [unità:]percorso

  Se le estensioni dei comandi sono attivate, il comando MKDIR verrà modificato
  come segue:

  MKDIR crea tutte le directory intermedie eventualmente necessarie nel
  percorso. Se ad esempio il percorso \a non esiste:

    mkdir \a\b\c\d

  Corrisponde a:

    mkdir \a
    chdir \a
    mkdir b
    chdir b
    mkdir c
    chdir c
    mkdir d

  Questi sono infatti i comandi che è necessario digitare quando le estensioni
  sono disattivate.
```

Esempi d'uso simulando di lanciare il comando dal percorso `c:\windows`

- `mkdir 3InfB.txt` crea la cartella c:\\windows\\3InfB.txt;
- `mkdir \3InfB.txt` crea la cartella c:\\3InfB.txt;
- `mkdir p:\3InfB.txt` crea la cartella p:\\3InfB.txt.
- `mkdir ..\3InfB.txt` crea la cartella c:\\3InfB.txt.

## move

`move /?`

```output
  Consente di spostare file e rinominare file e directory.

  Per spostare uno o più file:
  MOVE [/Y | /-Y] [unità:][percorso]nomefile1[,...] destinazione

  Per rinominare una directory:
  MOVE [/Y | /-Y] [unità:][percorso]nomedir1 nomedir2

    [unità:][percorso]nomefile1 Specifica il percorso e il nome del o dei file
                  da spostare.
    destinazione                Specifica il nuovo percorso del file. La
                  destinazione può essere costituita da una
                  lettera di unità seguita da due punti, da un
                  nome di directory o da una combinazione di
                  entrambi. Se si sposta solo un file, sarà
                  possibile includere anche un nome di file per
                  rinominare il file durante lo spostamento.
    [unità:][percorso]nomedir1  Specifica la directory da rinominare.
    nomedir2                    Specifica il nuovo nome della directory.

    /Y                          Elimina la richiesta di conferma della
                  sovrascrittura di un file di destinazione
                  esistente.
    /-Y                         Visualizza la richiesta di conferma della
                  sovrascrittura di un file di destinazione
                  esistente.

  Se l'opzione /Y è presente nella variabile di ambiente COPYCMD,
  può essere sostituita specificando /-Y nella riga di comando. La richiesta
  di conferma della sovrascrittura viene visualizzata per impostazione
  predefinita, a meno che il comando MOVE non venga eseguito dall'interno di
  uno script batch.
```

Esempi d'uso: `move 3InfB Lab\3InfA` sposta la cartella 3InfB in
Lab\\3InfA.

## ren

`ren /?`

```output
  Rinomina uno o più file.

  RENAME [unità:][percorso]nomefile1 nomefile2.
  REN [unità:][percorso]nomefile1 nomefile2.

  Impossibile specificare una nuova unità o percorso per il file di destinazione.
```

Esempi d'uso: `ren 3InfB.txt.txt 3InfA.txt` rinomina il file
3InfB.txt.txt in 3InfA.txt.

## rmdir

`rmdir /?`

```output
  RMDIR [/S] [/Q] [unità:]percorso
  RD [/S] [/Q] [unità:]percorso

    /S        Rimuove tutte le directory e file nella directory
      specificata oltre alla directory stessa. Usato per
      rimuovere l'intero albero di una directory.

    /Q        Modalità non interattiva, non richiede alcuna conferma
      per la rimozione di un albero di directory eseguita
      con /S

```

Esempi d'uso: `rmdir 3InfB` rimuove la cartella 3InfB.

## time

`time /?`

```output
  Visualizza o imposta l'ora di sistema.

  TIME [/T | ora]

  Digitare TIME senza parametri per visualizzare l'ora corrente e reimpostarla.
  Premere INVIO per mantenere la stessa ora.

  Se le estensioni dei comandi sono attivate, il comando TIME supporta
  l'opzione /T, che consente al comando di mostrare l'ora corrente, senza
  richiedere l'immissione di una nuova ora.
```

Esempi d'uso: `time /t` visualizza l'ora corrente.
