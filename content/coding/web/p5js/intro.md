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

p5.js e' una libreria grafica opensource focalizzata al coding in Javascript in un contesto creativo e multimediale. Rappresenta, inoltre, una comunità interessata alla creazione artistica di contenuti mediante tecnologie web.

p5.js rappresenta anche un "porting" della piattaforma [Processing](https://processing.org/) in ambiente web, per cui sia Processing, sia questa libreria sono entrambi supportati dalla [Processing Foundation](https://processingfoundation.org).

Esistono numerose librerie che estendono p5.js, aggiungendo strumenti per la gestione audio, per la comunicazione con diversi dispositivi, quali Arduino, per strumenti di gestione grafica in 2D, 3D ed anche in più dimensioni, per la gestione della geolocalizzazione e delle mappe, per la gestione della webcam ed anche per la semplificazione nell'applicazione di algoritmi di intelligenza artificiale.

Il prerequisito necessario all'uso di questa libreria è, quindi, l'interesse alla programmazione in linguaggio javascript.

## Editor integrato per p5.js

Il punto di partenza è sicuramente l'uso dell'editor integrato al link [https://editor.p5js.org](https://editor.p5js.org), che permette di iniziare velocemente ad esplorare le potenzialità dell'ambiente.

All'utente è mostrata una schermata con i menù tipici dei classici ambienti di sviluppo, i pulstanti per avviare e fermare il proprio lavoro, ed infine l'area di lavoro, divisa in un'area di testo per la scrittura del codice e l'area di visualizzazione per visualizzare il lavoro creato.

![Image](/static/coding/web/p5js/OnlineEditor.png "p5js - Editor online")


L'area del codice presenta già un esempio minimale di programma, valido come punto di partenza e descritto nel seguito di questo articolo.

## Prima pagina web con p5.js

L'editor è di grande utilità, ma per poter pubblicare un lavoro su un sito, è necessario realizzare una pagina web che include la libreria ed il lavoro svolto.

Richiamando il corso su ``HTML``, si riporta un'esempio di codice HTML di una  pagina web che contiene la libreria suddetta:

```html
<!DOCTYPE html>
<html>
    <head>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.1.9/p5.js"></script>
        <meta charset="utf-8" />
        <style>
            html, body {
                margin: 0;
                padding: 0;
            }
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

Come si può notare, la libreria viene inclusa attraverso il tag ``script`` con collegamento esterno.

```html
<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.1.9/p5.js"></script>
```

Le funzioni di ``setup`` e ``draw`` sono contenute nel tag ``script``, dato che rappresentano codice ``javascript``.

## Primo programma

Sia che si utilizzi la pagina web, sia che si utilizzi l'editor online, nel primo programma dovremo dichiarare due funzioni principali, come nel seguente esempio.

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

![Image](/static/coding/web/p5js/Example01.png "p5js - Esempio 01")

## Prima animazione

Supponendo di voler far "muovere" il cerchio verso destra nell'area di lavoro, si necessita di una variabile che permetta in primis di indicare la posizione corrente del cerchio nell'area di lavoro, e poi che permetta di modificarla con un incremento unitario.

La dichiarazione della variabile può avvenire prima delle due funzioni, mediante il classico codice:

```javascript
let x = 100;
```

Per realizzare il movimento, è necessario incrementare di un'unità questa variabile, mediante il codice:

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



E' interessante notare che se l'istruzione di incremento ``x = x + 1``la si pone nella funzione ``setup`` invece che nella funzione ``draw``, questo incremento viene fatto una sola volta, quindi il cerchio resta immobile.



Altra cosa interessante da notare, è che se si cancella l'istruzione per disegnare lo sfondo (``background``), allora la vecchia posizione del cerchio non sarà "pulita", quindi lo spostamento del cerchio lascerà una "scia" dovuta alle precedenti posizioni, come nella seguente immagine;

![Image](/static/coding/web/p5js/Example02.png "p5js - Esempio 02")

Di seguito, l'esempio funzionante in ambiente web dell'animazione realizzata.

<div id="example02"</div>
