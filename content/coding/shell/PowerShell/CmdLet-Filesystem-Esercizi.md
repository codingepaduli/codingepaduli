---
type: "powershell"
title: "05.1 Esercizi sulla gestione di file e cartelle"
description: "Esercizi sulla gestione di file e cartelle"
date: 2020-04-21
publishdate: 2020-04-21
lastmod: 2020-04-10
categories: ["coding", "tools", "shell", "powershell"]
keywords: ["coding", "tools", "shell", "powershell"]
draft: true
toc: false
summary: "Esercizi sulla gestione di file e cartelle"
---

# Esercizi sulla gestione di file e cartelle

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

## Esercizio 02 - Traccia

Realizzare in PowerShell uno script che abbia come nome il proprio cognome e che:

1. crei una cartella con nome dell'oggetto assegnato;
2. utilizzi come cartella di lavoro la cartella creata al punto 1;
3. per ogni proprietà a scelta multipla, crei una nuova cartella avente il nome della proprietà stessa;
4. per ogni voce delle proprietà a scelta multipla, crei, all'interno della cartella creata al punto 3, un nuovo file avente il nome della proprietà stessa; 
5. per le rimanenti proprietà dell'oggetto assegnato, non considerate nei punti 3 e 4, crei un nuovo file per ogni proprietà. Il file avrà il nome della proprietà e, come contenuto, un valore a scelta del tipo corrispondente;

Supponendo che l'oggetto sia un form di registrazione con nome utente, password e titolo di studio a scelta tra "diploma", "laurea" e "master", lo script realizzato dall'utente "Mario Rossi" avrà nome ``Rossi.ps1`` e genererà i seguenti file e cartelle:

```output
Form\
  nome_utente.txt (contenuto Mario)
  password.txt (contenuto 0123456789)
  Titolo\
    diploma.txt
    laurea.txt
    master.txt
```

Elenco degli oggetti da assegnare:

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
- Oggetto **sito** web con le proprietà Indirizzo, Ip e Categoria (a scelta tra le voci "Blog", "ecommerce" e "video streaming");
- Oggetto **ristorante** con le proprietà Nome, Tavoli e Prenotazione (a scelta tra le voci "pranzo", "cena" e "buffet");
