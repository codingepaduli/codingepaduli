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

Per tutte le altre operazioni sui numeri si utilizzano le proprietà ed i metodi della libreria ``Math`` e dell'oggetto ``Number``.

Le costanti ed i metodi resi disponibili dalla libreria ``Math`` sono numerosissimi, per un elenco completo si rimanda alla documentazione della libreria. Di seguito un elenco delle costanti e dei metodi più utilizzati:

Costante | Operazione | Esempio d'uso
--- | --- | ---
``Math.E`` | Costante e di Eulero / Nepero | ``"La costante E vale" + Math.E``
``Math.PI`` | Costante &Pi; (pi greco) / Costante di Archimede | ``"La costante &Pi; vale" + Math.PI``
``Math.SQRT2`` | Valore della radice quadrata di 2 | ``"La costante SQRT2 vale" + Math.SQRT2``

Metodi | Operazione | Esempio d'uso
--- | --- | ---
``abs(x)`` | restituisce il valore assoluto del numero x | ``Math.abs(-2)``
``cbrt(x)`` | restituisce la radice cubica del numero x | ``Math.cbrt(-2)``
``ceil(x)`` | restituisce l'arrotondamento di x al numero intero più grande | ``Math.ceil(-2.12)``
``cos(x)`` | restituisce il coseno dell'angolo x (espresso in radianti) | ``Math.cos(-2)``
``exp(x)`` | restituisce l'esponenziale in base E del numero x | ``Math.exp(2)``
``floor(x)`` | restituisce l'arrotondamento di x al numero intero più piccolo | ``Math.floor(-2)``
``log(x)`` | restituisce il logaritmo in base E del numero x | ``Math.log(2)``
``max(x, y, w, ...)`` | restituisce il maggiore dei valori passati come argomento | ``Math.max(-2, 3, 4, -8)``
``min(x, y, w, ...)`` | restituisce il minore dei valori passati come argomento | ``Math.min(-2, 3, 4, -8)``
``pow(x, y)`` | restituisce il valore di x elevato ad y | ``Math.pow(2, 3)``
``random()`` | restituisce un valore casuale tra zero ed uno | ``Math.random()``
``round(x)`` | restituisce l'arrotondamento di x al numero intero più vicino | ``Math.round(3.12)``
``sin(x)`` | restituisce il seno dell'angolo x (espresso in radianti) | ``Math.sin(2)``
``sqrt(x)`` | restituisce la radice quadrata di x | ``Math.sqrt(2)``
``trunc(x)`` | restituisce il valore di x senza la parte decimale | ``Math.trunc(3.2)``

## Le costanti e i metodi numerici

Le costanti ed i metodi comunemente utilizzati dell'oggetto ``Number`` sono di seguito descritti:

Costante | Operazione | Esempio d'uso
--- | --- | ---
``Number.NaN`` | Valore speciale indicante 'Not a Number' | ``"Il valore NaN vale" + Number.NaN``
``Number.NEGATIVE_INFINITY`` | Valore speciale indicante 'Infinito negativo' | ``" -Infinito " + Number.NEGATIVE_INFINITY``
``Number.POSITIVE_INFINITY`` | Valore speciale indicante 'Infinito positivo' | ``" +Infinito " + Number.POSITIVE_INFINITY``

Metodi | Operazione | Esempio d'uso
--- | --- | ---
``isNaN()`` | indica se il valore è 'NaN' | ``Number.isNaN(-2)``
``isFinite()()`` | indica se il valore è un numero finito | ``Number.isFinite()``
``isInteger()`` | indica se il valore è un numero intero | ``Number.isInteger()``
``parseFloat(string)`` | converte la stringa in un numero decimale | ``Number.parseFloat("2.15")``
``parseInt(string)`` | converte la stringa in un numero intero | ``Number.parseInt("2.15")``
