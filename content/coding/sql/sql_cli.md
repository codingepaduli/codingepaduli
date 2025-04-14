---
type: "sql"
title: "La linea di comando di MySQL"
description: "La linea di comando di MySQL"
date: 2025-04-15
publishdate: 2025-04-15
categories: ["coding", "sql"]
keywords: ["coding", "sql"]
draft: false
toc: false
summary: "La linea di comando di MySQL"
weight: 11000
---

# La linea di comando di MySQL

## Collegamento al DBMS

Per collegarsi ad un DBMS MySQL è necessario avere accesso al terminale ed eseguire il comando seguente, indicando l'utente ``root`` e la password vuota (per inserirla basta premere invio):

```bash
mysql -u root -p
```

Se il comando è corretto e la password inserita è valida, accederai al prompt di MySQL, che apparirà simile a questo:

```plaintext
mysql>
```

## Creazione database

Se desideri creare un database chiamato ``gaming``, il comando sarà:

```sql
CREATE DATABASE gaming;
```

Se il database viene creato correttamente, non riceverai alcun messaggio di errore e il prompt di MySQL tornerà a mostrarsi. In genere, vedrai un messaggio simile a questo:

```plaintext
Query OK, 1 row affected (0.01 sec)
mysql[none]>
```

Se ci sono problemi durante la creazione del database, potresti ricevere un messaggio di errore. Ad esempio, se esiste già un database con il nome ``gaming``, riceverai un errore simile a questo:

```plaintext
ERROR 1007 (HY000): Can't create database 'gaming'; database exists
```

## Visualizza database

Per visualizzare i database MySQL creati, si utilizza il comando:

```sql
SHOW DATABASES;
```

L'output è simile al seguente:

```plaintext
+--------------------+
| Database           |
+--------------------+
| information_schema |
| gaming             |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)
```

## Selezionare il database da usare

Dopo esserti collegato, puoi selezionare un database esistente con il comando ``USE`` seguito dal nome del database:

```sql
USE gaming;
```

Se il database selezionato non esiste, riceverai un errore simile a questo:

```plaintext
ERROR 1049 (42000): Unknown database 'gaming'
```

Se ci sono problemi di sintassi, riceverai un errore simile a questo:

```plaintext
ERROR 1064 (42000): You have an error in your SQL syntax
```

Se il database selezionato esiste, nel prompt sarà indicato come di seguito:

```plaintext
mysql[gaming]>
```

## Crea la tabella

Per creare una nuova tabella, utilizza il comando CREATE TABLE. Ecco un esempio di come creare una tabella chiamata videogiochi:

```sql
CREATE TABLE videogiochi (
    ID_Videogioco INT AUTO_INCREMENT PRIMARY KEY,
    Titolo VARCHAR(255) NOT NULL,
    Genere VARCHAR(100),
    Data_Uscita INT,
    Piattaforma VARCHAR(100)
);
```

Quando crei una tabella in MySQL utilizzando il comando ``CREATE TABLE``, se l'operazione ha successo riceverai un messaggio di conferma che appare come segue:

```plaintext
Query OK, 0 rows affected (0.01 sec)
```

Se c'è un errore di sintassi nel comando SQL, riceverai un messaggio di errore che indica la linea in cui è stato riscontrato l'errore. Ad esempio:

```plaintext
ERROR 1064 (42000): You have an error in your SQL syntax at line X;
```

## Visualizza tabelle

Per visualizzare le tabelle presenti nel database selezionato, utilizza il comando:

```sql
SHOW TABLES;
```

Puoi utilizzare il comando ``DESCRIBE`` seguito dal nome della tabella per visualizzare la struttura della tabella, inclusi i nomi dei campi, i tipi di dati e altre informazioni.

```sql
DESCRIBE videogiochi;
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

mysql -u root -p
CREATE DATABASE gaming;
USE gaming;

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
```

## Eseguire uno script sql

Per eseguire uno script sql, ovvero un file contenente i comandi SQL, è necessario assicurarsi di essere nella cartella corretta:

```sql
SELECT @@datadir;
```

Per eseguire lo script è necessario verificare che l'estensione del file sia ``sql``, poi si utilizza il comando ``source`` seguito dal percorso dello script ``sql``.

```sql
source /percorso/del/tuo/script.sql
```

## Uscire dall'ambiente sql

Per scollegarsi dal DBMS MySQL è necessario eseguire il comando seguente:

```sql
exit;
```
