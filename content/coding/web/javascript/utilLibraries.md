---
type: "javascript"
title: "JavaScript - Libreria matematica"
description: "Descrizione delle funzioni della libreria matematica"
date: 2021-08-26
publishdate: 2021-08-26
lastmod: 2021-08-26
spellcheck: 2020-01-01
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: true
toc: false
summary: "Descrizione delle funzioni della libreria matematica"
customJS: ["/static/js/p5-1.2.0-min.js", "/static/coding/web/p5js/basics.js"]

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

# Librerie matematiche di utilità

Ogni linguaggio di programmazione ha una libreria matematica che mette a disposizione del programmatore le funzioni che eseguono le operazioni matematiche piú comuni, come quelle logaritmiche, esponenziali, trigonometriche e di arrotondamento.

Non è necessario riportare alla mente tutti i concetti matematici alla base delle suddette funzioni, corso di questo capitolo sarà illustrato solo come utilizzarle, lasciando poi al programmatore lo studio e l'analisi del contesto in cui utilizzarle.

## Arrotondamenti

L'arrotondamento è un'operazione ricorrente, puó avvenire per eccesso, per difetto, per troncamento. Per ogni tipo di arrotondamento  esiste un'apposita funzione che svolge questo compito.

L'**arrotondamento per eccesso** consiste nell'associare ad un numero reale ``x`` il numero intero successivo.

Come si può dedurre intuitivamente, l'arrotondamento per eccesso del numero ``2.13`` ha come risultato ``3``.

Meno intuitivo è l'arrotondamento per eccesso del numero ``-2.13``, dato che come risultato si ottiene ``-2``, e sulle prime può essere fonte di confusione.

La funzione progettata per eseguire tale operazione è ``ceil``, la cui firma è la seguente:

```plaintext
Syntax: Math.ceil(x)

Parameters:
    x    Number: the real value

Returns:
    Number: the integer value
```

Il parametro formale ``x`` rappresenta il numero da arrotondare.

Il valore restituito è il numero arrotondato. Può essere salvato in una variabile.

Per effettuare un arrotondamento per eccesso del numero 3.14, sostituiamo al parametro formale ``x`` il valore ``3.14``. Salviamo in una variabile ``i`` il risultato, invocando la funzione nel seguente modo:

```javascript
let i = Math.ceil(3.14);
```

L'**arrotondamento per difetto** consiste nell'associare ad un numero reale ``x`` al numero intero precedente.

Come si può dedurre intuitivamente, l'arrotondamento per difetto del numero ``2.13`` ha come risultato ``2``.

Meno intuitivo è l'arrotondamento per difetto del numero ``-2.13``, dato che come risultato si ottiene ``-3``, e sulle prime può essere fonte di confusione.

La funzione progettata per eseguire tale operazione è ``floor``, la cui firma è la seguente:

```plaintext
Syntax: Math.floor(x)

Parameters:
    x    Number: the real value

Returns:
    Number: the integer value
```

Il parametro formale ``x`` rappresenta il numero da arrotondare.

Il valore restituito è il numero arrotondato. Può essere salvato in una variabile.

Per effettuare un arrotondamento per difetto del numero 3.14, sostituiamo al parametro formale ``x`` il valore ``3.14``, ed opzionalmente salviamo in una variabile ``i`` il risultato, invocando la funzione nel seguente modo:

```javascript
let i = Math.floor(3.14);
```

L'**arrotondamento** classico consiste nell'associare ad un numero reale ``x`` il numero intero piú vicino, sia esso precedente o successivo.

Come si può dedurre intuitivamente, l'arrotondamento del numero ``2.13`` ha come risultato ``2``, mentre l'arrotondamento del numero ``2.63`` ha come risultato ``3``.

La situazione meno intuitiva si ha con il numero ``2.50``, che tipicamente si arrotonda a ``3``.

La funzione progettata per eseguire tale operazione è ``round``, la cui firma è la seguente:

```plaintext
Syntax: Math.round(x)

Parameters:
    x    Number: the real value

Returns:
    Number: the integer value
```

Il parametro formale ``x`` rappresenta il numero da arrotondare.

Il valore restituito è il numero arrotondato. Può essere salvato in una variabile.

Per effettuare un arrotondamento per eccesso del numero 3.14, sostituiamo al parametro formale ``x`` il valore ``3.14``, ed opzionalmente salviamo in una variabile ``i`` il risultato, invocando la funzione nel seguente modo:

```javascript
let i = Math.round(3.14);
```

L'**arrotondamento per troncamento** consiste nell'associare ad un numero reale ``x`` il numero intero che si ottiene togliendo tutte le cifre decimali.

Come ci si può aspettare, l'arrotondamento per troncamento del numero ``-2.13`` è ``-2``, quello del numero ``-2.83`` è ``-2``.

La funzione progettata per eseguire tale operazione è ``trunc``, la cui firma è la seguente:

```plaintext
Syntax: Math.trunc(x)

Parameters:
    x    Number: the real value

Returns:
    Number: the integer value
```

Il parametro formale ``x`` rappresenta il numero da arrotondare.

Il valore restituito è il numero arrotondato. Può essere salvato in una variabile.

Per effettuare un arrotondamento per troncamento del numero 3.14, sostituiamo al parametro formale ``x`` il valore ``3.14``, ed opzionalmente salviamo in una variabile ``i`` il risultato, invocando la funzione nel seguente modo:

```javascript
let i = Math.trunc(3.14);
```

## Generazione di un numero casuale

Spesso è necessario generare un numero casuale, per simulare tante casistiche reali, come il lancio di un dado.

Il numero casuale puó essere vincolato ad un determinato insieme, come nel caso del lancio del dado, in cui i valori accettabili vanno da un minimo di uno ad un massimo di sei ed includono solo numeri interi, oppure può essere libero.

<!-- TODO aggiungi casistiche -->

La funzione progettata per eseguire tale operazione è ``random``, la cui firma è la seguente:

```plaintext
Syntax: Math.random(x)

Returns:
    Number: A floating-point, pseudo-random number between 0 (inclusive) and 1 (exclusive).
```

Il valore restituito è un numero decimale casuale compreso tra zero (incluso) ed 1 (non incluso). Può essere salvato in una variabile.

Per ottenere un numero casuale, invochiamo la funzione, salvando opzionalmente in una variabile ``i`` il risultato, come nel seguente esempio:

```javascript
let i = Math.random();
```

## Impostare un valore massimo

Spesso si desidera un numero decimale casuale ``x`` compreso tra zero (incluso) ed un valore massimo ``max`` (non incluso) definito dal programmatore o dall'utente.

La via piú semplice consiste nel moltiplicare il numero casuale ``x`` per il valore ``max``, come nel seguente esempio:

```javascript
let i = max * Math.random();
```

Ad esempio, se il massimo desiderato è 5 (escluso), allora si possono avere, tra i tanti numeri casuali, i seguenti scenari:

1. Il valore casuale ``x`` è ``0``, moltiplicato per ``5`` fa sempre ``0``;
2. Il valore casuale ``x`` è ``0.20``, moltiplicato per ``5`` fa ``1``;
3. Il valore casuale ``x`` è ``0.40``, moltiplicato per ``5`` fa ``2``;
4. Il valore casuale ``x`` è ``0.60``, moltiplicato per ``5`` fa ``3``;
5. Il valore casuale ``x`` è ``0.9999``, moltiplicato per ``5`` fa poco meno di ``5`` (che non è incluso nell'intervallo desiderato);

## Impostare un valore minimo ed un valore massimo

Puó capitare che si desideri un numero decimale casuale ``x`` compreso tra un valore minimo ``min`` (incluso) ed un valore massimo ``max`` (non incluso) definiti dal programmatore o dall'utente.

La via piú semplice consiste nel moltiplicare il numero casuale ``x`` per il valore ``max - min``, sommando poi il risultato al valore ``min`` come nel seguente esempio:

```javascript
let i = min + (max-min) * Math.random();
```

Ad esempio, se il minimo desiderato è 3 (incluso) ed il massimo desiderato è 10 (escluso), allora, considerata la differenza che è ``7``, si possono avere, tra i tanti numeri casuali, i seguenti scenari:

1. Il valore casuale ``x`` è ``0``, moltiplicato per ``7`` fa sempre ``0``, che sommato a 3 restituisce il valore ``3``;
2. Il valore casuale ``x`` è ``0.2``, moltiplicato per ``7`` fa ``1.4``, che sommato a 3 restituisce il valore ``4.4``;
3. Il valore casuale ``x`` è ``0.3``, moltiplicato per ``7`` fa ``2.1``, che sommato a 3 restituisce il valore ``5.1``;
4. Il valore casuale ``x`` è ``0.5``, moltiplicato per ``7`` fa ``3.5``, che sommato a 3 restituisce il valore ``6.5``;
5. Il valore casuale ``x`` è ``0.9999``, moltiplicato per ``7`` fa poco meno di ``7``, che sommato a 3 restituisce un valore poco minore di ``10``;

## Potenze e radici

Non possono mancare le funzioni necessarie al calcolo di un numero elevato ad una certa potenza e quelle per il calcolo della radice quadrata o cubica di un numero.

La funzione progettata per calcolare la potenza di un numero è ``pow(x, y)``, la cui firma è la seguente:

```plaintext
Syntax: Math.pow(x, n)

Parameters:
    x    Number: the base value
    n    Number  the exponent

Returns:
    Number: x to the nth power
```

Il parametro formale ``x`` rappresenta la base della potenza.

Il parametro formale ``n`` rappresenta l'esponente della potenza.

Il valore restituito è x elevato all'ennesima potenza. Può essere salvato in una variabile.

Per calcolare il valore di 2 elevato alla 20-esima potenza, sostituiamo al parametro formale ``x`` il valore ``2``, al parametro formale ``n`` il valore ``20``, ed opzionalmente salviamo in una variabile ``i`` il risultato, invocando la funzione nel seguente modo:

```javascript
let i = Math.pow(2, 20);
```

La funzione progettata per calcolare la radice quadrata di un numero è ``sqrt(x)``, la cui firma è la seguente:

```plaintext
Syntax: Math.sqrt(x)

Parameters:
    x    Number: the value

Returns:
    Number: the square root of x
```

Il parametro formale ``x`` rappresenta il numero di cui calcolare la radice quadrata.

Il valore restituito è la radice quadrata del numero ``x``. Può essere salvato in una variabile.

Per calcolare la radice quadrata di 16, sostituiamo al parametro formale ``x`` il valore ``16``, ed opzionalmente salviamo in una variabile ``i`` il risultato, invocando la funzione nel seguente modo:

```javascript
let i = Math.sqrt(16);
```

La funzione progettata per calcolare la radice cubica di un numero è ``cbrt(x)``, la cui firma è la seguente:

```plaintext
Syntax: Math.cbrt(x)

Parameters:
    x    Number: the value

Returns:
    Number: the cube root of x
```

Il parametro formale ``x`` rappresenta il numero di cui calcolare la radice cubica.

Il valore restituito è la radice cubica del numero ``x``. Può essere salvato in una variabile.

Per calcolare la radice cubica di 16, sostituiamo al parametro formale ``x`` il valore ``16``, ed opzionalmente salviamo in una variabile ``i`` il risultato, invocando la funzione nel seguente modo:

```javascript
let i = Math.cbrt(16);
```
