---
type: "javascript"
title: "Javascript - Operatori ed operazioni matematiche"
description: "Descrizione degli standard, degli operatori e delle operazioni matematiche per il calcolo automatico, descrizione delle precedenze degli operatori nelle espressioni matematiche, descrizione della libreria matematica per effettuare le operazioni matematiche piú comuni"
date: 2021-08-26
publishdate: 2021-08-26
lastmod: 2021-08-26
spellcheck: 2020-01-01
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: true
toc: false
summary: "Descrizione degli standard, degli operatori e delle operazioni matematiche per il calcolo automatico, descrizione delle precedenze degli operatori nelle espressioni matematiche, descrizione della libreria matematica per effettuare le operazioni matematiche piú comuni"
customJS: ["/static/js/p5-1.2.0-min.js", "/static/coding/web/p5js/basics.js"]

references:
    -   title: "algebra di Boole"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://it.m.wikipedia.org/wiki/Algebra_di_Boole"
        description: "Algebra di Boole"
    -   title: "standard IEEE 754"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://it.m.wikipedia.org/wiki/IEEE_754"
        description: "standard per l'aritmetica a virgola mobile in base binaria per i sistemi basati su microprocessore."
        
---

# Javascript - Operatori ed espressioni matematiche

I moderni sistemi informatici sono notoriamente chiamati sistemi **digitali**, in quanto i numeri sono rappresentati utilizzando il sistema numerico binario, che fa uso di due soli simboli (0 e 1), e non il sistema numerico decimale, che ne utilizza dieci (da 0 a 9).

Questi sistemi computerizzati sono gestiti da un microprocessore dotato di diverse unità per l'esecuzione delle operazioni matematiche e logiche. Si tratta di piú unità perchè i microprocessori odierni sono multi-core, per cui, un dual-core ha il doppio, un quad-core ha il quadruplo, un exa-core ha il sestuplo delle unità rispetto ai microprocessori single-core di un tempo,

Le **unità aritmetico logiche** contenute in un microprocessore svolgono operazioni aritmetiche (come la somma e la moltiplicazione) e logiche (come uguaglianza, congiunzione logica e negazione), esclusivamente sui numeri interi.

Le regole che definiscono la rappresentazione dei numeri e le operazioni che si possono effettuare sui numeri interi sono definite dall'algebra di Boole e dal sistema numerico binario.

Le **unità aritmetiche a virgola mobile** contenute in un microprocessore svolgono operazioni aritmetiche esclusivamente sui numeri decimali.

Lo standard IEEE 754 e la successiva revisione IEEE 754r  definiscono il formato per la rappresentazione dei numeri in virgola mobile e le operazioni effettuabili su questi. 

In particolare, questi due standard definiscono:
- che i numeri in virgola mobile si rappresentano secondo la [notazione scientifica](https://it.m.wikipedia.org/wiki/Notazione_scientifica);
 - la precisione dei numeri a 32 bit, a 64 bit e a 128 bit;
 - i metodi di arrotondamento e perdita di precisione;
 - le casistiche eccezionali relative alle operazioni matematiche non valide, come una divisione per zero o una radice quadrata di un numero negativo, che sono gestite restituendo il valore speciale NaN (Not a Number);
 -  le casistiche eccezionali relative alle operazioni matematiche che restituiscono il valore "Infinito".

Il programmatore puó riferirsi alle regole ed agli standard sopra citati per comprendere i dettagli matematici alla base di alcuni risultati. 

Ad esempio, il risultato di ``0.1 + 0.2`` non fa ``0.3`` come ci si potrebbe aspettare, ma fa ``0.30000000000000004``, e questo avviene con qualsiasi linguaggio di programmazione, dato che ``0.3`` non può essere rappresentato precisamente utilizzando il sistema binario.

## Espressioni matematiche

Le espressioni sono utilizzate per calcolare un risultato applicando gli operatori ai dati o alle variabili indicate. Ad esempio, la somma tra due numeri è calcolata dall'espressione ``3 + 4``. L'operazione di calcolo del risultato di un'espressione è detta **valutazione**, pertanto le espressioni sono **valutate**.

Gli operatori possono essere applicati generalmente ad un singolo valore o ad una coppia di valori. I valori possono essere dati di tipo differente, come un numero ed una stringa.

Ci sono operatori che hanno la precedenza rispetto ad altri, come ad esempio la moltiplicazione che ha precedenza sulla sottrazione. Per cui, nelle espressioni, si valutano prima le operazioni che hanno la precedenza. Quando tutte le precedenze sono state gestite, le operazioni in un'espressione sono valutate da sinistra verso destra.

Ad esempio, data l'espressione

``3 + 4 * 5 + 6``

la moltiplicazione tra i numeri ``4`` e ``5`` ha la precedenza, quindi viene calcolata per prima, restituendo valore ``20``.

L'espressione risultante è quindi

``3 + 20 + 6``

Dato che non ci sono altre precedenze da gestire, l'espressione viene valutata da sinistra verso destra, quindi prima viene fatta la somma tra ``3`` e ``20`` che restituisce il valore ``23`` e poi questo viene sommato a ``6``, restituendo il risultato ``29``. Per cui, la valutazione dell'espressione restituisce il risultato ``29``.

 E' possibile però modificare l'ordine delle operazioni da svolgere utilizzando le parentesi tonde ``(`` e ``)``.

 Ad esempio, data l'espressione

 ``((3 + 4) - 5) * 6``

 le parentesi tonde hanno la precedenza, per cui viene prima valutato il risultato della somma tra ``3`` e ``4``, restituendo ``7``. Vi è ancora una parentesi tonda che ha precedenza, quindi viene valutato il risultato della sottrazione tra ``7`` e ``5``, restituendo due. Quindi viene svolta la moltiplicazione tra ``2`` e ``6``, restituendo ``12``. Per cui, la valutazione dell'espressione restituisce il risultato ``12``.

Nonostante la gestione delle precedenze possa sembrare semplice, quando si valutano espressioni con un vasto numero di operatori differenti nella stessa espressione si può incorrere in errori di valutazione dato che le precedenze non sono scontate.

## Operatori aritmetici

Gli operatori aritmetici utilizzati per svolgere le operazioni di base sono i seguenti:

- ``+`` effettua la somma di due numeri;
- ``-`` calcola la differenza tra due numeri;
- ``*`` effettua la moltiplicazione di due numeri;
- ``/`` calcola la divisione tra due numeri;
- ``%`` calcola il resto della divisione tra due numeri.

In ambito informatico sono utilizzati anche gli operatori di incremento e decremento di una singola unità, e sono i seguenti:

- ``++`` incrementa il numero di una singola unità;
- ``--`` decrementa il numero di una singola unità.

## Operatori relazionali

Gli operatori relazionali, utilizzati per vautare le relazioni tra i numeri, come quelle di maggioranza o di uguaglianza, sono i seguenti:

- ``>`` relazione di maggioranza;
- ``<`` relazione di minoranza;
- ``==`` relazione di uguaglianza;
- ``>=`` relazione di maggioranza o uguaglianza;
- ``<=`` relazione di minoranza o uguaglianza;
- ``!=`` relazione di disuguaglianza.

A questi operatori, si aggiungono poi due operatori particolari, che confrontano anche i tipi di dato, oltre che i valori. Questi operatori sono comuni nei linguaggi debolmente tipati, come JavaScript, e sono:

- ``===`` relazione di uguaglianza stretta (valore e tipo di dato uguali);
- ``!==`` relazione di disuguaglianza stretta (valore o tipo di dato differenti).

## Operatori di assegnazione

Gli operatori di assegnazione si utilizzano per assegnare il valore o il risultato di un'espressione ad una variabile.

- ``=`` assegna il valore ad una variabile.



## Libreria matematica

Otre agli operatori matematici, ogni linguaggio di programmazione ha una libreria matematica che mette a disposizione del programmatore le funzioni che eseguono le operazioni matematiche piú comuni, come quelle logaritmiche, esponenziali, trigonometriche e di arrotondamento.

Non è necessario riportare alla mente tutti i concetti matematici alla base delle suddette funzioni, corso di questo capitolo sarà illustrato solo come utilizzarle, lasciando poi al programmatore lo studio e l'analisi del contesto in cui utilizzarle.

### Arrotondamenti

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

### Generazione di un numero casuale

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

#### Impostare un valore massimo

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

#### Impostare un valore minimo ed un valore massimo

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

### Potenze e radici

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


    


### alyro
I parametri formali sono ``w`` ed ``h``, che rappresentano la larghezza e l'altezza dell'area da disegno.

Per creare un'area da disegno di larghezza 600 ed altezza 400 punti, sostituiamo al parametro formale ``w`` (che indica la larghezza dell'area da disegno) il valore ``600`` ed al parametro formale ``h`` (che indica l'altezza dell'area da disegno) il valore ``400``, invocando la funzione nel seguente modo:

```javascript
createCanvas(600, 400);
```

