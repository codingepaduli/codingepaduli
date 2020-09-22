---
type: "powershell"
title: "05.2 Soluzioni esercizi sulla gestione di file e cartelle"
description: "Soluzioni esercizi sulla gestione di file e cartelle"
date: 2020-05-06
publishdate: 2020-05-06
lastmod: 2020-05-06
categories: ["coding", "tools", "shell", "powershell"]
keywords: ["coding", "tools", "shell", "powershell"]
draft: true
toc: false
summary: "Soluzioni esercizi sulla gestione di file e cartelle"
---

# Soluzioni esercizi sulla gestione di file e cartelle

## Esercizio 01 - Traccia

Realizzare uno script in PowerShell che crei una nuova cartella avente il proprio nome. All'interno di questa cartella:

1. scriva un nuovo file di testo assegnandogli nome a piacere ed il proprio cognome come contenuto;
2. effettui una copia del file assegnandogli il nuovo nome "copia.txt";
3. crei una seconda cartella avente il proprio cognome;
4. sposti il file "copia.txt" nella seconda cartella;
5. commentare ogni riga dello script e salvarlo assegnandogli il proprio cognome e nome.

Ipotizzando che lo studente si chiami "Mario Rossi", lo script avrà nome ``Mario Rossi.ps1`` e genererà i seguenti file:

```output
Mario\
  nome_a_piacere.txt  (contenuto: Rossi)
  Rossi\
    copia.txt
```

## Esercizio 01 - Soluzione

```powershell
# creazione cartella "Mario"
New-Item -Name "Mario" -ItemType "Directory"

# cambio cartella di lavoro
Set-Location "Mario"

# creazione nuovo file con contenuto
New-Item -Name "compito.txt" -ItemType "File" -Value "Rossi"

# copia del file
Copy-Item -Path "compito.txt" -Destination "copia.txt" 

# creazione nuova cartella
New-Item -Name "Rossi" -ItemType "Directory"

# spostamento della copia del file nella nuova cartella
Move-Item -Path "copia.txt" -Destination "Rossi"
```

## Esercizio 02 - Traccia

Realizzare in PowerShell uno script che abbia come nome il proprio cognome e che:

1. crei una cartella con nome dell'oggetto assegnato;
2. utilizzi come cartella di lavoro la cartella creata al punto 1;
3. per ogni proprietà a scelta multipla, crei una nuova cartella avente il nome della proprietà stessa;
4. per ogni voce delle proprietà a scelta multipla, crei, all'interno della cartella corrispondente creata al punto 3, un nuovo file avente il nome della proprietà stessa; 
5. per le rimanenti proprietà dell'oggetto assegnato, non considerate nei punti 3 e 4, crei un nuovo file per ogni proprietà. Il file avrà il nome della proprietà e, come contenuto, un valore a scelta del tipo corrispondente;

Supponendo che l'oggetto sia un form di registrazione con nome utente, password e titolo di studio a scelta tra "diploma", "laurea" e "master", lo script realizzato dall'utente "Mario Rossi" avrà nome ``Rossi.ps1`` e genererà i seguenti file:

```output
Form\
  nome_utente.txt (contenuto Mario)
  password.txt (contenuto 0123456789)
  Titolo\
    diploma.txt
    laurea.txt
    master.txt
```

- Oggetto **canzone** con le proprietà Autore, Album, Genere (a scelta tra le voci "Pop", "Rock", "Rap"); 
- Oggetto **film** con le proprietà Regista, Protagonista, Genere (a scelta tra le voci "Fantasy", "Horror", "Drammatico");
- Oggetto **biglietto** con le proprietà Numero, Intestatario, TipoEvento (a scelta tra le voci "Calcio", "Concerto", "Teatro");
- Oggetto **viaggio** con le proprietà Prezzo, Compagnia e Localita (a scelta tra le voci "Roma", "Milano", "Torino");
- Oggetto **auto** con le proprietà Targa, Colore e Marca (a scelta tra le voci "Fiat", "Mercedes", "Audi"); 
- Oggetto **documento** con le proprietà Numero, Scadenza e Tipo (a scelta tra le voci "Patente", "Carta identità", "Passaporto"); 
- Oggetto **indirizzo** con le proprietà Comune (a scelta tra le voci "Domodossola", "Verbania", "Anzola"), Provincia (a scelta tra le voci "Verbania", "Milano", "Roma"), Cap;
- Oggetto **squadra** con le proprietà Nome, Sport (a scelta tra le voci "Calcio", "Tennis", "Ippica"), Allenatore;
- Oggetto **libro** con le proprietà Autore, Genere (a scelta tra le voci "Fantasy", "Drammatico", "ISBN");
- Oggetto **albergo** con le proprietà Nome, Stelle e Comune (a scelta tra le voci "Como", "Novara", "Verona");
- Oggetto **computer** con le proprietà Costo, Modello e Marca (a scelta tra le voci "HP", "Lenovo", "Acer");
- Oggetto **foto** con le proprietà Risoluzione, Formato (a scelta tra le voci "15:10", "21:16", "28:20") e sfondo (a scelta tra le voci "natura", "fantasia", "città");
- Oggetto **ospedale** con le proprietà Nome, Luogo e Reparti (a scelta tra le voci "Nefrologia", "Neurologia", "Cardiologia");
- Oggetto **smartphone** con le proprietà Schermo (a scelta tra le voci "Retina", "Amoled", "LCD"), Batteria e Marca (a scelta tra le voci "Samsung", "Apple", "Xiaomi").

## Esercizio 02 - Soluzioni

Script per la creazioe dell'oggetto "foto":

```powershell
# crea la cartella avente lo stesso nome dell'oggetto "foto"
New-Item -Name "foto" -ItemType "Directory"

# imposta la cartella "foto" quale cartella di lavoro
Set-Location -Path "foto"

# crea un file di testo per ogni proprietà scalare dell'oggetto
New-Item -Name "sfondo.txt"  -ItemType "File"

# crea la cartella per la proprietà a scelta singola "risoluzione"
New-Item -Name "risoluzione" -ItemType "Directory"

# imposta la cartella "risoluzione" quale cartella di lavoro
Set-Location -Path "risoluzione"

# crea un file per ogni voce della proprietà a scelta singola
New-Item -Name "4k.txt" -ItemType "File"
New-Item -Name "8k.txt" -ItemType "File"

# imposta la cartella di lavoro al livello precedente, tornando nella cartella "foto"
Set-Location -Path ".."

# crea la cartella per la proprietà a scelta singola "sfondo"
New-Item -Name "sfondo" -ItemType "Directory"

# imposta la cartella "sfondo" quale cartella di lavoro
Set-Location -Path "sfondo"

# crea un file per ogni voce della proprietà a scelta singola
New-Item -Name "natura.txt" -ItemType "File"
New-Item -Name "citta.txt"  -ItemType "File"

# ritorna alla cartella in cui è stato richiamato lo script
Set-Location -Path "../../"
```

Script per la creazioe dell'oggetto "documento":

```powershell
# crea la cartella avente lo stesso nome dell'oggetto "documento"
New-Item -Name "Documento" -ItemType "Directory"

# crea un file di testo per ogni proprietà scalare dell'oggetto
New-item -Name "Numero.txt"   -ItemType "File" -Path "Documento" -Value "3"
New-item -Name "Scadenza.txt" -ItemType "File" -Path "Documento" -Value "20/11/2390"

# crea la cartella per la proprietà a scelta singola "tipo"
New-item -Name "Tipo" -ItemType "Directory" -Path "Documento"

# crea un file per ogni voce della proprietà a scelta singola
New-item -Name "Patente.txt"        -ItemType "File" -Path "Documento\Tipo"
New-item -Name "CartaIdentita.txt"  -ItemType "File" -Path "Documento\Tipo"
New-item -Name "Passaporto.txt"     -ItemType "File" -Path "Documento\Tipo"
```

Script per la creazioe dell'oggetto "indirizzo":

```powershell
# crea la cartella avente lo stesso nome dell'oggetto "indirizzo"
New-Item -ItemType "Directory" -Name "Indirizzo"

# imposta la cartella "indirizzo" quale cartella di lavoro
Set-Location "Indirizzo"

# crea una cartella per ogni proprietà a scelta singola
New-Item -ItemType "Directory" -Name "Comune"
New-Item -ItemType "Directory" -Name "Provincia"

# imposta la cartella "comune" quale cartella di lavoro
Set-Location "Comune"

# crea un file per ogni voce della proprietà
New-Item -ItemType "File" -Name "Domodossola.txt"
New-Item -ItemType "File" -Name "Verbania.txt"
New-Item -ItemType "File" -Name "Anzola.txt"

# imposta la cartella "provincia" quale cartella di lavoro
## Il ".." permette di tornare al livello precedente per poi scegliere "provincia"
Set-Location  "../Provincia"

# crea un file per ogni voce della proprietà
New-Item -ItemType "File" -Name "verbania.txt"
New-Item -ItemType "File" -Name "Milano.txt"
New-Item -ItemType "File" -Name "Roma.txt"

# imposta la cartella "provincia" quale cartella di lavoro
## Il ".." permette di tornare al livello precedente
Set-Location  ".."

# crea un file di testo per la proprietà scalare dell'oggetto
New-Item -ItemType "File" -Name "Cap.txt"  -Value "28845"

# ritorna alla cartella in cui è stato richiamato lo script
Set-Location  ".."
```

Script per la creazioe dell'oggetto "ospedale":

```powershell
# crea la cartella avente lo stesso nome dell'oggetto "ospedale"
New-Item -Name "Ospedale" -ItemType "Directory"

# imposta la cartella "Ospedale" quale cartella di lavoro
Set-Location -Path "Ospedale"

# crea un file di testo per ogni proprietà scalare dell'oggetto
New-Item -Name "Nome.txt" -ItemType "File" -Value "San Biagio"
New-Item -Name "Luogo.txt"-ItemType "File" -Value "Domodossola"

# crea la cartella per la proprietà a scelta singola "Reparto"
New-Item -Name "Reparto" -ItemType "Directory"

# imposta la cartella "Reparto" quale cartella di lavoro
Set-Location -Path "Reparto"

# crea un file per ogni voce della proprietà a scelta singola
New-Item -Name "Nefrologia.txt"  -ItemType "File"
New-Item -Name "Neurologia.txt"  -ItemType "File"
New-Item -Name "Cardiologia.txt" -ItemType "File"

# ritorna alla cartella in cui è stato richiamato lo script
Set-Location -Path "../../"
```
