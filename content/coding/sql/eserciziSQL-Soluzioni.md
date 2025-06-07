---
type: "sql"
title: "Soluzioni esercizi su SQL"
description: "Soluzioni esercizi su SQL"
date: 2025-05-26
publishdate: 2025-05-26
categories: ["coding", "sql"]
keywords: ["coding", "sql"]
draft: false
toc: false
summary: "Soluzioni esercizi su SQL"
weight: 12020
---

# Soluzioni esercizi su SQL

## Campionati di calcio

- [Cognome-2025-05-26 CampionatiCalcio.sql](/static/coding/sql/campionatiCalcio.sql);

## Quiz DBMS

Quale delle seguenti affermazioni descrive correttamente la differenza tra l'aspetto intenzionale e l'aspetto estensionale dei dati?

A) L'aspetto intenzionale si riferisce alla rappresentazione dei dati e alle loro proprietà, mentre l'aspetto estensionale si riferisce ai valori specifici che i dati possono assumere. (Corretta)
B) L'aspetto intenzionale riguarda solo i dati numerici, mentre l'aspetto estensionale riguarda solo i dati testuali.
C) L'aspetto intenzionale riguarda solo i dati testuali, mentre l'aspetto estensionale riguarda solo i dati numerici.
D) L'aspetto intenzionale si occupa della quantità di dati, mentre l'aspetto estensionale si occupa della qualità dei dati.

Quale delle seguenti affermazioni descrive correttamente la relazione tra un DBMS e un database?

A) Un database è un software utilizzato per gestire i dati, mentre un DBMS è un insieme di dati memorizzati.
B) Un DBMS è un sistema software che consente di creare, gestire e manipolare un database, mentre un database è una raccolta organizzata di dati. (Corretta)
C) Un DBMS e un database sono la stessa.
D) Un database è un software utilizzato per gestire i dati, mentre il DBMS è un programma (matematico, gestionale, grafico, ...) che elabora i dati del database.

Quanti tipi di relazione esistono in un diagramma ER?

A) Due: uno a uno e uno a molti.
B) Tre: uno a uno, uno a molti e molti a molti. (Corretta)
C) Quattro: uno a zero, uno a uno, uno a molti, molti a molti.
D) Cinque: zero a zero, uno a zero, uno a uno, uno a molti, molti a molti.

Cosa rappresenta un attributo in un diagramma ER?

A) Un legame tra due entità.
B) Una caratteristica o proprietà di un'entità. (Corretta)
C) Un tipo di relazione tra entità.
D) Un'operazione eseguita sui dati.

Cosa si intende per "istanza" in un diagramma ER?

A) Un modello generale di un'entità che definisce le sue proprietà, attributi e relazioni con altre entità, senza riferirsi a dati specifici o valori concreti. Questo modello serve come schema per comprendere le caratteristiche di una entità.
B) Un'implementazione specifica di un'entità, che rappresenta un singolo esempio con valori concreti per gli attributi. Ad esempio, se l'entità è "Studente", un'istanza potrebbe essere un singolo studente con un nome, un numero di matricola e una data di nascita specifici. (Corretta)
C) Un tipo di relazione tra due entità che descrive come queste entità interagiscono tra loro. Le relazioni possono essere di diversi tipi, come uno a uno, uno a molti o molti a molti, e definiscono il modo in cui le istanze delle entità sono collegate.
D) un'istanza è un tipo di operazione eseguita su una entità, ad esempio la trasformazione in maiuscolo o minuscolo del valore, una somma o moltiplicazione o calcolo della percentuale di un valore.

## Quiz SQL

1. Quale delle seguenti affermazioni riguardanti l'istruzione SELECT è vera?

    A) (corretta) L'istruzione SELECT è utilizzata per effettuare un'interrogazione sul database.
    B) L'istruzione SELECT è utilizzata per creare una tabella del database.
    C) L'istruzione SELECT è utilizzata per inserire i dati in una tabella.
    D) L'istruzione SELECT è utilizzata per creare un database.

2. Quale delle seguenti affermazioni riguardanti l'istruzione SELECT è falsa?

    A) L'istruzione SELECT prevede di specificare obbligatoriamente quale tabella utilizzare.
    B) L'istruzione SELECT prevede di specificare obbligatoriamente quali colonne recuperare da una tabella.
    C) L'istruzione SELECT permette di specificare una condizione per filtrare i dati.
    D) (corretta) L'istruzione SELECT permette di inserire i dati nella tabella.

3. Quale delle seguenti affermazioni riguardanti la chiave primaria è vera?

    A) Una chiave primaria di una tabella può essere comune a piu record.
    B) (corretta) Una chiave primaria di una tabella deve essere unica.
    C) Una chiave primaria di una tabella non può essere composta da piu campi.
    D) Una chiave primaria è composta da campi di tabelle differenti.

4. Quale delle seguenti affermazioni riguardanti l'istruzione "INSERT INTO tabella" è vera?

    A) permette l'inserimento esclusivamente di un singolo record alla volta nella tabella;
    B) (corretta) permette l'inserimento di più record alla volta nella tabella;
    C) permette l'inserimento esclusivamente di un singolo record alla volta nel DBMS;
    D) permette l'inserimento di più valori alla record nel DBMS;

5. L'istruzione "SELECT * FROM tabella":

    A) Estrae tutti i dati contenuti nella tabella, cancellandoli;
    B) Estrae tutti gli attributi contenuti nella struttura della tabella, senza cancellarli;
    C) Estrae tutti i dati contenuti nella tabella, senza cancellarli.
    D) Estrae tutti gli attributi contenuti nella struttura della tabella, cancellandoli;

6. La condizione relativa ad una interrogazione sulla tabella 'clienti', come ad esempio "anni > 18" in quale parte dell'istruzione "SELECT" va inserita?

    A) Dopo la clausola FROM, secondo la sintassi ``SELECT FROM anni > 18 AND tabella='clienti'``
    B) All'inizio della query, secondo la sintassi ``SELECT anni > 18 FROM * WHERE tabella='clienti'``
    C) (corretta)
    D) Nella clausola WHERE, secondo la sintassi ``SELECT FROM anni > 18 WHERE tabella='clienti'``.
    E) Nella clausola WHERE, secondo la sintassi ``SELECT * FROM clienti WHERE anni > 18``
