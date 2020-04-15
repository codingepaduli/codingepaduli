---
type: "powershell"
title: "02 - Uso di CommandLet"
description: "Uso di CommandLet"
date: 2020-04-11
publishdate: 2020-04-11
lastmod: 2020-04-11
categories: ["coding", "tools", "shell", "powershell"]
keywords: ["coding", "tools", "shell", "powershell"]
draft: false
toc: false
summary: "Uso di CommandLet"
---

# Uso di CommandLet

## CommandLet

I CommandLet sono i comandi "interni" che è possibile eseguire nell'ambiente PowerShell.

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

Un esempio di CommandLet utilizzato per pulire lo schermo è il seguente:

```powershell
Clear-Host
```

Per una lista completa di CmdLet disponibili, eseguire il comando:

```powershell
Get-Command
```

## Parametri

I CmdLet possono prendere in input una lista di parametri. I parametri vengono passati al CmdLet come coppie "nome valore", col nome del parametro preceduto dal carattere ``-`` e separato dal valore da uno spazio o anche come lista di valori.

Tutti i CommandLet prendono una serie comune di argomenti, tra cui:

- ``-?`` che mostra la guida in linea del CommandLet invocato; 
- ``-WhatIf`` simula il CommandLet, ma non lo esegue;
- ``-Verbose`` mostra un output molto dettagliato.

Un esempio di CmdLet che prende in input un parametro e lo stampa in output nel terminale è il seguente:

```powershell
Write-Output -InputObject "Hello World!!"
```

E' possibile scriverlo anche passando la lista di valori:

```powershell
Write-Output "Hello World!!"
```

L'output generato da entrambi i precedenti CmdLet è di seguito riportato:

```powershell
Hello World!!
```

## Alias

Powershell associa ai diversi CmdLet disponibili una serie di alias gia familiari a chi proviene da altre shell, facilitando il passaggio a Powershell.

Per ottenere la lista completa di alias, si usa la CmdLet:

```powershell
Get-Alias
```

E' possibile personalizzare la lista di alias per i CmdLet, aggiungendone di nuovi con il comando:

```powershell
Set-Alias -Name "wo" -Value "Write-Output"
```

A questo punto è possibile utilizzare l'alias ``wo`` al posto di ``Write-Output``, come nell'esempio seguente:

```powershell
wo "Hello"
```

E' possibile cancellare un alias con il CmdLet:

```powershell
Remove-Alias -Name "wo"
```

Per visualizzare il CommandLet corrispondente ad un alias, si utilizza il CmdLet seguente:

```powershell
Get-Alias "Write-Output"
```

## Guida in linea

La guida in linea è il punto di partenza per imparare ad usare uno specifico CommandLet, per visualizzare i parametri obbligatori e facoltativi e per visualizzare la lista di alias conosciuti.

Ad esempio la guida in linea del CmdLet ``Write-Output`` è generata dal comando seguente:

```powershell
Write-Output -?
```

La guida in linea mostrata è la seguente:

```powershell
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
