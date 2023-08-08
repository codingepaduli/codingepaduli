---
type: "p5js"
title: "p5.js Approfondimenti"
description: "Approfondimenti"
date: 2023-08-08
publishdate: 2023-08-08
lastmod: 2023-08-08
spellcheck: 2021-01-14
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: true
toc: false
summary: "Approfondimenti"
weight: 9045

references:
    -   title: "Computer Graphics from scratch"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://gabrielgambetta.com/computer-graphics-from-scratch/introduction.html"
        description: "Computer Graphics from scratch (for 3D rendering)"
    -   title: "p5js.org - Global and instance mode"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://github.com/processing/p5.js/wiki/Global-and-instance-mode"
        description: "In global mode you declaring everything in the global context, in instance mode you declaring everything as an object instance."
---

# Approfondimenti

## Posizionamento dell'area da disegno

L'area da disegno è generalmente posizionata alla fine della pagina web, è possibile però spostarla all'interno di un altro elemento HTML. Lo spostamento è effettuato invocando la funzione ``parent``, la quale prevede come argomento un identificativo (``id``) dell'elemento HTML in cui si vuole spostare l'area da disegno.

Supponiamo, ad esempio, di avere una pagina HTML contenente un paragrafo il cui identificativo è ``area``, come nel seguente esempio:

```html
<p id="area"></p>
<p>altro paragrafo</p>
```

Per spostare l'area da disegno all'interno del paragrafo, si utilizza la funzione ``parent`` con argomento ``area`` (identificativo del paragrafo), come nel seguente esempio:

```javascript
createCanvas(100, 100).parent('area');
```

## Modalità di esecuzione globale e di istanza

Gli esempi proposti dichiarano variabili e funzioni da disegno nel contesto globale della pagina web, quindi questa modalità di lavoro è detta **modalità globale**. Dato che il contesto globale è unico, si è vincolati all'esecuzione di un unico lavoro nella pagina web.

Una modalità più avanzata di lavoro è la **modalità di istanza**, in cui le variabili e le funzioni da disegno sono dichiarate in un contesto specifico dato da una sorta di oggetto, detto **closure**. Dato che possono essere create più istanze di questi oggetti, è possibile dichiarare più contesti di esecuzione, ognuno legato alla singola istanza, per cui nella pagina web possono essere eseguiti più lavori.

Essendo comunque un argomento avanzato, nei capitoli seguenti sarà sempre utilizzata la modalità globale. Solo per completezza, si riporta un esempio di lavoro realizzato utilizzando la modalità di istanza.

Elemento HTML che conterrà l'area da disegno:

```html
<p id="idElementoHTML"></p>
```

Dichiarazione delle variabili e delle funzioni da disegno in modalità di istanza:

```javascript
const lavoro = ( sketch ) => {

  let x = 100;
  let y = 100;

  sketch.setup = () => {
    sketch.createCanvas(200, 200);
  };

  sketch.draw = () => {
    sketch.background(0);
    sketch.fill(255);
    sketch.rect(x,y,50,50);
  };
};
```

Creazione ed esecuzione dell'area da disegno definita nell'istanza ``lavoro`` ed inclusione della stessa nell'elemento HTML ``sketch`` definito in precedenza:

```javascript
let myp5 = new p5(lavoro, 'idElementoHTML');
```

Si fa notare come entrambi le funzioni ``draw`` e ``setup`` siano definite all'interno dell'oggetto ``sketch``, attraverso la sintassi ``sketch.setup`` e ``sketch.draw``.

Si fa notare, inoltre, che entrambe le funzioni sono dichiarate come funzioni **lambda** al fine di non sovrascrivere il contesto dell'oggetto ``sketch``.

Come già detto, sono argomenti avanzati, per cui non saranno utilizzati nei prossimi capitoli.
