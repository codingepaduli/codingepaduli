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

In sqlite la creazione e cancellazione di un database corrisponde alla creazione e cancellazione di un file.

Il database va creato con tramite terminale con il comando:

```bash
sqlite3 /percorso/al/file.db
```

Con questo comando, si entra anche nella shell di SQLite, si può uscire scrivendo ``.exit``:

```text
SQLite version 3.x.x
Enter ".help" for usage hints.
sqlite>
```

Cancellando il file ``nome_db.sqlite``, si cancella anche il database.

## Comandi con SQLite

I comandi si possono invocare in due modalità:

- eseguendoli direttamente dalla linea di comando:

```bash
sqlite3 nome_db.sqlite .schema
```

- entrando nella shell e poi eseguendo i comandi:

```bash
sqlite3 nome_db.sqlite
```

Entrati nella shell, si eseguono i comandi:

```text
SQLite version 3.x.x
Enter ".help" for usage hints.
sqlite> .schema
```

## Gestione tabelle

Comando per creare una tabella:

```sql
CREATE TABLE tabella (
  id INTEGER PRIMARY KEY,
  numInt integer INTEGER,
  numReal real REAL,
  campi_binari BLOB, -- campo binario
  numero NUMERIC,
  testo TEXT,
  date_time TEXT   -- campo TEXT anche per date, formato 'YYYY-MM-DD HH:MM:SS'
) STRICT;
```

L'istruzione **STRICT** indica che si vuole una validazione stringente dei tipi e dei dati inseriti.

Cancellare una tabella:

```sql
DROP TABLE nome_tabella;
```

Rinominare una tabella:

```sql
ALTER TABLE nome_tabella RENAME TO nuovo_nome_tabella;
```

Aggiungere una colonna ad una tabella:

```sql
ALTER TABLE tipi_unici_sqlite ADD COLUMN nuova_text TEXT;
```

La cancellazione di una colonna di una tabella **non è supportata**.

## Operazioni sui dati

Le operazioni sui dati sono dette CRUD: Create (insert), Read, Update e Delete.

```sql
INSERT INTO tabella (colonna1, colonna2)
VALUES (valore1, valore2);
```

SQLite **non supporta** la sintassi ``INSERT INTO tabella SET colonna1=valore1;``.

```sql
SELECT * FROM tabella WHERE condizione;
```

```sql
UPDATE tabella SET colonna1 = valore1 WHERE condizione;
```

```sql
DELETE FROM tabella; -- cancella tutti i dati
DELETE FROM tabella WHERE condizione; -- cancella in base alla condizione
```

## Operazioni sui vincoli

SQLite non supporta la modifica dei vincoli su una tabella. Queste istruzioni non sono valide:

```sql
ALTER TABLE table_name ADD CONSTRAINT pk_name PRIMARY KEY (col);
ALTER TABLE table_name DROP CONSTRAINT pk_name;
ALTER TABLE table_name ADD CONSTRAINT uq_name UNIQUE (col);
ALTER TABLE table_name DROP CONSTRAINT uq_name;
```

Le operazioni vanno fatte direttamente nell'istruzione di create table.

```sql
CREATE TABLE tabella (
  ...
  CONSTRAINT pk_esempio PRIMARY KEY (col_a, col_b),
  CONSTRAINT uq_esempio UNIQUE (col_1, col_2),
  CONSTRAINT chk_esempio CHECK (col_b >= col_a)
) STRICT;
```

## CTE

```sql
WITH nome_query AS (
  SELECT ...
  FROM ...
)
SELECT *
FROM nome_query
WHERE condizione;
```
