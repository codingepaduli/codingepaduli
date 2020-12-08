---
type: "javascript"
title: "03 - Costanti, variabili e tipi di dato"
description: "Dichiarazione di costanti e variabili per i vari tipi di dato"
date: 2020-04-04
publishdate: 2020-04-04
lastmod: 2020-04-04
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "Dichiarazione di costanti e variabili per i vari tipi di dato"
---

# Costanti e variabili

Le variabili sono spazi di memoria in cui vengono memorizzate delle informazioni. Hanno un nome ed un tipo associato, ad esempio tipo numerico, tipo booleano o tipo "stringa".

Dalla versione di ECMAScript 6 le variabili si dichiarano utilizzando la parola chiave ``let``, anche se la parola chiave ``var`` usata in ECMAScript 5 è ancora valida.

Anche le costanti sono spazi di memoria con un nome ed un tipo associato, ma non è possibile modificare il valore assegnato. Si dichiarano con la parola chiave ``const``;

Quando si dichiara una variabile e si assegna un valore, allora alla variabile viene associato un tipo di dato.

Se si assegna un valore differente, anche il tipo di dato cambia di conseguenza. Questo è permesso poichè JavaScript ha una tipizzazione **debole**, a differenza di linguaggi con tipizzazione **forte**, in cui una variabile non può cambiare il tipo di dato associato.

I tipi di dato possono essere **primitivi** o **complessi**. Ai tipi primitivi è associato un solo valore, mentre liste di valori, oggetti con più proprietà sono considerati tipi complessi.

## Tipi primitivi

### Tipo booleano

Le variabili possono avere assegnato un valore logico, detto Booleano, che può essere ``true`` oppure ``false``.

Il termine Booleano deriva dal matematico George Boole, che descrisse in forma algebrica la logica delle proposizioni.

Un esempio di dichiarazione di variabili a cui viene associato un tipo booleano è il seguente:

```javascript
let trueVariable = true;
let falseVariable = false;
```

### Tipo numerico

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

### Tipo stringa

Le variabili possono avere assegnata una sequenza di caratteri e quindi il tipo associato sarà stringa. La sequenza di caratteri deve essere racchiusa tra singoli apici ``'`` o doppi apici ``"``.

Un esempio di dichiarazione di variabile a cui viene associato un tipo stringa è il seguente:

```javascript
let stringVariable = 'Una stringa';
let stringVariable2 = 'Seconda stringa';
```

Per definire una sequenza di caratteri che occupi più righe, si può racchiudere tra apici inversi `` ` ``, come nel seguente esempio:

```javascript
let stringVariable = `Una
stringa`;
```

Questo tipo di definizione è utilizzato anche per concatenare variabili o il risultato di un'espressione all'interno della stringa. Le variabili e le espressioni devono essere racchiuse tra simboli ``${`` e ``}``, come nel seguente esempio:

```javascript
let num1 = 9;
let num2 = 18;
let messaggio = `La somma dei
numeri ${num1} e ${num2}
vale ${num1 + num2}.`;
```

L'esempio precedente produce il seguente output (su più righe):

```output
La somma dei
numeri 9 e 18
vale 27.
```

## Tipi complessi

### Tipo oggetto

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

### Tipo null

Il valore ``null`` è un valore speciale che si utilizza per indicare un oggetto non ancora allocato in memoria.

Un esempio di dichiarazione di variabile di tipo oggetto non ancora allocato in memoria è il seguente:

```javascript
let persona = null;
```

### Tipo undefined

Il valore ``undefined`` è un valore speciale che si utilizza per indicare una variabile il cui valore non è ancora definito.

Un esempio di dichiarazione di variabile con valore ancora non definito è il seguente:

```javascript
let variabileIndefinita;
let variabileIndefinita2 = undefined;
```
