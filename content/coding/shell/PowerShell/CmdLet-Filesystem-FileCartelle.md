---
type: "powershell"
title: "05 - Filesystem - Gestione file e cartelle"
description: "Gestione file e cartelle"
date: 2020-04-15
publishdate: 2020-04-15
lastmod: 2020-04-15
categories: ["coding", "tools", "shell", "powershell"]
keywords: ["coding", "tools", "shell", "powershell"]
draft: false
toc: false
summary: "Gestione file e cartelle"
---

# Gestione di file e cartelle

La gestione di file e cartelle è gestita dal provider ``Filesystem``.

## CmdLet per la gestione di file e cartelle

La gestione di file e cartelle è fatta dalle seguenti CmdLet:

- ``Copy-Item``: copia un file, una cartella o una voce di registro;
- ``Get-Item``: accedere al file o alla cartella riferita dal percorso;
- ``Get-ChildItem``: restituisce i file contenuti in una cartella o le voci di registro contenute in un percorso;
- ``Move-Item``: sposta un file, una cartella o una voce di registro;
- ``New-Item``: crea un file, una cartella o una voce di registro;
- ``Remove-Item``: cancella un file, una cartella o una voce di registro;
- ``Rename-Item``: rinomina un file, una cartella o una voce di registro;

### Creazione file, cartelle e collegamenti

La creazione di un file o una cartella avviene con la CmdLet ``New-Item``, che ha la seguente sintassi:

```powershell
New-Item [-Path] <String[]> -Name <String>
    [-ItemType <String>] [-Value <Object>] [-Force]
```

I parametri indicati nella sintassi hanno il seguente significato:

- ``Path``: indica il percorso in cui creare il file o la cartella;

- ``Name``: indica il nome del file o della cartella da creare;

- ``Value``: indica il contenuto iniziale del nuovo file o il file a cui si fa riferimento in un nuovo collegamento;

- ``Force``: forza l'eliminazione di file nascosti o di sola lettura;

- ``ItemType``: serve ad indicare il tipo di contenuto da creare e può assumere uno dei seguenti valori:
  
  - ``File``;
  
  - ``Directory``;
  
  - ``SymbolicLink``;

Esempi d'uso:

Per creare un file di nome "nuovo.txt" nella locazione di lavoro corrente si usa quindi il seguente comando:

```powershell
New-Item -Name "nuovo.txt" -ItemType "file"
```

Per creare un file di nome "nuovo.txt" alla locazione "/" si usa il comando:

```powershell
New-Item -Path "/" -Name "nuovo.txt" -ItemType "file"
```

Per creare un file di nome "nuovo.txt" alla locazione "/" e con il contenuto iniziale "nuovo file" si usa il comando:

```powershell
New-Item -Path "/" -Name "nuovo.txt" -ItemType "file" -Value "nuovo file"
```

Per creare una cartella, si usa il comando:

```powershell
New-Item -Name "nuovo.txt" -ItemType "Directory"
```

Per creare un collegamento simbolico, si usa il comando:

```powershell
New-Item -ItemType "SymbolicLink" -Name "link" -Value "nuovo.txt"
```

Per una descrizione accurata della CommandLet, si rimanda alla guida online.

### Eliminazione di file, cartelle e collegamenti

La rimozione di un file, una cartella o un collegamento avviene con il CmdLet ``Remove-Item``, che ha la seguente sintassi:

```powershell
Remove-Item [-Path] <String[]> [-Filter <String>]
    [-Include <String[]>] [-Exclude <String[]>]
    [-Recurse] [-Force]
```

I parametri indicati nella sintassi hanno il seguente significato:

- ``Path``: indica il percorso in cui eliminare file o cartelle;

- ``Filter``: indica di selezionare i file o le cartelle corrispondenti al filtro indicato;

- ``Include``: indica uno schema per selezionare file o cartelle da eliminare;

- ``Exclude``: indica uno schema per escludere file o cartelle dall'eliminazione;

- ``Recurse``: elimina ricorsivamente anche tutte le voci innestate;

- ``Force``: forza l'eliminazione di file nascosti o di sola lettura.

Esempio d'uso:

```powershell
Remove-Item -Path "C:\Test\hidden-RO-file.txt"
```

Per eliminare una cartella vuota si esegue il comando:

```powershell
Remove-Item -Path "C:\Test\"
```

Nel caso la cartella non fosse vuota, il comando chiederebbe conferma all'utente della cancellazione di tutte le voci contenute.

Per eliminare in maniera ricorsiva una cartella con tutte le sottocartelle ed i file contenuti si esegue il comando:

```powershell
Remove-Item -Path "C:\Test\" -Recurse
```

### Rinominare file o cartella

Per rinominare un file o una cartella si usa il CmdLet ``Rename-Item``, che ha la seguente sintassi:

```powershell
Rename-Item [-Path] <String> [-NewName] <String> [-Force]
```

I parametri indicati nella precedente sintassi hanno il seguente significato:

- ``Path``: indica il percorso in cui testare file o cartelle;
- ``NewName``: indica il nuovo nome da assegnare;
- ``Force``: forza la rinominazione di un file nascosto o di sola lettura;

Esempio d'uso:

```powershell
Rename-Item -Path "daily_file.txt" -NewName "monday_file.txt"
```

### Spostare file o cartelle

Per spostare un file o una cartella si usa il CmdLet ``Move-Item`` che ha la seguente sintassi:

```powershell
Move-Item [-Path] <String[]> [[-Destination] <String>] [-Force]
```

I parametri indicati nella sintassi hanno il seguente significato:

- ``Path``: indica il file o la cartella da spostare;

- ``Destination``: indica dove spostare il file o la cartella;

- ``Force``: forza lo spostamento di file nascosti o di sola lettura;

Esempio d'uso:

```powershell
Move-Item -Path "C:\test.txt" -Destination "E:\Temp\tst.txt"
```

### Copiare file o cartelle

Per copiare un file o una cartella si usa il CmdLet ``Copy-Item`` che ha la seguente sintassi:

```powershell
Copy-Item [-Path] <String[]> [[-Destination] <String>] [-Force]
```

I parametri indicati nella sintassi hanno il seguente significato:

- ``Path``: indica il file o la cartella da spostare;

- ``Destination``: indica dove spostare il file o la cartella;

- ``Force``: forza lo spostamento di file nascosti o di sola lettura;

Esempio d'uso:

```powershell
Copy-Item -Path "C:\test.txt" -Destination "E:\Temp\tst.txt"
```

### Accesso al file o alla cartella

Per accedere al file o alla cartella indicata nel percorso si usa il CmdLet ``Get-Item`` che ha la seguente sintassi:

```powershell
Get-Item [-Path] <String[]> [-Force]
```

I parametri indicati nella precedente sintassi hanno il seguente significato:

- ``Path``: indica il percorso del file o della cartella a cui accedere;
- ``Force``: forza l'accesso ad un file nascosto o di sola lettura;

Esempio d'uso:

```powershell
Get-Item -Path "C:\test.txt"
```

### Accesso ai file e cartelle contenute in un percorso

Per accedere ai file e cartelle contenute in un percorso si usa il CmdLet ``Get-ChildItem`` che ha la seguente sintassi:

```powershell
Get-ChildItem [-Path] <String[]> [-Recurse] [-Depth <uint32>]
    [-FollowSymlink] [-Directory] [-File] [-Hidden] [-ReadOnly]
```

I parametri indicati nella precedente sintassi hanno il seguente significato:

- ``Path``: indica il percorso del file o della cartella a cui accedere;
- ``Recurse``: effettua un accesso ricorsivo a tutti i file e cartelle contenuti nel percorso indicato e ne restituisce tutti i file e cartelle trovati;
- ``Depth``: indica la profondità massima di sotto-cartelle a cui accedere durante l'operazione ricorsiva;
- ``FollowSymlink``: indica di accedere anche ai link simbolici durante l'operazione di accesso ricorsivo e restituire i file e cartelle contenuti in questi ultimi;
- ``Directory``: indica di restituire solo la lista di cartelle;
- ``File``: indica di restituire solo la lista di file;
- ``Hidden``: indica di restituire solo i file nascosti;
- ``ReadOnly``: indica di restituire solo i file di sola lettura;

Esempio d'uso:

```powershell
Get-ChildItem -Path "C:\test"
```

L'output prodotto è il seguente:

```output
Directory: C:\Test

Mode                LastWriteTime         Length Name
----                -------------         ------ ----
d-----        2/15/2019     13:21                cartella1
d-----        2/15/2019     08:28                cartella2
d-----        2/15/2019     13:21                Backup
-a----        2/12/2019     16:16             20 fileTemp2.txt
-a----        2/13/2019     13:26             20 fileTemp2.txt
-a----        2/12/2019     16:24             23 systemlog1.log
```
