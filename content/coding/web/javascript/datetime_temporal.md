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

# Data e ora

Ogni data ed orario su internet deve essere rappresentato secondo le regole dello standard internazionale
[ISO 8601 Information interchange - Representation of dates and times](https://it.wikipedia.org/wiki/ISO_8601) del 2019, che su internet è specificato dalle RFC 3339 del 2004 e dall'aggiornamento tramite RFC 9557 del 2024.

Lo standard internazionale definisce il seguente formato in cui scrivere date e orari: ``YYYY``-``MM``-``DD``T``hh``:``mm``:``ss``.``KKK`` ``timezone``, come nel seguente esempio:

```plaintext
2022-07-08T00:14:07Z[Europe/London]
2022-07-08T00:14:07+03.30[Europe/London]
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

E' possibile creare una variabile a cui assegnare un momento temporale utilizzando l'oggetto ``Date``. Possiamo indicare in formato stringa il momento temporale desiderato, se non indichiamo nulla viene assegnata la data, l'ora  ed il fuso orario attuale:

```javascript
const date2 = new Date();
const date1 = new Date('1995-12-17T03:24:00+01:00');
```

### Conversione in una rappresentazione testuale localizzata

La funzione progettata per convertire la data in una rappresentazione testuale localizzata è ``toLocaleString``, la cui firma è la seguente:

```plaintext
Syntax: Date.toLocaleString([locales[, options]])

Parameters:
    locales    String | Array: a string with a BCP 47 language tag or an array of such strings
    options    Object (optional): an object that can specify formatting options

Returns:
    String: the locale-specific string representation of the date
```

Il parametro formale ``locales`` è opzionale e rappresenta il codice IETF (il codice di lingua ed il codice del paese) da utilizzare per indicare le usanze locali di scrittura delle date.
Il parametro formale ``options`` è opzionale e rappresenta le opzioni di formattazione.

Il valore restituito è la rappresentazione in stringa specifica per le usanze locali di scrittura delle data. Può essere salvato in una variabile.

Di seguito alcuni esempi che, utilizzando il parametro ``locales``, convertono la data in una stringa secondo le usanze Americane e secondo quelle della Gran Bretagna, :

```javascript
let date = new Date('2022-11-02T13:02:00+00:00');
let orario1 = date.toLocaleString('en-US'); // 02/11/2022,  1:02:00 PM
let orario2 = date.toLocaleString('en-GB'); // 11/02/2022, 13:02:00
```

Le proprietà ``dateStyle`` e ``timeStyle`` del parametro ``options`` indicano rispettivamente il formato della data e dell'ora, non necessariamente devono essere inserite entrambe, possono assumere uno dei seguenti valori:

- ``full`` indica tutti i dati in formato testuale completo, ad esempio ``giovedì 11 aprile 2024 alle ore 19:20:42 Tempo coordinato universale``;
- ``long`` indica tutti i dati in formato testuale abbreviato, ad esempio ``11 aprile 2024 alle ore 19:21:18 UTC``;
- ``medium`` indica tutti i dati in formato numerico, ad esempio ``11 apr 2024, 19:21:18``;
- ``short`` indica tutti i dati in formato numerico ridotto, ad esempio ``11/04/24, 19:21``.

Un esempio è il seguente:

```javascript
let date = new Date('2022-11-02T13:02:00+00:00');
let orario1 = date.toLocaleString('en-US'); // 02/11/2022,  1:02:00 PM
let orario2 = date.toLocaleString('it-IT', {
  'dateStyle': 'long',
  'timeStyle': 'long'
}); // 11 novembre 2024 alle ore 13:02:00 UTC

let orario3 = new Date().toLocaleString('it-IT', {
  'dateStyle': 'full', 
  'timeStyle': 'full'
}); // giovedì 13 marzo 2025 alle ore 08:32:58 Ora del meridiano di Greenwich
```

Se si vuole specificare il formato per una specifica parte della data e dell'orario, si possono utilizzare le seguenti proprietà del parametro ``options``:

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

Ad esempio, per specificare data e ora con le informazioni ``aprile 2024 dopo Cristo sabato alle ore 14:35:50,777`` è necessario specificare le seguenti proprietà:

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

### Accesso e modifica dei campi

I metodi che permettono di accedere ad uno specifico campo della data sono:

1. ``getFullYear()``: Restituisce l'anno della data;
2. ``getMonth()``: Restituisce il mese della data (0-11);
3. ``getDate()``: Restituisce il giorno del mese della data (1-31);
4. ``getDay()``: Restituisce il giorno della settimana della data (0-6, dove 0 è Domenica e 6 è Sabato);
5. ``getHours()``: Restituisce l'ora della data (0-23);
6. ``getMinutes()``: Restituisce i minuti della data (0-59);
7. ``getSeconds()``: Restituisce i secondi della data (0-59);
8. ``getMilliseconds()``: Restituisce i millisecondi della data (0-999);
9. ``getTimezoneOffset()``: Restituisce il fuso orario in minuti.

Un esempio d'uso è il seguente:

```javascript
let date = new Date('2023-03-15T10:30:45.000+01:00');

// Utilizziamo i metodi getter per ottenere informazioni sulla data
let year = date.getFullYear();   // Ottiene l'anno (2023)
let month = date.getMonth();     // Ottiene il mese (2 per marzo, 0-based)
let day = date.getDate();        // Ottiene il giorno del mese (15)
let dayOfWeek = date.getDay();   // Ottiene il giorno della settimana (3 per mercoledì, 0-based)
let hours = date.getHours();     // Ottiene le ore (10)
let minutes = date.getMinutes(); // Ottiene i minuti (30)
let seconds = date.getSeconds(); // Ottiene i secondi (45)
let milliseconds = date.getMilliseconds(); // Ottiene i millisecondi (0)
let timezoneOffset = date.getTimezoneOffset(); // Ottiene il fuso orario in minuti (60)
```

I metodi che permettono di impostare uno specifico campo della data sono:

1. ``setFullYear(year)``: Imposta l'anno della data;
2. ``setMonth(month)``: Imposta il mese della data (0 per gennaio, 1 per febbraio, ecc.);
3. ``setDate(day)``: Imposta il giorno del mese della data;
4. ``setHours(hours)``: Imposta le ore della data (0-23);
5. ``setMinutes(minutes)``: Imposta i minuti della data (0-59);
6. ``setSeconds(seconds)``: Imposta i secondi della data (0-59);
7. ``setMilliseconds(milliseconds)``: Imposta i millisecondi della data (0-999).

Un esempio d'uso è il seguente:

```javascript
date.setFullYear(2024);    // Imposta l'anno a 2024
date.setMonth(5);          // Imposta il mese a giugno (5, 0-based)
date.setDate(20);          // Imposta il giorno del mese a 20
date.setHours(15);         // Imposta le ore a 15 (3 PM)
date.setMinutes(45);       // Imposta i minuti a 45
date.setSeconds(30);       // Imposta i secondi a 30
date.setMilliseconds(500); // Imposta i millisecondi a 500
```

### Sommare o sottrarre periodi di tempo

La classe Date non fornisce metodi specifici per sommare o sottrarre periodi di tempo direttamente. Ma la modifica di una proprietà avviene aggiornando di conseguenza tutte le altre proprietà. Ad esempio:

- quando si sommano o si sottraggono mesi, è gestito automaticamente il passaggio tra gli anni. Ad esempio, se si somma un mese a dicembre, il mese diventerà gennaio dell'anno successivo, e viceversa;
- quando si sommano o si sottraggono giorni, è gestito automaticamente il passaggio tra i mesi e gli anni;

Un esempio di somma e sottrazione dei periodi di tempo è il seguente:

```javascript
let date = new Date('2023-03-15T10:30:45.000+01:00');
// sommo 12 ore, 20 giorni, 11 mesi ed 1 anno 
date.setHours(date.getHours() + 12);
date.setDate(date.getDate() + 20);
date.setMonth(date.getMonth() + 11);
date.setFullYear(date.getFullYear() + 1);
// output 04/03/2025, 21:30:45
```

## Utilizzo dell'oggetto ``Temporal``

E' possibile creare una variabile a cui assegnare un momento temporale utilizzando le varie specializzazioni dell'oggetto ``Temporal``, che sono:

- ``Temporal.PlainDate``: rappresenta un'ora senza informazioni sulla data e sul fuso orario;
- ``Temporal.PlainTime``: rappresenta una data senza informazioni sull'ora e sul fuso orario;
- ``Temporal.PlainDateTime``: rappresenta data e ora senza informazioni sul fuso orario;
- ``Temporal.PlainYearMonth``: rappresenta un mese dell'anno, senza informazioni sul giorno, sull'ora e sul fuso orario;
- ``Temporal.PlainMonthDay``: rappresenta un giorno del mese, senza informazioni sull'anno, sull'ora e sul fuso orario;
- ``Temporal.ZonedDateTime``: rappresenta data e ora con informazioni sul fuso orario;
- ``Temporal.Duration``: rappresenta una durata di tempo (ad esempio, giorni, ore, minuti);
- ``Temporal.Instant``: rappresenta un punto specifico nel tempo, espresso in millisecondi dall'epoca Unix (1 gennaio 1970);

### Metodi degli oggetti Temporal

Tutti gli oggetti ``Temporal`` ereditano gli stessi metodi:

``from()``: Crea un'istanza di Temporal da una stringa o un oggetto;
``add()``: Aggiunge un periodo di tempo;
``subtract()``: Sottrae un periodo di tempo;
``toString()``: Restituisce una rappresentazione in stringa;
``equals()``: Confronta due date e ore per verificare se sono uguali.

Per creare un'istanza di ``Temporal`` dobbiamo innanzitutto indicare quale specializzazione vogliamo. Come abbiamo gia descritto, ogni specializzazione ha la sua informazione:

- ``PlainTime`` ha l'informazione solo della data;
- ``PlainDate``ha l'informazione solo dell'ora;
- e cosi via;

Una volta scelta la specializzazione dell'oggetto ``Temporal``, possiamo invocare i metodi, come nell'esempio successivo:

``Temporal.PlainTime.from()``
``Temporal.PlainDate.add()``
``Temporal.PlainDateTime.subtract()``
``Temporal.ZonedDateTime.toString()``
``Temporal.Duration.equals()``

Andiamo a vedere nel dettaglio i metodi disponibili.

#### Creazione di un momento temporale

La funzione progettata per eseguire la creazione di una qualsiasi istanza di ``Temporal`` è ``from()``, la cui firma è la seguente:

```plaintext
Syntax: Temporal.from(item)

Parameters:
    item    String | Object: a string representation of a date and time or an object with date and time properties

Returns:
    Temporal: an instance of Temporal representing the specified date and time
```

Il parametro formale ``item`` rappresenta una stringa che rappresenta una data e un'ora, oppure un oggetto con proprietà che definiscono la data e l'ora (come ``year``, ``month``, ``day``, ``hour``, ``minute``, ``second``, e ``millisecond``).

Il valore restituito è un'istanza di ``Temporal`` che rappresenta l'oggetto' specificate. Può essere salvato in una variabile.

Al parametro formale ``item`` dobbiamo quindi sostituire la stringa che rappresenta l'informazione desiderata, ovvero quella solo con la data o quella solo con l'ora, ad esempio.

Scegliamo la specializzazione di ``Temporal`` ed invochiamo il metodo passando i parametri, come nel seguente esempio:

```javascript
let dataOra = Temporal.PlainDateTime.from("2023-03-15T10:30:45");
let data = Temporal.PlainDate.from("2023-03-15");
```

In alternativa, per creare un'istanza di `PlainDateTime` utilizzando un oggetto, possiamo sostituire al parametro formale ``item`` un oggetto come ``{ year: 2023, month: 3, day: 15, hour: 10, minute: 30, second: 45 }``. Salviamo in una variabile ``dataOraOggetto`` il risultato, invocando la funzione nel seguente modo:

```javascript
let dataOraOggetto = Temporal.PlainDateTime.from({ year: 2023, month: 3, day: 15, hour: 10, minute: 30, second: 45 });
let dataOggetto = Temporal.PlainDate.from({ year: 2023, month: 3, day: 15 });
```

Di seguito un esempio per ogni specializzazione:

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
```

#### Aggiunta o sottrazione di un momento temporale

La funzione progettata per eseguire l'aggiunta di un periodo di tempo a un'istanza di ``Temporal`` è ``add()``, la cui firma è la seguente:

```plaintext
Syntax: Temporal.add(temporalDuration)

Parameters:
    temporalDuration    Temporal.Duration: un'istanza di Duration che rappresenta il periodo di tempo da aggiungere

Returns:
    Temporal: un'istanza di Temporal che rappresenta il momento temporale risultante
```

Il parametro formale ``temporalDuration`` rappresenta un'istanza di `Temporal.Duration` che specifica il periodo di tempo da aggiungere, come giorni, mesi, anni, ore, minuti, secondi, e millisecondi.

Il valore restituito è un'istanza di ``Temporal`` che rappresenta il momento temporale risultante dopo l'aggiunta del periodo specificato. Può essere salvato in una variabile.

Per aggiungere un periodo di tempo a un'istanza di ``Temporal``, dobbiamo quindi sostituire il parametro formale ``temporalDuration`` con un'istanza di `Temporal.Duration`, ad esempio ``Temporal.Duration.from({ days: 5, hours: 2 })`` per aggiungere 5 giorni e 2 ore.

Ecco un esempio di utilizzo del metodo ``add()``:

```javascript
let dataOra = Temporal.PlainDateTime.from("2023-03-15T10:30:45");
let nuovaDataOra = dataOra.add(Temporal.Duration.from({ days: 5, hours: 2 }));
console.log(nuovaDataOra.toString()); // Output: "2023-03-20T12:30:45"
```

La funzione progettata per eseguire la sottrazione di un periodo di tempo da un'istanza di ``Temporal`` è ``subtract()``, la cui firma è la seguente:

```plaintext
Syntax: Temporal.subtract(temporalDuration)

Parameters:
    temporalDuration    Temporal.Duration: un'istanza di Duration che rappresenta il periodo di tempo da sottrarre

Returns:
    Temporal.PlainDateTime: un'istanza di Temporal che rappresenta il momento temporale risultante dopo la sottrazione
```

Il parametro formale ``temporalDuration`` rappresenta un'istanza di `Temporal.Duration` che specifica il periodo di tempo da sottrarre, come giorni, mesi, anni, ore, minuti, secondi, e millisecondi.

Il valore restituito è un'istanza di ``Temporal`` che rappresenta il momento temporale risultante dopo la sottrazione del periodo specificato. Può essere salvato in una variabile.

Per sottrarre un periodo di tempo da un'istanza di ``Temporal``, dobbiamo quindi sostituire il parametro formale ``temporalDuration`` con un'istanza di `Temporal.Duration`, ad esempio ``Temporal.Duration.from({ days: 3, hours: 1 })`` per sottrarre 3 giorni e 1 ora.

Ecco un esempio di utilizzo del metodo ``subtract()``:

```javascript
let dataOra = Temporal.PlainDateTime.from("2023-03-15T10:30:45");
let nuovaDataOra = dataOra.subtract(Temporal.Duration.from({ days: 3, hours: 1 }));
console.log(nuovaDataOra.toString()); // Output: "2023-03-12T09:30:45"
```

dateTime.equals(dateTime2); // false
monthDay.toPlainDate(2023); // undefined
monthDay.toPlainDate(2024); // 2024-02-29

#### Confronto tra date

La funzione progettata per eseguire il confronto di uguaglianza tra due istanze di ``Temporal`` è ``equals()``, la cui firma è la seguente:

```plaintext
Syntax: Temporal.equals(other)

Parameters:
    other    Temporal: un'altra istanza di Temporal da confrontare

Returns:
    Boolean: true se le due date e ore sono uguali, false altrimenti
```

Il parametro formale ``other`` rappresenta un'altra istanza di `Temporal` con cui confrontare l'istanza corrente.

Il valore restituito è un valore booleano che indica se le due istanze di ``Temporal`` rappresentano la stessa data e ora. Può essere salvato in una variabile.

Per confrontare due istanze di ``Temporal`` per verificare se sono uguali, dobbiamo quindi sostituire il parametro formale ``other`` con un'altra istanza di `Temporal`, ad esempio ``Temporal.PlainDateTime.from("2023-03-15T10:30:45")``.

Ecco un esempio di utilizzo del metodo ``equals()``:

```javascript
let dataOra1 = Temporal.PlainDateTime.from("2023-03-15T10:30:45");
let dataOra2 = Temporal.PlainDateTime.from("2023-03-15T10:30:45");
let dataOra3 = Temporal.PlainDateTime.from("2023-03-16T10:30:45");

let sonoUguali1 = dataOra1.equals(dataOra2); // true
let sonoUguali2 = dataOra1.equals(dataOra3); // false

console.log(sonoUguali1); // Output: true
console.log(sonoUguali2); // Output: false
```

In questo esempio, la prima comparazione restituisce `true` perché `dataOra1` e `dataOra2` rappresentano la stessa data e ora, mentre la seconda comparazione restituisce `false` perché `dataOra1` e `dataOra3` rappresentano date diverse.

#### Conversione in una rappresentazione testuale localizzata

La funzione progettata per eseguire la conversione di un'istanza di ``Temporal`` in una stringa formattata secondo le convenzioni locali è ``toLocaleString()``, la cui firma è la seguente:

```plaintext
Syntax: Temporal.toLocaleString([locales[, options]])

Parameters:
    locales    String | Array: a string with a BCP 47 language tag or an array of such strings
    options    Object (optional): an object that can specify formatting options

Returns:
    String: the locale-specific string representation of the date
```

Poichè la firma ed il comportamento sono praticamente identici al metodo ``toLocaleString`` della classe ``Date``, si rimanda a questa per le specifiche tecniche.

Ecco un esempio di come utilizzare il metodo `toLocaleString` con un'istanza di `Temporal.PlainDateTime`:

```javascript
let dataOra = Temporal.PlainDateTime.from("2023-03-15T10:30:00");

let dataLocale = dataOra.toLocaleString();
console.log(dataLocale); // Output: "2023-03-15T10:30:00" (formato predefinito)

let dataLocaleIt = dataOra.toLocaleString('it-IT', {
  year: 'numeric', month: 'long', day: 'numeric',
  hour: '2-digit', minute: '2-digit' 
});
console.log(dataLocaleIt); // Output: "15 marzo 2023, 10:30"

let dataLocaleUS = dataOra.toLocaleString('en-US', { 
  year: 'numeric', month: 'long', day: 'numeric',
  hour: '2-digit', minute: '2-digit'
});
console.log(dataLocaleUS); // Output: "March 15, 2023, 10:30 AM"
```
