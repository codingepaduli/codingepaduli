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

## Creazione database SQLite

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

## Comandi SQLite

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

### Script sqlite

E' possibile eseguire sia script "SQL" sia script che contengono comandi di SQLite (che non saranno compatibili con altri ambienti SQL).

Creato il file "script.sqlite" contenente le istruzioni:

```sql
.headers on
.mode column

SELECT *
FROM prodotti
WHERE anno = '2025';
```

Si può eseguire il file "script.sqlite" con il comando:

```bash
sqlite3 file.sqlite < script.sqlite
```

oppure dalla shell SQLite con:

```bash
sqlite3 nome_db.sqlite
sqlite>
      .read script.sqlite
```

E' anche possibile creare un file BATCH "sqlite.bat":

```batch
@echo off
sqlite3.exe mio_db.sqlite -table "SELECT * FROM prodotti;"
pause
```

### Database in memory

Un database in memory è un database temporaneo che vive solo in RAM e sparisce quando si chiude il processo.

```sql
sqlite3 ":memory:" <<'SQL'
  CREATE TABLE test(id INTEGER, name TEXT);
  INSERT INTO test VALUES (1, 'A');
  SELECT * FROM test;
SQL
```


## Gestione tabelle (DML)

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

~~ALTER TABLE nome_tabella DROP COLUMN colonna~~;

## Operazioni CRUD sui dati (DDL)

Le operazioni sui dati sono dette CRUD: Create (insert), Read, Update e Delete.

```sql
INSERT INTO tabella (colonna1, colonna2)
VALUES (valore1, valore2);
```

SQLite **non supporta** la sintassi ``INSERT INTO tabella SET colonna1=valore1;``.

```sql
SELECT * FROM tabella WHERE condizione ORDER BY colonne NULL FIRST;
```

```sql
UPDATE tabella SET colonna1 = valore1 WHERE condizione;
```

```sql
DELETE FROM tabella; -- cancella tutti i dati
DELETE FROM tabella WHERE condizione; -- cancella in base alla condizione
```

## Gestione dei vincoli (DML)

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

## Import ed export in CSV

Import di CSV da CLI. 

```bash
sqlite3 mio.db ".import --csv --skip 1 city.csv city"
```

Export in CSV da CLI:

```bash
sqlite3 -header -csv studenti.db "SELECT * FROM tabella;"
sqlite3 mio.db ".headers on" ".excel" "SELECT * FROM tabella;"
```

## Import ed export in JSON

Per l'import è necessario specificare il nome del file nella query:

```bash
sqlite3 mio.db <<'SQL'
  INSERT INTO city(name, population)
  SELECT
    json_extract(value, '$.name') AS name,
    json_extract(value, '$.population') AS population
  FROM json_each(readfile('city.json'));
SQL
```

Per l'export si esportare come array:

```bash
sqlite3 -json mio.db "SELECT * FROM city;"
```

In alternativa si può costruire un JSON con array di oggetti:

```bash
sqlite3 mio.db <<'SQL' > city.json
SELECT json_group_array(
  json_object(
    'name', name,
    'population', population
  )
)
FROM city;
SQL
```

## Export in markdown e html

Entrambi i formati permettono l'esportazione di una tabella (markdown o html)

```bash
sqlite3 mio.db ".mode markdown" ".headers on" "SELECT * FROM tabella;" > report.md
```

```bash
sqlite3 mio.db ".mode html" ".headers on" "SELECT * FROM tabella;" > report.html
```

## Raggruppamento dati

E' possibile creare gruppi di dati suddivisi per colonne con lo stesso valore. Su ogni gruppo è possibile aggregare i dati attraverso le funzioni di somma, media, ecc...

Il risultato dei raggruppamenti porta ad avere **una sola riga per ogni gruppo**, identificata dalle colonne sulle quali il gruppo è stato costruito, riga contenente i calcoli sui dati aggregati.

Ad esempio si possono raggruppare i prodotti per colonna "categoria", creando i gruppi "Elettronica", "Abbigliamento", "Giochi", ...
Su questi gruppi si può calcolare somma, media, conteggio, eccetera, portando ad avere, per esempio, 10 prodotti nel gruppo elettronica e 3 in quello di Abbigliamento.
Infine si può visualizzare solo gruppi che rispettano determinati requisiti, ad esempio i gruppi con più di 100 prodotti.

La query di raggruppamento appena descritta è la seguente, che seleziona **per categoria** i gruppi di prodotti venduti nel 2025 con piu di 100 elementi:

```sql
SELECT categoria, SUM(quantita) as numeroProdotti
FROM prodotti
WHERE anno = '2025'         -- Filtra solo i prodotti venduti del 2025
  AND TIPO = 'venduto'
GROUP BY categoria          -- Crea il gruppo (categoria)
HAVING SUM(quantita) > 100; -- sceglie i gruppi con piu di 100 elementi 
```

La regola vuole che **le colonne presenti in ``GROUP BY`` siano sempre presenti anche in ``SELECT``**, perchè la riga deve essere identificata dalle colonne sulle quali il gruppo è stato costruito.

## Filtri di aggregazione

I filtri permettono di avere nella stessa riga più dati calcolati sullo stesso insieme ma con condizioni diverse per ogni filtro.

```sql
SELECT
  COUNT(*) FILTER (WHERE tipo = 'venduto') AS venduti,
  COUNT(*) FILTER (WHERE tipo = 'reso') AS resi
FROM prodotti
WHERE anno = '2025';
```

### Filtri e raggruppamento

Filtri e raggruppamenti spesso sono associati.

Un esempio di query di raggruppamento con filtri è la seguente, che seleziona **per categoria** i gruppi di prodotti nel 2025 **con piu di 100 elementi** e mostra per ogni gruppo il totale di vendite, resi e vendite in promozione:

```sql
SELECT 
  categoria,
    SUM(quantita) FILTER 
      (WHERE tipo = 'venduto') AS tot_venduti,    -- calcola venduti 2025
    SUM(quantita) FILTER 
      (WHERE tipo = 'reso') AS tot_resi,          -- calcola resi del 2025
    SUM(quantita) FILTER 
      (WHERE tipo = 'venduto' 
        AND promozione = 'si') AS tot_promozione  -- calcola venduti in promozione 2025
FROM prodotti
WHERE anno = '2025'                               -- Filtra solo i prodotti del 2025
GROUP BY categoria
HAVING SUM(quantita) FILTER 
  (WHERE tipo = 'venduto') > 100;                 -- sceglie i gruppi con piu di 100 prodotti venduti
```

Nota sulla query: Se avessimo messo ``HAVING SUM(quantita) > 100`` anche i resi sarebbero finiti nella somma delle quantità, falsando la condizione "piu di 100 prodotti venduti";

## Partizionamento con Window Function

Le funzioni di aggregazione (``SUM``, ``AVG``, ...) collassano le righe in una sola riga, calcolando la somma o la media totale su un gruppo.

E' possibile lasciare le righe inalterate, ma effettuare per ogni riga un'aggregazione (``SUM``, ``AVG``, ...) su una partizione di dati e mostrare il risultato come ulteriore colonna della riga.

Un esempio di query è la seguente, che calcola il prezzo minimo annuale (su una partizione di dati per anno) e mostrare, per ogni prodotto venduto, il guadagno realizzato, calcolato come differenza tra il prezzo minimo e il prezzo di vendita.

```sql
SELECT nome, anno, prezzo,
  MIN(prezzo) OVER (
    PARTITION BY anno
  ) AS prezzo_minimo_annuale,
  prezzo - prezzo_minimo_annuale AS guadagno -- guadagno
FROM prodotti
WHERE tipo = 'venduto';
```

In questo caso la partizione è per anno, quindi il prezzo minimo è calcolato nell'anno.

## Query parametriche

I parametri in una query permettono di creare la query evitando di concatenare la stringa della query a mano. Evita problemi di SQL INJECTION. 

SQLite sostituisce ai parametri i valori passati e poi esegue la query.

Esistono due tipi di parametri: posizionali e nominali.

### Parametri posizionali ``?`` e ``?n``

L'uso dei parametri posizionali consiste nell'assegnare al parametro un segnaposto ``?``. Questo è l'unico standard SQL ufficiale ammesso.

Se si vuole specificare la posizione del parametro passato, magari per utilizzarlo più volte nella stessa query, si può assegnare al parametro un segnaposto con indice, in cui il carattere ``?`` è seguito da un indice numerico che indica la posizione del valore passato, come in``?1``, ``?2``, ``?3``, ... . Questa sintassi non è standard.

Le query parametriche diventano quindi:

```sql
SELECT * FROM persone WHERE nome = ? AND cognome = ?;

SELECT * FROM utenti WHERE nome = ?1 OR alias = ?1 OR cognome=2;
```

SQLite sostituisce ai parametri ``?`` i valori nell'ordine esatto in cui sono passati. Ad esempio, da shell:

```bash
sqlite3 my.db <<SQL
  .parameter init
  .parameter set ?1 Mario
  .parameter set ?2 Rossi

  -- Sostituzione parametri nella query
  SELECT * FROM utenti WHERE nome = ?1 OR alias = ?1 OR cognome = ?2;
SQL
```

### Parametri nominali ``:par``, ``@par`` e ``$par``

L'uso dei parametri nominali consiste nell'assegnare un nome identificativo al parametro, il che rende la query molto piu leggibile. Non c'è bisogno di gestire l'ordine di passaggio e tenere il conteggio degli indici. I parametri nominali non sono uno standard SQL.

Esistono tre sintassi differenti per assegnare un nome ad un parametro:``@par``, ``:par`` e ``$par``. Ogni DBMS ne adotta una differente. Le query parametriche diventano quindi:

```sql
SELECT * FROM persone WHERE nome = @nome AND cognome = @cognome;

SELECT * FROM utenti WHERE nome = :nome OR alias = :nome OR cognome = :cognome;
```

SQLite sostituisce ai parametri i valori in base al nome. Ad esempio, da shell:

```bash
sqlite3 my.db <<SQL
  .parameter init
  .parameter set @nome Mario
  .parameter set @cognome Rossi

  -- Sostituzione parametri nella query
  SELECT * FROM utenti WHERE nome = :nome OR alias = :nome OR cognome = :cognome;
SQL
```

## Common Table Expressions (CTE)

La **Common Table Expressions** consente di creare una sorta di "risultato intermedio" che esiste solo per la durata dell'esecuzione di una specifica query. Questo risultato intermedio è temporaneamente memorizzato in una tabella con nome, che può quindi essere interrogata con una classica query "SELECT ... FROM risultato_itermedio".

Una CTE ovvero un risultato intermedio si definisce utilizzando la clausola ``WITH``.


```sql
WITH risultato_itermedio AS (
  SELECT ...
  FROM ...
)
SELECT *
FROM risultato_itermedio
WHERE ...;
```

Il vantaggio delle CTE è che permette di spezzare il ragionamento in passaggi logici rendendo il codice molto più semplice da leggere.

## Common Table Expressions (CTE) Ricorsiva 

La **CTE gerarchica** permette di navigare alberi e grafi in maniera ricorsiva. Può essere definita con la clausola ``WITH RECURSIVE``.

Il principio di ricorsione prevede una query che:

- estrae i dati per il caso base, che saranno aggiunti ai risultati temporanei;
- mette in ``JOIN`` i dati con quelli appena ottenuti, ottenendo altri dati aggiunti a loro volta ai risultati temporanei (utilizzando una ``UNION`` oppure una ``UNION ALL``);
- se ha ottenuto altri dati, ripete il passo precedente, altrimenti termina.

Ad esempio, considerando la tabella "luoghi":

| id | nome       | parent_id |
|----|------------|-----------|
| 1  | Europa     | NULL      |
| 2  | Italia     | 1         |
| 3  | Lombardia  | 2         |
| 4  | Milano     | 3         |
| 6  | Francia    | 1         |

La query ricorsiva prevede che:

- si estraggono i dati per il ``luogo`` "Europa" (caso base), che sono aggiunti in ``gerarchia``;
- mette in ``JOIN`` i ``luoghi`` con quelli appena ottenuti (appena aggiunti in ``gerarchia``, ovvero i dati dell'Europa), ottenendo altri dati. Quersti sono aggiunti ai risultati temporanei utilizzando una ``UNION`` oppure una ``UNION ALL``;
- questo passo è automatico, se ha ottenuto altri dati, ripete il passo precedente, altrimenti termina.

```sql
WITH RECURSIVE gerarchia AS (
  -- caso base: Europa (ID 1), dati salvati in "gerarchia g" e utilizzati in "JOIN gerarchia"
  SELECT id, nome, 1 AS livello, nome AS percorso
  FROM luoghi
  WHERE id = 1

  UNION ALL

  -- ricorsione: Uniamo le zone "figlie" (in luoghi) alle zone "madri" (in gerarchia) 
  SELECT l.id, l.nome, g.livello + 1, g.percorso || ' > ' || l.nome
  FROM luoghi l
    INNER JOIN gerarchia g 
      ON l.parent_id = g.id
)
SELECT * FROM gerarchia;
```

Il risultato della query ricorsiva sarà:

| id | nome            | livello | percorso                                      |
|----|-----------------|---------|-----------------------------------------------|
| 1  | Europa          | 1       | Europa                                        |
| 2  | Italia          | 2       | Europa > Italia                               |
| 6  | Francia         | 2       | Europa > Francia                              |
| 3  | Lombardia       | 3       | Europa > Italia > Lombardia                   |
| 4  | Milano (Comune) | 4       | Europa > Italia > Lombardia > Milano (Comune) |

## Dati in formato JSON

Le operazioni sui dati JSON sono dette CRUD: Create (insert), Read, Update e Delete.
Per inserire qualcosa è necessario specificare il percorso.

Le funzioni CRUD principali sono:

- ``json_object(chiave, valore, ...)``: Crea un oggetto JSON;
- ``json_array(valore1, ...)``: Crea un array JSON;
- ``json_each``: crea una tabella virtuale che permette di spezzettare un JSON in righe della tabella. Se il JSON contiene un array o un oggetto, json_each restituisce una riga per ogni elemento dell'array o per ogni proprietà dell'oggetto.
- ``json_extract(colonna, percorso1, percorso2, ...)``: Legge uno o più valori restituendo un valore JSON o un array JSON;
- ``json_set(colonna, percorso, valore)``: Crea la chiave se non esiste, la sovrascrive se esiste;
- ``json_insert(colonna, percorso, valore)``: Aggiunge la chiave solo se non esiste;
- ``json_replace(colonna, percorso, valore)``: Modifica la chiave solo se esiste già;
- ``colonna -> percorso``: è una scorciatoia di ``json_extract(colonna, percorso1)``, recupera un solo valore;
- ``colonna ->> percorso``: è una scorciatoia di ``CAST( json_extract(colonna, percorso1) ) AS type ``, recupera un solo valore ed effettua il CAST verso il tipo SQL (intero, testo, ecc...);

```sql
INSERT INTO prodotti VALUES 
(2, json_object('marca', 'Apple', 'colore', 'bianco', 'prezzo', 1000));

-- inserimento diretto
INSERT INTO store VALUES 
(3, json_array('iphone', 'bianco', 1000));

-- inserimento in un JSON nel campo "caratteristiche"
UPDATE prodotti SET info = 
json_set(info, '$.caratteristiche', 
  json_array('nuovo', 'promozione')) 
WHERE id = 1;
```

```sql
SELECT id, json_extract(dati_tecnici, $.prezzo) AS prezzo FROM prodotti;

SELECT id, dati_tecnici ->> '$.prezzo' AS prezzo FROM prodotti;
```

```sql
-- Cambiamo il prezzo
UPDATE prodotti SET dati_tecnici = 
json_set(dati_tecnici, '$.prezzo', 550)
WHERE id = 1;

-- Aggiungiamo il campo 'garanzia'
UPDATE prodotti SET dati_tecnici = 
json_insert(dati_tecnici, '$.garanzia', '2 anni')
WHERE id = 1;

-- Sostituisce il campo 'garanzia'
UPDATE prodotti SET dati_tecnici = json_replace(dati_tecnici, '$.garanzia', '2 anni')
WHERE id = 1;
```

```sql
-- Rimuoviamo il campo 'colore' dal JSON
UPDATE prodotti SET dati_tecnici = 
json_remove(dati_tecnici, '$.colore') 
WHERE id = 1;
```

## Ricerca Full-Text Search (FTS)

Quando si crea una tabella virtuale di tipo ``FTS5``, SQLite crea un indice invertito (simile all'indice analitico presente in un libro). Per cercare una parola si legge l'indice che indica in quali righe si trova quella parola, evitando di leggere tutta la tabella.

La ricerca Full-Text avviene con l'operatore ``MATCH`` che permette di:

- cercare parole esatte;
- cercare parole parziali;
- cercare parole accentate senza che siano specificati gli accenti nei criteri di ricerca;
- cercare frasi intere;
- utilizzare operatori booleani (AND, OR, NOT) nella ricerca;

Si può realizzare la ricerca Full-Text in due modalità, una con singola tabella che contiene sia i dati che l'indice, una con tabella ausiliaria che contiene solo l'indice, i dati sono nella tabella principale. Ognuna delle due tecniche presenta pregi e difetti discussi di seguito.

### Full-Text Search (FTS) con singola tabella

Quando si realizza la ricerca Full-Text usando una tabella virtuale di tipo FTS5 come singola tabella, cioè come tabella che contiene sia i dati che l'indice, si deve considerare che:

- **si rinuncia alle chiavi primarie sulla tabella**, la chiave primaria sarà solo il campo ``rowid`` gestito da SQLite.
- **si rinuncia alle chiavi esterne, e di conseguenza all'integrità referenziale**;
- **si rinuncia ai vincoli di integrita (CHECK, NOT NULL, ...)**.
- **si rinuncia al tipo di dato (INTEGER, NUMERIC, ...) delle colonne, i campi possono essere solo di tipo testuale (TEXT), perchè vanno indicizzati automaticamente**.
- Non si possono fare operazioni di modifica della tabella (ALTER TABLE) e non si possono creare indici aggiuntivi (CREATE INDEX).

Accettando queste condizioni, è possibile utilizzare la ricerca Full-Text, utilizzando il campo ``rowid`` gestito da SQLite come chiave primaria.

La tabella virtuale di tipo FTS5 si crea come tabella principale con le istruzioni:

```sql
create virtual table TABELLA_FTS
using fts5(titolo, autore, editore);
```

Tutte le operazioni CRUD in questo caso avvengono utilizzando rowid come chiave primaria.

### Full-Text Search (FTS) con tabella dati e tabella indice

2. Quando si realizza la ricerca Full-Text usando una tabella principale per contenere i dati e la tabella FTS come indice, si utilizza la tabella FTS5 solo per la ricerca.

In questo caso il ``rowid`` della tabella FTS5 è esattamente uguale alla PRIMARY KEY della tabella contenente i dati. Questo permette ricerche molto veloci.

In questa casistica, bisogna sincronizzare i dati e gli indici tra le due tabelle tramite trigger oppure manualmente.

Per creare la tabella virtuale di tipo FTS5 come indice, occorre specificare non solo le colonne da indicizzare, ma anche:

- ``content=TABELLA``: in quale tabella sono i dati;
- ``content_rowid=PRIMARY_KEY``: la chiave primaria a cui legare il campo **rowid** di SQLite;
- ``tokenize=unicode61``: l'algoritmo di ricerca e suddivisione delle parole. 
  1. ``unicode61`` è l'algoritmo che si adatta al linguaggio italiano, permette di cercare parole accentate senza indicare l'accento e di utilizzare la radice di una parola;
  2. ``porter`` è l'algoritmo che si adatta al linguaggio inglese;
  3. verificare gli altri algoritmi in base alla lingua;

La tabella virtuale di tipo FTS5 si crea come tabella indice con le istruzioni:

```sql
create virtual table TABELLA_FTS(
  titolo, autore, editore, 
  content='ALTRA_TABELLA', 
  content_rowid='id', 
  tokenize='unicode61'
) using fts5(titolo, autore, editore);
```

Si deve tener conto che se la tabella virtuale FTS5 è creata successivamente al popolamento della tabella contenente i dati, la si deve riempire con i dati della tabella reale, in modo che questi vengano indicizzati:

```sql
insert into TABELLA_FTS
  select titolo, autore, editore
  from ALTRA_TABELLA;
```

La ricerca, in entrambe le casistiche, avviene usando l'operatore ``MATCH``:

```sql
SELECT * 
FROM TABELLA_FTS 
WHERE titolo MATCH 'ann';
```

Bisogna sincronizzare i dati e gli indici tra le due tabelle tramite trigger oppure manualmente. Vediamo le differenze:

#### Sincronizzazione manuale dell'indice

Poi ogni operazione CRUD si deve gestire la sincronizzazione dell'indice (in una transazione).

L'inserimento avviene in entrambe le tabelle:

```sql
BEGIN;

INSERT INTO ALTRA_TABELLA (titolo, autore)
VALUES ('SQLite per tutti', 'Mario Rossi');

INSERT INTO TABELLA_FTS (rowid, titolo, autore)
VALUES (last_insert_rowid(), 'SQLite per tutti', 'Mario Rossi');

COMMIT;
```

L'aggiornamento deve cancellare il vecchio contenuto dall'indice, poi inserire il nuovo contenuto nell'indice. La PRIMARY_KEY corrisponde a rowid:

```sql
BEGIN;

-- 1. Leggo il vecchio contenuto
SELECT titolo, autore FROM ALTRA_TABELLA WHERE id = 5;

-- 2. Cancello dalla FTS il vecchio contenuto
INSERT INTO TABELLA_FTS (TABELLA_FTS, rowid, titolo, autore)
VALUES ('delete', 5, 'Vecchio Titolo', 'Vecchio Autore');

-- 3. Aggiorno la tabella principale
UPDATE ALTRA_TABELLA SET titolo = 'Nuovo Titolo' WHERE id = 5;

-- 4. Inserisco nella FTS il nuovo contenuto
INSERT INTO TABELLA_FTS (rowid, titolo, autore)
VALUES (5, 'Nuovo Titolo', 'Vecchio Autore');

COMMIT;
```

La cancellazione si fa con il comando speciale ``TABELLA_FTS=delete`` che serve ad indicare di rimuovere l'indice. La PRIMARY_KEY corrisponde a rowid:

```sql
BEGIN;

-- 1. Recupero i dati da cancellare
SELECT titolo, autore FROM ALTRA_TABELLA WHERE id = 1;

-- Supponiamo: 'Anelli', 'Mio'

-- 2. Rimuovo dalla FTS il vecchio contenuto
INSERT INTO TABELLA_FTS (TABELLA_FTS, rowid, titolo, autore)
VALUES ('delete', 1, 'Anelli', 'Mio');

-- 3. Cancello dalla tabella principale
DELETE FROM ALTRA_TABELLA WHERE id = 1;

COMMIT;
```

#### Sincronizzazione dell'indice tramite TRIGGER

```sql

-- 3. Trigger per l'inserimento
CREATE TRIGGER ALTRA_TABELLA_AI AFTER INSERT ON ALTRA_TABELLA BEGIN
  INSERT INTO TABELLA_FTS(rowid, titolo, autore) 
  VALUES (new.id, new.titolo, new.autore);
END;

-- 4. Trigger per la cancellazione
CREATE TRIGGER ALTRA_TABELLA_AD AFTER DELETE ON ALTRA_TABELLA BEGIN
  INSERT INTO TABELLA_FTS(TABELLA_FTS, rowid, titolo, autore) 
  VALUES('delete', old.id, old.titolo, old.autore);
END;

-- 5. Trigger per l'aggiornamento
CREATE TRIGGER ALTRA_TABELLA_AU AFTER UPDATE ON ALTRA_TABELLA BEGIN
  INSERT INTO TABELLA_FTS(TABELLA_FTS, rowid, titolo, autore) 
  VALUES('delete', old.id, old.titolo, old.autore);
  
  INSERT INTO TABELLA_FTS(rowid, titolo, autore) 
  VALUES (new.id, new.titolo, new.autore);
END;
```

## Generated Columns

Il valore di una colonna generata non viene inserito manualmente, ma viene calcolato automaticamente dal database in base ai valori delle altre colonne della riga.

Il vero vantaggio di una colonna generata è che SQLite non permette di creare un indice su una funzione complessa (come json_extract()), ma si può creare un indice su una colonna generata.

Esistono due tipi di Generated Columns:

- ``VIRTUAL``: Il valore non viene salvato su disco ma ricalcolato in ogni operazione.
- ``STORED``: Il valore viene salvato su disco fisicamente.

La sintassi è come negli esempi seguenti:

```sql
CREATE TABLE TABELLA (
  colonna1 TEXT GENERATED ALWAYS AS ( A || B) STORED,
  colonna2 NUMBER GENERATED ALWAYS AS ( A + B) VIRTUAL
```
