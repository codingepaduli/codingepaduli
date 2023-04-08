---
type: "p5play"
title: "p5play Lez. 01 - Introduzione al motore di gioco p5play"
description: "Introduzione al motore di gioco p5play"
date: 2023-03-21
publishdate: 2023-03-21
lastmod: 2023-03-21
categories: ["coding", "web", "p5play"]
keywords: ["coding", "web", "p5play"]
draft: true
toc: false
summary: "Introduzione al motore di gioco p5play"
weight: 1040
---

# P5.play

P5.play è un motore di giochi 2D.

Usa la libreria **p5.js** per il rendering delle scene grafiche e **plank** come motore di fisica per tener traccia delle posizioni, delle velocità e delle forze applicate sugli oggetti e per rilevare le collisioni tra oggetti.

Questo progetto, supportato dalla Processing Foundation, introduce gli utenti alla programmazione di videogiochi ed al paradigma ad oggetti.

La struttura basilare del programma rimane quasi la stessa, con l'unica differenza di utilizzare un oggetto Canvas per creare l'area del disegno.

```javascript
function setup() {
    new Canvas(250, 100);
}

function draw() {
    background('blue');
}
```

L'inclusione di un progetto p5.play in una pagina web richiede l'inclusione nel header della pagina delle seguenti librerie:

```javascript
<!DOCTYPE html>
<html>
    <head>
        <title>p5play Example</title>
    </head>
    <body>

        <script src="p5.min.js"></script>
        <script src="p5.sound.min.js"></script>
        <script src="planck.min.js"></script>
        <script src="p5play.js"></script>
        <script>
            function setup() {
                new Canvas(250, 100);
                new Sprite();
            }

            function draw() {
                background('blue');
            }
        </script>
    </body>
</html>
```

## Oggetti principali

Nel mondo dei videogiochi si riferisce alla parola **Sprite** per indicare qualsiasi personaggio, cosa o oggetto si muove sopra lo sfondo.

Nei videogiochi come Mario Bros, Sonic, Arknoid i vari livelli sono composti dai mattoncini da rompere o su cui saltare. Questi mattoncini prendono il nome di **tiles**, dall'inglese "piastrelle", e possono essere creati a partire da una rappresentazione testuale (anche di più righe). Ogni carattere di questo testo sarà poi trasformato in una mattonella o monetina o elemento del videogioco.

La parola **world**, dall'inglese "mondo" rappresenta tutti gli oggetti sui quali il motore fisico calcola gli spostamenti, le collisioni e sui quali applica la forza di gravità per ogni frame da disegnare. Questo calcolo avviene anche per gli oggetti fuori dallo schermo, a patto che la loro posizione nel piano non superi un certo limite. Quando un qualsiasi oggetto supera questo limite, avviene l'operazione di **cull**, dall'inglese "abbattimento selettivo", con la quale si mette l'oggetto in uno stato di riposo e considerato "fuori" dal mondo escluso dai calcoli del motore fisico.

<!-- Todo Concetti di programmazione a oggetti ? -->

## Sprite

Nel mondo dei videogiochi la parola Sprite è usata per indicare qualsiasi personaggio, cosa o oggetto si muove sopra lo sfondo.

Per creare uno sprite e specificare le proprietà, si può far riferimento al seguente codice:

```javascript
sprite = new Sprite();

sprite.x = 150;
sprite.y = 30;
sprite.w = 60;              // width
sprite.h = 80;              // height
sprite.width = 60;          // alias di sprite.w
sprite.height = 80;         // alias di sprite.h
sprite.r = 40;              // radius
sprite.d = 40;              // diameter
sprite.radius = 60;         // alias di sprite.r
sprite.diameter = 60;       // alias di sprite.d

sprite.rotation = 45;       // rotazione rispetto all'asse X
sprite.rotationSpeed = 45;  // rotazione continua rispetto all'asse X

sprite.direction = 'up';    // direzione di movimento

sprite.color = 'pink';
sprite.fill = 'pink';       // alias di sprite.color
sprite.fillColor = 'pink';  // alias di sprite.color
sprite.stroke = 'red';
sprite.strokeColor = 'pink';// alias di sprite.stroke

sprite.textColor = 'blue';
sprite.textSize = 40;
sprite.text = "Hello!";

sprite.visible = false;

sprite.pos.x = 150;         // alias di sprite.x
sprite.pos.y = 80;          // alias di sprite.y
sprite.position.x = 150;    // alias di sprite.x
sprite.position.y = 80;     // alias di sprite.y

sprite.vel.x = 1;           // velocity (pixel / seconds)
sprite.vel.y = 2;
```

La proprietà ``sprite.direction`` specifica una direzione di movimento dello sprite. Il valore è una stringa (e quindi deve essere indicata tra apici singoli o doppi) che indica la direzione e può assumere solo uno dei seguenti valori:

- `up`: -90 gradi;
- `down`: 90 gradi;
- `left`: 180 gradi;
- `right`: 0 gradi;
- `upright`: -45 gradi;
- `rightup`: -45 gradi;
- `upleft`: -135 gradi;
- `leftup`: -135 gradi;
- `downright`: 45 gradi;
- `rightdown`: 45 gradi;
- `downleft`: 135 gradi;
- `leftdown`: 135 gradi;
- `forward`: this.rotation;
- `backward`: this.rotation + 180 gradi;

## Proprietà legate al motore di fisica

Un collisore (dall'inglese collider) è un'area invisibile intorno ad un oggetto che viene utilizzata per rilevare collisioni con altri oggetti, ovvero per capire quando un oggetto si incontra con un altro oggetto.

Uno Sprite si relaziona con gli altri Sprite a seconda del tipo di collisore specificato:

- ``none`` lo Sprite non subisce collisioni, viene completamente attraversato dagli altri Sprite;
- ``static`` lo Sprite subisce collisioni, ma non può essere spostato o ruotato ne attraverso istruzioni di programmazione, ne dalle collisioni con altri Sprite;
- ``kinematic`` lo Sprite subisce collisioni, può essere spostato solo attraverso istruzioni di programmazione, non viene spostato o ruotato dalle collisioni con altri Sprite;
- ``dynamic`` lo Sprite subisce collisioni, può essere spostato o ruotato attraverso istruzioni di programmazione e dalle collisioni con altri Sprite.

Una volta creato lo Sprite, può essere specificato il collisore attraverso la proprietà ``collider``, come nel seguente esempio:

```javascript
let circle = new Sprite(40, 155, 80);
circle.collider = 'dynamic';
```

Le proprietà fisiche di uno Sprite sono le seguenti:

Uno Sprite può avere una **velocità** di movimento lungo l'asse X e Y. Questa velocità può essere modificata dalla forza di gravità che il motore fisico applica.

Si può assegnare ad uno Sprite una certa velocità di movimento, misurata in pixel al secondo, come nel seguente esempio:

```javascript
let circle = new Sprite(40, 155, 80);
circle.vel.x = 2;
circle.vel.y = 2;
```

Uno Sprite può avere una **massa** che determina la sua resistenza ai movimenti e alle collisioni con altri oggetti. Maggiore è la massa, maggiore sarà l'effetto di una forza applicata.

Si può assegnare ad uno Sprite una certa massa, come nel seguente esempio:

```javascript
let circle = new Sprite(40, 155, 80);
circle.mass = 2;
```

Uno Sprite può avere una **frizione** che rappresenta il coefficiente di attrito. L'attrito di uno Sprite determina la velocità di scorrimento quando si muove su una superficie e si imposta attraverso la proprietà ``friction``.

Ci si può aspettare che questa frizione faccia effetto anche sugli sprite circolari, ma in realtà non è così. Per indicare una frizione di rotazione, bisogna imposta la proprietà ``rotationDrag``.

A seconda quindi dello Sprite, si può assegnare un certo coefficiente di attrito che interessa lo scorrimento o il rotolamento, come nel seguente esempio:

```javascript
let rectangle = new Sprite(40, 30, 50, 80);
rectangle.friction = 10;
let circle = new Sprite(40, 155, 80);
rectangle.rotationDrag = 8;
```

Uno Sprite può avere un coefficiente di **rimbalzo**, che determina quanto lontano rimbalzerà dopo una collisione con un altro oggetto.

Si può assegnare ad uno Sprite un certo coefficiente di rimbalzo, come nel seguente esempio:

```javascript
let circle = new Sprite(40, 155, 80);
circle.bounciness = 1; // 100%
```

Uno Sprite può essere bloccato rispetto alle rotazioni, tale proprietà si imposta come nel seguente esempio:

```javascript
let circle = new Sprite(40, 155, 80);
circle.rotationLock = true;
```

## Costruttori

Uno Sprite si crea attraverso i costruttori seguenti:

```javascript
let rectangle = new Sprite(x, y, width, height, colliderType);
let circle = new Sprite(x, y, diameter, colliderType);
let line = new Sprite(x, y, [length, angle], colliderType);
let regularPolygon = new Sprite(x, y, sideLength, polygonName, colliderType);
let polygon = new Sprite(x, y, [length, angle, repeat], colliderType);
```

Il primo costruttore crea un rettangolo di larghezza e lunghezza indicati;
Il secondo costruttore crea un cerchio di diametro indicato;
Il terzo crea una linea partendo dal vettore che indica lunghezza e angolo;
Il quarto crea un poligono regolare di lato indicato, con la forma che va dal triangolo al dodecagono.

```javascript
let rectangle = new Sprite(40, 30, 50, 80, 'static');
let circle = new Sprite(40, 155, 80, 'dynamic');
let line = new Sprite(40, 30, [150, 90], 'kinematic');
let regularPolygon = new Sprite(250, 100, 80, 'pentagon', 'none');
let polygon = new Sprite(250, 100, [30, 360/16, 16], 'none');
```
