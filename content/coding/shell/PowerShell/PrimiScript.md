---
type: "powershell"
title: "03 - Primi comandi e primi script"
description: "Primi comandi e primi script"
date: 2020-04-12
publishdate: 2020-04-12
lastmod: 2020-04-12
categories: ["coding", "tools", "shell", "powershell"]
keywords: ["coding", "tools", "shell", "powershell"]
draft: false
toc: false
summary: "Primi comandi e primi script"
---

# Primi comandi e primi script

## CommandLet per gestione del terminale

I CommandLet sono i comandi che è possibile eseguire nell'ambiente PowerShell.

Per la gestione del terminale, PowerShell fornisce i seguenti CmdLet:

- ``Clear-Host``: pulisce l'area del terminale;
- ``Write-Output``: Scrive sul flusso di output;
- ``Write-Error``: Scrive sul flusso di errore;
- ``Write-Debug``: Scrive sul flusso di debug;
- ``Write-Warning``: Scrive sul flusso di warning;
- ``Write-Verbose``: Scrive sul flusso di verbose;
- ``Write-Host``: Scrive sul flusso di output personalizzando l'output;
- ``Read-Host``: Legge in input dal terminale e memorizza il valore in una variabile.

### Pulire l'area del terminale

Il CommandLet utilizzato per pulire l'area del terminale è ``Clear-Host`` che ha la seguente sintassi:

```powershell
SYNTAX
    Clear-Host [<CommonParameters>]

ALIASES
    echo
```

Non sono previsti parametri, se non quelli comuni, e non è previsto nessun output.

### Scrivere sul flusso di output

Il CommandLet utilizzato per scrivere sul flusso di output è ``Write-Output`` che ha la seguente sintassi:

```powershell
SYNTAX
    Write-Output [-InputObject] <PSObject[]>[<CommonParameters>]

ALIASES
    echo
```

Il parametro indicato nella sintassi ha il seguente significato:

- ``PSObject[]``: i messaggi o gli oggetti da scrivere in output.

Per scrivere uno o più messaggi sul terminale, si usa quindi:

```powershell
Write-Output "Hello" "World" "!!"
```

L'output è il seguente:

```powershell
Hello
World
!!
```

Si può anche utilizzare l'alias come da esempio seguente:

```powershell
echo "Hello" "World" "!!"
```

L'output è il seguente:

```powershell
Hello
World
!!
```

### Scrivere sul flusso di errore

Il CommandLet utilizzato per scrivere sul flusso di errore è ``Write-Error`` che ha la seguente sintassi:

```powershell
Write-Error [-Message] <String> [-ErrorId <String>]
```

I parametri indicati nella sintassi hanno il seguente significato:

- ``Message``: il messaggio da scrivere sul flusso di errore;
- ``ErrorId``: il codice di errore che si vuole assegnare all'errore.

Per scrivere un messaggio di errore sul terminale, si usa quindi:

```powershell
Write-Error "Hello" -ErrorId "123"
```

L'output è il seguente:

```powershell
Write-Error: Hello
```

### Scrivere sul flusso di debug

Il CommandLet utilizzato per scrivere sul flusso di debug è ``Write-Debug`` che ha la seguente sintassi:

```powershell
Write-Debug [-Message] <String>
```

Il parametro indicato nella sintassi ha il seguente significato:

- ``Message``: il messaggio da scrivere sul flusso di debug.

Per scrivere un messaggio di debug sul terminale, si usa quindi:

```powershell
Write-Debug "Hello"
```

Il comando non presenta nessun output, perchè le impostazioni predefinite non visualizzano sul terminale lo stream di output. Nel caso fosse attivato, l'output sarebbe il seguente:

```powershell
DEBUG: Hello
```

### Scrivere sul flusso di warning

Il CommandLet utilizzato per scrivere sul flusso di warning è ``Write-Warning`` che ha la seguente sintassi:

```powershell
Write-Warning [-Message] <String>
```

Il parametro indicato nella sintassi ha il seguente significato:

- ``Message``: il messaggio da scrivere sul flusso di warning.

Per scrivere un messaggio di warning sul terminale, si usa quindi:

```powershell
Write-Warning "Hello"
```

L'output è il seguente:

```powershell
Warning: Hello
```

### Scrivere sul flusso di verbose

Il CommandLet utilizzato per scrivere sul flusso di verbose è ``Write-Verbose`` che ha la seguente sintassi:

```powershell
Write-Verbose [-Message] <String>
```

Il parametro indicato nella sintassi ha il seguente significato:

- ``Message``: il messaggio da scrivere sul flusso di verbose.

Per scrivere un messaggio di verbose sul terminale, si usa quindi:

```powershell
Write-Verbose "Hello"
```

Il comando non presenta nessun output, perchè le impostazioni predefinite non visualizzano sul terminale lo stream di output. Questo stream si attiva passando il parametro ``-Verbose``, comune a tutti i CommandLet.

Per visualizzare il messaggio di verbose sul terminale, si usa quindi:

```powershell
Write-Verbose "Hello" -Verbose
```

L'output è il seguente:

```powershell
Verbose: Hello
```

### Scrivere sul flusso di output personalizzando l'output

Il CommandLet utilizzato per scrivere sul flusso di output è ``Write-Host`` che permette di personalizzare l'output:

```powershell
Write-Host [[-Object] <Object[]>] [-NoNewline] [-Separator <Object>]
    [-ForegroundColor <ConsoleColor>]  [-BackgroundColor <ConsoleColor>]
```

I parametri indicati nella sintassi hanno il seguente significato:

- ``Object[]``: lista di oggetti da scrivere sul flusso di output;
- ``NoNewline``: indica di non aggiungere caratteri di 'a capo';
- ``Separator``: indica il separatore da utilizzare;
- ``ForegroundColor``: il colore del testo;
- ``BackgroundColor``: il colore dello sfondo.

La lista di colori disponibili è la seguente: ``Black``, ``DarkBlue``, ``DarkGreen``, ``DarkCyan``, ``DarkRed``, ``DarkMagenta``, ``DarkYellow``, ``Gray``, ``DarkGray``, ``Blue``, ``Green``, ``Cyan``, ``Red``, ``Magenta``, ``Yellow``, ``White``.

Per scrivere un messaggio di output sul terminale con sfondo nero e colore testo rosso, si usa quindi:

```powershell
Write-Host "Red" "on white" "text." -NoNewline -Separator " -- "
  -ForegroundColor red -BackgroundColor white
```

L'output è il seguente:

```powershell
Red -- on white -- text.
```

Si nota che i vari oggetti sono separati dal separatore " -- " e non è presente nessun carattere 'a capo'; Il testo è in rosso e lo sfondo è in bianco.

### Leggere dal terminale

Il CommandLet utilizzato per leggere dal terminale è ``Read-Host`` che ha la seguente sintassi:

```powershell
Read-Host [[-Prompt] <Object>] [-AsSecureString]
```

I parametri indicati nella sintassi hanno il seguente significato:

- ``Prompt``: il messaggio da visualizzare;
- ``AsSecureString``: non visualizza i caratteri scritti dall'utente.

Per leggere un valore dal terminale si usa quindi:

```powershell
$nome = Read-Host "Inserisci il nome"
```

Nel caso in cui si deve inserire una password o comunque un input che non si vuole visualizzare a video, si usa l'opzione ``AsSecureString``, come nel seguente esempio:

```powershell
$nome = Read-Host "Inserisci il nome" -AsSecureString
```

## Commenti

E' possibile aggiungere commenti attraverso il carattere ``#``. In caso di commenti su più righe, questi vanno racchiusi tra i simboli di apertura e chiusura commento rappresentati da ``<#`` e ``#>``.

Ad esempio:

```powershell
 # Questo è un commento

 <# Questo è un
    commento su
    più righe #>
```

## Creazione e rimozione di Alias

E' possibile personalizzare la lista di alias per i CmdLet, aggiungendone di nuovi con il comando:

```powershell
Set-Alias -Name "wo" -Value "Write-Output"
```

A questo punto è possibile utilizzare l'alias `wo` al posto di `Write-Output`, come nell'esempio seguente:

```powershell
wo "Hello"
```

E' possibile cancellare un alias con il CmdLet:

```powershell
Remove-Alias -Name "wo"
```

## Primi script

Uno script è un elenco di istruzioni inserite in un file. Eseguire uno script consiste nell'esecuzione di tutte le istruzioni inserite nel file. L'estensione del file per gli script PowerShell è ``ps1``.

Prima di creare uno script è consigliato impostare le opzioni di salvataggio (quali codifica dei caratteri UTF-8 ed il carattere di terminazione riga) attraverso gli strumenti appositi quali [EditorConfig](/coding/tools/editorconfig/).

E' possibile creare il primo script salvando le seguenti istruzioni in un file ``esempio.ps1``:

```powershell
# Questo è il primo script

# Scrivo un messaggio
Write-Host "Inserisci il nome"

<# procedo con la lettura
    del nome dell'utente #>

$nome = Read-Host

# Scrivo il nome sullo stream di errore
Write-Error $nome
```

Per questioni di sicurezza, le impostazioni predefinite prevedono che l'esecuzione di script sia disabilitata. Per verificare le impostazioni, aprire il terminale di PowerShell ed eseguire:

```powershell
Get-ExecutionPolicy
```

L'output del comando rappresenta la politica di esecuzione degli script impostata.

Le politiche di esecuzione sono:

- ``Restricted``: script non permessi;

- ``AllSigned``: script eseguiti solo se firmati;

- ``RemoteSigned``: script eseguiti se propri o se firmati;

- ``Unrestricted``: script eseguiti sempre.

Per impostare una politica, ad esempio la politica di esecuzione senza restrizioni, eseguire:

```powershell
Set-ExecutionPolicy Unrestricted
```

Sempre per impostazioni di sicurezza predefinite, gli script non possono essere eseguiti con il doppio click del mouse.

Per eseguire lo script da terminale, è necessario indicare il nome, nel caso dell'esempio precedente è ```esempio.ps1```.

Per eseguire lo script da interfaccia grafica, cliccare con il tasto destro del mouse sullo script e scegliere da menu la voce "Esegui con powershell".
