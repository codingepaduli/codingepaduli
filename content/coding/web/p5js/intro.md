---
type: "p5js"
title: "01 - Introduzione alla libreria grafica p5.js"
description: "Introduzione alla libreria grafica p5.js"
date: 2020-09-10
publishdate: 2020-09-10
lastmod: 2020-09-10
spellcheck: 2021-01-14
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Introduzione alla libreria grafica p5.js"
disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
externalJS: ["https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.1.9/p5.js"]
customJS: ["/static/coding/web/p5js/Example02.js"]

references:
    -   title: "Computer Graphics from scratch"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://gabrielgambetta.com/computer-graphics-from-scratch/introduction.html"
        description: "Computer Graphics from scratch (for 3D rendering)"
---

# Introduzione alla libreria grafica p5.js

[p5.js](https://p5js.org "Sito web di p5.js") è una libreria grafica open-source, focalizzata al coding in JavaScript in un contesto creativo e multimediale. Questa libreria è, di fatto, anche un "porting" della piattaforma [Processing](https://processing.org/ "Sito web di processing") in ambiente web, per cui, sia Processing, sia questa libreria, sono supportati dalla [Processing Foundation](https://processingfoundation.org "Sito web della Processing Foundation"), una comunità interessata alla creazione artistica di contenuti mediante tecnologie web.

Numerose librerie estendono p5.js, aggiungendo strumenti per la gestione audio, per la gestione grafica in 2, 3 ed anche più dimensioni, per la comunicazione con diversi dispositivi, quali Arduino, per la gestione della geo-localizzazione, delle mappe, della webcam ed anche per l'applicazione di algoritmi di intelligenza artificiale.

## API e documentazione

Per poter utilizzare correttamente la libreria p5.js, è necessario conoscere l'interfaccia esposta dalla libreria stessa.

Il termine **interfaccia**, nelle discipline tecniche, indica l'area (la "faccia") esposta da un sistema, al fine di potervi interagire. Un esempio sono le interfacce grafiche di Microsoft Windows, che permettono di interagire con i calcolatori, oppure le interfacce vocali di iPhone ed Android, con "Siri" ed il famoso "OK Google", che permettono di interagire con gli smartphone.

Nello sviluppo di applicazioni, le interfacce esposte da librerie ed ambienti di sviluppo, e quindi anche dalla libreria p5.js, prendono il nome di **Application Programming Interface** (API).

Le API espongono strutture, funzioni, costanti, e tutti gli altri elementi della libreria, che il programmatore può usare per realizzare la propria applicazione. Le API sono **sempre** accompagnate dalla documentazione, che descrive cosa rappresenta una determinata costante oppure come utilizzare una determinata funzione. La documentazione delle API della libreria p5.js si può consultare sul sito web della libreria stessa, all'indirizzo [https://p5js.org/reference/](https://p5js.org/reference/ "Documentazione di p5.js")

## Editor online per p5.js

Il punto di partenza, per iniziare velocemente ad esplorare le potenzialità della libreria p5.js, è sicuramente l'editor presente sul sito web [https://editor.p5js.org](https://editor.p5js.org "Editor online di p5.js"), che si presenta con la seguente interfaccia grafica:

![p5.js - Editor online](/static/coding/web/p5js/OnlineEditor.png "p5.js - Editor online")

L'interfaccia grafica presenta i menù tipici dei classici ambienti di sviluppo, quali la barra dei pulsanti, per avviare e fermare il proprio lavoro, l'area del codice, per la scrittura del codice JavaScript, e l'area di visualizzazione, per visualizzare il lavoro realizzato.

L'area del codice presenta già un esempio minimale di programma, valido come punto di partenza e descritto nel seguito di questo articolo.

## Prima pagina web con p5.js

L'editor online è di grande utilità per iniziare, tuttavia si può voler includere il lavoro realizzato in una pagina web. Per far ciò, è necessario conoscere la struttura HTML nella quale includerlo.

Dando per assunti i fondamentali sul linguaggio HTML, di seguito si riporta la struttura HTML che include l'esempio minimale del programma visualizzato nell'editor online:

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

Come si può notare, la libreria p5.js viene inclusa attraverso un collegamento esterno definito nel tag ``script``, presente nell'intestazione della pagina web.

```html
<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.1.9/p5.js"></script>
```

Il codice JavaScript, descritto nel seguito di questo articolo, è invece contenuto nel corpo della pagina web (nel tag ``body``) ed è incluso in un secondo tag ``script`` (dato che si tratta di codice JavaScript).

## Primo programma

Sia che si utilizzi la pagina web, sia che si utilizzi l'editor online, i programmi in p5.js devono sempre dichiarare le due funzioni principali ``setup`` e ``draw``.

La funzione ``setup`` viene eseguita una sola volta e serve ad impostare gli strumenti e le condizioni iniziali.

La funzione ``draw`` viene richiamata ciclicamente, quindi ridisegna continuamente l'area di lavoro.

Come già precedentemente descritto, la documentazione delle funzioni appena indicate e delle successive funzioni presentate, la si può consultare sul sito web della libreria stessa, all'indirizzo [https://p5js.org/reference/](https://p5js.org/reference/ "Documentazione di p5.js").

Di seguito un primo programma d'esempio:

```javascript
function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(220);
  circle(100, 150, 50);
}
```

In questo esempio, la funzione ``createCanvas`` crea all'interno della pagina web un'area da disegno delle dimensioni indicate. Dato che l'area da disegno deve essere creata una volta sola, è inserita nella funzione ``setup``.

Sempre nell'esempio riportato sopra, sono invocate le funzioni ``background``, che serve ad impostare lo sfondo, e ``circle``, che crea un cerchio con centro alle coordinate ``x=100`` ed ``y=150`` e con raggio ``r=50``.

Il risultato è il seguente:

![p5.js - Primo esempio](/static/coding/web/p5js/Example01.png "p5.js - Primo esempio")

## Prima animazione

Supponendo di voler far "muovere" il cerchio verso destra nell'area di lavoro, si necessita di una variabile che permetta, in primis, di indicare la posizione iniziale del cerchio nell'area di lavoro, e poi, che permetta di modificarla, incrementandola di volta in volta.

La dichiarazione della variabile può avvenire prima delle due funzioni ``setup`` e ``draw``, mediante la classica dichiarazione:

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

E' interessante notare che se l'istruzione di incremento ``x = x + 1`` la si pone nella funzione ``setup`` invece che nella funzione ``draw``, questo incremento viene eseguito una sola volta, quindi il cerchio resta immobile.

Altra cosa interessante da notare, è che se si cancella l'istruzione per disegnare lo sfondo (``background``), allora la vecchia posizione del cerchio non sarà "pulita", quindi lo spostamento del cerchio lascerà una "scia" dovuta alle precedenti posizioni, come nella seguente immagine;

![p5.js - Esempio dell'animazione senza il disegno dello sfondo](/static/coding/web/p5js/Example02.png "p5.js - Esempio dell'animazione senza il disegno dello sfondo")

In ambiente web è visualizzabile quest'ultimo esempio di animazione.

<div id="example02"></div>
