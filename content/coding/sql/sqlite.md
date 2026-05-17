---
type: "sql"
title: "La linea di comando di SQLite"
description: "La linea di comando di SQLite"
date: 2026-05-17
publishdate: 2025-05-17
categories: ["coding", "sql"]
keywords: ["coding", "sql"]
draft: false
toc: false
summary: "La linea di comando di SQLite"
weight: 11002
---

# SQL - Comandi da CLI

## DBMS Relazionali

I RDBMS (Relational Database Management Systems) sono sistemi per memorizzare e gestire le basi di dati relazionali, che sono organizzate in tabelle e relazioni tra tabelle (le chiavi tengono traccia delle relazioni). Utilizzano il linguaggio SQL per la gestione delle basi di dati e per gestire i dati che queste contengono.

Il linguaggio SQL lo si può dividere in:

- DDL (Data Definition Language): definisce i comandi SQL che gestiscono **la struttura** delle basi di dati (i database, composti da tabelle, indici, viste, schemi, ...).
- DML (Data Manipulation Language): definisce i comandi SQL per gestire **i dati memorizzati** nelle basi di dati (nei database).

Tra i RDBMS più comuni abbiamo:

- **Oracle Database** e **Microsoft SQL Server**, rispettivamente di Oracle srl e di Microsoft srl, sono RDBMS enterprise con funzioni avanzate per sicurezza, scalabilità e gestione di grandi carichi di lavoro.
- **PostgreSQL**, **MySQL** e **MariaDB**: RDBMS relazionali open source avanzati, veloci e semplici da usare, ampiamente utilizzati in applicazioni web e hosting.
- **SQLite**: un RDBMS particolare, leggero, non prevede un server (serverless) ed ogni base di dati è memorizzata in un file; E' il DBMS ideale per applicazioni locali e per mobile.

## Creazione database

Per creare un file contenente il database tramite terminale, è possibile eseguire:

```bash
sqlite3 /percorso/al/file.db
```

Se il comando è corretto, si accederà al prompt, che apparirà simile a questo:

```plaintext
sqlite>
```

SQLite non prevede l'istruzione di creazione database, perchè il database è un file.

```sql
CREATE DATABASE gaming;
```

## Crea la tabella

Per creare una nuova tabella, utilizza il comando CREATE TABLE. Ecco un esempio di come creare una tabella chiamata videogiochi:

```sql
CREATE TABLE videogiochi (
    ID_Videogioco INTEGER PRIMARY KEY AUTOINCREMENT,
    Titolo TEXT NOT NULL,
    Genere TEXT,
    Data_Uscita INTEGER,
    Piattaforma TEXT
) STRICT;
```

Nota: La parola ``STRICT`` impedisce dichiarazioni ambigue di tipo, assicura maggiore rigidità tipologica e prevedibilità dei dati.

Quando crei una tabella in SQLite utilizzando il comando ``CREATE TABLE``, se l'operazione ha successo riceverai un messaggio di conferma che appare come segue:

```plaintext
Query OK, 0 rows affected (0.01 sec)
```

Se c'è un errore di sintassi nel comando SQL, riceverai un messaggio di errore che indica la linea in cui è stato riscontrato l'errore. Ad esempio:

```plaintext
You have an error in your SQL syntax at line X;
```

## Visualizza schema e tabelle

Per visualizzare lo schema del database, utilizza il comando:

```sql
.schema
```

Per visualizzare le tabelle presenti nel database selezionato, utilizza il comando:

```sql
.tables
```

Puoi utilizzare il comando ``.schema`` seguito dal nome della tabella per visualizzare la struttura della tabella, inclusi i nomi dei campi, i tipi di dati e altre informazioni.

```sql
.schema videogiochi;
```

## Inserire un dato nella tabella

Per inserire un dato nella tabella del database selezionato, utilizza il comando:

```sql
INSERT INTO videogiochi (Titolo, Genere, Data_Uscita, Piattaforma)
VALUES ('The Legend of Zelda', 'Avventura', 2017, 'Nintendo');
```

## Visualizzare i dati presenti nella tabella

Per visualizzare i dati presenti nella tabella del database selezionato, utilizza il comando:

```sql
SELECT * FROM videogiochi;
```

## Consegnare lo script sql

Tutti i comandi devono essere salvati in uno script sql, ovvero un file di testo contenente i comandi SQL, da consegnare all'amministratore del DBMS.

E' possibile inserire i commenti usando il doppio trattino:

```sql
-- autore: mario rossi 
-- data: 28-12-2026

CREATE TABLE videogiochi (
    ID_Videogioco INT AUTO_INCREMENT PRIMARY KEY,
    Titolo VARCHAR(255) NOT NULL,
    Genere VARCHAR(100),
    Data_Uscita INT,
    Piattaforma VARCHAR(100)
);

-- inserisco i giochi
INSERT INTO videogiochi (Titolo, Genere, Data_Uscita, Piattaforma)
VALUES ('The Legend of Zelda', 'Avventura', 2017, 'Nintendo');

-- query tutti i giochi
SELECT * FROM videogiochi;

-- mostra database e tabelle
.schema
.tables
```

## Eseguire uno script sql

Per eseguire uno script sql, ovvero un file contenente i comandi SQL, è necessario assicurarsi di essere nella cartella corretta:

```sql
.read script.sql
```

## Uscire dall'ambiente sql

Per scollegarsi dal DBMS SQLite è necessario eseguire il comando seguente:

```sql
.quit;
```
