---
type: "javascript"
title: "03 - Costanti, variabili e conversioni"
description: "Costanti, variabili e conversioni"
date: 2020-04-04
publishdate: 2020-04-04
lastmod: 2020-04-04
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "Costanti, variabili e conversioni"
---

# Costanti, variabili e conversioni

Le variabili sono spazi di memoria in cui vengono memorizzate delle informazioni. Hanno un nome ed un tipo associato, ad esempio tipo numerico, tipo booleano o tipo "stringa". 

Quando si dichiara una variabile e si assegna un valore, allora alla variabile viene associato un tipo di dato. Se si assegna un valore differente, anche il tipo di dato cambia di conseguenza. 

Questo tipo di tipizzazione delle variabili è detto tipizzazione **debole**, in contrapposizione alla tipizzazione **forte**, in cui una variabile non può cambiare il tipo di dato associato.

I tipi di dato possono essere semplici o complessi. Quelli semplici sono detti ``primitivi`` e quelli complessi sono gli oggetti.

Dalla versione di Ecmascript 6 le variabili si dichiarano utilizzando la parola chiave ``let``, anche se la parola chiave ``var`` usata in Ecmascript 5 è ancora valida. 

Le costanti sono spazi di memoria con un nome, un tipo associato ed un valore associato che non è più possibile modificare. Si dichiarano con la parola chiave ``const``;

## Tipo booleano

Le variabili possono avere assegnato un valore logico, detto Booleano, che può essere ``true`` oppure ``false``.

Il termine Booleano deriva dal matematico George Boole, che descrisse in forma algebrica la logica delle proposizioni.

Un esempio di dichiarazione di variabili a cui viene associato un tipo booleano è il seguente:

```javascript
let trueVariable = true;
let trueVariable = false;
```

## Tipo numerico

Le variabili possono avere assegnato un valore numerico, e quindi il tipo associato sarà numerico. Queste variabili possono avere un valore intero o decimale. Un esempio di dichiarazione di variabili a cui viene associato un tipo numerico è il seguente:

```javascript
let naturalNumber = 10;
let realNumber = 10.5;
```
Il valore intero può essere rappresentato in decimale, esadecimale e binario. 

La rappresentazione decimale del valore da assegnare avviene nella forma classica, come nel seguente esempio:

```javascript
let naturalNumber = 10;
```

La rappresentazione esadecimale si esprime anteponendo al valore da assegnare alla variabile il simbolo ``0x``, come nel seguente esempio:

```javascript
let naturalNumberHexadecimal = 0xFF;
```

La rappresentazione binaria si esprime anteponendo al valore da assegnare alla variabile il simbolo ``0b``, come nel seguente esempio:

```javascript
let naturalNumberBinary = 0b010111;
```

Il valore intero o decimale può essere espresso in [notazione scientifica](https://it.wikipedia.org/wiki/Notazione_scientifica), nella classica forma **mantissa**, simbolo ``e`` (indicante l'esponenziale) ed **esponente**, come nel seguente esempio:

```javascript
let realNumberExponentiation = 0.1E100;
```

Tra i valori numerici esistono dei casi particolari:

- `Nan` valore utilizzato per indicare un risultato che [Non è un Numero](https://it.wikipedia.org/wiki/NaN) (dall'inglese Not a Number). Questo valore è assegnato quando si tentano operazioni del tipo "radice quadrata di meno uno", che non ha risultato nell'insieme dei numeri reali;
- ``Infinity`` utilizzato per indicare un valore infinito. Può essere specificato l'infinito positivo ``+Infinity`` o anche negativo ``-Infinity``.

```javascript
let positiveInfinity = +Infinity;
let negativeInfinity = -Infinity;
```

## Tipo stringa

Le variabili possono avere assegnata una sequenza di caratteri e quindi il tipo associato sarà stringa. La sequenza di caratteri deve essere racchiusa tra singoli apici ``'`` o doppi apici ``"``.

Un esempio di dichiarazione di variabile a cui viene associato un tipo stringa è il seguente:

```javascript
let stringVariable = "Una stringa";
let stringVariable2 = 'Seconda stringa';
```

## Tipo oggetto

Un oggetto in ambito informatico è un dato complesso che risiede in memoria ed ha più proprietà ed anche dei metodi. Tipicamente la creazione di un oggetto è effettuata attraverso la parola chiave ``new``.

L'operazione di inserimento di un oggetto in memoria è detta **allocazione**, quindi tecnicamente un oggetto è **allocato** in memoria.

Un'esempio di oggetto può essere una persona, che contiene proprietà quali nome, cognome, data di nascita, ecc..

```javascript
let persona = {
    firstname: "John",
    lastname: "Doe",
    id: 5566
};
```

### Tipi oggetto wrapper 

E' possibile creare una versione ad oggetti (detta "wrapper")
dei tipi primitivi di dato numerici, stringhe o booleani:

```javascript
var naturalNumberObj = new Number(10);
let realNumberObj = new Number(10.5);
let toBeOrNotToBeObj = new Boolean(true);
var vectorObj = new String("one");
```

Come si nota, la parola chiave ``new`` viene utilizzata per creare degli oggetti.

## Tipo null

Il valore ``null`` è un valore speciale che si utilizza per indicare un oggetto non ancora allocato in memoria.

Un esempio di dichiarazione di variabile di tipo oggetto non ancora allocato in memoria è il seguente:

```javascript
let persona = null;
```

## Tipo undefined

Il valore ``undefined`` è un valore speciale che si utilizza per indicare una variabile il cui valore non è ancora definito.

Un esempio di dichiarazione di variabile con valore ancora non definito è il seguente:

```javascript
let variabileIndefinita;
let variabileIndefinita2 = undefined;
```

## Identificazione del tipo di dato di una variabile

E' possibile identificare il tipo di una variabile utilizzando la parola
chiave `typeof`. Partendo dal seguente esempio:

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

Identificando i tipi di dato delle variabili dichiarate nel precedente esempio si ottiene:

- `typeof naturalNumber;` restituisce `number`
- `typeof realNumber;`restituisce `number`
- `typeof toBeOrNotToBe;`restituisce `boolean`
- `typeof word;`restituisce `string`
- `typeof undefinedThing;`restituisce `undefined`
- `typeof thing;`restituisce `object`
- `typeof naturalNumberObj;`restituisce `object`
- `typeof realNumberObj;`restituisce `object`
- `typeof toBeOrNotToBeObj;`restituisce `object`
- `typeof wordObj;`restituisce `object`

Come si può notare, sia la variabile oggetto, sia le variabili con valore ``null``, sia la variabile sia tutte le variabili "wrapper" sono di tipo oggetto.

Una precisazione però è da fare sulla variabile inizializzata a `null`:
la specifica di Ecmascript prevede che, nonostante la variabile sia da
considerare come tipo "null", l'operazione `typeof null` restituisca
`object`.

## Conversioni tra tipi

### Conversioni da stringa a numero

Per convertire dati dal formato stringa al formato intero, si usa
l'istruzione `parseInt()`, come nell'esempio seguente:

```javascript
parseInt("123.45")   // restituisce 123
parseInt("123.45KG") // restituisce 123
parseInt("aaaa")     // restituisce NaN
parseInt("0.1e6")    // restituisce 0 perchè legge solo il numero intero 0
parseInt("0x77")     // restituisce 119 (= 7*16 + 7)
```

E' possibile convertire la stringa in un numero con una base specifica,
come nell'esempio seguente:

```javascript
parseInt("ZR", 36) // restituisce 1289 (= 35*36 + 29)
```

Per convertire dati dal formato stringa al formato float, si usa
l'istruzione `parseFloat()`, come nell'esempio seguente:

```javascript
parseFloat(".3")    // restituisce 0.3
parseFloat("0.1e6") // restituisce 100000
```

Per i numeri decimali, non è prevista la conversione del numero in una
base specifica.

### Conversione da numero a stringa

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
```
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
```
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
```
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
```
"1.23e+8"
"1.23456789e+8"
"1.2345678912345600e+8"
```
