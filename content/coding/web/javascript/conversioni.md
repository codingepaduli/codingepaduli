---
type: "javascript"
title: "JavaScript Riepilogo Lez. 04, 05, 06"
description: "Riepilogo dei metodi e degli operatori per manipolare i tipi primitivi"
date: 2020-04-06
publishdate: 2020-04-06
lastmod: 2020-04-06
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: true
toc: false
summary: "Riepilogo dei metodi e degli operatori per manipolare i tipi primitivi"
weight: 8926

references:
    -   title: "Libreria matematica Math"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math"
        description: "Firma e descrizione delle varie funzioni matematiche"
    -   title: "Libreria matematica Number"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number"
        description: "Firma e descrizione delle varie funzioni sui numeri"
---

# Riepilogo dei metodi e degli operatori per manipolare i tipi primitivi

## Operazioni ed operatori per le stringhe

Diversi operatori possono lavorare sulle stringhe:

Simbolo operatore             | Operatore                           | Esempio d'uso
------ | ---------------------------------------------------------- | ---
``+``  | concatenazione tra due stringhe                            | ``x = "una " + "stringa"``
``==`` | confronto di eguaglianza di due stringhe                   | ``"una " == "stringa"``
``>``  | confronto di due stringhe in base all'ordinamento naturale | ``"una " > "stringa"``
``>=`` | confronto di due stringhe in base all'ordinamento naturale | ``"una " >= "stringa"``
``<``  | confronto di due stringhe in base all'ordinamento naturale | ``"una " < "stringa"``
``<=`` | confronto di due stringhe in base all'ordinamento naturale | ``"una " <= "stringa"``

## Proprietà e funzioni su stringhe

Riepilogo delle proprietà e dei metodi più utilizzati degli oggetti di tipo ``String``. Per un elenco completo si rimanda alla documentazione ufficiale.

L'unica proprietà disponibile nelle stringhe è ``length``, ed è di sola lettura.

Proprietà   | Operazione              | Esempio d'uso
----------- | ----------------------- | -------------
``length``  | lunghezza della stringa | ``"una stringa".length``

Metodi                   | Operazione                                                    | Esempio d'uso
-------------------------|---------------------------------------------------------------|--------------
``charAt(index)``        | restituisce il carattere alla posizione indicata              | ``"una stringa".charAt(0)``
``endsWith(stringa)``    | indica se termina con la stringa indicata                     | ``"una stringa".endsWith("inga")``
``indexOf(stringa)``     | restituisce l'indice in cui appare la stringa indicata        | ``"una stringa".indexOf("inga")``
``lastIndexOf(stringa)`` | restituisce l'ultimo indice in cui appare la stringa indicata | ``"una stringa".lastIndexOf("ga")``
``replace(stringa1, stringa2)`` | sostituisce tutte le occorrenze della prima stringa con la seconda stringa | ``"una stringa".replace("a", "altra stringa")``
``startsWith(stringa)``  | indica se inizia con la stringa indicata                      | ``"una stringa".startsWith("inga")``
``substring(inizio, fine)`` | restituisce la stringa inclusa tra le posizioni di inizio e fine      | ``"una stringa".substring(1,4)``
``toLowerCase()``        | restituisce la stringa con tutti i caratteri in minuscolo     | ``"una stringa".toLowerCase()``
``toUpperCase()``        | restituisce la stringa con tutti i caratteri in maiuscolo     | ``"una stringa".toUpperCase()``
``trim()``               | rimuove tutti gli spazi iniziali e finali                     | ``"una stringa".trim()``

## Operazioni ed operatori numerici

Simbolo operatore        | Operatore                   | Esempio d'uso
-------- | ------------------------------------------- | --------------
``+``    | somma tra numeri                            | ``x = 2 + 1;``
``-``    | differenza tra numeri                       | ``x = 2 - 1;``
``*``    | moltiplicazione tra numeri                  | ``"x = 2 * 1;"``
``/``    | divisione tra numeri                        | ``x = 2 / 1;``
``%``    | resto della divisione tra numeri            | ``x = 2 % 1;``
``++``   | incremento di una singola unità             | ``x++;``
``--``   | decremento di una singola unità             | ``x--;``

Operatori relazionali:

Simbolo operatore        | Operatore                   | Esempio d'uso
-------- | ------------------------------------------- | --------------
``>``    | relazione di maggioranza                    | ``2 > 1;``
``<``    | relazione di minoranza                      | ``2 < 1;``
``==``   | relazione di uguaglianza                    | ``2 == 1;``
``>=``   | relazione di maggioranza o uguaglianza      | ``2 >= 1;``
``<=``   | relazione di minoranza o uguaglianza        | ``2 <= 1;``
``!=``   | relazione di disuguaglianza                 | ``2 != 1;``
``===``  | relazione di uguaglianza stretta            | ``2 === 1;``
``!==``  | relazione di disuguaglianza stretta         | ``2 !== 1;``

Operatori logici:

Simbolo operatore        | Operatore                   | Esempio d'uso
------ | ------------------------------------------- | --------------------
``&&`` | congiunzione logica AND                     | ``(2>10) && (2<40)``
``!``  | negazione logica NOT                        | ``!(2>10)``
``\|\|`` | disgiunzione logica OR                      | ``(2>10) \|\| (2<0)``

Operatori binari:

Simbolo operatore        | Operatore                   | Esempio d'uso
-------- | ------------------------------------------- | --------------
``&``    | operazione di and booleano tra due sequenze di bit | ``3 & 5``
``\|``   | operazione di or booleano tra due sequenze di bit  | ``3 \| 5``
``^``    | operazione di xor booleano tra due sequenze di bit | ``3 ^ 5``
``~``    | operazione di not booleano su una sequenza di bit  | ``~ 5;``
``<<``   | shift sinistro di n posizioni                      | ``3 << 5``
``>>``   | shift destro di n posizioni                        | ``3 >> 5``
``>>>``  | shift destro senza segno di n posizioni            | ``3 >>> 5``

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
``Number.NEGATIVE_INFINITY`` | Valore speciale indicante 'Infinito negativo' | ``" -Infinito: " + Number.NEGATIVE_INFINITY``
``Number.POSITIVE_INFINITY`` | Valore speciale indicante 'Infinito positivo' | ``" +Infinito: " + Number.POSITIVE_INFINITY``

Metodi                 | Operazione                                | Esempio d'uso
---------------------- | ----------------------------------------- | ---
``isNaN()``            | indica se il valore è 'NaN'               | ``Number.isNaN(-2)``
``isFinite()``         | indica se il valore è un numero finito    | ``Number.isFinite()``
``isInteger()``        | indica se il valore è un numero intero    | ``Number.isInteger()``
``parseFloat(string)`` | converte la stringa in un numero decimale | ``Number.parseFloat("2.15")``
``parseInt(string)``   | converte la stringa in un numero intero   | ``Number.parseInt("2.15")``
``toString(base)``     | converte il numero in stringa e specifica la base numerica nella quale rappresentare il numero | ``x.toString(16)``
``toExponential(digits)`` | converte il numero in stringa con rappresentazione esponenziale (mantissa ed esponente), specificando opzionalmente il numero di cifre decimali da utilizzare per la mantissa | ``z.toExponential(16)``

## Metodi della classe Date

Metodo                   | Descrizione dell'operazione             | Esempio d'uso
-------------------------|-----------------------------------------|---------------------
``new Date(string)``     | Crea la data partendo da una stringa    | ``new Date('2023-03-15T10:30:45.000+01:00')``

Metodo                   | Descrizione dell'operazione             | Esempio d'uso
-------------------------|-----------------------------------------|---------------------
`toLocaleString(locale)` | Converte la data e l'ora in una stringa seguendo le indicazioni di localizzazione fornite | `date.toLocaleString('en-US')`
`toLocaleString(locale, options)` | Converte la data e l'ora in una stringa seguendo le indicazioni di localizzazione e le opzioni di formattazione fornite | `date.toLocaleString('en-US', { 'dateStyle': 'long', 'timeStyle': 'long' });`

Metodo          | Descrizione dell'operazione            | Esempio d'uso
----------------|--------------------------------------- |---------------------------
`getFullYear()` | Restituisce l'anno.                    | `date.getFullYear();`
`getMonth()`    | Restituisce il mese (0-11).            | `date.getMonth();`
`getDate()`     | Restituisce il giorno del mese (1-31). | `date.getDate();`
`getDay()` | Restituisce il giorno della settimana (0-6). | `date.getDay();`
`getHours()`    | Restituisce l'ora (0-23).              | `date.getHours();`
`getMinutes()`  | Restituisce i minuti (0-59).           | `date.getMinutes();`
`getMilliseconds()`   | Restituisce i millisecondi.      | `date.getMilliseconds();`
`getTimezoneOffset()` | Restituisce il fuso orario       | `date.getTimezoneOffset();`

Metodo                | Descrizione dell'operazione        | Esempio d'uso
----------------------|---------------------------------   |-------------------------
`setFullYear(year)`   | Imposta l'anno.                    | `date.setFullYear(2023)`
`setMonth(month)`     | Imposta il mese (0 per gennaio).   | `date.setMonth(0)`
`setDate(day)`        | Imposta il giorno del mese (1-31). | `date.setDate(15)`
`setHours(hours)`     | Imposta le ore (0-23).             | `date.setHours(10)`
`setMinutes(minutes)` | Imposta i minuti (0-59).           | `date.setMinutes(30)`
`setSeconds(seconds)` | Imposta i secondi (0-59).          | `date.setSeconds(45)`
`setMilliseconds(ms)` | Imposta i millisecondi             | `date.setMilliseconds(500)`  

La classe ``Date`` non fornisce metodi specifici per sommare o sottrarre periodi di tempo direttamente, ma la modifica di una proprietà comporta l'aggiornando a cascata di tutte le altre proprietà, permettendo quindi la somma o la sottrazione di periodi da una data. Ad esempio:

```javascript
let date = new Date('2023-03-15T10:30:45.000+01:00');
// sommo 12 ore, 20 giorni, 11 mesi ed 1 anno 
date.setHours(date.getHours() + 12);
date.setDate(date.getDate() + 20);
date.setMonth(date.getMonth() + 11);
date.setFullYear(date.getFullYear() + 1);
// output 04/03/2025, 21:30:45
```

## Metodi della classe ``Temporal``

Metodo       | Descrizione dell'operazione                               | Esempio d'uso
-------------|-----------------------------------------------------------|------------------------------------------------
`now()`     | Crea un'istanza di Temporal con la data e l'ora odierna.  | `Temporal.PlainDate .now();`
`from()`     | Crea un'istanza di Temporal da una stringa o un oggetto.  | `Temporal.PlainDate .from('2023-01-01');`
`add()`      | Aggiunge un periodo di tempo.                             | `data.add({ days: 5 });`
`subtract()` | Sottrae un periodo di tempo.                              | `data.subtract({ months: 1 });`
`toString()` | Restituisce una rappresentazione in stringa.              | `data.toString();`
`equals()`   | Confronta due date e ore per verificare se sono uguali.   | `data.equals(Temporal .PlainDate.from('2023-01-01'));`
`toLocaleString( locale)`            | Converte la data e l'ora in una stringa seguendo le indicazioni di localizzazione fornite                               | `date.toLocaleString('en-US')`
`toLocaleString( locale, options)`   | Converte la data e l'ora in una stringa seguendo le indicazioni di localizzazione e le opzioni di formattazione fornite | `date.toLocaleString('en-US', { 'dateStyle': 'long', 'timeStyle': 'long' });`
