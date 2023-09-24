---
type: "css"
title: "CSS "
description: "Il linguaggio CSS"
date: 2023-09-19
publishdate: 2023-09-19
lastmod: 2023-09-19
categories: ["coding", "web", "CSS"]
keywords: ["coding", "web", "CSS"]
draft: false
toc: false
summary: "Il linguaggio CSS, l'evoluzione e le caratteristiche"
---

# Il linguaggio CSS

Il linguaggio CSS (Cascading Style Sheets) è nato nel 1994 con lo scopo di descrivere lo stile da applicare alla pagina web attraverso dei fogli di stile che fossero separati rispetto al documento HTML. I fogli di stile indicano come gli elementi di un documento HTML devono essere disposti e visualizzati sullo schermo di un dispositivo o su un foglio di carta da stampare.

Il linguaggio CSS non è un linguaggio di programmazione, ma un linguaggio che definisce le proprietà di ogni elemento del documento HTML, come il colore di un titolo o la dimensione di un paragrafo o la trasparenza di un'immagine.

Prima dell'avvento del linguaggio CSS, un sito web veniva realizzato come un'insieme di documenti HTML che ripetevano in ogni documento gli stili grafici degli elementi presenti nel documento stesso. Modificare lo stile grafico di un elemento comune richiedeva la modifica di ogni documento HTML.

Con l'avvento del linguaggio CSS, un sito web viene realizzato come un'insieme di documenti HTML che condividono gli stessi fogli di stile CSS. Una singola modifica ai fogli di stile si ripercuote su tutte le pagine del sito web.

Nel tempo questo linguaggio è diventando uno dei principali linguaggi del World Wide Web ed è stato standardizzato dal W3C. Attualmente sono state pubblicate tre versioni (CSS1, CSS2 e CSS3) che hanno aggiunto sempre più funzionalità, permettendo la personalizzazione di più di 3000 proprietà di un documento web.

## Unità di misura CSS

Le proprieta grafiche possono assumere un valore espresso in differenti unità di misura. Le principali sono:

- **px**: Indica una dimensione espressa in numero di **pixels** sullo schermo;
- **%**: Indica una dimensione espressa in **percentuale** rispetto all'elemento padre;
- **vw**: Indica la larghezza espressa come **percentuale della larghezza della ``viewport``**, ovvero dell'area del browser visibile all'utente. Ad esempio, ``1vw`` rappresenta una larghezza pari a ``1%`` rispetto alla larghezza dell'area del browser visibile all'utente;
- **vh**: Indica l'altezza espressa come **percentuale dell'altezza della ``viewport``**, ovvero dell'area del browser visibile all'utente. Ad esempio, ``1vh`` rappresenta un'altezza pari a ``1%`` rispetto all'altezza dell'area del browser visibile all'utente;
- **em**: Indica la dimensione del testo rispetto all'elemento padre.
- **rem** Indica la dimensione del testo rispetto all'elemento radice, tipicamente l'etichetta ``html``;
- **deg**: Indica la dimensione di un angolo espressa in gradi sessagesimali;
- **rad**: Indica la dimensione di un angolo espressa in radianti;
- **deg**: Indica la dimensione di un angolo espressa in gradi sessagesimali;
<!-- vmin, vmax viewport's smaller dimension and larger dimension -->

## Proprietà grafiche

Una proprietà grafica è una coppia nome-valore. Le proprietà sono numerosissime, ognuna ha il suo nome ed un valore che può essere numerico (intero, decimale o in percentuale) oppure scelto da una lista di elementi.

La sintassi di una proprietà è molto semplice: il nome ed il valore sono separati da un "due punti" ``:`` e la regola termina con un punto e virgola ``;``, come di seguito indicato:

```css
nome: valore;
```

Ad esempio, lo sfondo di un elemento è identificato dalla proprietà che ha nome ``background`` e che può assumere come valore un elemento scelto dalla lista dei colori: ``red``, ``yellow``, ``green``, ``blue``, per citarne alcuni. Allo stesso modo, il colore di un elemento è identificato dalla proprietà che ha nome ``color`` e che può assumere come valore un elemento della lista colori appena indicata.

L'allineamento del testo è identificato dalla proprietà che ha nome ``text-align`` e che può assumere come valore un elemento della lista di allineamenti: ``center`` per l'allineamento centrato, ``justify`` per l'allineamento giustificato, ``left`` per l'allineamento a sinistra e ``right`` per quello a destra.

Le proprietà sopra indicate possono quindi essere valorizzate come nell'esempio seguente, in cui si applica un testo allineato al centro, di colore rosso sopra uno sfondo blu:

```css
background: blue;
color: red;
text-align: center;
```

## Selettori CSS

I **selettori CSS** identificano l'elemento o gli elementi di un documento HTML a cui applicare una lista di proprietà grafiche.

La sintassi prevede che il selettore sia seguito dalla lista di proprietà racchiusa tra parentesi graffe ``{`` e ``}``, come di seguito indicato:

```css
selettoreCSS1 {
  nomeProprietà1: valore;
  nomeProprietà2: valore;
  nomeProprietà3: valore;
  ...
}
```

Il caso più semplice dei selettori CSS sono i nomi delle etichette del linguaggio HTML. Ad esempio il selettore ``p`` identifica tutti i paragrafi. Il selettore ``a`` identifica tutti i collegamenti. Il selettore ``h1`` identifica tutti i titoli.

Per applicare il colore rosso allo sfondo del titolo di primo livello si usa l'omonimo selettore CSS ``h1``, al quale si associa la lista di proprietà grafiche, come nell'esempio seguente:

```css
h1 {
  background: red;
}
```

Per applicare il colore blu e l'allineamento centrato ad ogni paragrafo si usa l'omonimo selettore CSS ``p`` al quale si associa la lista di proprietà grafiche, come nell'esempio seguente:

```css
p {
  color: blue;
  text-align: center;
}
```

## Fogli di stile

Un foglio di stile è composto dall'insieme di selettori CSS con corrispondenti liste di proprietà grafiche da applicare. Un esempio è il seguente:

```css
/* Stile per i titoli. */
h1 {
  background: red
}
/* Stile per i paragrafi. */
p {
  color: blue;
  text-align: center;
}
/* Stile per i collegamenti. */
a {
  background-color: yellow;
  color: green;
}
```

Si può legare lo stile grafico da applicare ad un documento HTML attraverso tre modalità:

1. inserendo lo stile nel documento HTML;
2. inserendo nel documento HTML un collegamento relativo al foglio di stile;
3. inserendo nel documento HTML un collegamento assoluto al foglio di stile;

Il primo metodo consiste nell'indicare lo stile CSS nell'etichetta ``style`` che tipicamente è inserita a sua volta nell'etichetta ``head``, come nel seguente esempio:

```html
<!DOCTYPE html>
<html>
  <head>
    <style>
      /* stile CSS */
      body {
        background-color: lightblue;
      }
      h1 {
        color: red;
      }
    </style>
  </head>
  <body>
    <h1>Titolo</h1>
    <p>paragrafo</p>
    ...
  </body>
</html>
```

Questo metodo non è efficiente, dato che pagine web distinte che utilizzano lo stesso stile devono replicare lo stesso blocco di codice in ogni pagina.

Il secondo ed il terzo metodo consistono nell'indicare lo stile CSS nell'etichetta ``link``, sempre inserita a sua volta nell'etichetta ``head``, come nel seguente esempio:

```html
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://sitoweb.it/css/style.css">
  </head>
  <body>
    <h1>Titolo</h1>
    <p>paragrafo</p>
    ...
  </body>
</html>
```

Come si può notare, l'etichetta ``link`` ha due attributi:

- l'attributo ``rel`` ha valore ``stylesheet``, ad indicare che si tratta di un foglio di stile;
- l'attributo ``href`` indica l'indirizzo relativo o assoluto del foglio di stile; nell'esempio appena riportato, l'indirizzo relativo ``css/style.css`` è relativo al proprio sito web, mentre quello assoluto ``https://sitoweb.it/css/style.css`` non ha questo limite dato che viene indicato anche il nome del sito web;

## Proprietà per il testo

Per rendere il testo grassetto si utilizza la proprietà ``font-weight`` con valore ``bold``, come nel seguente esempio:

```css
p {
  font-weight: bold;
}
```

Per rendere il testo corsivo si utilizza la proprietà ``font-style`` con valore ``italic``, come nel seguente esempio:

```css
p {
  font-style: italic;
}
```

L'allineamento del testo è controllato dalla proprietà ``text-align`` che può assumere uno dei seguenti valori:

- ``left`` allineamento a sinistra;
- ``right`` allineamento a destra;
- ``center`` allineamento al centro;
- ``justify`` allineamento giustificato;

Ad esempio, per centrare un paragrafo si utilizza il seguente codice:

```css
p {
  text-align: center;
}
```

Si possono aggiungere decorazioni al testo utilizzando la proprietà ``text-decoration-line`` che può assumere una combinazione dei seguenti valori: ``line-through`` (testo barrato), ``underline`` (testo sottolineato), ``overline`` (testo sopra-lineato) o anche combinazioni delle precedenti, ad esempio ``underline line-through`` (testo sottolineato e barrato).

Ad esempio, per scrivere i paragrafi con testo sottolineato e barrato:

```css
p {
  text-decoration-line: underline line-through;
}
```

Le decorazioni al testo possono assumere lo stile indicato attraverso la proprietà ``text-decoration-style`` che può assumere uno dei seguenti valori: ``solid`` (linea intera), ``double`` (linea intera doppia), ``dotted`` (linea punteggiata), ``dashed`` (linea tratteggiata), ``wavy`` (linea ondulata).

Ad esempio, per scrivere i paragrafi con testo sottolineato con linea ondulata:

```css
p {
  text-decoration-line: underline line-through;
  text-decoration-style: wavy;
}
```

## Proprietà per i colori

Il colore del testo in CSS è controllato dalla proprietà ``color``, il colore di sfondo del testo dalla proprietà ``background-color``. Entrambe possono accettare vari formati di colore, tra cui i nomi (in inglese) dei colori o i valori in un formato riconosciuto, ad esempio RGB o HSL. Una lista completa di colori la si trova sulla pagina web di [Wikipedia - List of colors](https://en.wikipedia.org/wiki/List_of_colors_(alphabetical)) o sulle specifiche del W3C. Tra i nomi più noti troviamo: ``red``, ``green``, ``blue``, ``yellow``, ``aqua``, ``beige``, ``black``, ``brown``, ``coral``, ``cyan``, ``darkblue``, ``darkred``, ``gold``, ``gray``, ``lightblue``, ``lightgreen``, ``magenta``, ``maroon``, ``navy``, ``olive``, ``orange``, ``pink``, ``purple``, ``silver``, ``teal``, ``white`` e moltissimi altri.

Ecco un esempio di come cambiare il colore del testo in rosso ed il colore di sfondo del testo in nero per tutti i paragrafi:

```css
p {
  color: red;
  background-color: black;
}
```

Per utilizzare i codici esadecimali dei colori è necessario specificarli nel formato ``#RRGGBB``, dove RR (rosso), GG (verde) e BB (blu) sono numeri esadecimali che specificano le componenti del colore. Ecco alcuni esempi di codici esadecimali di colori:

- ``#FF0000`` rappresenta il colore rosso
- ``#00FF00`` rappresenta il colore verde
- ``#0000FF`` rappresenta il colore blu
- ``#FFFFFF`` rappresenta il colore bianco
- ``#000000`` rappresenta il colore nero

Ecco un esempio di come cambiare il colore del testo in rosso ed il colore di sfondo del testo in nero per tutti i paragrafi:

```css
p {
  background-color: #000000;
  color: #FF0000;
}
```

Anche le decorazioni del testo possono assumere un colore, indicato attraverso la proprietà ``text-decoration-color``. Il colore è espresso secondo le regole appena trattate.

Ad esempio, per scrivere i paragrafi con testo sottolineato con linea ondulata rossa:

```css
p {
  text-decoration-line: underline line-through;
  text-decoration-style: wavy;
  text-decoration-color: red;
}
```

## Proprietà per le immagini

Per inserire un'immagine di sfondo si utilizza la proprietà `background-image` che ha come valore l'URL dell'immagine. Ad esempio, per impostare l'immagine di sfondo ``sfondo.jpg`` dell'intera pagina web, la si applica all'elemento ``body``, come nel seguente esempio:

```css
body {
  background-image: url("sfondo.jpg");
}
```

Se l'immagine di sfondo è più piccola dell'elemento si può indicare che l'immagine venga ripetuta sia orizzontalmente che verticalmente, che si ripeta solo orizzontalmente o solo verticalmente oppure che non si ripeta affatto, impostando la proprietà ``background-repeat`` rispettivamente al valore ``repeat``, ``repeat-x``, ``repeat-y`` o ``no-repeat``.

Ad esempio, per non ripetere nè orizzontalmente nè verticalmente l'immagine si utilizza il seguente codice:

```css
body {
  background-image: url("images/sfondo.jpg");
  background-repeat: no-repeat;
}
```

## Fogli di stile già pronti

Esistono numerosi stili CSS già pronti per l'utilizzo, è necessario solamente indicarli nella pagina HTML. Si può scegliere ad esempio uno dei seguenti:

W3C Core - Modernist:

```html
<link rel="stylesheet" href="https://www.w3.org/StyleSheets/Core/Modernist" type="text/css">
```

W3C Core - Chocolate

```html
<link rel="stylesheet" href="https://www.w3.org/StyleSheets/Core/Chocolate" type="text/css">
```

MVP CSS

```html
<link rel="stylesheet" href="https://unpkg.com/mvp.css"> 
```

Per iniziare a sperimentare, può utilizzare un menu a tendina dal quale scegliere lo stile, inserendo in pagina il codice seguente:

```html
<script src="https://dohliam.github.io/dropin-minimal-css/switcher.js" type="text/javascript"></script>
```
