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
summary: "Il linguaggio CSS, introduzione e proprietà principali"
---

# Il linguaggio CSS

Il linguaggio CSS (Cascading Style Sheets) è nato nel 1994 con lo scopo di descrivere lo stile da applicare alla pagina web attraverso dei fogli di stile che fossero separati rispetto al documento HTML. I fogli di stile indicano come gli elementi di un documento HTML devono essere disposti e visualizzati sullo schermo di un dispositivo o su un foglio di carta da stampare.

Il linguaggio CSS non è un linguaggio di programmazione, ma un linguaggio che definisce le proprietà di ogni elemento del documento HTML, come il colore di un titolo o la dimensione di un paragrafo o la trasparenza di un'immagine.

Prima dell'avvento del linguaggio CSS, un sito web veniva realizzato come un'insieme di documenti HTML che ripetevano in ogni documento gli stili grafici degli elementi presenti nel documento stesso. Modificare lo stile grafico di un elemento comune richiedeva la modifica di ogni documento HTML.

Con l'avvento del linguaggio CSS, un sito web viene realizzato come un'insieme di documenti HTML che condividono gli stessi fogli di stile CSS. Una singola modifica ai fogli di stile si ripercuote su tutte le pagine del sito web.

Nel tempo questo linguaggio è diventando uno dei principali linguaggi del World Wide Web ed è stato standardizzato dal W3C. Attualmente sono state pubblicate tre versioni (CSS1, CSS2 e CSS3) che hanno aggiunto sempre più funzionalità, permettendo la personalizzazione di più di 3000 proprietà di un documento web.

## Commenti

I **commenti** sono delle note, delle spiegazioni che il programmatore inserisce per descrivere e documentare parti di codice e che chiariscono le intenzioni del programmatore. I commenti sono completamente ignorati nella fase in cui i fogli di stile sono applicati alla pagina web.

I commenti si scrivono tra le sequenze di caratteri ``/*`` e ``*/``. È importante porre attenzione a non inserire spazi tra le sequenze di caratteri indicati. Un commento può occupare più righe.

Di seguito, un esempio di commento multilinea:

```html
/* commento relativo i
     contenuti dei
     fogli di stile CSS */
```

## Proprietà grafiche

Una proprietà grafica è una coppia nome-valore. Le proprietà sono numerosissime, ognuna ha il suo nome ed un valore che può essere numerico oppure scelto da una lista di elementi.

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

### Unità di misura CSS

Possiamo esprimere i valori numerici in differenti unità di misura. Le principali sono:

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

### Valori per i colori

I colori in CSS possono essere espressi utilizzando il nome inglese. Una lista completa di colori la si trova sulla pagina web di [Wikipedia - List of colors](https://en.wikipedia.org/wiki/List_of_colors_(alphabetical)) o sulle specifiche del W3C. Tra i nomi più noti troviamo: ``red``, ``green``, ``blue``, ``yellow``, ``aqua``, ``beige``, ``black``, ``brown``, ``coral``, ``cyan``, ``darkblue``, ``darkred``, ``gold``, ``gray``, ``lightblue``, ``lightgreen``, ``magenta``, ``maroon``, ``navy``, ``olive``, ``orange``, ``pink``, ``purple``, ``silver``, ``teal``, ``white`` e moltissimi altri.

E' possibile esprimere i colori anche attraverso il modello RGB, indicando un valore esadecimale compreso tra ``00`` (valore zero in esadecimale) e ``FF`` (valore 255 in esadecimale) per le tre componenti R (rosso), G (verde) e B (blu) che compongono il colore.

La regola CSS vuole che un colore espresso nel formato RGB sia anticipato dal carattere ``#`` e che ogni valore esadecimale sia espresso da due cifre, seguendo lo schema ``#RRGGBB``, dove ``RR`` sono le due cifre del valore esadecimale per la componente rossa, ``GG`` sono le due cifre del valore esadecimale per la componente verde e ``BB`` sono le due cifre del valore esadecimale per la componente blu. Ecco alcuni esempi di codici esadecimali di colori:

- ``#FF0000`` rappresenta il colore rosso
- ``#00FF00`` rappresenta il colore verde
- ``#0000FF`` rappresenta il colore blu
- ``#FFFFFF`` rappresenta il colore bianco
- ``#000000`` rappresenta il colore nero

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

## Proprietà di formattazione testo

Le proprietà di formattazione testo permettono di applicare al testo le formattazioni "grassetto", "corsivo", "sottolineato", permettono di indicare il colore del testo, il colore di sfondo e tutte le altre proprietà applicabili. Di seguito si elencano le principali:

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

Per indicare la dimensione del testo si utilizza la proprietà ``font-size`` indicando un valore numerico maggiore di zero ed un'unità di misura tra quelle descritte in precedenza, come nel seguente esempio:

```css
p {
  font-size: 14px;
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

E' possibile indicare le trasformazioni del testo attraversola proprietà ``text-transform`` che può assumere uno dei seguenti valori:

- ``uppercase`` tutto in maiuscolo;
- ``lowercase`` tutto in minuscolo;
- ``capitalize`` la prima lettera di ogni parola in maiuscolo;
- ``none`` nessuna trasformazione;

Ad esempio, per trasformare in maiuscolo un paragrafo si utilizza il seguente codice:

```css
p {
  text-transform: uppercase;
}
```

Per indicare l'altezza di una linea di testo si utilizza la proprietà ``line-height`` indicando un valore numerico maggiore di zero ed un'unità di misura tra quelle descritte in precedenza, come nel seguente esempio:

```css
p {
  line-height: 16px;
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

Il colore del testo in CSS è controllato dalla proprietà ``color``, il colore di sfondo del testo dalla proprietà ``background-color``. Entrambe possono accettare tutti i formati di colore descritti in precedenza, dai nomi dei colori ai formati RGB o HSL.

Ecco un esempio di come cambiare il colore del testo in rosso ed il colore di sfondo del testo in nero per tutti i paragrafi:

```css
p {
  color: #FF0000; /* rosso */
  background-color: black;
}
```

Le decorazioni del testo possono assumere un colore, indicato attraverso la proprietà ``text-decoration-color``. Il colore è espresso in uno dei formati di colore descritti in precedenza.

Ad esempio, per scrivere i paragrafi con testo sottolineato con linea ondulata rossa:

```css
p {
  text-decoration-line: underline line-through;
  text-decoration-style: wavy;
  text-decoration-color: red;
}
```

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

## Proprietà di delimitazione elementi

Le proprieta CSS di delimitazione degli elementi permettono di definire lo spazio interno e lo spazio esterno di un elemento e lo spazio di confine tra gli elementi.

Lo spazio interno, detto anche riempimento interno (dall'inglese "padding") è lo spazio che si applica intorno ad un elemento, internamente al bordo, ovvero interno al confine tra l'elemento e gli altri elementi. È definito da quattro proprietà:

Lo spazio interno superiore di un elemento è controllato dalla proprietà ``padding-top`` che indica la dimensione in una delle unità di misura CSS sopra definite, come nel seguente esempio:

```css
p {
  padding-top: 1%;
}
```

Lo spazio interno a destra di un elemento è controllato dalla proprietà ``padding-right`` che indica la dimensione in una delle unità di misura CSS sopra definite, come nel seguente esempio:

```css
p {
  padding-right: 1rem;
}
```

Lo spazio interno inferiore di un elemento è controllato dalla proprietà ``padding-bottom`` che indica la dimensione in una delle unità di misura CSS sopra definite, come nel seguente esempio:

```css
p {
  padding-bottom: 2vh;
}
```

Lo spazio interno a sinistra di un elemento è controllato dalla proprietà ``padding-left`` che indica la dimensione in una delle unità di misura CSS sopra definite, come nel seguente esempio:

```css
p {
  padding-left: 3em;
}
```

Complessivamente è possibile indicare la spaziatura interna con la proprietà ``padding`` ed indicare le dimensioni. Si deve indicare **rigorosamente** in ordine la dimensione dello spazio superiore, poi la dimensione dello spazio a destra, poi la dimensione dello spazio inferiore ed infine la dimensione dello spazio a sinistra. Un esempio è il seguente:

```css
p {
  /* Spazio interno superiore, a destra, 
     inferiore ed a sinistra. */
  padding: 3em 1% 4px 4px;
}
```

Lo spazio esterno, detto anche riempimento esterno (dall'inglese "margin") è lo spazio che si applica intorno ad un elemento, esternamente al bordo, ovvero esterno al confine tra l'elemento e gli altri elementi. È definito da quattro proprietà:

Lo spazio esterno superiore di un elemento è controllato dalla proprietà ``margin-top`` che indica la dimensione in una delle unità di misura CSS sopra definite, come nel seguente esempio:

```css
p {
  margin-top: 1%;
}
```

Lo spazio esterno a destra di un elemento è controllato dalla proprietà ``margin-right`` che indica la dimensione in una delle unità di misura CSS sopra definite, come nel seguente esempio:

```css
p {
  margin-right: 1rem;
}
```

Lo spazio esterno inferiore di un elemento è controllato dalla proprietà ``margin-bottom`` che indica la dimensione in una delle unità di misura CSS sopra definite, come nel seguente esempio:

```css
p {
  margin-bottom: 2vh;
}
```

Lo spazio esterno a sinistra di un elemento è controllato dalla proprietà ``margin-left`` che indica la dimensione in una delle unità di misura CSS sopra definite, come nel seguente esempio:

```css
p {
  margin-left: 3em;
}
```

Complessivamente è possibile indicare la spaziatura esterna con la proprietà ``margin`` ed indicare le dimensioni. Si deve indicare **rigorosamente** in ordine la dimensione dello spazio superiore, poi la dimensione dello spazio a destra, poi la dimensione dello spazio inferiore ed infine la dimensione dello spazio a sinistra. Un esempio è il seguente:

```css
p {
  /* Spazio interno superiore, a destra, 
     inferiore ed a sinistra. */
  margin: 3em 1% 4px 4px;
}
```

Il bordo di un elemento è caratterizzato dallo spessore della linea, dallo stile e dal colore della linea.

È possibile indicare lo spessore della linea del bordo attraverso le quattro proprietà:

- ``border-top-width``: spessore del bordo superiore;
- ``border-right-width``: spessore del bordo destro;
- ``border-bottom-width``: spessore del bordo inferiore;
- ``border-left-width``: spessore del bordo sinistro;

Un esempio che indichi i valori della dimensione del bordo in una delle unità di misura CSS sopra definite è il seguente:

```css
border-top-width: 12px;
border-right-width: 3%;
border-bottom-width: 4rem;
border-left-width: 2em;
```

In alternativa allo spessore, è possibile indica lo spessore con uno dei seguenti valori:

- ``thin``: spessore della linea sottile;
- ``medium``: spessore medio della linea;
- ``thick``: spessore della linea consistente;

Complessivamente è possibile indicare lo spessore del bordo con la proprietà ``border-width`` seguito dallo spessore. Si deve indicare **rigorosamente** in ordine lo spessore superiore, poi lo spessore a destra, poi lo spessore inferiore ed infine lo spessore a sinistra. Un esempio è il seguente:

```css
p {
  /* Spessore bordo superiore, destro, 
     inferiore e sinistro. */
  border-width: thin 1% thick 4px;
}
```

È possibile indicare lo stile della linea del bordo attraverso le quattro proprietà:

- ``border-top-style``: style del bordo superiore;
- ``border-right-style``: style del bordo destro;
- ``border-bottom-style``: style del bordo inferiore;
- ``border-left-style``: style del bordo sinistro;

Il valore assegnabile è uno dei seguenti:

- ``dotted``: Definisce uno stile punteggiato;
- ``dashed``: Definisce uno stile tratteggiato;
- ``solid``: Definisce uno stile lineare;
- ``double``: Definisce uno stile a doppia linea;
- ``groove``: Definisce uno stile 3D scanalato;
- ``ridge``: Definisce uno stile 3D increspato;
- ``inset``: Definisce uno stile 3D incastonato;
- ``outset``: Definisce uno stile 3D in rilievo;
- ``none``: Stile non applicato;
- ``hidden``: Definisce uno stile non visibile;

Un esempio che indichi i valori dello stile della linea del bordo è il seguente:

```css
border-top-style: dotted;
border-right-style: dashed;
border-bottom-style: solid;
border-left-style: double;
```

Complessivamente è possibile indicare lo stile della linea del bordo con la proprietà ``border-style`` seguito dagli stili. Si deve indicare **rigorosamente** in ordine lo stile della linea del bordo superiore, poi lo stile della linea del bordo a destra, poi lo stile della linea del bordo inferiore ed infine lo stile della linea del bordo a sinistra. Un esempio è il seguente:

```css
p {
  /* stile della linea bordo superiore, 
     destro, inferiore e sinistro. */
  border-style: red blue #00FF00 #FFFFFF;
}
```

È possibile indicare il colore della linea del bordo attraverso le quattro proprietà:

- ``border-top-color``: colore del bordo superiore;
- ``border-right-color``: colore del bordo destro;
- ``border-bottom-color``: colore del bordo inferiore;
- ``border-left-color``: colore del bordo sinistro;

Un esempio che indichi i valori del colore del bordo è il seguente:

```css
border-top-color: red;
border-right-color: #00FF00;
border-bottom-color: blue;
border-left-color: #00FFFF;
```

Complessivamente è possibile indicare il colore del bordo con la proprietà ``border-color`` seguito dai colori. Si deve indicare **rigorosamente** in ordine il colore del bordo superiore, poi il colore del bordo a destra, poi il colore del bordo inferiore ed infine il colore del bordo a sinistra. Un esempio è il seguente:

```css
p {
  /* Colore bordo superiore, destro, 
     inferiore e sinistro. */
  border-color: red blue #00FF00 #FFFFFF;
}
```

È possibile specificare inoltre tutte le proprietà dei bordi attraverso un'unica proprietà ``border`` che specifica i valori di spessore della linea (proprietà ``border-width``), stile della linea (proprietà ``border-style``)e colore della linea del bordo (proprietà ``border-color``), rigorosamente nell'ordine appena indicato.  Un esempio è il seguente:

```css
p {
  /* Spessore linea, stile linea e 
     colore linea del bordo. */
  border: 5px dotted #FF00FF;
}
```

La proprietà ``outline`` indica un margine stilizzato, ma la dimensione da indicare è ingannevole, perché non crea distanza tra il bordo del componente ed i componenti circostanti. Se si vuole creare la distanza, la proprietà  ``outline`` deve essere associata alla proprietà ``margin``, che indica la distanza.

```css
p {
  border: 15px solid #FF00FF;
  margin: 15px;
  outline: 15px solid yellow;
}
```

Tutte queste proprietà creano un modello "scatola" dei componenti, in cui lo spazio interno, il bordo e lo spazio esterno sono indicate dalle proprietà appena viste. Un esempio di questo modello è il seguente:

```css
h1, p {
  /* Spazio interno e colore 
     dello spazio interno. */
  padding: 15px;
  background:  cyan;

  border: 15px solid #FF00FF;
  
  /* Margine e stile margine (outline) */
  margin: 15px;
  outline: 15px dashed yellow;
}
```

Il codice appena presentato genera un margine tratteggiato di colore giallo, un bordo di colore rosa e uno spazio interno di colore azzurro, come visibile nella seguente figura:

![Modello "box"](/static/coding/web/css/intro-modelloBoxCss.png "Modello box")

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

Per iniziare a sperimentare, si può utilizzare un menu a tendina dal quale scegliere lo stile, inserendo in pagina il codice seguente:

```html
<script src="https://dohliam.github.io/dropin-minimal-css/switcher.js" type="text/javascript"></script>
```
