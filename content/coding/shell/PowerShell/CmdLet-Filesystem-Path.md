---
type: "powershell"
title: "03 - Filesystem - Gestione percorsi"
description: "Filesystem - Gestione percorsi"
date: 2020-04-13
publishdate: 2020-04-13
lastmod: 2020-04-13
categories: ["coding", "tools", "shell", "powershell"]
keywords: ["coding", "tools", "shell", "powershell"]
draft: true
toc: false
summary: "Filesystem - Gestione percorsi"
---

# Gestione percorsi

## Percorso corrente

Il provider ``FileSystem`` fornisce l'accesso al filesystem, ovvero gestisce file e cartelle;

Essendo un provider di tipo **gerarchico**, l'accesso alle risorse è gestito attraverso un percorso.

Il percorso in cui si posiziona l'utente è detto **percorso corrente**. Quando l'utente avvia PowerShell, il percorso corrente viene mostrato.

```powershell
PowerShell 7.0.0
Copyright (c) Microsoft Corporation. All rights reserved.

https://aka.ms/powershell
Type &#39;help&#39; to get help.

PS /home/user > 
```

Come si nota nell'esempio, l'ultima riga indica il percorso corrente ``/home/user``, anche detto **cartella di lavoro** o cartella corrente. Quindi l'utente "si trova" o "sta lavorando" nella cartella ``/home/user``.

L'utente può spostarsi tra i percorsi. Ad ogni spostamento in un nuovo percorso, il **percorso corrente** viene aggiornato al nuovo percorso.

Ad esempio, nel caso l'utente si spostasse al percorso ``/home/user/Documenti``, questo diventerebbe il suo percorso corrente.

## Percorsi di file e cartelle

Ogni file o cartella è identificato attraverso un percorso.

Su sistema operativo Windows, il percorso è composto dalla lettera dell'unità che identifica il disco logico (la partizione), dalle cartelle da attraversare per raggiungere il file o la cartella, ed opzionalmente dal nome del file. Il carattere ``\`` è utilizzato per separare i nomi delle cartelle da attraversare.



Si prenda ad esempio il seguente percorso:

```powershell
c:\Windows\Temp\temp.txt
```

Il percorso indica che il file si trova nella partizione ``c:``, le cartelle da attraversare per raggiungerlo sono ``Windows`` e ``Temp`` ed il nome del file è ``temp.txt``.



Nei sistemi operativi Gnu/Linux, Mac e Unix, i dischi non hanno una lettera di unità, ma devono essere montati nel sistema principale di gestione del filesystem. Sui questi sistemi è utilizzato il carattere ``/`` per separare i nomi delle cartelle da attraversare ed il percorso inizia sempre dalla cartella principale "**/**" (detta "root", da non confondere con l'utente amministratore, anch'egli chiamato "root"), è seguito dalle cartelle da attraversare ed opzionalmente dal nome del file desiderato.



Si prenda ad esempio il seguente percorso:

```powershell
/home/temp/temp.txt
```

Il percorso indica che il file si trova nella partizione di root ``/``, le cartelle da attraversare sono ``home`` e ``temp`` ed il nome del file è ``temp.txt``.



Si consideri un ulteriore esempio di percorso:

```powershell
c:\utenti\
```

Il percorso indica, all'interno dell'unita ``c:`` la cartella ``utenti ``. In questo caso non è stato indicato un file, ma una cartella. 

## Percorsi relativi ed assoluti

PowerShell utilizza il simbolo ``.`` per indicare la cartella corrente e ``..`` per indicare la cartella precedente.

E' importante sottolineare che questi simboli sono relativi al percorso, non alla cartella di lavoro.

Il sistema operativo si occupa della risoluzione dei percorsi contenenti i simboli ``.`` e ``..`` trasformandoli in percorsi assoluti. 

### Primo esempio risoluzione percorso

Prendendo ad esempio il percorso:

```powershell
c:\utenti\prof\Documenti\.\elenco.txt
```

La risoluzione del percorso inizia accedendo all'unità ``c:``, accedendo poi alle directory ``utenti``, ``prof``, ``Documenti``. A questo punto della risoluzione, la cartella **corrente** è ``c:\utenti\prof\Documenti``. 

Il simbolo ``.``, dato che si riferisce alla cartella corrente, viene risolto come un riferimento alla cartella ``Documenti``. 

Il file ``elenco.txt`` è quindi individuato all'interno della cartella ``Documenti``. Il percorso iniziale è stato trasformato nel percorso assoluto ``c:\utenti\prof\Documenti\elenco.txt``.

### Secondo esempio risoluzione percorso

Prendendo ad esempio il percorso:

```powershell
c:\utenti\.\prof\.\Documenti\.\elenco.txt
```

La risoluzione del percorso inizia accedendo all'unità ``c:``, poi accedendo alla cartella ``utenti``. A questo punto della risoluzione, la cartella **corrente** è ``c:\utenti``.

La prima occorrenza del simbolo ``.`` viene risolta come un riferimento alla cartella ``utenti``.

Dalla cartella ``utenti`` continua la risoluzione del percorso e si fa accesso alla cartella ``prof``, che diventa la cartella **corrente** (``c:\utenti\prof``).

La seconda occorrenza del simbolo ``.`` viene risolta come un riferimento alla cartella ``prof``.

Dalla cartella ``prof`` il sistema fa quindi accesso alla cartella ``Documenti``, che diventa la cartella corrente (``c:\utenti\prof\Documenti``).

La terza occorrenza del simbolo ``.`` viene risolta come un riferimento alla cartella ``Documenti``.

Dalla cartella ``Documenti`` il sistema fa quindi accesso al file ``elenco.txt``.

Il file ``elenco.txt`` è quindi individuato all'interno della cartella ``Documenti``. Il percorso iniziale è stato trasformato nel percorso assoluto ``c:\utenti\prof\Documenti\elenco.txt``.

### Terzo esempio risoluzione percorso

Prendendo ad esempio il percorso:

```powershell
/home/prof/./Documenti/./elenco.txt
```

La risoluzione del percorso inizia accedendo alla cartella **root** ``/``, poi accedendo alla cartella ``home`` e quindi alla cartella ``prof``. A questo punto della risoluzione, la cartella **corrente** è quindi ``/home/prof``.

La prima occorrenza del simbolo ``.`` viene risolta come un riferimento alla cartella ``prof``.

Dalla cartella ``prof`` si fa accesso alla cartella ``Documenti``, che diventa la cartella **corrente** (``/home/prof/Documenti``).

La seconda occorrenza del simbolo ``.`` viene risolta come un riferimento alla cartella ``Documenti``.

Il file ``elenco.txt`` è quindi individuato all'interno della cartella ``Documenti``. Il percorso iniziale è stato trasformato nel percorso assoluto ``/home/prof/Documenti/elenco.txt``.

### Quarto esempio risoluzione percorso

Prendendo ad esempio il percorso:

```powershell
.\elenco.txt
```

La risoluzione del percorso inizia valutando il simbolo ``.`` che fa riferimento al percorso corrente. Dato che non è specificato nessun percorso corrente, il simbolo viene risolto facendo riferimento alla cartella di lavoro **corrente dell'utente**.

Supponendo che all'avvio della shell ci si trovi al percorso ``c:\utenti\prof``, allora il simbolo ``.`` viene risolto come un riferimento alla cartella ``prof``.

Il file ``elenco.txt`` è quindi individuato all'interno della cartella ``prof``. Il percorso iniziale è stato trasformato nel percorso assoluto ``c:\utenti\prof\elenco.txt``.

### Quinto esempio risoluzione percorso

Prendendo ad esempio il percorso:

```powershell
c:\utenti\prof\Documenti\..\elenco.txt
```

La risoluzione del percorso inizia accedendo all'unità ``c:``, accedendo poi alle directory ``utenti``, ``prof``, ``Documenti``. A questo punto della risoluzione, la cartella **corrente** è ``c:\utenti\prof\Documenti``.

Il simbolo ``..`` si riferisce alla cartella **precedente** nel percorso e quindi viene risolto come un riferimento alla cartella ``prof``.

Il file ``elenco.txt`` è quindi individuato all'interno della cartella ``prof``. Il percorso iniziale è stato trasformato nel percorso assoluto ``c:\utenti\prof\elenco.txt``.

### Sesto esempio risoluzione percorso

Prendendo ad esempio il percorso:

```powershell
c:\utenti\.\prof\..\mario\..\elenco.txt
```

La risoluzione del percorso inizia accedendo all'unità ``c:``, poi accedendo alla cartella ``utenti``. A questo punto della risoluzione, la cartella **corrente** è quindi ``c:\utenti``.

La prima occorrenza del simbolo ``.`` viene risolto come un riferimento alla cartella ``utenti``.

Dalla cartella ``utenti`` si fa accesso alla cartella ``prof``, che diventa la cartella **corrente** (``c:\utenti\prof``).

La prima occorrenza del simbolo ``..`` viene risolta come un riferimento alla cartella ``utenti`` (cartella **precedente** la cartella ``prof``).

Dalla cartella ``utenti`` il sistema fa quindi accesso alla cartella ``mario``, che diventa la cartella **corrente** (``c:\utenti\mario``).

La seconda occorrenza del simbolo ``.`` viene risolta come un riferimento alla cartella ``utenti`` (cartella **precedente** la cartella ``mario``).

Dalla cartella ``utenti`` il sistema fa quindi accesso al file ``elenco.txt``.

Il file ``elenco.txt`` è quindi individuato all'interno della cartella ``utenti``. Il percorso iniziale è stato trasformato nel percorso assoluto ``c:\utenti\elenco.txt``.

## CmdLet per la gestione dei percorsi

La gestione del percorso è svolta principalmente dalle seguenti CmdLet:

- ``Get-Location``: Restituisce la cartella di lavoro corrente;

- ``Set-Location``: Imposta la cartella indicata come cartella di lavoro corrente;

- ``Test-Path``: Verifica l'esistenza del file o della cartella.

### Impostare la cartella di lavoro corrente

L'impostazione della cartella di lavoro corrente avviene con la CmdLet ``Set-Location``, che ha la seguente sintassi:

```powershell
Set-Location [[-Path] <String>]
```

I parametri indicati nella sintassi hanno il seguente significato:

- ``Path``: il percorso della cartella da impostare come cartella corrente;

Esempio:

```powershell
Set-Location -Path "c:\utenti\prof"
```

E' possibile usare l'alias ``cd``, noto su tutti i sistemi operativi:

```powershell
cd "c:\utenti\prof"
```

### Ottenere la cartella di lavoro corrente

Per visualizzare o ottenere la cartella di lavoro corrente si utilizza la CmdLet ``Get-Location``, che ha la seguente sintassi:

```powershell
Get-Location 
```

Esempio:

```powershell
Get-Location
```

E' possibile usare l'alias ``pwd``, noto sui sistemi Gnu/Linux, Unix e Mac.

```powershell
pwd
```

### Verifica esistenza o correttezza sintattica dei percorsi

La verifica dell'esistenza o della correttezza sintattica di uno o più percorsi avviene con la CmdLet ``Test-Path``, che ha la seguente sintassi:

```powershell
Test-Path  [-Path] <String[]> [-PathType <TestPathType>] [-IsValid]
```

Questo CmdLet restituisce un valore **booleano** che, se affermativo, indica l'esistenza o la correttezza sintattica di tutti i percorsi indicati, se negativo, indica l'inesistenza o l'errata sintassi di uno dei percorsi indicato.

I parametri indicati nella sintassi hanno il seguente significato:

- ``Path``: la lista di percorsi di cui si intende verificare l'esistenza o la sintassi;

- ``IsValid``: la presenza di questo parametro specifica che si desidera verificare la correttezza sintattica del percorso indicato; l'assenza specifica che si desidera verificare l'esistenza del percorso indicato.

- ``PathType``: serve ad indicare che si vuole verificare che il percorso sia un file, una cartella o uno dei due. Può assumere uno dei seguenti valori:
  
  - ``Container``: una cartella;
  
  - ``Leaf`` un file o un collegamento;
  
  - ``Any`` qualsiasi tipo.

Per verificare l'esistenza di una cartella, si usa il comando:

```powershell
Test-Path -Path "C:\test"
```

Per verificare che la stringa indicata nel percorso sia corretta sintatticamente, si usa il comando:

```powershell
Test-Path -Path "/test" -IsValid
```

Per verificare che il file indicato esista e sia effettivamente un file, si usa il comando:

```powershell
Test-Path -Path "file.txt" -PathType "leaf"
```
