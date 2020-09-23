---
type: "javascript"
title: "09 - Document Object Model (DOM)"
description: "09 - Document Object Model (DOM)"
date: 2020-08-01
publishdate: 2020-08-01
lastmod: 2020-08-01
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "09 - Document Object Model (DOM)"
customJS: ["/static/coding/web/javascript/dom.js"]
---

# 09 - DOM - Operazioni sui nodi

Il Document Object Model (DOM) è un'interfaccia che permette di rappresentare la struttura di un documento come un albero, consentendo le classiche operazioni di creazione, lettura, modifica e cancellazione di un nodo dell'albero (CRUD è un'abbreviazione che indica le operazioni indicate, ovvero Create, Read, Update e Delete).

Le operazioni di selezione di un elemento del documento avvengono attraverso i selettori CSS. Le funzioni principali per la selezione di elementi sono ``document.querySelector`` e ``document.querySelectorAll``.

La selezione non è l'unica operazione possibile su DOM. Le tipiche operazioni di creazione, lettura, aggiornamento e cancellazione (CRUD: Create, Read, Update, Delete) sono possibili su un qualsiasi elemento della pagina.

## Gestione di elementi

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

Per ottenere il codice HTML (alcuni caratteri sono convertiti in "html entities") contenuto all'interno di un elemento dalla pagina, si utilizza la seguente funzione:

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
