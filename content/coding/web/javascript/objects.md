---
type: "javascript"
title: "JavaScript Lez. 07 - Approfondimento - Oggetti"
description: "Descrizione degli oggetti e dell'accesso a proprietà e funzioni"
date: 2025-04-13
publishdate: 2025-04-13
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "Oggetti"
weight: 8920
---

# Oggetti

Un oggetto in ambito informatico è un dato complesso, a sua volta composto da proprietà e metodi. E' un concetto che appartiene alla programmazione ad oggetti (OOP, dall'inglese Object Oriented Programming).

Un esempio di oggetto può essere una persona, che contiene proprietà quali nome, cognome, data di nascita, ecc...

Nel seguente esempio osserviamo la dichiarazione di una variabile a cui viene assegnato un oggetto persona:

```javascript
let persona = {
    firstname: "John",
    lastname: "Doe",
    id: 5566
};
```

Si può procedere anche dichiarando prima le proprietà e poi procedendo alla dichiarazione dell'oggetto, come nel seguente esempio:

```javascript
let firstname: "John";
let lastname: "Doe";
let id: 5566
let persona = {firstname, lastname, id};
```

## Dot notation

L'accesso alle proprietà di un oggetto avviene attraverso la "notazione punto", ovvero si deve indicare la variabile, si utilizza il carattere "punto" per indicare l'accesso ad una proprietà, poi si deve indicare il nome della proprietà, utilizzando la sintassi ``oggetto.proprietà``, come nel seguente esempio:

```javascript
persona.firstname = "Dan"
let msg = 'il nome della persona è ' + persona.firstname;
```

<!--
Destrutturazione: 
{firstname, lastname, id} = persona; 
-->

## Optional chaining e Nullish Coalescing

Una proprietà può non esistere o avere un valore nullo o indefinito, per questo motivo si preferisce effettuare l'accesso con l'operatore ``?.`` che indica un accesso a condizione che la proprietà esista, come nel seguente esempio:

```javascript
const email = user?.contact?.email;
```

In questo modo, in qualsiasi punto si tenti l'accesso ad una proprietà inesistente, il valore restituito sarà ``undefined``.

Per rafforzare ulteriormente l'accesso, nel caso il valore restituito sia ``undefined``, si può assegnare un valore predefinito con

```javascript
const email = user?.contact?.email ?? 'email non definita';
```

Questo accesso "sicuro" si può applicare anche ai metodi:

```javascript
const email = user?.getContact()?.getEmail() ?? 'email non definita';
```
