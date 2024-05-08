---
type: "javascript"
title: "JavaScript Lez. 10 - Manipolazione del DOM"
description: "10 - Manipolazione del DOM"
date: 2020-08-01
publishdate: 2020-08-01
lastmod: 2020-08-01
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: true
toc: false
summary: "10 - Manipolazione del DOM"
---

# 10 - Manipolazione del DOM

## Operazioni sui nodi DOM

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

Per aggiungere un elemento prima di un secondo elemento, si utilizza la seguente funzione:

```javascript
refEle.insertAdjacentElement('beforebegin', ele);
```

Per aggiungere un elemento dopo un secondo elemento, si utilizza la seguente funzione:

```javascript
refEle.insertAdjacentElement('afterend', ele);
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

<script>
  const text = document.createTextNode('Hello World!');
  let elemento = document.createElement('div');
  elemento.appendChild(text);
  document.body.appendChild(elemento);

  // imposto l'attributo
  elemento.setAttribute('proprieta-esistente', 'p1');
  elemento.proprietaEsistente="p2";
  
  // imposto le proprietà
  elemento.proprietaEsistente = "p1";
  elemento.proprietaNuova = "valoreProprieta2";
  elemento.proprietaOggetto = { p1 : "v1", p2: 1 };
  console.log(elemento.proprietaEsistente);
  console.log(elemento.proprietaNuova);
  console.dir(elemento.proprietaOggetto);

  console.log(elemento.hasAttributes());
  console.table(elemento.getAttributeNames());
  console.log(elemento.hasAttribute("proprieta-esistente"));
  elemento.removeAttribute("proprieta-esistente");

  elemento.setAttribute("proprieta-nuova", "valoreProprieta2");
  console.log(elemento.getAttribute("proprieta-nuova"));

  elemento.toggleAttribute("proprieta-esistente");
  elemento.id = { id : "v1" };

</script>
