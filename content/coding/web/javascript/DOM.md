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

# 09 - Document Object Model (DOM)

<!-- testo copiato e risistemato dalle lezioni introduttive di HTML - Il DOM -->

Il DOM (dall'inglese Document Object Model) è un modello che descrive la struttura della pagina web come una struttura gerarchica.

In questo modello gerarchico, ogni etichetta della pagina web (il documento ipertestuale) è detta **nodo** ed ha una posizione ben definita all'interno di un albero (tipica struttura gerarchica).

La radice dell'albero è l'etichetta ``html``, dato che al suo interno sono presenti tutti gli elementi della pagina web.

Dalla radice si estendono poi i nodi di "primo livello", ovvero tutte le etichette contenute nell'etichetta ``html``.

Da questi nodi di primo livello si estendono i nodi di secondo livello, ovvero le etichette contenute nelle etichette di primo livello, e così via per i successivi livelli.

Le foglie dell'albero sono le etichette che non posseggono contenuti.

Data la struttura gerarchica, è possibile stabilire delle relazioni tra gli elementi. Un elemento che contiene altri elementi è detto elemento padre, e di conseguenza gli elementi contenuti in quel nodo sono detti figli. Gli elementi che si trovano nello stesso livello si dicono fratelli, e così via con le altre relazioni.

Un esempio di rappresentazione della pagina web come struttura ad albero, secondo il modello DOM, è il seguente:

```html
html
└── body
    ├── h1
    |   └── testo titolo
    └── p
        └── testo del paragrafo
```

<!-- Fine testo copiato -->

Il programmatore può manipolare questo modello Document Object Model (DOM) attraverso un'interfaccia che permette di:

- selezionare i nodi dell'albero attraverso i selettori CSS;
- effettuare le classiche operazioni di creazione, lettura, modifica e cancellazione di un nodo dell'albero (le operazioni sono dette CRUD, dall'inglese Create, Read, Update e Delete);
- effettuare le modifiche degli attributi di un nodo;
- ricevere notifiche di eventi che avvengono sui nodi, come il click del mouse su un elemento o l'aggiunta di un nuovo elemento.

Le interfacce JavaScript che permettono di interagire con il DOM sono le seguenti:

``document``: Rappresenta l'intero documento HTML come albero DOM e fornisce metodi per manipolarlo;
``Element`` e ``Node``: Rappresentano un nodo dell'albero DOM (che corrisponde ad un elemento del documento HTML) e forniscono metodi per manipolare i gli attributi ed il contenuto del nodo;

## Proprietà del DOM e attributi HTML

Esiste una notevole differenza tra i concetti di proprietà ed attributi, quando si parla di sviluppo di pagine web:

- si parla di attributi quando si riferisce agli attributi delle etichette HTML, come ad esempio l'attributo ``width`` nell'etichetta ``<img width="5px" height="5px">``;
- si parla di proprietà quando si riferisce ad una proprietà di un oggetto JavaScript, in particolare ad una proprietà di un nodo selezionato attraverso le funzioni ``document.querySelector`` e ``document.querySelectorAll``.

Sia gli attributi che le proprietà sono coppie chiave-valore (nome-valore), il nome è alfanumerico, ma:

- gli attributi hanno sempre il nome con tutte le lettere minuscole;
- le proprietà possono avere un nome con lettere maiuscole o minuscole.

Nei prossimi capitoli saranno trattati in dettaglio.

## Selezione degli elementi del DOM

Il documento HTML in JavaScript è visto come un albero DOM ed è accessibile attraverso l'oggetto ``document``. Questo oggetto permette di selezionare gli elementi che si intende manipolare indicandoli con un selettore CSS. In particolare si ha:

- la funzione ``document.querySelector`` prende come parametro un selettore CSS che seleziona **un singolo elemento** e quindi questa funzione restituisce il solo elemento selezionato;
- la funzione ``document.querySelectorAll`` prende come parametro un selettore CSS che seleziona **uno o più elementi** e quindi questa funzione restituisce la lista di elementi selezionati. In questo caso può essere necessario un ciclo iterativo per scorrere gli elementi ed elaborarli uno ad uno.

Per un dettaglio completo sui **selettori CSS** si rimanda al relativo capitolo ed alle specifiche di ECMAScript.

Supponiamo di avere la seguente porzione di documento HTML:

```html
<p class="paragrafo" id="paragrafo1">paragrafo 1</p>
<p class="paragrafo">paragrafo 2</p>
```

Il selettore CSS ``#paragrafo1`` seleziona un solo elemento, il primo paragrafo. Invocando la funzione ``document.querySelector`` con parametro il selettore CSS ``#paragrafo1`` ci permette di selezionare il singolo nodo del DOM che rappresenta il paragrafo, come nell'esempio seguente:

```javascript
let element = document.querySelector('#paragrafo1');
```

Il selettore CSS ``.paragrafo`` seleziona entrambi i paragrafi. Invocando la funzione ``document.querySelectorAll`` con parametro il selettore CSS ``.paragrafo`` ci permette di selezionare la lista di nodi del DOM che rappresentano i due paragrafo, come nell'esempio seguente:

```javascript
let elementList = document.querySelectorAll('.paragrafo');
```

## Proprietà dei nodi del DOM

Le proprietà di un nodo sono coppie chiave-valore (nome-valore). La sintassi ``nodo.nomeProprieta`` è utilizzata per accedere ad una proprietà di un nodo (in maniera molto simile all'uso delle variabili). Se la proprietà a cui si accede esiste, viene modificata, se non esiste viene creata.

Come per le variabili, il valore associato ad una proprietà può essere di qualsiasi tipo, un numero, un oggetto o qualsiasi altro tipo consentito.

Come per le variabili, le proprietà possono avere il nome composto con caratteri alfanumerici (maiuscoli o minuscoli).

Supponiamo di avere la seguente porzione di documento HTML:

```html
<p id="paragrafo1" proprietaEsistente="p1">paragrafo 1</p>
```

Nel seguente esempio si seleziona il nodo e quindi si accede alle proprietà del nodo.

```javascript
let elemento = document.querySelector('#paragrafo1');
elemento.proprietaEsistente = "p2";
elemento.proprietaNuova = "valoreProprieta2";
elemento.proprietaOggetto = { p1 : "v1", p2: 1 };
```

La creazione o la modifica di queste proprietà non comporta la creazione o la modifica degli attributi HTML del nodo selezionato. Il paragrafo non viene alterato, resta identico:

```html
<p id="paragrafo1" proprietaEsistente="p1">paragrafo 1</p>
```

### Gestione degli attributi HTML

Gli attributi sono coppie chiave-valore (nome-valore) appartenenti agli elementi HTML, quindi indicati nelle etichette. Il nome di un attributo HTML è alfanumerico, ma con tutte le lettere minuscole, non sono ammesse lettere maiuscole.

Le funzioni per la gestione degli attributi sono le seguenti:

- ``node.hasAttributes()`` indica se un nodo ha attributi o meno;
- ``node.getAttributeNames()`` restituisce la lista di attributi del nodo;
- ``node.hasAttribute(name)`` indica se un nodo ha l'attributo identificato dal nome;
- ``node.removeAttribute(name)`` rimuove dal nodo l'attributo identificato dal nome;
- ``node.getAttribute(name)`` restituisce il valore dell'attributo identificato dal nome;
- ``node.setAttribute(name, value)`` imposta il valore dell'attributo identificato dal nome;
- ``node.toggleAttribute(name)`` crea l'attributo se non è presente, altrimenti lo rimuove dal nodo;

Supponiamo di avere la seguente porzione di documento HTML:

```html
<p id="paragrafo1" proprieta-esistente="p1">paragrafo 1</p>
```

Nel seguente esempio si seleziona il nodo e quindi si modificano gli attributi del nodo.

```javascript
let elemento = document.querySelector('#paragrafo1');
elemento.removeAttribute("proprieta-esistente");
elemento.setAttribute("proprieta-nuova", "valoreProprieta2");
```

Il paragrafo selezionato sarà quindi modificato nel seguente modo:

```html
<div id="paragrafo1" proprieta-nuova="valoreProprieta2">Hello World!</div>
```

### Proprietà che si riflettono sugli attributi

Le proprietà possono riflettersi su un attributo, ma solo nei casi in cui è previsto e documentato (cioè se l'interfaccia dello specifico elemento DOM prevede la proprietà e la trasforma automaticamente in un attributo);

Ad esempio è sempre possibile accedere all'attributo ``id`` utilizzando la sintassi ``elemento.id``, come nel seguente esempio:

```javascript
let element = document.querySelector('#paragrafo1');
element.id ="p1"
```

Questo esempio mostra la selezione di un nodo del documento, su questo nodo selezionato si modifica la proprietà ``id``, questa modifica si riflette poi automaticamente sull'attributo ``id`` del paragrafo HTML.

```html
<p id="p1">paragrafo 1</p>
```

Un esempio simile non funziona con la proprietà ``boh``:

```javascript
let element = document.querySelector('#paragrafo1');
element.boh ="p1"
```

Questo esempio mostra la selezione di un nodo del documento, su questo nodo selezionato si accede alla proprietà ``boh`` che non esiste e viene creta, ma questa modifica non si riflette in un attributo del paragrafo HTML. Il paragrafo HTML rimane quindi il seguente:

```html
<p id="paragrafo1">paragrafo 1</p>
```

Alcune volte la riflessione avviene attraverso una proprietà che ha un nome differente, ad esempio:

- su un qualsiasi nodo è possibile modificare la proprietà ``ariaLabel``, questa modifica si riflette sull'attributo ``aria-label`` della corrispondente etichetta;
- su un qualsiasi nodo è possibile modificare la proprietà ``className``, questa modifica si riflette sull'attributo ``class`` della corrispondente etichetta;

Altre volte, l'accesso alla proprietà restituisce un valore di default se il valore dell'attributo non è valido oppure modifica l'attributo inserendo un valore di default.

Ancora, l'accesso alla proprietà restituisce il valore dell'attributo finché non viene modificata una seconda proprietà.

Questo ultimo caso è il caso di tutti i campi di input, i quali sono dotati sia della proprietà ``value`` che della proprietà ``defaultValue``. Quando si accede alla proprietà ``value`` si ottiene il valore della proprietà ``defaultValue`` fino a quando non viene indicato un valore per la proprietà ``value``. Dal momento in cui viene indicato un valore, l'accesso alla proprietà ``value`` inizia a restituire il proprio valore.

Insomma, le modifiche delle proprietà non seguono una logica lineare e non esiste una regola comune per indicare come queste modifiche si riflettano sugli attributi. Ogni volta è necessario controllare la documentazione della specifica proprietà.

<script>
  const text = document.createTextNode('Hello World!');
  let elemento = document.createElement('div');
  elemento.appendChild(text);
  // document.body.appendChild(elemento);

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

## Proprieta principali

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
