---
type: "javascript"
title: "JavaScript Lez. 03.1 - Esercizio sui tipi di dato e sulla console"
description: "Esercizio sui tipi di dato e sulla console"
date: 2020-04-05
publishdate: 2020-04-05
lastmod: 2020-04-05
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: true
toc: false
summary: "Esercizio sui tipi di dato e sulla console"
---

# Esercizio sui tipi di dato e sulla console

Dichiarare una variabile ed una costante per ogni tipo di dato primitivo ed, allo stesso modo, una variabile ed una costante per ogni tipo di dato "wrapper". Si utilizzino le regole stilistiche indicate per la composizione dei nomi. Dichiarate le variabili e le costanti, scrivere nella console il valore assegnato ad ognuna di esse.

## Esempio

```javascript
// variabile e costante numerica intera
let naturalNumber = 10;
const NATURAL_NUMBER = 10;

console.info("Variabile e costante numerica intera");
console.info(naturalNumber);
console.info(NATURAL_NUMBER);

// variabile e costante numerica decimale
let realNumber = 10.5;
const REAL_NUMBER = 29.1;

console.info("Variabile e costante numerica decimale");
console.info(realNumber);
console.info(REAL_NUMBER);

let words = "a string";
let toBeOrNotToBe = true;

console.info("Variabili per stringa e valore booleano");
console.info(words);
console.info(toBeOrNotToBe);

let nullable = null;
let object = { nome: "John", cognome: "Rossi", id: 5566 };

console.info("Variabili null ed oggetto");
console.info(nullable);
console.info(object);

let naturalNumberObj = new Number(10);
let realNumberObj = new Number(10.5);
let toBeOrNotToBeObj = new Boolean(true);

console.info("Variabili wrapper");
console.info(naturalNumberObj);
console.info(realNumberObj);
console.info(toBeOrNotToBeObj);

console.info("Variabili con tipo di dato");
console.log("" + naturalNumber + "->" + typeof naturalNumber);
console.log("" + realNumber + "->" + typeof realNumber);
console.log("" + words + "->" + typeof words);
console.log("" + toBeOrNotToBe + "->" + typeof toBeOrNotToBe);
console.log("" + nullable + "->" + typeof nullable);
console.log("" + object + "->" + typeof object);
console.log("" + naturalNumberObj + "->" + typeof naturalNumberObj);
console.log("" + realNumberObj + "->" + typeof realNumberObj);
console.log("" + toBeOrNotToBeObj + "->" + typeof toBeOrNotToBeObj);
```
