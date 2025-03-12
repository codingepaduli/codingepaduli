---
type: "javascript"
title: "Orari e date"
description: "Descrizione degli orari, delle date, dell'internazionalizzazione, delle operazioni possibili per la manipolazione"
date: 2025-03-10
publishdate: 2025-03-10
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "Orari e date"
weight: 8900

references:
    -   title: "L'oggetto Date"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date"
        description: "Documentazione dell'oggetto Date, che rappresenta un singolo momento nel tempo in un formato indipendente dalla piattaforma. Proprietà e metodi disponibili"
    -   title: "L'oggetto Temporal"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Temporal"
        description: "Documentazione dell'oggetto Temporal, che semplifica, corregge e modernizza la gestione delle date e dell'ora. Proprietà e metodi disponibili"
---

# Utilizzare data e ora usando l'oggetto ``Date``

Ogni data ed orario su internet deve essere rappresentato secondo le regole dello standard internazionale
[ISO 8601 Information interchange - Representation of dates and times](https://it.wikipedia.org/wiki/ISO_8601) del 2019, che su internet è specificato dalle RFC 3339 del 2004 e dall'aggiornamento tramite RFC 9557 del 2024.

Lo standard internazionale definisce il seguente formato in cui scrivere date e orari: ``YYYY``-``MM``-``DD``T``hh``:``mm``:``ss``.``KKK`` ``timezone``, come nel seguente esempio:

```plaintext
2022-07-08T00:14:07Z[Europe/London]
2022-07-08T00:14:07:03.30[Europe/London]
```

Per maggiori informazioni si rimanda al capitolo sulle etichette di HTML, alle specifiche del W3C ed agli standard sopra menzionati.

Le date e gli orari in JavaScript sono implementati utilizzando fino a qualche anno fa l'oggetto ``Date``, mentre da qualche anno si utilizza l'oggetto ``Temporal``, entrambi gli oggetti rappresentano un singolo momento nel tempo in un formato indipendente dalla piattaforma.

L'oggetto ``Date`` basa su delle specifiche di più di 30 anni fa, per cui sono emersi alcuni problemi nell'utilizzare questo oggetto:

- supporta solo l'ora locale dell'utente e l'orario UTC;
- non supporta il fuso orario;
- la conversione da stringa a data/ora è inaffidabile e può portare a degli errori difficili da rintracciare;
- i calcoli in cui è coinvolta l'ora legale (DST) e i cambiamenti del calendario storico non sono calcoli affidabili.

L'oggetto ``Temporal`` modernizza e semplifica la gestione delle date, degli orari, dei fusi orari e delle nonostante le quasi 300 pagine di documentazione che stanno ad indicare quanto il concetto della data e dell'ora sia importante nella nostra società. Prevede oggetti differenti per poter:

- rappresentare un'ora senza informazioni sulla data e sul fuso orario, utilizzando l'oggetto ``Temporal.PlainDate``;
- rappresentare una data senza informazioni sull'ora e sul fuso orario, utilizzando l'oggetto ``Temporal.PlainTime``;
- rappresentare data e ora senza informazioni sul fuso orario, utilizzando l'oggetto ``Temporal.PlainDateTime``;
- rappresentare un mese dell'anno, senza informazioni sul giorno, sull'ora e sul fuso orario, utilizzando l'oggetto ``Temporal.PlainYearMonth``;
- rappresentare un giorno del mese, senza informazioni sull'anno, sull'ora e sul fuso orario, utilizzando l'oggetto ``Temporal.PlainMonthDay``;
- rappresentare data e ora con informazioni sul fuso orario, utilizzando l'oggetto ``Temporal.ZonedDateTime``;
- rappresentare una durata di tempo (ad esempio, giorni, ore, minuti), utilizzando l'oggetto ``Temporal.Duration``;
- rappresentare un punto specifico nel tempo, espresso in millisecondi dall'epoca Unix (1 gennaio 1970) utilizzando l'oggetto ``Temporal.Instant``.

Ecco un esempio sull'uso di ``Date`` e ``Temporal``:

```javascript
const date1 = new Date('1995-12-17T03:24:00');
const date = Temporal.PlainDate.from('2023-10-01');
const time = Temporal.PlainTime.from('14:30:00');
const dateTime = Temporal.PlainDateTime.from('2023-10-01T14:30:00');
const yearMonth = Temporal.PlainYearMonth.from('2023-10');
const monthDay = Temporal.PlainMonthDay.from('02-29');
const zonedDateTime = Temporal.ZonedDateTime.from('2023-10-01T14:30:00[Europe/Rome]');
const duration = Temporal.Duration.from( {days: 2, hours: 3, minutes: 15} );
const instantNow = Temporal.Instant.from('2023-10-01T14:30:00Z');
const dateTime2 = date.add({ months: 3 }); // 2024-01-01
dateTime.equals(dateTime2); // false
monthDay.toPlainDate(2023); // undefined
monthDay.toPlainDate(2024); // 2024-02-29
```

## Utilizzo dell'oggetto ``Date``

Per creare un oggetto che memorizza il momento temporale:

```javascript
const date2 = new Date();
const date1 = new Date('1995-12-17T03:24:00');
```

Per convertire la data in una rappresentazione testuale localizzata:

```javascript
let orario1 = date.toLocaleString('en-US'); //  2/11/2020,  1:04:52 PM
let orario2 = date.toLocaleString('en-GB'); // 11/02/2020, 13:04:52
```

Per convertire la data in una rappresentazione testuale localizzata e specificare il formato:

```javascript
let orario1 = date.toLocaleString('en-US'); //  2/11/2020,  1:04:52 PM
let orario2 = date.toLocaleString('it-IT', {
  'dateStyle': 'long',
  'timeStyle': 'long'
}); // 11 aprile 2024 alle ore 19:19:15 UTC

console.log(new Date().toLocaleString('it-IT', {'dateStyle': 'full', 'timeStyle': 'full'}))
```

Le proprietà ``dateStyle`` e ``timeStyle`` possono essere specificate per indicare il formato della data e dell'ora, non necessariamente devono essere inserite entrambe, possono assumere uno dei seguenti valori:

- ``full`` indica tutti i dati in formato testuale completo, ad esempio ``giovedì 11 aprile 2024 alle ore 19:20:42 Tempo coordinato universale``;
- ``long`` indica tutti i dati in formato testuale abbreviato, ad esempio ``11 aprile 2024 alle ore 19:21:18 UTC``;
- ``medium`` indica tutti i dati in formato numerico, ad esempio ``11 apr 2024, 19:21:18``;
- ``short`` indica tutti i dati in formato numerico ridotto, ad esempio ``11/04/24, 19:21``.

Se si vuole specificare il formato solo per una parte della data e dell'orario, si possono utilizzare le seguenti proprietà:

- ``day``, ``month``, ``year``, ``hour``, ``minute``, ``second`` permettono di visualizzare il campo numerico nel formato seguente:
  - ``numeric`` a una o due cifre;
  - ``2-digit`` sempre a due cifre (ad esempio ``03``).

- ``fractionalSecondDigits`` permette di visualizzare il numero di millisecondi nei seguenti formati:
  - ``1``: una sola cifra;
  - ``2``: due cifre;
  - ``3``: tre cifre;

- ``hour12`` visualizza l'ora nel formato a 12 o 24 ore:
  - ``true``: con 12 ore e indicatori AM e PM;
  - ``false``: con 24 cifre;

- ``weekday``, ``era``, ``month``, ``dayPeriod`` e ``timeZoneName`` permettono di visualizzare il nome del campo in uno dei seguenti formati:
  - ``long`` nome completo del campo;
  - ``short`` nome abbreviato del campo;
  - ``narrow`` iniziale del nome del campo;

Ad esempio, per specificare data e ora con le informazioni "aprile 2024 dopo Cristo sabato alle ore 14:35:50,777" è necessario specificare le seguenti proprietà:

```javascript
console.log(new Date().toLocaleString('it-IT', {
  'era': 'long',
  'year': 'numeric',
  'month': 'long',
  'weekday': 'long',
  'hour': 'numeric',
  'minute': 'numeric',
  'second': 'numeric',
  'fractionalSecondDigits': '3',
  'hour12': false
}));
```

I metodi getter con parametri per le date in JavaScript sono:

1. ``getFullYear()``: Restituisce l'anno della data.
2. ``getMonth()``: Restituisce il mese della data (0-11).
3. ``getDate()``: Restituisce il giorno del mese della data (1-31).
4. ``getDay()``: Restituisce il giorno della settimana della data (0-6, dove 0 è Domenica e 6 è Sabato).
5. ``getHours()``: Restituisce l'ora della data (0-23).
6. ``getMinutes()``: Restituisce i minuti della data (0-59).
7. ``getSeconds()``: Restituisce i secondi della data (0-59).
8. ``getMilliseconds()``: Restituisce i millisecondi della data (0-999).

I metodi setter con parametri per le date in JavaScript sono:

1. ``setFullYear(year)``: Imposta l'anno della data.
2. ``setMonth(month)``: Imposta il mese della data (0 per gennaio, 1 per febbraio, ecc.).
3. ``setDate(day)``: Imposta il giorno del mese della data.
4. ``setHours(hours)``: Imposta le ore della data (0-23).
5. ``setMinutes(minutes)``: Imposta i minuti della data (0-59).
6. ``setSeconds(seconds)``: Imposta i secondi della data (0-59).
7. ``setMilliseconds(milliseconds)``: Imposta i millisecondi della data (0-999).

## Utilizzare data e ora usando l'oggetto ``Temporal``
