---
type: "javascript"
title: "JavaScript Lez. 04 - I metodi e gli operatori"
description: "I metodi e gli operatori"
date: 2020-04-06
publishdate: 2020-04-06
lastmod: 2020-04-06
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "I metodi e gli operatori"
---

# I metodi e gli operatori

## Parola chiave ``typeof`` per l'identificazione del tipo di dato

E' possibile identificare il tipo di una variabile utilizzando la parola chiave ``typeof``.

Supponendo di aver dichiarato le seguenti variabili:

```javascript
'use strict'

// variabili primitive
let naturalNumber = 10;
let realNumber = 10.5;
let toBeOrNotToBe = true;
let word = "paragraph";
var undefinedThing = undefined;
let thing = null;

// variabili wrapper
var naturalNumberObj = new Number(10);
let realNumberObj = new Number(10.5);
let toBeOrNotToBeObj = new Boolean(true);
let wordObj = new String("paragraph");
```

Il codice necessario ad individuare i tipi di dato delle variabili dichiarate è il seguente:

- ``typeof naturalNumber;``     // restituisce ``number``
- ``typeof realNumber;``        // restituisce ``number``
- ``typeof toBeOrNotToBe;``     // restituisce ``boolean``
- ``typeof word;``              // restituisce ``string``
- ``typeof undefinedThing;``    // restituisce ``undefined``
- ``typeof thing;``             // restituisce ``object``
- ``typeof naturalNumberObj;``  // restituisce ``object``
- ``typeof realNumberObj;``     // restituisce ``object``
- ``typeof toBeOrNotToBeObj;``  // restituisce ``object``
- ``typeof wordObj;``           // restituisce ``object``

Come si può notare, sia la variabile oggetto, sia le variabili con valore ``null``, sia la variabile sia tutte le variabili "wrapper" sono di tipo oggetto.

Una precisazione però è da fare sulla variabile inizializzata a ``null``: la specifica di ECMAScript prevede che, nonostante la variabile sia da considerare come tipo "null", l'operazione ``typeof null`` restituisca ``object``.

## Conversione da numero a stringa

Per quanto concerne la conversione di un numero in formato stringa, è possibile utilizzare il metodo ``toString()`` dei tipi numerici, come nel seguente esempio:

```javascript
let x = 1;
let stringX = x.toString();
```

E' possibile convertire il numero in una base specificata passando come argomento al metodo ``toString()`` la base in cui si vuole convertire il numero.

Ad esempio, per la conversione in binario, ottale ed esadecimale si usa il seguente codice:

```javascript
let x = 10;
let x2 = (10).toString(2);
let x8 = x.toString(8);
let x16 = x.toString(16);
```

Il codice converte il numero nelle seguenti stringhe:

```output
x2 = "1010"
x8 = "12"
x16 = "a"
```

Nel caso di numeri negativi, si può effettuare una conversione in complemento a 2, utilizzando il seguente codice:

```javascript
let x = -1;
let xC2 = (x >>> 0).toString()
```

Il numero è convertito in una stringa rappresentata da 32 bit:

```output
xC2 = "11111111111111111111111111111111"
```

Per la conversione in formato esponenziale si utilizza il metodo ``toExponential()``, come nel seguente esempio:

```javascript
let x = 1;
let y = 1.4;
let w = 14;
let z = 123456789.123456;
let stringX = x.toExponential();
let stringY = y.toExponential();
let stringW = w.toExponential();
let stringZ = z.toExponential();
```

Il codice converte il numero nelle seguenti stringhe:

```output
"1e+0"
"1.4e+0"
"1.4e+1"
"1.2346e+8"
```

Si può passare al metodo il parametro opzionale indicante il numero di cifre decimali da utilizzare per la mantissa, come nel seguente esempio:

```javascript
let z = 123456789.123456;
let stringZ = z.toExponential(2);
let stringZ = z.toExponential(8);
let stringZ = z.toExponential(16);
```

Il codice converte il numero nelle seguenti stringhe:

```output
"1.23e+8"
"1.23456789e+8"
"1.2345678912345600e+8"
```

## Operazioni ed operatori per le stringhe

Diversi operatori possono lavorare sulle stringhe:

Simbolo operatore | Operatore | Esempio d'uso
--- | --- | ---
``+`` | concatenazione tra due stringhe | ``x = "una " + "stringa."``
``==`` | confronto di eguaglianza di due stringhe | ``"una " == "stringa"``
``>`` | confronto di due stringhe in base all'ordinamento naturale | ``"una " > "stringa"``
``>=`` | confronto di due stringhe in base all'ordinamento naturale | ``"una " >= "stringa"``
``<`` | confronto di due stringhe in base all'ordinamento naturale | ``"una " < "stringa"``
``<=`` | confronto di due stringhe in base all'ordinamento naturale | ``"una " <= "stringa"``

Per tutte le altre operazioni sulle stringhe si utilizzano le proprietà ed i metodi dell'oggetto ``String``. Tutte le stringhe sono istanze di questo oggetto (come le istanze di una classe nella programmazione OOP), e quindi le proprietà ed i metodi di questo oggetto ``String`` sono disponibili alle istanze.

L'unica proprietà disponibile nelle stringhe è ``length``, ed è di sola lettura.

Proprietà | Operazione | Esempio d'uso
--- | --- | ---
``lenghth`` | lunghezza della stringa | ``"Questa è una stringa".length``

I metodi disponibili sono numerosissimi, per un elenco completo si rimanda alla documentazione della classe ``String``. Di seguito un elenco dei metodi più utilizzati:

Metodi | Operazione | Esempio d'uso
--- | --- | ---
``charAt(index)`` | restituisce il carattere alla posizione passata come argomento | ``"Questa è una stringa".charAt(0)``
``endsWith(stringa)`` | indica se termina con la stringa passata come argomento | ``"Questa è una stringa".endsWith("inga")``
``indexOf(stringa)`` | restituisce l'indice in cui appare la stringa passata come argomento | ``"Questa è una stringa".indexOf("inga")``
``lastIndexOf(stringa)`` | restituisce l'ultimo indice in cui appare la stringa passata come argomento | ``"Questa è una stringa".lastIndexOf("ga")``
``replace(stringa1, stringa2)`` | sostituisce tutte le occorrenze della prima stringa passata come argomento con la seconda stringa passata come argomento | ``"Questa è una stringa".replace("a", "altra stringa")``
``startsWith(stringa)`` | indica se inizia con la stringa passata come argomento | ``"Questa è una stringa".startsWith("inga")``
``substring(inizio, fine)`` | restituisce la stringa inclusa tra le posizioni di inizio e fine | ``"Questa è una stringa".substring(1,4)``
``toLowerCase()`` | restituisce la stringa con tutti i caratteri in minuscolo | ``"Questa è una stringa".toLowerCase()``
``toUpperCase()`` | restituisce la stringa con tutti i caratteri in maiuscolo | ``"Questa è una stringa".toUpperCase()``
``trim()`` | rimuove tutti gli spazi iniziali e finali | ``"Questa è una stringa".trim()``

## Costanti e funzioni matematiche

Riepilogo delle proprietà e dei metodi più utilizzati della libreria ``Math``. Per un elenco completo si rimanda alla documentazione della libreria.

Costante       | Operazione                            | Valore
-------------- | ------------------------------------- | ---------------------
``Math.E``     | Costante e di Eulero / Nepero         | ``2.718281828459045``
``Math.PI``    | Costante di Archimede &Pi; (pi greco) | ``3.141592653589793``
``Math.SQRT2`` | Valore della radice quadrata di 2     | ``1.414213562373095``

Metodi                | Operazione                             | Esempio d'uso
--------------------- | -------------------------------------- | -------------------------
``abs(x)``            | Valore assoluto                      | ``Math.abs(-2)``
``cbrt(x)``           | Radice cubica                        | ``Math.cbrt(-2)``
``ceil(x)``           | Arrotondamento per eccesso           | ``Math.ceil(-2.12)``
``cos(x)``            | Coseno dell'angolo(in radianti)      | ``Math.cos(-2)``
``exp(x)``            | Esponenziale in base E               | ``Math.exp(2)``
``floor(x)``          | Arrotondamento per difetto           | ``Math.floor(-2)``
``log(x)``            | Logaritmo in base E                  | ``Math.log(2)``
``max(x, y, w, ...)`` | Maggiore dei valori passati          | ``Math.max(-2, 3, 4, -8)``
``min(x, y, w, ...)`` | Minore dei valori passati            | ``Math.min(-2, 3, 4, -8)``
``pow(x, y)``         | x elevato a y                        | ``Math.pow(2, 3)``
``random()``          | Valore casuale tra zero ed uno       | ``Math.random()``
``round(x)``          | Arrotondamento all'intero più vicino | ``Math.round(3.12)``
``sin(x)``            | Seno dell'angolo (in radianti)       | ``Math.sin(2)``
``sqrt(x)``           | Radice quadrata                      | ``Math.sqrt(2)``
``trunc(x)``          | Valore senza parte decimale          | ``Math.trunc(3.2)``

Riepilogo delle proprietà e dei metodi dell'oggetto ``Number``. Per maggiori dettagli si rimanda alla documentazione dell'oggetto Math'.

Costante                     | Operazione                                    | Esempio d'uso
---------------------------- | --------------------------------------------- | ---
``Number.NaN``               | Valore speciale indicante 'Not a Number'      | ``"Il valore NaN vale" + Number.NaN``
``Number.NEGATIVE_INFINITY`` | Valore speciale indicante 'Infinito negativo' | ``" -Infinito " + Number.NEGATIVE_INFINITY``
``Number.POSITIVE_INFINITY`` | Valore speciale indicante 'Infinito positivo' | ``" +Infinito " + Number.POSITIVE_INFINITY``

Metodi                 | Operazione                                | Esempio d'uso
---------------------- | ----------------------------------------- | ---
``isNaN()``            | indica se il valore è 'NaN'               | ``Number.isNaN(-2)``
``isFinite()()``       | indica se il valore è un numero finito    | ``Number.isFinite()``
``isInteger()``        | indica se il valore è un numero intero    | ``Number.isInteger()``
``parseFloat(string)`` | converte la stringa in un numero decimale | ``Number.parseFloat("2.15")``
``parseInt(string)``   | converte la stringa in un numero intero   | ``Number.parseInt("2.15")``

## La data e l'orario

Le variabili possono aver assegnata una data ed un orario. Questi tipi di dati di uso molto comune sono oggetti che rappresentano un singolo momento temporale in un formato indipendente dalla piattaforma.

La rappresentazione di date e orari su internet deve seguire le regole dello standard internazionale
[ISO 8601 Information interchange - Representation of dates and times](https://it.wikipedia.org/wiki/ISO_8601). Questo standard nasce per risolvere problemi di comprensione dei formati di date e ore utilizzati nei vari paesi, ad esempio la data rappresentata con 04-09-03 può indicare il:

- 4 settembre 2003 (o addirittura 1903) in Europa e altri Paesi,
- 9 aprile 2003 negli Stati Uniti d'America,
- 3 settembre 2004 secondo lo standard ISO 8601.

Il formato in cui scrivere date e ore deve essere ``YYYY``-``MM``-``DD``T``hh``:``mm``:``ss``.``KKK``, con il seguente significato:

- ``YYYY``: Anno;
- ``MM``: Mese;
- ``GG``: Giorno;
- T: è un carattere di separazione, deve essere inserito per separare la data dall'ora;
- ``hh``: Ora;
- ``mm``: Minuti;
- ``ss``: Secondi;
- ``kkk``: Millisecondi.

Alcuni campi possono essere omessi, per maggiori informazioni si rimanda alle specifiche del W3C.

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
