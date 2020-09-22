---
type: "powershell"
title: "02 - Concetti principali"
description: "Concetti principali"
date: 2020-04-11
publishdate: 2020-04-11
lastmod: 2020-04-11
categories: ["coding", "tools", "shell", "powershell"]
keywords: ["coding", "tools", "shell", "powershell"]
draft: false
toc: false
summary: "Concetti principali"
---

# Concetti principali

## Moduli

Un modulo è un pacchetto che contiene comandi, provider, funzioni, variabili, alias ed altro ancora.

I moduli possono essere aggiunti e rimossi dall'ambiente PowerShell e sono tipicamente organizzati per tematica:, esiste il modulo per la sicurezza, il modulo per gli oggetti di utilità, ecc...

E' possibile visualizzare la lista di moduli presenti sul proprio ambiente, attraverso il comando:

```powershell
Get-Module -ListAvailable
```

L'output riportato è il seguente:

```output
Directory: /opt/microsoft/powershell/7/Modules

ModuleType Version    PreRelease Name                                PSEdition
---------- -------    ---------- ----                                ---------
Manifest   1.2.5                 Microsoft.PowerShell.Archive        Desk
Manifest   7.0.0.0               Microsoft.PowerShell.Host           Core
Manifest   7.0.0.0               Microsoft.PowerShell.Management     Core
Manifest   7.0.0.0               Microsoft.PowerShell.Security       Core
Manifest   7.0.0.0               Microsoft.PowerShell.Utility        Core
Script     1.4.6                 PackageManagement                   Desk
Script     2.2.3                 PowerShellGet                       Desk
Script     2.0.5                 PSDesiredStateConfiguration         Core
Script     2.0.0                 PSReadLine                          Desk
Binary     2.0.3                 ThreadJob                           Desk
```

## Providers e drive

I provider sono oggetti che fanno parte del ``.Net Framework`` (lo stesso di PowerShell) e che forniscono un accesso specializzato ad una collezione di dati. Vi è un provider che gestisce file e cartelle, uno che gestire gli alias, uno che gestire le variabili d'ambiente, ecc... 

L'utente può creare nuovi provider per gestire altre collezioni di dati.

E' possibile visualizzare la lista di moduli presenti sul proprio ambiente, attraverso il comando:

```powershell
Get-PSProvider
```

L'output riportato è il seguente:

```output
Name                 Capabilities                  Drives
----                 ------------                  ------
Alias                ShouldProcess                 {Alias}
Environment          ShouldProcess                 {Env}
FileSystem           Filter, ShouldProcess, Crede… {/, Temp}
Function             ShouldProcess                 {Function}
Variable             ShouldProcess                 {Variable}
```

Un provider può fornire più punti d'accesso alla collezione di dati. Ad esempio l'accesso al filesystem su ambienti Windows è fornito attraverso i drive ``c:``, ``d:``, ..., ognuno dei quali fornisce un punto d'accesso ad un disco logico.

## Sessioni

Le sessioni sono utilizzate per memorizzare le informazioni relative ad una connessione locale o remota ad un computer.

Le sessioni sono memorizzate sul computer a cui ci si collega, in modo tale da permettere la disconnessione e la successiva riconnessione da un altro computer.

## CommandLet

I CommandLet sono i comandi "interni" che è possibile eseguire nell'ambiente PowerShell. Per una lista completa di CmdLet disponibili, eseguire il comando:

```powershell
Get-Command
```

I CommandLet hanno un nome composto ``Verbo-Oggetto`` in modo da identificare in maniera semplice l'operazione eseguita.

Tra i verbi comunemente usati vi sono:

- Get: Per recuperare un valore o un oggetto;
- Set: Per impostare un valore o un oggetto;
- Start: Per avviare un processo;
- Stop: Per stoppare un processo;
- Out: Per scrivere in output un valore o un oggetto;
- New: Per creare un oggetto.

Tra gli oggetti comunemente usati vi sono:

- Help: la guida in linea;
- Command: un CommandLet;
- Service: un servizio;
- Member; un parametro;
- Item: un oggetto generico.

Ad esempio il CommandLet utilizzato per pulire lo schermo è il seguente:

```powershell
Clear-Host
```

### Parametri

I CmdLet possono prendere in input una lista di parametri. I parametri vengono generalmente passati al CmdLet come coppie "nome valore", col nome del parametro generalmente preceduto dal carattere ``-``.

Tutti i CommandLet prendono una serie comune di argomenti, tra cui:

- ``-?`` che mostra la guida in linea del CommandLet invocato;
- ``-Verbose`` mostra un output molto dettagliato.

Un esempio di CmdLet che prende in input un parametro e lo stampa in output nel terminale è il seguente:

```powershell
Write-Output -InputObject "Hello World!!"
```

L'output generato dal CmdLet è di seguito riportato:

```output
Hello World!!
```

### Alias

Powershell associa ai diversi CmdLet disponibili una serie di alias gia familiari a chi proviene da altre shell, facilitando il passaggio a Powershell.

Per ottenere la lista completa di alias, si usa la CmdLet:

```powershell
Get-Alias
```

Per visualizzare il CommandLet corrispondente ad un alias, si utilizza il CmdLet seguente:

```powershell
Get-Alias "Write-Output"
```

## Redirezioni

Le redirezioni permettono di inviare un flusso di dati ad un file o alla console. Invocando comandi e funzioni vengono generati dei flussi di dati, tipicamente due, quello di errore e quello di successo, che sono inviati alla console.

Powershell, invece, genera più di due flussi: di errore, di successo, di debug, di informazioni, di allarmi, ecc.. Questa gestione è più vicina alle modalità di lavoro di un programmatore.

## Pipeline

Le pipeline, identificate dal carattere ``|``, permettono di collegare due comandi.

Collegati in pipeline, il risultato di un comando precedente viene inviato in input ad un successivo comando che lo elabora. A sua volta, questo risultato prodotto può essere inviato, sempre tramite pipeline, ad un ulteriore comando che lo elabora.

Il risultato è una complessa catena di comandi, detta appunto pipeline, che si presenta in questo modo:

```powershell
Command-1 | Command-2 | Command-3
```

## Variabili

Le variabili sono spazi di memoria in cui vengono memorizzate delle informazioni. Hanno un nome ed un tipo associato, ad esempio tipo numerico, tipo booleano o tipo "stringa". PowerShell utilizza le variabili per memorizzare informazioni sull'utente, sull'ambiente di esecuzione, ecc...

L'utente può creare le proprie variabili per memorizzare dati e preferenze. Ad esempio:

```powershell
$variabileNumerica = 2;
$variabileTestuale = "2";
```

Dato che PowerShell è basato su oggetti, una variabile può contenere un oggetto ed è possibile accedere ai campi ed ai metodi dell'oggetto.

Per i dettagli relativI ad un tipo di dato, si rimanda alla documentazione del ``.Net Framework``.

## Guida in linea

La guida in linea è il punto di riferimento per informazioni dettagliate su uno specifico argomento. Per visualizzare la guida in linea, eseguire:

```powershell
Get-Help
```

Per visualizzare la guida in linea su uno specifico CommandLet si può utilizzare il comando ``Get-Help`` passando come parametro il nome del comando, come nel seguente esempio:

```powershell
Get-Help Write-Output
```

Allo stesso modo si può visualizzare la guida in linea del CmdLet invocandolo con il parametro ``-?``, come ne seguente esempio:

```powershell
Write-Output -?
```

La guida in linea mostrata in entrambi gli esempi è la seguente:

```output
NAME
    Write-Output

SYNTAX
    Write-Output [-InputObject] <psobject> [-NoEnumerate] [<CommonParameters>]

ALIASES
    echo

REMARKS
    Get-Help cannot find the Help files for this cmdlet on this computer.
        It is displaying only partial help.
        -- To download and install Help files for the module that
           includes this cmdlet, use Update-Help.
        -- To view the Help topic for this cmdlet online, type:
           "Get-Help Write-Output -Online" or go to
           https://go.microsoft.com/fwlink/?LinkID=2097117
```

La guida mostra:

- il nome del comando;

- la sintassi con i parametri obbligatori indicati tra parentesi angolari (``<`` e ``>``) e i parametri facoltativi indicati tra parentesi quadrate (``[`` e ``]``);

- la lista di alias associati al comando;

- il messaggio che indica che la guida completa non è presente e che è possibile scaricarla invocando il CmdLet ``Update-Help`` oppure si può visualizzare al link indicato nel messaggio.

Aggiornata la guida in linea, verranno mostrate le descrizioni di tutti i parametri, di tutti gli oggetti in input ed in output, gli esempi ed i collegamenti consigliati.

<!-- 

Per la lista di comandi con il parametro WhatIf

# Get-Command | where { $_.parameters.keys -Contains "WhatIf"}

# Get-Command -commandType cmdlet | where { $_.parameters.keys -Contains "Confirm"}

-->
