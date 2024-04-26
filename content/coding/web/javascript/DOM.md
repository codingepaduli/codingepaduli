---
type: "javascript"
title: "JavaScript Lez. 09 - Manipolazione del DOM"
description: "09 - Manipolazione del DOM"
date: 2020-08-01
publishdate: 2020-08-01
lastmod: 2020-08-01
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "09 - Manipolazione del DOM"
---

# 09 - Manipolazione del DOM ed eventi

Il Document Object Model (DOM) è un'interfaccia che permette di rappresentare la struttura di un documento HTML come un albero e che fornisce le funzionalità per selezionare gli elementi sui quali effettuare le classiche operazioni di creazione, lettura, modifica e cancellazione di un nodo dell'albero (CRUD è un'abbreviazione che indica le operazioni indicate, ovvero Create, Read, Update e Delete).

Permette di selezionare gli elementi, accedere alle proprietà di un elemento e di ricevere notifiche di eventi che avvengono nella pagina o su uno specifico elemento.

## Selezione e proprietà degli elementi

Le operazioni di selezione di un elemento del documento avvengono attraverso i selettori CSS. I selettori che restituiscono un solo elemento possono essere gestiti attraverso la funzione ``document.querySelector``, mentre quelli che restituiscono più di un elemento possono essere gestiti attraverso la funzione``document.querySelectorAll``. Quando si hanno più elementi, può essere necessario un ciclo iterativo per scorrerli ed elaborarli uno ad uno.

Entrambe le funzioni di selezione indicate prendono come argomento una stringa che rappresenta un **selettore CSS**. Per un dettaglio completo sui **selettori CSS** si rimanda al relativo capitolo ed alle specifiche di ECMAScript.

Le principali proprietà di un elemento a cui è possibile accedere nelle funzioni JavaScript sono le seguenti:

- ``innerHTML``: il contenuto dell'elemento selezionato (senza l'elemento);
- ``outerHTML``: l'elemento selezionato ed il suo contenuto;
- ``value``: proprietà accessibile solo per i campi di input, restituisce il valore in formato stringa.

Ad esempio, utilizzando il **selettore CSS per identificatore**, è possibile selezionare un elemento di input ed accedere al valore:

```html
<input type="text" id="nome" value="John">

<script>
let valoreInput = document.querySelector("#nome").value;
console.info(valoreInput);
</script>
```

L'output scritto in console è il seguente:

```plaintext
John
```

Sempre utilizzando il **selettore CSS per identificatore**, per selezionare un elemento paragrafo ed accedere al testo presente nel paragrafo, si può utilizzare la proprietà ``innerHTML``, come nel seguente esempio:

```html
<p id="paragrafo">Questo è un paragrafo</p>

<script>
let paragrafo = document.querySelector("#paragrafo").innerHTML;
console.info(paragrafo);
</script>
```

L'output scritto in console è il seguente:

```plaintext
Questo è un paragrafo
```

Se invece si fa uso della proprietà ``outerHTML``, in console viene riportato anche il codice HTML dell'elemento:

```plaintext
<p id="paragrafo">Questo è un paragrafo</p>
```

## Eventi DOM ed HTML

Il DOM permette di notificare gli **eventi**, detti tecnicamente **eventi DOM**, che avvengono in una pagina HTML, come il completamento della lettura della pagina web o il click da parte dell'utente su un pulsante.

Al verificarsi di un evento relativo al documento o ad uno specifico elemento si può programmare un'azione da eseguire.

L'elenco di eventi è vasto per cui si rimanda alle specifiche ECMAScript per un dettaglio completo.

Le notifiche di un determinato evento non sono automatiche, ma il programmatore deve indicare che ha interesse a ricevere notifiche di eventi che avvengono su un determinato elemento.

Per poter programmare le azioni da eseguire quando viene notificato un evento su un elemento di una pagina web, si possono utilizzare gli attributi previsti dal linguaggio HTML. Questi attributi hanno tipicamente il nome composto dal prefisso ``on`` seguito dal nome dell'evento.

Di seguito un elenco di attributi con il rispettivo evento che viene notificato:

- ``onblur``: l'elemento non ha più il focus;
- ``onclick``: l'elemento è stato cliccato;
- ``onchange``: il valore dell'elemento è cambiato;
- ``ondblclick``: l'elemento ha ricevuto un doppio click;
- ``onfocus``: l'elemento ha ricevuto il focus;
- ``onreset``: il form è stato "pulito";
- ``onsubmit``: il form è stato inviato;
- ``onload``: la pagina web è stato caricata;

Come valore di questi attributi si deve specificare una funzione da eseguire, ad esempio la funzione JavaScript ``alert`` che mostra un messaggio all'utente.

Un esempio completo che mostra come alla notifica dell'azione del click si può eseguire l'azione di mostrare un messaggio all'utente è il seguente:

```html
<input type="button" value="clicca" onclick="alert('cliccato')">
```

Nell'esempio precedente, l'attributo ``onclick`` permette di ricevere la notifica dell'evento di "click" sull'elemento ``input``, l'azione da eseguire è quella di ``alert('cliccato')``.

Ovviamente le azioni da eseguire possono essere definire in funzioni JavaScript, come nel seguente esempio:

```html
<script>
  function definitaDaUtente() {
    alert('questa è una funzione definita dal programmatore');
  }
</script>

<input type="button" value="clicca" id="myButton" onclick="definitaDaUtente()">
```

In alternativa agli attributi, si può legare un elemento ad un azione con il seguente codice JavaScript:

```html
<button id="myButton">clicca<button>

<script>
let button = document.getElementById("#myButton");
button.addEventListener("click", definitaDaUtente()); 
</script>
```

## Operazioni sul DOM

Per creare un elemento di testo, si utilizza la seguente funzione:

```javascript
const ele = document.createTextNode('Hello World!');
```

Per creare un elemento che fa da contenitore, si utilizza la seguente funzione:

```javascript
const ele = document.createElement('div');
```

Per aggiungere un elemento all'interno di un secondo elemento, si utilizza la seguente funzione:

```javascript
target.appendChild(ele);
```

Per rimuovere un elemento dall'interno di un secondo elemento, si utilizza la seguente funzione:

```javascript
target.removeChild(ele);
```

Per rimuovere un elemento dalla pagina, si utilizza la seguente funzione:

```javascript
ele.remove();
```

Per ottenere solo ed esclusivamente il testo inserito all'interno di un elemento dalla pagina, si utilizza la seguente funzione:

```javascript
const text = ele.textContent;
```

Per aggiungere un elemento prima di un secondo elemento, si utilizza la seguente funzione:

```javascript
refEle.insertAdjacentElement('beforebegin', ele);
```

Per aggiungere un elemento dopo un secondo elemento, si utilizza la seguente funzione:

```javascript
refEle.insertAdjacentElement('afterend', ele);
```

## Gestione di codice HTML degli elementi

Per ottenere il codice HTML (alcuni caratteri sono convertiti in "HTML entities") contenuto all'interno di un elemento dalla pagina, si utilizza la seguente funzione:

```javascript
const text = ele.innerHTML;
```

Per aggiungere codice HTML prima di un secondo elemento, si utilizza la seguente funzione:

```javascript
refEle.insertAdjacentHTML('beforebegin', html);
```

Per aggiungere codice HTML dopo un secondo elemento, si utilizza la seguente funzione:

```javascript
refEle.insertAdjacentHTML('afterend', html);
```

## Gestione di attributi di un elemento

Per aggiungere un attributo ad un elemento, si utilizza la seguente funzione:

```javascript
ele.setAttribute('width', '100px');
```

Per accedere ad un attributo di un elemento, si utilizza la seguente funzione:

```javascript
const attr = ele.getAttribute('attr');
```

Per rimuovere un attributo da un elemento, si utilizza la seguente funzione:

```javascript
ele.removeAttribute('attr');
```

## Gestione dello stile di un elemento

Per aggiungere una proprietà di stile ad un elemento, si utilizza la funzione:

```javascript
ele.style['backgroundColor'] = 'red';
```

Per rimuovere una proprietà di stile da un elemento, si utilizza la funzione:

```javascript
ele.style.removeProperty('background-color');
```

Per ottenere il valore di una proprietà di stile da un elemento, si utilizza la funzione:

```javascript
const attr = ele.style['backgroundColor'];
```

## Gestione delle classi di un elemento

Per aggiungere delle classi ad un elemento, si utilizza la funzione:

```javascript
ele.classList.add('another', 'class', 'name');
```

Per rimuovere delle classi ad un elemento, si utilizza la funzione:

```javascript
ele.classList.remove('another', 'class', 'name');
```

Per effettuare il "toggle" di una classe di un elemento, si utilizza la funzione:

```javascript
ele.classList.toggle('class-name');
```

Si può condizionare la presenza di una classe ad una specifica condizione:

```javascript
ele.classList.toggle('class-name', i<10);
```

Per sostituire una classe di un elemento con un'altra, si utilizza la funzione:

```javascript
ele.classList.replace('class1', 'class2');
```

Per verificare se una classe è presente per un elemento, si utilizza la funzione:

```javascript
ele.classList.contains('class1');
```

La "spread syntax" permette di aggiungere o togliere liste di classi:

```javascript
let class = ['class1', 'class2'];
ele.classList.add(...class);
ele.classList.remove(...class);
```
