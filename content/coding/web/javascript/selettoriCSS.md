---
type: "javascript"
title: "08 - DOM e selettori CSS"
description: "08 - DOM e selettori CSS"
date: 2020-05-04
publishdate: 2020-05-04
lastmod: 2020-05-04
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "08 - DOM e selettori CSS"
customJS: ["/static/coding/web/javascript/selettoriCSS.js"]
---

# 08 - DOM e selettori CSS

Il Document Object Model (DOM) è un'interfaccia che permette di rappresentare la struttura di un documento come un albero, consentendo le classiche operazioni di creazione, lettura, modifica e cancellazione di un nodo dell'albero (CRUD è un'abbreviazione che indica le operazioni indicate, ovvero Create, Read, Update e Delete).

Le operazioni di selezione di un'elemento del documento avvengono attraverso i selettori CSS. Le funzioni principali per la selezione di elementi sono ``document.querySelector`` e ``document.querySelectorAll``.

Man mano che gli standard di Ecmascript si evolvevano, venivano definiti nuovi tipi di selettori, che anche oggi sono identificati per livelli: dal primo al quarto livello.

I nuovi selettori, definiti nei livelli "superiori" vanno a potenziare e rendere più compatta la sintassi per la selezione degli elementi del DOM.

I selettori possono essere combinati in modo da formare combinazioni molto potenti.

## Selettore universale
Selettore | Descrizione
--- | ---
\*  | Seleziona tutti gli elementi;

### Esempio d'uso del selettore universale

Supponendo che la pagina HTML contenga solo gli elementi:
<div id="univ">
  <p>paragrafo1</p>
  <p>paragrafo2</p>
</div>

Per selezionare gli elementi della pagina HTML, si può utilizzare l'istruzione javascript:
```javascript
let elements = document.querySelectorAll('*');
```

Esempio di selezione:
<input type="button" onclick="seleziona('#univ *')" value="seleziona">

## Selettore per id
Selettore | Descrizione
--- | ---
\#E | Seleziona il tag con id E;

### Esempio d'uso del selettore per id

Supponendo che la pagina HTML contenga il paragrafo identificato da un id, come nel seguente esempio:
```html
<p id="paragrafo1">paragrafo 1</p>
```

Il codice elencato produce il seguente risultato:
<p id="paragrafo1">paragrafo 1</p>

Per selezionare il paragrafo, si può utilizzare l'istruzione javascript:
```javascript
let elements = document.querySelector('#paragrafo1');
```

Esempio di selezione:
<input type="button" onclick="seleziona('#paragrafo1')" value="seleziona">

## Selettore per classe
Selettore | Descrizione
--- | ---
.C  | Seleziona i tag che hanno classe C;

### Esempio d'uso del selettore per classe

Supponendo che la pagina HTML contenga due paragrafi identificati dalla  stessa classe, come nel seguente esempio:
```html
<p class="paragrafo">paragrafo 1</p>
<p class="paragrafo">paragrafo 2</p>
```

Il codice elencato produce il seguente risultato:
<p class="paragrafo">paragrafo 1</p>
<p class="paragrafo">paragrafo 2</p>

Per selezionare i paragrafi, si può utilizzare l'istruzione javascript:
```javascript
let elements = document.querySelectorAll('.paragrafo');
```

Esempio di selezione:
<input type="button" onclick="seleziona('.paragrafo')" value="seleziona">

## Selettore per elemento (tag)
Selettore | Descrizione
--- | ---
E  | Seleziona i tag E;

### Esempio d'uso del selettore per elemento

Supponendo che la pagina HTML contenga due paragrafi come nel seguente esempio:
```html
<p>paragrafo 1</p>
<p>paragrafo 2</p>
```

Il codice elencato produce il seguente risultato:
<div id="elem">
  <p>paragrafo 1</p>
  <p>paragrafo 2</p>
</div>

Per selezionare i paragrafi, si può utilizzare l'istruzione javascript:
```javascript
let elements = document.querySelectorAll('p');
```

Esempio di selezione:
<input type="button" onclick="seleziona('#elem p')" value="seleziona">

## Selettori per attributi
Selettore | Descrizione
--- | ---
[A]       | Seleziona i tag con attributo A avente qualsiasi valore;
[A="V"]   | Seleziona i tag con attributo A il cui valore è V (case-sensitive);
[A="V" s] | Seleziona i tag con attributo A il cui valore è V (case-sensitive);
[A="V" i] | Seleziona i tag con attributo A il cui valore è V (case-insensitive);
[A^="V"]  | Seleziona i tag con attributo A il cui valore inizia per V;
[A$="V"]  | Seleziona i tag con attributo A il cui valore termina per V;
[A\*="V"] | Seleziona i tag con attributo A il cui valore contiene V;
[A\|="V"]  | Seleziona i tag con attributo A il cui valore è V oppure è V seguito immediatamente da un carattere "trattino" ``-``;
[A~="V"]  | Seleziona i tag con attributo A il cui valore è una lista di stringhe separata da uno spazio contenente, tra i vari valori, il valore V;


### Esempio d'uso del selettore per attributi

Supponendo che la pagina HTML contenga due link come nel seguente esempio:
```html
<a title="Link1" data-custom="value-v1 value-v2 value-v3">link 1</p>
<a title="Link2" data-custom="value-v1 value-v2 value-v4">link 2</p>
```

Il codice elencato produce il seguente risultato:
<div id="attr">
  <a title="Link1" data-custom="value-v1 value-v2 value-v3">link 1</a>
  <a title="Link2" data-custom="value-v1 value-v2 value-v4">link 2</a>
</div>

Per selezionare i link con l'attributo "title", si può utilizzare l'istruzione javascript:
```javascript
let elements = document.querySelectorAll('[title]');
```

Esempio di selezione:
<input type="button" onclick="seleziona('#attr [title]')" value="seleziona">


Per selezionare i link con l'attributo "title" avente valore "Link1" (si noti che è case-sensitive), si può utilizzare l'istruzione javascript:
```javascript
let elements = document.querySelectorAll('[title="Link1" s]');
```

Esempio di selezione:
<input type="button" onclick="seleziona('#attr [title=\'Link1\' s]')" value="seleziona">


Per selezionare i link con l'attributo "title" avente valore "link1" (si noti che non è case-sensitive), si può utilizzare l'istruzione javascript:
```javascript
let elements = document.querySelectorAll('[title="link1" i]');
```

Esempio di selezione:
<input type="button" onclick="seleziona('#attr [title=\'link1\' i]')" value="seleziona">


Per selezionare i link con l'attributo "title" che inizi con il valore "Lin", si può utilizzare l'istruzione javascript:
```javascript
let elements = document.querySelectorAll('[title^="Lin"]');
```

Esempio di selezione:
<input type="button" onclick="seleziona('#attr [title^=\'Lin\']')" value="seleziona">


Per selezionare i link con l'attributo "title" terminante il valore "k1", si può utilizzare l'istruzione javascript:
```javascript
let elements = document.querySelectorAll('[title$="k1"]');
```

Esempio di selezione:
<input type="button" onclick="seleziona('#attr [title$=\'k1\']')" value="seleziona">


Per selezionare i link con l'attributo "title" contenente il valore "ink", si può utilizzare l'istruzione javascript:
```javascript
let elements = document.querySelectorAll('[title*="ink"]');
```

Esempio di selezione:
<input type="button" onclick="seleziona('#attr [title*=\'ink\']')" value="seleziona">


Per selezionare i link con l'attributo "data-custom", contenente il valore che inizia con "value" e seguito opzionalmente dal carattere "-" e quindi da altra sequenza opzionale di caratteri, si può utilizzare l'istruzione javascript:
```javascript
let elements = document.querySelectorAll('[data-custom|="value"]');
```

Esempio di selezione:
<input type="button" onclick="seleziona('#attr [data-custom|=\'value\']')" value="seleziona">


Per selezionare i link con l'attributo "data-custom" contenente una lista di valori separati da uno spazio, e con la lista contenente il valore "value-v4" , si può utilizzare l'istruzione javascript:
```javascript
let elements = document.querySelectorAll('[data-custom~="value-v2"]');
```

Esempio di selezione:
<input type="button" onclick="seleziona('#attr [data-custom~=\'value-v2\']')" value="seleziona">

### Selettori per raggruppamento
Selettore | Descrizione
--- | ---
S1,S2       | Seleziona i tag selezionati dal selettore S1 o dal selettore S2;


### Esempio d'uso del selettore per raggruppamento

Supponendo che la pagina HTML contenga un paragrafo ed un link, come nel seguente esempio:
```html
<p>paragrafo 1</p>
<a>link 1</a>
```

Il codice elencato produce il seguente risultato:
<div id="group">
  <p>paragrafo 1</p>
  <a>link 1</a>
</div>

Per selezionare il paragrafo ed il link, si può utilizzare l'istruzione javascript:
```javascript
let elements = document.querySelectorAll('p,a');
```

Esempio di selezione:
<input type="button" onclick="seleziona('#group p, #group a')" value="seleziona">


### Selettori per relazione di "parentela"
Selettore | Descrizione
--- | ---
E F       | Seleziona i tag F discendenti dei tag E;
E > F     | Seleziona i tag F figli diretti dei tag E;
E + F     | Seleziona i tag F, fratelli di E, che seguono immediatamente i tag E;
E ~ F     | Seleziona i tag F, fratelli di E, che seguono (anche non immediatamente) i tag E;

### Selettori per posizione
Selettore | Descrizione
--- | ---
:first-child  | Seleziona il primo figlio (diretto);
:last-child   | Seleziona l'ultimo figlio (diretto);
:only-child   | Seleziona gli elementi che sono figli unici (senza fratelli);
:nth-child(I) | Seleziona l'**I**-esimo figlio;
:nth-child(even|odd) | Seleziona i figli in posizione pari o dispari;
:nth-child(Xn+Y)  | Seleziona i figli multipli di X con spiazzamento Y;
:nth-last-child(even|odd) | Seleziona i figli in posizione pari o dispari partendo dall'ultimo elemento ed andando a ritroso;
:nth-last-child(Xn+Y) | Seleziona i figli multipli di X con spiazzamento Y partendo dall'ultimo elemento ed andando a ritroso;
S1:first-of-type | Seleziona il primo elemento del tipo specificato dal selettore S1;
S1:last-of-type | Seleziona l'ultimo elemento del tipo specificato dal selettore S1;
S1:only-of-type | Seleziona l'unico figlio del tipo specificato dal selettore S1;
S1:nth-of-type(I) | Seleziona l'elemento in posizione **I**-esima del tipo specificato dal selettore S
S1:nth-of-type(even|odd) | Seleziona gli elementi in posizione pari del tipo specificato dal selettore S1;
S1:nth-of-type(Xn+Y) | Seleziona gli elementi in posizione che è multiplo di X con spiazzamento Y del tipo specificato dal selettore S1;
S1:nth-last-of-type(I) | Seleziona l'elemento in posizione **I**-esima del tipo specificato dal selettore S1, partendo dall'ultimo elemento ed andando a ritroso;
S1:nth-last-of-type(even|odd) | Seleziona gli elementi in posizione pari del tipo specificato dal selettore S1, partendo dall'ultimo elemento ed andando a ritroso;
S1:nth-last-of-type(Xn+Y) | Seleziona gli elementi in posizione che è multiplo di X con spiazzamento Y del tipo specificato dal selettore S1, partendo dall'ultimo elemento ed andando a ritroso;

### Selettori per pseudo-classi
Selettore | Descrizione
--- | ---
:active       | Seleziona gli elementi attivati, come link o pulsanti;
:any-link     | Seleziona i link visitati (``:visited``) o meno (``:link``);
:checked      | Seleziona le checkbox, i radio o gli option che sono selezionati;
:disabled     | Seleziona gli elementi disabilitati;
:empty        | Seleziona gli elementi senza figli;
:enabled      | Seleziona gli elementi abilitati;
:focus        | Seleziona l'elemento che ha il focus;
:focus-within | Seleziona gli elementi che contengono l'elemento che ha il focus;
:has(S1)      | Seleziona gli elementi solo se il selettore S1 seleziona un elemento;
:hover        | Seleziona gli elementi che si trovano sotto il puntatore del mouse;
:indeterminate | Seleziona le checkbox ed i radio che hanno valore indeterminato;
:in-range     | Seleziona gli input con valore compreso tra i min e max specificati;
:invalid      | Seleziona gli elementi del form con errori di validazione;
:link         | Seleziona i link non ancora visitati;
:not(S1)      | Seleziona gli elementi non selezionati dal selettore S1;
:optional     | Seleziona gli elementi del form non obbligatori (senza attributo ``required``);
:out-of-range | Seleziona gli input con valore non compreso tra i min e max specificati;
:read-only    | Seleziona gli elementi del form non editabili;
:read-write   | Seleziona gli elementi del form editabili;
:required     | Seleziona gli elementi del form obbligatori (con attributo ``required``);
:valid        | Seleziona gli elementi del form validati;
:visited      | Seleziona i link visitati;

### Selettori per pseudo-elementi
Selettore | Descrizione
--- | ---
::after     | Seleziona lo pseudo-elemento ``::after``;
::before    | Seleziona lo pseudo-elemento ``::before``;
::selection | Seleziona lo pseudo-elemento corrispondente al testo selezionato;
