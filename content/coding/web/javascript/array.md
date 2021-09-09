---
type: "javascript"
title: "JavaScript - Array"
description: "Introduzione agli array, dichiarazione, accesso indicizzato in lettura e scrittura"
date: 2021-08-21
publishdate: 2021-08-21
lastmod: 2021-08-21
spellcheck: 2021-08-21
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: true
toc: false
summary: "Introduzione agli array, dichiarazione, accesso indicizzato in lettura e scrittura"
width: 5000
---

# Array

Un array è una struttura dati che memorizza gli elementi in maniera posizionale e permette l'accesso ai dati allo stesso modo. Ogni elemento è memorizzato in una specifica posizione dell'array.

In ambito matematico, la posizione è detta **indice** e tipicamente parte da zero.

Il numero di elementi contenuti nell'array è detto lunghezza dell'array.

Un array di lunghezza 3 contiene un primo elemento in posizione zero, un secondo elemento in posizione uno ed un terzo elemento in posizione due.

Un array di lunghezza 10 contiene un primo elemento in posizione zero, un secondo elemento in posizione uno, un terzo elemento in posizione due e cosi via fino al decimo elemento in posizione nove.

Graficamente possiamo rappresentare un array come una tabella nella quale sono memorizzati gli elementi e sono visualizzate le posizioni.

Per via della rappresentazione grafica, spesso si fa riferimento ad una generica posizione dell'array con il termine "cella".

Ad esempio, un array di lunghezza 10 contenente numeri può essere rappresentato graficamente nel seguente modo:

|               |       |       |       |       |       |       |       |       |       |       |
| ------------- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **posizioni** | **0** | **1** | **2** | **3** | **4** | **5** | **6** | **7** | **8** | **9** |
| elementi      |   7   |   5   |   8   |   2   |   4   |   9   |   9   |   0   |   4   |  -4   |

Come si può notare nell'esempio precedente, la lunghezza dell'array è dieci, il primo elemento è memorizzato nella posizione 0 e l'ultimo elemento è memorizzato in posizione nove. In posizione due è memorizzato l'elemento otto ed in posizione sei è memorizzato l'elemento nove.

Allo stesso modo, possiamo rappresentare graficamente un array di 7 caratteri, come nel successivo esempio:

|               |       |       |       |       |       |       |       |
| ------------- | ----- | ----- | ----- | ----- | ----- | ----- | ----- |
| **posizioni** | **0** | **1** | **2** | **3** | **4** | **5** | **6** |
| elementi      |  'f'  |  'a'  |  'e'  |  'p'  |  ' '  |  '2'  |  '='  |

Come si può notare nell'esempio mostrato, la lunghezza dell'array è sette, il primo elemento è memorizzato nella posizione 0 e l'ultimo elemento è memorizzato in posizione sei. In posizione tre è memorizzato l'elemento ``p`` ed in posizione sei è memorizzato l'elemento ``=``.

**Non è possibile memorizzare elementi nell'array prima della posizione zero oppure dopo la posizione finale.**

## Dichiarazione di un Array

Per dichiarare un array è necessario specificare il nome della variabile che conterrà l'array, il tipo di dati da memorizzare e la lunghezza.

In JavaScript, l'istruzione per dichiarare un array non prevede di specificare il tipo di dati ed è la seguente:

```javascript
let v = [4];
```

In questa istruzione, abbiamo dichiarato un array il cui nome è ``v`` ed abbiamo indicato, tra parentesi quadre, la lunghezza desiderata di 4 elementi (che saranno memorizzati nelle posizioni da zero a tre).

## Accesso ad un array in lettura e scrittura

Una volta che un array è stato dichiarato, possiamo leggere i dati memorizzati o memorizzare nuovi dati.

Per memorizzare elementi in un array, dobbiamo specificare la posizione in cui questi andranno memorizzati.

Ad esempio, per memorizzare il numero ``7`` nella prima posizione, useremo l'istruzione seguente:

```javascript
v[0] = 7;
```

Come si può notare, l'istruzione è molto simile a quella di assegnazione di un valore ad una variabile. Ciò che cambia è che ``v`` non è una variabile, ma un array, e che tra parentesi quadre è indicata una specifica posizione dell'array: la posizione zero.

Allo stesso modo dell'esempio precedente, per memorizzare il numero ``12`` nella seconda posizione, useremo l'istruzione seguente:

```javascript
v[1] = 12;
```

Per poter leggere un elemento dall'array si utilizza la stessa sintassi. Ad esempio, per poter scrivere nella console il valore in prima posizione, si utilizza l'istruzione seguente:

```javascript
console.info(v[1]);
```

Per poter leggere tutto l'array (e mostrarlo in console), è necessario effettuare l'operazione di lettura per tutte le posizioni:

```javascript
console.info(v[0]);
console.info(v[1]);
console.info(v[2]);
console.info(v[3]);
console.info(v[4]);
console.info(v[5]);
console.info(v[6]);
console.info(v[7]);
console.info(v[8]);
console.info(v[9]);
```

Allo stesso modo, per poter azzerare tutti i valori dell'array, è necessario effettuare l'operazione di scrittura del valore zero per tutte le posizioni:

```javascript
v[0] = 0;
v[1] = 0;
v[2] = 0;
v[3] = 0;
v[4] = 0;
v[5] = 0;
v[6] = 0;
v[7] = 0;
v[8] = 0;
v[9] = 0;
```

## Automazione delle operazioni su un array

Il vantaggio di utilizzare un array come struttura dati è quello di poter elaborare i dati contenuti senza la necessità di scrivere una ad una le operazioni sui dati.

L'istruzione di dichiarazione dell'array permette di allocare lo spazio necessario a contenere il numero desiderato di elementi, evitando la dichiarazione delle singole variabili una per volta.

Nell'esempio seguente, si confrontano le istruzioni necessarie a dichiarare un array di lunghezza 5 con quelle necessarie alla dichiarazione di 5 variabili.

```javascript
let etaPersona = [5];

let etaPersona0 = 0;
let etaPersona1 = 0;
let etaPersona2 = 0;
let etaPersona3 = 0;
let etaPersona4 = 0;
```

Come si può notare, creare un alto numero di dati può essere un'operazione lunga, mentre creare un array con il numero desiderato di elementi è un'operazione molto veloce.

Allo stesso modo, scrivere in console tutti i valori delle singole variabili è un operazione noiosa, mentre gli array permettono l'uso dei cicli iterativi per automatizzare le operazioni.

Per poter scrivere un ciclo iterativo che esegua le operazioni su un array, è necessario indi l'operazione su una
