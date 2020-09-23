---
type: "javascript"
title: "07 - Istruzioni basilari per processare il contenuto di una pagina web"
description: "07 - Istruzioni basilari per processare il contenuto di una pagina web"
date: 2020-04-29
publishdate: 2020-04-29
lastmod: 2020-04-29
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "07 - Istruzioni basilari per processare il contenuto di una pagina web"
---

# 07 - Istruzioni basilari per processare il contenuto di una pagina web

Gli script JS e la pagina HTML interagiscono attraverso meccanismi molto semplici.

Gli elementi in una pagina HTML possono notificare degli **eventi** ed invocare di conseguenza le funzioni JavaScript associate.

Gli script in esecuzione possono **selezionare** gli elementi della pagina HTML e modificarne le proprietà.

Gli **eventi**, detti tecnicamente **eventi DOM**, hanno natura diversa: principalmente possono essere automatici, come il caricamento della pagina, o dovuti all'interazione con l'utente o con il sistema, come ad esempio un click su un pulsante o una notifica di batteria in esaurimento da parte del sistema.

L'elenco di eventi è vasto per cui si rimanda alle specifiche ECMAScript per un dettaglio completo.

Per poter invocare una funzione quando un determinato evento viene notificato su un elemento di una pagina web, si utilizza il corrispondente attributo HTML, che tipicamente ha il nome composto dal prefisso ``on`` seguito dal nome dell'evento, come nei seguenti esempi:

- ``onblur``: l'elemento non ha più il focus;
- ``onclick``: l'elemento è stato cliccato;
- ``onchange``: il valore dell'elemento è cambiato;
- ``ondblclick``: l'elemento ha ricevuto un doppio click;
- ``onfocus``: l'elemento ha ricevuto il focus;
- ``onreset``: il form è stato "pulito";
- ``onsubmit``: il form è stato inviato;
- ``onload``: la pagina web è stato caricata;

Un esempio di codice che lega il click su un pulsante alla funzione JavaScript ``alert`` è il seguente:

```html
<input type="button" value="clicca" onclick="alert('cliccato')">
```

Ovviamente le funzioni JavaScript possono essere definite dal programmatore, come nel seguente esempio:

```html
<script>
  function definitaDaUtente() {
    alert('questa è una funzione definita dal programmatore');
  }
</script>

<input type="button" value="clicca" onclick="definitaDaUtente()">
```

La selezione di un elemento da uno script avviene attraverso le funzioni ``document.querySelector`` e ``document.querySelectorAll``, che permettono di selezionare rispettivamente un'elemento ed una collezione di elementi.

Entrambe le funzioni prendono come parametro un **selettore CSS**, ovvero una stringa indicante l'elemento o gli elementi da selezionare.

Per un dettaglio completo sulla **sintassi CSS** si rimanda agli articoli successivi ed alle specifiche di ECMAScript. Al momento si descriveranno i 3 selettori principali:

- ``#ID``: serve a selezionare un elemento avente l'ID indicato;
- ``.class``: serve a selezionare gli elementi aventi la classe indicata;
- ``tag``: serve a selezionare gli elementi per tipo;

Di seguito, il codice JavaScript che utilizza i selettori suddetti per selezionare gli elementi della pagina web di esempio:

```html
<h1 id="titolo">Titolo</h1>
<p id="paragrafo">Questo è un paragrafo</p>
<input type="text" id="nome">

<script>
  let tag1Titolo = document.querySelector("#titolo");
  let tag1Paragrafo = document.querySelector("#paragrafo");
  let tag1Nome = document.querySelector("#nome");

  let tag2Titolo = document.querySelector("h1");
  let tag2Paragrafo = document.querySelector("p");
  let tag2Nome = document.querySelector("input");
</script>
```

Come si può notare, agli elementi HTML è stato aggiunto un attributo ID per poterli selezionare attraverso il **selettore CSS** ``#ID``. Quindi il selettore ``#titolo`` seleziona l'elemento titolo, il selettore ``#paragrafo`` seleziona l'elemento paragrafo ed il selettore ``#nome`` seleziona l'elemento campo di input.

Gli elementi HTML selezionati possiedono molte proprietà a cui è possibile fare accesso, tra le principali ci sono:

- ``id``: l'id dell'elemento selezionato;
- ``innerHTML``: il contenuto dell'elemento selezionato (senza l'elemento);
- ``outerHTML``: l'elemento selezionato ed il suo contenuto;
- ``value``: proprietà accessibile solo per i campi di input, restituisce il valore in formato stringa.

Riprendendo l'esempio precedente, è possibile scrivere nella console sia il contenuto che il valore degli elementi HTML, attraverso il seguente codice:

```html
<h1 id="titolo">Titolo</h1>
<p id="paragrafo">Questo è un paragrafo</p>
<input type="text" id="nome" value="Inserisci il nome">

<script>
  let titolo = document.querySelector("#titolo").innerHTML;
  let paragrafo = document.querySelector("#paragrafo").innerHTML;
  let valoreInput = document.querySelector("#nome").value;

  let codiceHtmlTitolo = document.querySelector("#titolo").outerHTML;
  let codiceHtmlParagrafo = document.querySelector("#paragrafo").outerHTML;
  let codiceHtmlInput = document.querySelector("#nome").outerHTML;

  console.info(titolo);
  console.info(paragrafo);
  console.info(valoreInput);

  console.info(codiceHtmlTitolo);
  console.info(codiceHtmlParagrafo);
  console.info(codiceHtmlInput);
</script>
```

L'output prodotto è il seguente:

```output
Titolo
Questo è un paragrafo
Inserisci il nome

<h1 id="titolo">Titolo</h1>
<p id="paragrafo">Questo è un paragrafo</p>
<input type="text" id="nome" value="Inserisci il nome">
```

Come si può notare, l'accesso al campo di input è stato fatto attraverso la proprietà ``value``, dato che la proprietà ``innerHTML`` su un elemento input non è definita.
