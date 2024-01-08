---
type: "javascript"
title: "JavaScript Lez. 04 - Identificazione del tipo e conversioni tra tipi"
description: "Identificazione del tipo di dato di una variabile e conversioni tra i vari tipi"
date: 2020-04-06
publishdate: 2020-04-06
lastmod: 2020-04-06
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "Identificazione del tipo di dato di una variabile e conversioni tra i vari tipi"
---

# Identificazione del tipo e conversione tra tipi

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
