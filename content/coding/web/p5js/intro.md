---
type: "p5js"
title: "01 - Introduzione alla libreria grafica p5.js"
description: "Introduzione alla libreria grafica p5.js"
date: 2020-09-10
publishdate: 2020-09-10
lastmod: 2020-09-10
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Introduzione alla libreria grafica p5.js"
externalJS: ["https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.1.9/p5.js"]
customJS: ["/static/coding/web/p5js/Example02.js"]
---

# Introduzione alla libreria grafica p5.js

p5.js e' una libreria grafica opensource focalizzata al coding in JavaScript in un contesto creativo e multimediale. Questa libreria è di fatto anche un "porting" della piattaforma [Processing](https://processing.org/) in ambiente web, per cui, sia Processing, sia questa libreria, sono supportati dalla [Processing Foundation](https://processingfoundation.org), una comunità interessata alla creazione artistica di contenuti mediante tecnologie web.

Numerose librerie estendono p5.js, aggiungendo strumenti per la gestione audio, per la gestione grafica in 2D, 3D ed anche in più dimensioni, per la comunicazione con diversi dispositivi, quali Arduino, per la gestione della geolocalizzazione, delle mappe, della webcam ed anche per l'applicazione di algoritmi di intelligenza artificiale.

## Editor integrato per p5.js

Il punto di partenza è sicuramente l'uso dell'editor integrato al link [https://editor.p5js.org](https://editor.p5js.org), che permette di iniziare velocemente ad esplorare le potenzialità dell'ambiente.

![p5.js - Editor online](/static/coding/web/p5js/OnlineEditor.png "p5.js - Editor online")

La schermata mostrata all'utente presenta i menù tipici dei classici ambienti di sviluppo, la barra dei pulstanti per avviare e fermare il proprio lavoro e l'area di lavoro, divisa in un'area di testo per la scrittura del codice e l'area di visualizzazione per presentare il lavoro creato.

L'area del codice presenta già un esempio minimale di programma, valido come punto di partenza e descritto nel seguito di questo articolo.

## Prima pagina web con p5.js

L'editor online è di grande utilità per iniziare, ma è necessario comunque conoscere la struttura completa della pagina web che permette di presentare e pubblicare il lavoro.

Dando per assunti i fondamentali sul linguaggio ``HTML``, si riporta il codice di una pagina web che contiene un esempio minimale di programma:

```html
<!DOCTYPE html>
<html>
    <head>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.1.9/p5.js"></script>
        <meta charset="utf-8" />
        <style>
            html, body { margin: 0; padding: 0; }
            canvas { display: block; }
        </style>
    </head>
    <body>
        <script>
            function setup() {
                createCanvas(400, 400);
            }

            function draw() {
                background(220);
                circle(100,150, 50);
            }
        </script>
    </body>
</html>
```

Come si può notare, la libreria viene inclusa attraverso un collegamento esterno definito nel tag ``script``, presente nell'intestazione della pagina web.

```html
<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.1.9/p5.js"></script>
```

L'esempio minimale di programma, descritto nel seguito di questo articolo, è invece contenuto nel corpo della pagina web (nel tag ``body``) ed è incluso in un secondo tag ``script`` (dato che si tratta di codice JavaScript).

## Primo programma

Sia che si utilizzi la pagina web, sia che si utilizzi l'editor online, nel programma devono sempre essere dichiarate le due funzioni principali ``setup`` e ``draw``, come nel seguente esempio.

```javascript
function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(220);
  circle(100, 150, 50);
}
```

La funzione `setup` viene svolta una sola volta e serve ad impostare gli strumenti e le condizioni iniziali.

In questo particolare caso, la funzione `setup` contiene un richiamo alla funzione `createCanvas` che crea all'interno della pagina web un'area di lavoro delle dimensioni indicate.

La funzione `draw` viene richiamata ciclicamente e serve ad elaborare il lavoro realizzato.

Nell'esempio riportato sopra, questa funzione contiene un richiamo alla funzione `background`, che serve ad impostare lo sfondo, ed un secondo richiamo alla funzione `circle`, che crea un cerchio con centro alle cordinate `x=100` ed `y=150` e con raggio `r=50`.

Il risultato è il seguente:

![p5.js - Primo esempio](/static/coding/web/p5js/Example01.png "p5.js - Primo esempio")

## Prima animazione

Supponendo di voler far "muovere" il cerchio verso destra nell'area di lavoro, si necessita di una variabile che permetta in primis di indicare la posizione corrente del cerchio nell'area di lavoro, e poi che permetta di modificarla con un incremento unitario.

La dichiarazione della variabile può avvenire prima delle due funzioni, mediante la classica dichiarazione:

```javascript
let x = 100;
```

Per realizzare il movimento, è necessario incrementare di un'unità questa variabile, mediante l'istruzione:

```javascript
x = x+1;
```

L'esempio completo è di seguito riportato:

```javascript
let x = 100;

function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(220);
  circle(x, 150, 50);
  x = x + 1;
}
```

E' interessante notare che se l'istruzione di incremento ``x = x + 1`` la si pone nella funzione ``setup`` invece che nella funzione ``draw``, questo incremento viene fatto una sola volta, quindi il cerchio resta immobile.

Altra cosa interessante da notare, è che se si cancella l'istruzione per disegnare lo sfondo (``background``), allora la vecchia posizione del cerchio non sarà "pulita", quindi lo spostamento del cerchio lascerà una "scia" dovuta alle precedenti posizioni, come nella seguente immagine;

![p5.js - Esempio dell'animazione senza il disegno dello sfondo](/static/coding/web/p5js/Example02.png "p5.js - Esempio dell'animazione senza il disegno dello sfondo")

In ambiente web è visualizzabile quest'ultimo esempio dell'animazione.

<div id="example02"></div>
