---
type: "javascript"
title: "05 - Istruzioni condizionali ed iterative"
description: "Istruzioni condizionali ed iterative"
date: 2020-04-25
publishdate: 2020-04-25
lastmod: 2020-04-25
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "Istruzioni condizionali ed iterative"
---

# Istruzioni condizionali ed iterative

Le istruzioni condizionali permettono di eseguire determinate istruzioni piuttosto che altre a seconda che una condizione si verifichi o meno.

Le istruzioni iterative permettono di eseguire un gruppo di istruzioni zero, una o più volte, in base alle condizioni di inizio e di fine della ripetizione.

Le condizioni sono delle espressioni che vengono valutate restituendo un risultato ``true`` o ``false``.

Nelle istruzioni condizionali ed iterative, è sempre consigliato l'uso delle parentesi graffe ``{`` e ``}`` per delimitare i blocchi di istruzioni.

## Istruzione condizionale if-else

L'istruzione utilizzata per eseguire un azione piuttosto che un'altra è l'istruzione ``if-else``. Questa istruzione ha la seguente sintassi:

```javascript
if (condition) {
  // gruppo di istruzioni eseguite se la
  // condizione viene valutata con valore true
} else {
  // gruppo di istruzioni eseguite se la
  // condizione viene valutata con valore false
}
```

Esempio:

```javascript
if (batteria < 6) {
  console.warn("computer in fase di spegnimento");
} else {
  console.info("batteria carica");
}
```

## Operatore ternario "?"

L'operatore ternario è un operatore che valuta una condizione e restituisce un valore piuttosto che un altro a seconda che una condizione si verifichi o meno. La sintassi è una sorta di abbreviazione dell'istruzione ``if-else`` ed è generalmente utilizzata nelle assegnazioni.

Questo operatore ha la seguente sintassi:

```javascript
let y = condizione ? valore1 : valore2;
```

Esempio:

```javascript
let y = eta > 18 ? "maggiorenne" : "minorenne";
```

## Istruzione condizionale switch-case

L'istruzione utilizzata per determinare le istruzioni da eseguire a seconda del valore di un'espressione è l'istruzione ``switch-case``. Questa istruzione ha la seguente sintassi:

```javascript
switch (espressione) {
  case valore1:
    istruzioni1;
  break;
  case valore2:
    istruzioni2;
  break;
  // ...
  default:
    valore3;
  break;
}
```

L'istruzione ``default`` viene eseguita se nessuno dei valori corrisponde al risultato dell'espressione;

## Istruzione iterativa while

L'istruzione iterativa utilizzata per ripetetere un gruppo di istruzioni zero o più volte è l'istruzione ``while``. Con questa istruzione, la condizione viene valuta ripetutamente ed ogni volta che assume valore ``true``, esegue il gruppo di istruzioni, mentre quando assume valore ``false`` termina l'iterazione.

Questa istruzione ha la seguente sintassi:

```javascript
while (condition) {
  // gruppo di istruzioni da eseguire
}
```

Esempio:

```javascript
let minuti = 0;
while (minuti < 5) {
  console.warn("Allarme attivo per " + minuti);
  minuti ++;
}
```

E' utile notare che l'istruzione ``while`` potrebbe non ripetere nemmeno una volta il gruppo di istruzioni, e ciò avviene quando la condizione viene immediatamente valutata con valore ``false``.

## Istruzione iterativa do-while

L'istruzione iterativa utilizzata per ripetetere un gruppo di istruzioni uno o più volte è l'istruzione ``do-while``. Con questa istruzione, prima si esegue il gruppo di istruzioni e poi si valuta la condizione. Ogni volta che la condizione assume valore ``true``, il gruppo di istruzioni viene eseguito, mentre quando assume valore ``false`` l'iterazione termina.

Questa istruzione ha la seguente sintassi:

```javascript
while (condition) {
  // gruppo di istruzioni da eseguire
}
```

Esempio:

```javascript
let minuti = 0;
while (minuti < 5) {
  console.warn("Allarme attivo per " + minuti);
  minuti ++;
}
```

E' utile notare che l'istruzione ``do-while`` ripetere almeno una volta il gruppo di istruzioni, anche se la condizione viene immediatamente valutata con valore ``false``.

## Istruzione iterativa for

Anche l'istruzione ``for`` ripete un gruppo di istruzioni uno o più volte. E' tipicamente utilizzata per ripeterlo un determinato numero di volte, ma potrebbe non eseguirlo affatto.

Questa istruzione ha la seguente sintassi:

```javascript
for (inizializzazione; condizione; incremento) {
  // gruppo di istruzioni da eseguire
}
```

L'inizializzazione indica la condizione iniziale;
La condizione indica se eseguire o meno il gruppo di istruzioni, come per le altre istruzioni iterative;
L'incremento indica l'istruzione da eseguire prima della prossima valutazione della condizione;

Esempio:

```javascript
let minuti = 0;
for (minuti = 0; minuti < 5; minuti += 5) {
  console.warn("Allarme attivo per " + minuti);
}
```

## Istruzione iterativa for-in

L'istruzione iterativa utilizzata per eseguire un gruppo di istruzioni per ogni proprietà di un oggetto è l'istruzione ``for-in``. Questa istruzione ha la seguente sintassi:

```javascript
for (property in oggetto) {
  // gruppo di istruzioni da eseguire
}
```

Esempio:

```javascript
let persona = {
  nome: "Mario",
  cognome: "Rossi",
  eta: 25
};

for (proprieta in persona) {
  console.info("Proprietà: " + proprieta);
}
```

## Istruzione iterativa for-of

L'istruzione iterativa utilizzata per eseguire un gruppo di istruzioni per ogni elemento di una collezione di dati è l'istruzione ``for-of``. Questa istruzione ha la seguente sintassi:

```javascript
for (elemento of collezione) {
  // gruppo di istruzioni da eseguire
}
```

Esempio:

```javascript
const array1 = ['a', 'b', 'c'];

for (let element of array1) {
  console.info(element);
}
```
