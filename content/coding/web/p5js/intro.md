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
    -   title: "p5js.org - Global and instance mode"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://github.com/processing/p5.js/wiki/Global-and-instance-mode"
        description: "In global mode you declaring everything in the global context, in instance mode you declaring everything as an object instance."
---

# Introduzione alla libreria grafica p5.js

[p5.js](https://p5js.org "Sito web di p5.js") è una libreria grafica open-source, focalizzata al coding in JavaScript in un contesto creativo e multimediale. Questa libreria è, di fatto, anche un "porting" della piattaforma [Processing](https://processing.org/ "Sito web di processing") in ambiente web, per cui, sia Processing, sia questa libreria, sono supportati dalla [Processing Foundation](https://processingfoundation.org "Sito web della Processing Foundation"), una comunità interessata alla creazione artistica di contenuti mediante tecnologie web.

Numerose librerie estendono p5.js, aggiungendo strumenti per la gestione audio, per la gestione grafica in 2, 3 ed anche più dimensioni, per la comunicazione con diversi dispositivi, quali Arduino, per la gestione della geo-localizzazione, delle mappe, della webcam ed anche per l'applicazione di algoritmi di intelligenza artificiale.

## API e documentazione

Per poter utilizzare correttamente la libreria p5.js, è necessario conoscere l'interfaccia esposta dalla libreria stessa.

Il termine **interfaccia**, nelle discipline tecniche, indica l'area (la "faccia") esposta da un sistema, al fine di potervi interagire. Un esempio sono le interfacce grafiche di Microsoft Windows, che permettono di interagire con i calcolatori, oppure le interfacce vocali di iPhone ed Android, con "Siri" ed il famoso "OK Google", che permettono di interagire con gli smartphone.

Nello sviluppo di applicazioni, le interfacce esposte da librerie ed ambienti di sviluppo, e quindi anche dalla libreria p5.js, prendono il nome di **Application Programming Interface** (API).

Le API espongono strutture, funzioni, costanti, e tutti gli altri elementi della libreria, che il programmatore può usare per realizzare la propria applicazione. Le API sono **sempre** accompagnate dalla documentazione, che descrive cosa rappresenta una determinata costante oppure come utilizzare una determinata funzione. La documentazione delle API della libreria p5.js si può consultare sul sito web della libreria stessa, all'indirizzo [https://p5js.org/reference/](https://p5js.org/reference/ "Documentazione di p5.js").

La documentazione è organizzata per aree di interesse, tra le varie categorie troviamo:

Area | Descrizione
--- | ---
Color           | Gestione colori di contorno, di riempimento, di sfondo
Constants       | Costanti disponibili
DOM             | Interazione con gli elementi della pagina web
Data            | Gestione dei dati
Environment     | Informazioni sull'ambiente di esecuzione
Events          | Gestione eventi della tastiera, del mouse e del touch-screen
Foundation      | Basi di JavaScript
IO              | Gestione Input / Output
Image           | Gestione immagini
Lights, Camera  | Gestione luci, camera, materiali, ombre
Math            | Funzioni matematiche
Rendering       | Informazioni sul processo di disegno (rendering)
Shape           | Funzioni per il disegno di forme 2D, 3D e curve
Structure       | Informazioni sul ciclo di esecuzione
Transform       | Trasformazioni matematiche nel piano (2D) e nello spazio (3D)
Typography      | Caratteri, stili e formattazione testo

Ogni categoria mostra le funzioni disponibili, con un link alla documentazione specifica. Ogni costante o funzione è documentata indicando:

- uno o più esempi d'uso;
- la descrizione;
- la sintassi d'uso;

Per le funzioni, la sintassi descrive la **firma della funzione**, che è composta dal nome e, tra parentesi tonde, dalla lista di parametri. La lista di parametri elenca prima quelli obbligatori e poi quelli facoltativi, indicati tra parentesi quadre. Ogni parametro è ulteriormente chiarito, indicando tipo, descrizione ed obbligatorietà.

### Documentazione della funzione ``circle``

La sintassi della funzione ``circle``, che serve a disegnare un cerchio nell'area da disegno, è la seguente:

```plaintext
Syntax: circle(x, y, d)

Parameters:
    x   Number: x-coordinate of the centre of the circle.
    y   Number: y-coordinate of the centre of the circle.
    d   Number: diameter of the circle.
```

Si deduce che la funzione ``circle`` non prevede parametri facoltativi, dato che nessun parametro è indicato tra parentesi quadre.

Dalla descrizione dei parametri si comprende che sono tutti numerici, con ``x`` ed ``y`` che indicano le coordinate del centro del cerchio e ``d`` che indica il diametro del cerchio.

### Documentazione della funzione ``square``

La sintassi della funzione ``square``, che serve a disegnare un quadrato nell'area da disegno, è la seguente:

```plaintext
Syntax: square(x, y, s, [tl], [tr], [br], [bl])

Parameters:
    x   Number: x-coordinate of the square.
    y   Number: y-coordinate of the square.
    s   Number: side size of the square.
    tl  Number: optional radius of top-left corner. (Optional)
    tr  Number: optional radius of top-right corner. (Optional)
    br  Number: optional radius of bottom-right corner. (Optional)
    bl  Number: optional radius of bottom-left corner. (Optional)
```

Si deduce che la funzione ``square`` prevede i parametri **obbligatori** ``x``, ``y`` ed ``s``. I parametri facoltativi, indicati tra parentesi quadre, sono ``tl``, ``tr``, ``br``, ``bl``.

La descrizione dei parametri obbligatori indica che ``x`` ed ``y`` sono le coordinate dell'angolo in alto a sinistra del quadrato ed ``s`` è la lunghezza del lato; I rimanenti parametri facoltativi rappresentano rispettivamente l'arrotondamento dell'angolo in alto a sinistra, in alto a destra, in basso a destra ed in basso a sinistra.

Dalla documentazione si apprende che la funzione può essere usata per disegnare un quadrato senza angoli arrotondati oppure indicare l'arrotondamento dei vari angoli, come nelle seguenti istruzioni:

```javascript
square(50, 50, 100);
square(160, 50, 100, 40, 5);
square(270, 50, 100, 40, 5, 20, 20);
```

Il risultato è riportato di seguito:

![p5.js - Editor online](/static/coding/web/p5js/api-doc-example.png "p5.js - Esempio risultante dalla documentazione delle API")

## Editor online per p5.js

Il punto di partenza, per iniziare velocemente ad esplorare le potenzialità della libreria p5.js, è sicuramente l'editor presente sul sito web [https://editor.p5js.org](https://editor.p5js.org "Editor online di p5.js"), che si presenta con la seguente interfaccia grafica:

![p5.js - Editor online](/static/coding/web/p5js/OnlineEditor.png "p5.js - Editor online")

L'interfaccia grafica presenta i menù tipici dei classici ambienti di sviluppo, quali la barra dei pulsanti, per avviare e fermare il proprio lavoro, l'area del codice, per la scrittura del codice JavaScript, l'area di visualizzazione, per visualizzare il lavoro realizzato e la console per visualizzare i messaggi di informazione, di avviso e di errore.

L'area del codice si presenta con un esempio minimale di programma, valido come punto di partenza e descritto successivamente.

## Prima pagina web con p5.js

L'editor online è di grande utilità per iniziare, tuttavia si può voler includere il lavoro realizzato in una pagina web. Per far ciò, è necessario conoscere la struttura HTML nella quale includerlo.

Dando per assunti i fondamentali sul linguaggio HTML, nella pagina web è possibile definire un riferimento alla libreria p5.js mediante l'etichetta ``script``, come nel seguente esempio:

```html
<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.1.9/p5.js"></script>
```

All'area da disegno è associato il seguente stile:

```css
html, body { margin: 0; padding: 0; }
canvas { display: block; }
```

Il programma realizzato, magari tramite l'editor online, deve essere incluso come script, come nel seguente esempio:

```html
<script>
    function setup() {
        createCanvas(400, 400);
    }

    function draw() {
        background(220);
        circle(100,150, 50);
    }
</script>
```

L'esempio completo della pagina web è il seguente:

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

## Primo programma

Sia che si utilizzi la pagina web, sia che si utilizzi l'editor online, i programmi in p5.js devono sempre dichiarare le due funzioni principali ``setup`` e ``draw``.

Le istruzioni contenute nella funzione ``setup`` sono eseguite una sola volta e servono ad impostare gli strumenti e le condizioni iniziali.

Le istruzioni contenute nella funzione ``draw`` sono eseguite ciclicamente e servono a ridisegnare continuamente l'area di lavoro.

Di seguito sono descritte le istruzioni eseguite dal primo programma d'esempio, che per comodità è riportato di seguito:

```javascript
function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(220);
  circle(100, 150, 50);
}
```

La funzione ``createCanvas`` crea all'interno della pagina web un'area da disegno delle dimensioni indicate. Dato che l'area da disegno deve essere creata una volta sola, questa istruzione è inserita nella funzione ``setup``.

Le funzione ``background`` serve ad impostare lo sfondo di colore grigio e la funzione ``circle`` serve a creare un cerchio. Dato che sono continuamente ridisegnate, sono state inserite nella funzione ``draw``.

Il risultato è il seguente:

![p5.js - Primo esempio](/static/coding/web/p5js/Example01.png "p5.js - Primo esempio")

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

Altra cosa interessante da notare, è che se si cancella l'istruzione per disegnare lo sfondo (``background``), allora la vecchia posizione del cerchio non sarà "pulita" e nell'area da disegno rimarrà una "scia" dovuta a tutte le precedenti posizioni occupate dal cerchio, come nella seguente immagine;

![p5.js - Esempio dell'animazione senza il disegno dello sfondo](/static/coding/web/p5js/Example02.png "p5.js - Esempio dell'animazione senza il disegno dello sfondo")

In ambiente web è visualizzabile quest'ultimo esempio di animazione.

<div id="example02"></div>
