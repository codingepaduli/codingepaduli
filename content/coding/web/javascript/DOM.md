---
type: "javascript"
title: "JavaScript Lez. 09 - Document Object Model"
description: "09 - Document Object Model"
date: 2020-08-01
publishdate: 2020-08-01
lastmod: 2020-08-01
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "09 - Document Object Model"
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
└ body
 ├ h1
 | └ testo titolo
 └ p
   └ testo del paragrafo
```

<!-- Fine testo copiato -->

Il programmatore può manipolare questo modello Document Object Model (DOM) attraverso un'interfaccia che permette di:

- selezionare i nodi dell'albero attraverso i selettori CSS;
- effettuare le classiche operazioni di creazione, lettura, modifica e cancellazione di un nodo dell'albero (le operazioni sono dette CRUD, dall'inglese Create, Read, Update e Delete);
- effettuare le modifiche degli **attributi** di un nodo;
- effettuare le modifiche dalle **proprietà** di un nodo;
- ricevere notifiche di eventi che avvengono su un nodo del documento, come il click del mouse su un elemento o l'aggiunta di un nuovo elemento.

Questa modello è un concetto generico ed è utilizzabile in qualsiasi linguaggio di programmazione.

In JavaScript è l'oggetto ``document`` che permette di vedere il documento HTML come albero DOM e permette di manipolarlo attraverso le operazioni riportate in precedenza. Ogni nodo dell'albero DOM è interpretato come una tipologia di oggetto JavaScript ``Node``, ``Element`` ed ``HTMLElement`` che rappresentano genericamente un elemento del documento HTML e che forniscono i metodi per manipolare gli attributi ed il contenuto del nodo; Ogni nodo poi si specializza in una tipologia di oggetto particolare, ad esempio:

- ``HTMLParagraphElement``: è un nodo interpretato come una tipologia di oggetto JavaScript che rappresenta un paragrafo del documento HTML;
- ``HTMLHeadingElement``: è un nodo interpretato come una tipologia di oggetto JavaScript che rappresenta un titolo (dal primo al sesto) del documento HTML;
- ``HTMLLinkElement``: è un nodo interpretato come una tipologia di oggetto JavaScript che rappresenta un collegamento del documento HTML;
- ``HTMLInputElement``: è un nodo interpretato come una tipologia di oggetto JavaScript che rappresenta un campo di input del documento HTML.

Ognuno di questi oggetti mette a disposizione proprietà, attributi ed eventi specifici per la specifica etichetta HTML che il nodo rappresenta.

Sia gli attributi, sia le proprietà, sia gli eventi possono essere gestite utilizzando il modello ad albero DOM.

In JavaScript esiste una notevole differenza tra i concetti di proprietà ed attributi, quando si parla di modello DOM nello sviluppo di pagine web:

- si parla di attributi quando si riferisce agli attributi delle etichette HTML, come ad esempio l'attributo ``width`` nell'etichetta ``<img width="5px" height="5px">``;
- si parla di proprietà quando si riferisce ad una proprietà di un nodo dell'albero, in particolare ad una proprietà di un oggetto JavaScript il cui tipo è ``Node``, ``Element`` o ``HTMLElement``.

## Selezione dei nodi

L'oggetto ``document`` permette di selezionare gli elementi che si intende manipolare indicandoli con un selettore CSS. In particolare si ha:

- la funzione ``document.querySelector`` prende come parametro un selettore CSS che seleziona **un singolo elemento** e quindi questa funzione restituisce il solo elemento selezionato;
- la funzione ``document.querySelectorAll`` prende come parametro un selettore CSS che seleziona **uno o più elementi** e quindi questa funzione restituisce la lista di elementi selezionati. In questo caso può essere necessario un ciclo iterativo per scorrere gli elementi ed elaborarli uno ad uno.

Per un dettaglio completo sui **selettori CSS** si rimanda al relativo capitolo ed alle specifiche di ECMAScript. Di seguito i selettori CSS principali.

### Selezione per identificativo

<!-- testo copiato e risistemato dalle lezioni introduttive di CSS - I selettori CSS -->

Il **selettore per identificativo** permette di selezionare la singola etichetta individuata da un certo identificativo. La sintassi di questo selettore prevede il carattere "cancelletto" ``#`` seguito dall'identificativo.

<!-- fine testo copiato -->

Supponiamo di avere la seguente porzione di documento HTML:

```html
<p class="paragrafo" id="paragrafo1">paragrafo 1</p>
<p class="paragrafo">paragrafo 2</p>
```

Il primo paragrafo ha identificativo ``paragrafo1``, quindi il selettore CSS per identificativo si costruisce col carattere "cancelletto" ``#`` seguito dall'identificativo ``paragrafo1``.

Questo selettore CSS seleziona un solo elemento ed è quindi utilizzabile con la funzione ``document.querySelector``.

Invocando la funzione ``document.querySelector`` con parametro il selettore CSS ``#paragrafo1`` ci permette di selezionare il singolo nodo del DOM che rappresenta il paragrafo, come nell'esempio seguente:

```javascript
let element = document.querySelector('#paragrafo1');
```

### Selezione per classe

<!-- testo copiato e risistemato dalle lezioni introduttive di CSS - I selettori CSS -->

Il **selettore per classe** permette di selezionare tutte le etichette che hanno la stessa classe. La sintassi di questo selettore prevede il carattere "punto" ``.`` seguito dal nome della classe.

<!-- fine testo copiato -->

Supponiamo di avere la seguente porzione di documento HTML:

```html
<p class="paragrafo" id="paragrafo1">paragrafo 1</p>
<p class="paragrafo">paragrafo 2</p>
```

I due paragrafi hanno la classe ``paragrafo``, quindi il selettore CSS per classe si costruisce col carattere "punto" ``.`` seguito dall'identificativo ``paragrafo``.

Questo selettore CSS seleziona più elementi ed è quindi utilizzabile con la funzione ``document.querySelectorAll``.

Invocando la funzione ``document.querySelectorAll`` con parametro il selettore CSS ``.paragrafo`` ci permette di selezionare la lista di nodi del DOM che rappresentano i due paragrafi, come nell'esempio seguente:

```javascript
let elementList = document.querySelectorAll('.paragrafo');
```

## Gestione attributi HTML

Gli attributi sono coppie chiave-valore (nome-valore) appartenenti agli elementi HTML, quindi indicati nelle etichette. Il nome di un attributo HTML è alfanumerico, ma con tutte le lettere minuscole, non sono ammesse lettere maiuscole.

Per gestire gli attributi è necessario selezionare un nodo, ad esempio:

```javascript
let node = document.querySelector('#paragrafo1');
```

Le funzioni per la gestione degli attributi devono quindi essere invocate sull'oggetto ``node`` selezionato e sono le seguenti:

- ``hasAttributes()`` indica se un nodo ha attributi o meno;
- ``getAttributeNames()`` restituisce la lista di attributi del nodo;
- ``hasAttribute(name)`` indica se un nodo ha l'attributo identificato dal nome;
- ``removeAttribute(name)`` rimuove dal nodo l'attributo identificato dal nome;
- ``getAttribute(name)`` restituisce il valore dell'attributo identificato dal nome;
- ``setAttribute(name, value)`` imposta il valore dell'attributo identificato dal nome;
- ``toggleAttribute(name)`` crea l'attributo se non è presente, altrimenti lo rimuove dal nodo;

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

Esiste una sintassi alternativa per accedere ad una proprietà di un nodo, consiste nell'indicare la proprietà tra parentesi quadre: ``nodo[nomeProprieta]``, è utilizzata quando il nome della proprietà non rispetta le convenzioni suggerite per il nome della proprietà.

## Proprietà che si riflettono sugli attributi

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

Alcune volte la riflessione avviene attraverso una proprietà che ha un nome differente, ad esempio per la proprietà ``ariaLabel`` che si riflette sull'attributo ``aria-label`` (e non sull'attributo ``ariaLabel``) della corrispondente etichetta;

Altre volte, l'accesso alla proprietà restituisce un valore di default se il valore dell'attributo non è valido oppure modifica l'attributo inserendo un valore di default.

Ancora, l'accesso alla proprietà restituisce il valore dell'attributo finché non viene modificata una seconda proprietà.

Insomma, le modifiche delle proprietà non seguono una logica lineare e non esiste una regola comune per indicare come queste modifiche si riflettano sugli attributi. Ogni volta è necessario controllare la documentazione della specifica proprietà.

### Proprietà di contenuto testuale

Le proprietà che permettono di avere una rappresentazione testuale dell'elemento e del contenuto sono le seguenti:

- ``innerHTML``: il contenuto dell'elemento selezionato (senza l'etichetta HTML);
- ``outerHTML``: l'elemento selezionato ed il suo contenuto (compresa l'etichetta HTML);
- ``textContent``: il testo inserito all'interno di un elemento.

Alcuni caratteri possono essere convertiti in "HTML entities" per essere correttamente rappresentati.

Supponiamo di avere la seguente porzione di documento HTML:

```html
<p id="paragrafo1" proprieta-esistente="p1">paragrafo 1</p>
```

Nel seguente esempio si seleziona il nodo e quindi si modifica il contenuto del nodo e poi si scrive l'intera etichetta nella console.

```javascript
let elemento = document.querySelector('#paragrafo1');
elemento.innerHTML = "nuovo paragrafo";
console.log(ele.textContent);
console.log(elemento.outerHTML);
```

Il paragrafo selezionato sarà quindi modificato nel seguente modo:

```html
<p id="paragrafo1" proprieta-esistente="p1">nuovo paragrafo</p>
```

La proprietà ``ele.textContent`` visualizzerà il testo ``nuovo paragrafo``, mentre la proprietà ``elemento.outerHTML`` visualizzerà il testo ``<p id="paragrafo1" proprieta-esistente="p1">nuovo paragrafo</p>``.

Una nota importante per il recupero del testo: per questioni di performance, quando si aggiungono più elementi testuali ad un nodo, questi rimangono separati perché inseriti in due nodi testuali differenti. Accedendo al testo di un nodo con la proprietà ``ele.textContent``, si ottiene solo una parte del testo. Per poter unificare i nodi è necessario invocare la funzione ``el.normalize();`` prima di accedere al testo con ``ele.textContent``.

### Proprietà ``defaultValue``

Tutti i campi di input sono dotati della proprietà ``defaultValue``che restituisce sempre il valore dell'attributo HTML ``value`` del campo di input. Dato che il linguaggio HTML è un linguaggio testuale, il valore è sempre una stringa.

Supponiamo di avere la seguente porzione di documento HTML:

```html
<input id="input" type="text" value="default">
```

Nel seguente esempio si seleziona il nodo e quindi si accede alle proprietà del nodo.

```javascript
let elemento = document.querySelector('#input');
console.log(input.defaultValue); // 'default'
input.defaultValue = "new default"
console.log(input.defaultValue); // 'new default'
```

La modifica di questa proprietà comporta di riflesso la modifica dell'attributo HTML ``value`` del nodo selezionato. Il campo di input viene alterato come di seguito:

```html
<input id="input" type="text" value="new default">
```

### Proprietà ``value``

Tutti i campi di input sono dotati della proprietà ``value``, che non deve essere confusa ne con la proprietà ``defaultValue`` ne con il valore dell'attributo HTML ``value`` dei campi di input. Dato che il linguaggio HTML è un linguaggio testuale, il valore è sempre una stringa.

La proprietà ``value`` si comporta in modo particolare:

- se nel nodo selezionato questa proprietà non è definita, allora viene restituito il valore presente nella proprietà ``defaultValue`` del campo di input;
- se nel nodo selezionato questa proprietà è stata definita (ad esempio attraverso l'istruzione ``nodo.value = 3``), allora viene restituito il valore di questa proprietà.

La modifica di questa proprietà non si riflette in una modifica all'attributo HTML del campo di input.

Supponiamo di avere la seguente porzione di documento HTML:

```html
<input id="input" type="text" value="default">
```

Nel seguente esempio si seleziona il nodo e quindi si accede alle proprietà del nodo.

```javascript
let elemento = document.querySelector('#input');
console.log(input.value); // 'default'
input.value = "new default"
console.log(input.value); // 'new default'
console.log(input.defaultValue); // 'default'
```

La modifica della proprietà ``value`` non comporta di riflesso la modifica dell'attributo HTML ``value`` del nodo selezionato. Il campo di input rimane inalterato come di seguito:

```html
<input id="input" type="text" value="default">
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

La presenza di uno di questi attributi indica che si ha interesse a ricevere notifiche dell'evento associato, e che una volta notificato l'evento si deve eseguire una funzione indicata come valore dell'attributo, ad esempio la funzione JavaScript ``alert`` che mostra un messaggio all'utente.

Un esempio completo che mostra come alla notifica dell'azione del click si può eseguire l'azione di mostrare un messaggio all'utente è il seguente:

```html
<input type="button" value="clicca" onclick="alert('cliccato')">
```

Nell'esempio appena visto, l'attributo ``onclick`` permette di ricevere la notifica dell'evento di "click" sull'elemento ``input``, l'azione da eseguire è la funzione ``alert('cliccato')`` che mostra un messaggio all'utente.

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

## Esercizio: Calcolatrice web interattiva

Utilizzando eventi, proprietà ed attributi si può realizzare una pagina web interattiva che elabori l'input dell'utente e mostri un output, tutto in locale nel browser.

Supponiamo di voler creare una semplice calcolatrice per la somma di due numeri, composta da due campi di input ed un campo di output. La calcolatrice al momento effettua solo la somma.

I campi di input devono avere gli identificativi necessari, dato che saranno utilizzati nei **selettori CSS per identificatore** per selezionare l'elemento di input ed accedere al valore inserito dall'utente. Stessa cosa per i campi di output, dato che il valore deve essere modificato. Quindi:

- al primo campo di input assegniamo un identificativo ``num1``;
- al secondo campo di input assegniamo un identificativo ``num2``;
- al campo di output assegniamo un identificativo ``ris``.

Dobbiamo inoltre legare l'evento di click sul pulsante ad una funzione di somma, utilizzando l'attributo HTML ``onclick`` del pulsante e definendo una nuova funzione ``somma``.

La porzione di codice HTML necessaria è la seguente:

```html
<!-- Primo numero (input)-->
<label for="num1">Num1:</label>
<input id="num1" type="number">

<!-- Secondo numero (input)-->
<label for="num2">Num2:</label>
<input id="num2" type="number">

<!-- Pulsante (click)-->
<button type="button" onclick="somma()">Calcola</button>

<!-- Risultato (output)-->
<label for="ris">Risultato:</label>
<input id="ris" type="number">

<script>
  function somma() {
    alert('calcolo somma');
  }
</script>
```

L'utente inserisce i primi due numeri e quindi clicca sul pulsante per effettuare la somma. L'evento del click viene notificato e quindi viene eseguita la funzione somma, che in questo caso mostra un messaggio all'utente (non è stata ancora completata).

Per accedere ai valori che l'utente inserisce nei campi di input e per modificare i valori dei campi di output è necessario utilizzare i **selettori CSS per identificatore**. Quindi:

- il selettori CSS del primo campo di input è ``#num1``;
- il selettori CSS del secondo campo di input è ``#num2``;
- il selettori CSS del campo di output è ``#ris``.

La proprietà che dobbiamo utilizzare per accedere e modificare il valore di un campo di input è ``value`` ed è un valore testuale. Dato che bisogna fare la somma tra numeri, dobbiamo convertire il valore in numerico utilizzando la funzione ``parseInt()``.

```html
<script>
  function somma() {
    // seleziono i nodi di input
    let input1 = document.querySelector("#num1");
    let input2 = document.querySelector("#num2");

    // seleziono il nodo di output 
    let output = document.querySelector("#ris");

    // accedo al valore di input e lo converto in numero
    let num1 = parseInt(input1.value);
    let num2 = parseInt(input2.value);

    // faccio la somma dei numeri
    s = num1 + num2;

    // scrivo il risultato
    output.value = s;
  }
</script>
```

## Operazioni sul DOM

Le operazioni sul DOM sono le operazioni di creazione, lettura, modifica e cancellazione di un nodo dell’albero (le operazioni sono dette CRUD, dall’inglese Create, Read, Update e Delete) e di creazione, lettura, modifica e cancellazione di uno degli attributi o dalle proprietà di un nodo.

E' possibile sfruttare le relazioni tra i nodi, come quella di "padre/figlio" o di "nodo fratello" per poter inserire i nodi nella posizione desiderata.

### Gestione dei nodi

Per creare un elemento di testo, si utilizza la seguente funzione:

```javascript
const ele = document.createTextNode('Hello World!');
```

Come gia descritto in precedenza, quando si aggiungono più elementi testuali ad un nodo, questi rimangono separati (per questioni di performance) perché inseriti in due nodi testuali differenti. Accedendo al testo di un nodo con la proprietà ``ele.textContent``, si ottiene solo una parte del testo. Per poter unificare i nodi è necessario invocare la funzione ``ele.normalize();`` prima di accedere al testo con ``ele.textContent``.

Per creare un elemento che fa da contenitore, si utilizza la seguente funzione:

```javascript
const ele = document.createElement('div');
```

Per aggiungere un elemento all'interno di un secondo elemento, si utilizza la seguente funzione:

```javascript
target.appendChild(ele);
```

Si può scegliere di aggiungere un elemento in fondo alla pagina web, sebbene ciò sia sconsigliato per via del footer della pagina, utilizzando il riferimento:

```javascript
document.body.appendChild(elemento);
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

### Gestione dello stile di un elemento

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

### Gestione delle classi di un elemento

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

## Template HTML e gestione nodi

Il linguaggio HTML permette di creare dei template, cioè dei modelli, di sezioni della pagina web nei quali inserire i propri dati. Sono principalmente utilizzati dai "web components", ma possono essere utilizzati facilmente anche negli script.

Il vantaggio di utilizzare un template consiste nella separazione della struttura HTML dai dati, tipicamente inseriti utilizzando JavaScript.

Il template è generato dall'etichetta ``template`` che ha il simbolo di apertura ``<template>`` ed il simbolo di chiusura ``</template>``. In questo elemento è possibile inserire qualsiasi altro elemento senza dover rispettare le regole di relazione "padre-figlio" del linguaggio HTML, proprio perché questo contenitore serve da modello. Ad esempio è possibile inserire  nell'etichetta ``template`` un'etichetta ``<li>`` senza che sia presente un'etichetta ``<ul>`` .

Un template deve essere identificato per ``id`` per poi clonare il contenuto, per poterlo poi utilizzare:

```javascript
const template = document.querySelector(templateID);
templateContent = template.content.cloneNode(true);
```

Per poter inserire il contenuto di un template in un nodo "target" possiamo utilizzare la seguente funzione, che controlla se gli identificativi sono stringhe, seleziona gli elementi e se entrambi trovati inserisce il template nel nodo "target":

```javascript
function addTemplate(targetId, templateID) {
  if (typeof targetId !== 'string' && ! (targetId instanceof String) ) {
    throw new Error("param 'targetId' is not a string");
  }
  if (typeof templateID !== 'string' && ! (templateID instanceof String) ) {
    throw new Error("param 'templateID' is not a string");
  }
  
  const target = document.querySelector(targetId);
  const template = document.querySelector(templateID);
  
  if (target != null && template != null) {
    target.append(template.content.cloneNode(true));
  }
}
```

Nel template possiamo inserire i segnaposto nei quali inserire i dati nella forma ``${nome}``, come nel seguente esempio:

```html
<template id="tableDataRowTemplate">
  <tr id="tableDataRow">
    <th class="replaceData">${Extra}</th>
    <th class="replaceData">${Giorno}</th>
    <th class="replaceData">${Ora}</th>
    <th class="replaceData">${Classe}</th>
    <th class="replaceData">${Aula}</th>
    <th class="replaceData">${Piano}</th>
  </tr>
</template>
```

I dati da inserire possono poi essere contenuti in un oggetto in cui il nome delle proprietà corrisponde con il nome inserito nel segnaposto dei dati da sostituire. Un esempio di oggetto è il seguente:

```javascript
{
  "Extra": "SI",
  "Giorno": "LUNEDI",
  "Ora": "1°",
  "Classe": "4A_INF",
  "Aula": "123",
  "Piano": null
}
```

In questo modo si crea una corrispondenza tra il segnaposto ``${Giorno}`` e l'oggetto che ha proprietà ``Giorno``.

L'identificativo ``#tableDataRow .replaceData`` può essere utilizzato per selezionare tutti i nodi nei quali è necessario effettuare la sostituzione dei dati secondo il modello appena descritto.

La funzione seguente può essere utilizzata per:

- controllare se il primo parametro è una stringa da usare per identificare la sezione;
- controllare se il secondo parametro è un oggetto che contiene le proprietà, nella forma nome-valore, da utilizzare per sostituire i dati;
- selezionare tutti i nodi contenenti i segnaposti da sostituire con i dati;
- sostituire tutti i segnaposti.

```javascript
function replaceTemplateData(dataNodesID, dataToReplace={}) {
  if (typeof dataNodesID !== 'string' && ! (dataNodesID instanceof String) ) {
    throw new Error("param 'targetId' is not a string");
  }
  if (!dataToReplace instanceof Object || Array.isArray(dataToReplace) || dataToReplace === null) {
    throw new Error("param 'dataToReplace' is not an object (empty object is allowed)");
  }

  const nodeToReplace = document.querySelectorAll(dataNodesID + " .replaceData");
  console.debug(`Found ${nodeToReplace.length} elements to replace in node ${dataNodesID}`);

  nodeToReplace.forEach(node => {
    Object.entries(dataToReplace).forEach(([key, val]) => {
      console.debug(`Replacing \$\{${key}\} --> ${val}`);
      node.textContent = node.textContent.replace(`\$\{${key}\}` , `${val}`);
    });
  });
}
```

Creato l'oggetto contenente i dati da sostituire, si può invocare la funzione nel seguente modo:

```javascript
let oggetto = {
  "Extra": "SI",
  "Giorno": "LUNEDI",
  "Ora": "1°",
  "Classe": "4A_INF",
  "Aula": "123",
  "Piano": null
}

replaceTemplateData('#tableDataRow', oggetto)
```
