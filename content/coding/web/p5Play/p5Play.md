---
type: "p5play"
title: "p5play Lez. 01 - Introduzione al motore di gioco p5play"
description: "Introduzione al motore di gioco p5play"
date: 2023-03-21
publishdate: 2023-03-21
lastmod: 2025-04-08
categories: ["coding", "web", "p5play"]
keywords: ["coding", "web", "p5play"]
draft: true
toc: true
summary: "Introduzione al motore di gioco p5play"
weight: 1040
---

# p5play

p5play è un motore di giochi 2D. E' un progetto, supportato dalla Processing Foundation, che ha lo scopo di introdurre gli utenti alla programmazione di videogiochi ed al paradigma ad oggetti.

p5play usa la libreria **p5.js** (o l'alternativa **q5.js**) per il rendering delle scene grafiche e **plank.js** (una riscrittura di **Box2D* in JavaScript) come motore di fisica per tener traccia delle posizioni, delle velocità e delle forze applicate sugli oggetti e per rilevare le collisioni tra oggetti.

La struttura basilare del progetto rimane la stessa di ``p5.js``, una pagina web contenente le seguenti librerie JS:

```html
<script src="q5.js"></script>
<script src="p5.sound.js"></script>
<script src="planck.js"></script>
<script src="p5play.js"></script>
```

Anche lo script è molto simile, utilizza un oggetto ``Canvas`` per creare l'area del disegno:

```javascript
function setup() {
  new Canvas(250, 100);
}

function draw() {
  background('blue');
}
```

Un esempio completo di pagina web è la seguente:

```javascript
<!DOCTYPE html>
<html>
  <head>
    <title>p5play Example</title>
  </head>
  <body>
    <script src="https://q5js.org/q5.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/p5.sound@0.2.0/dist/p5.sound.js">
    <script src="https://p5play.org/v3/planck.min.js"></script>
    <script src="https://p5play.org/v3/p5play.js"></script>
    <script>
      let ball, floor;

      function setup() {
        createCanvas(400, 400);
        background(0.7);

        world.gravity.y = 10;

        ball = new Sprite(200, 30, 50);
        ball.color = 'red';
        ball.vel.x = -5;

        floor = new Sprite(40, 155, 480, 5, 'static');
        floor.color = 'yellow';
        floor.rotation = 30;
      }

      function draw() {

      }

      function update() {
        clear();
      }
    </script>
  </body>
</html>
```

E' possibile provare questo progetto sia copiando questo esempio in un file di testo HTML per poi aprire il file nel browser, sia avviando [il progetto](/static/coding/web/p5play/p5PlayExample.zip) su un server locale.

## Oggetti principali

Nel mondo dei videogiochi si riferisce alla parola **Sprite** per indicare qualsiasi personaggio, cosa o oggetto si muove sopra lo sfondo.

Nei videogiochi come Mario Bros, Sonic, Arknoid i vari livelli sono composti dai mattoncini da rompere o su cui saltare. Questi mattoncini prendono il nome di **tiles**, dall'inglese "piastrelle", e possono essere creati a partire da una rappresentazione testuale (anche di più righe). Ogni carattere di questo testo sarà poi trasformato in una mattonella o monetina o elemento del videogioco.

La parola **world**, dall'inglese "mondo", rappresenta tutti gli oggetti sui quali il motore fisico calcola gli spostamenti, le collisioni e sui quali applica la forza di gravità per ogni frame da disegnare. Questo calcolo avviene anche per gli oggetti fuori dallo schermo, a patto che la loro posizione nel piano non superi un certo limite. Quando un qualsiasi oggetto supera questo limite, avviene l'operazione di **cull**, dall'inglese "abbattimento selettivo", con la quale si mette l'oggetto in uno stato di riposo e considerato "fuori" dal mondo escluso dai calcoli del motore fisico.

<!-- Todo Concetti di programmazione a oggetti ? No, li aggiungo alle lezioni di JS, in particolare negli approfondimenti -->

## Sprite

Nel mondo dei videogiochi la parola Sprite è usata per indicare qualsiasi personaggio, cosa o oggetto si muove sopra lo sfondo. In pratica è un contenitore che può avere una componente visuale (grafica) e/o un corpo fisico (cioè che interagisce con il motore di fisica).

### Proprietà relative alla posizione

Le proprietà relative alla posizione sono simili a quelle utilizzate in p5js. Si può far riferimento al seguente codice per utilizzarle:

```javascript
let sprite = new Sprite();

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

sprite.pos.x = 150;         // alias di sprite.x
sprite.pos.y = 80;          // alias di sprite.y
sprite.position.x = 150;    // alias di sprite.x
sprite.position.y = 80;     // alias di sprite.y

sprite.scale.x = 2;         // scala la dimensione x
sprite.scale.y = 2;         // scala la dimensione y

sprite.rotation = 45;       // rotazione rispetto all'asse X

sprite.color = 'pink';
sprite.fill = 'pink';       // alias di sprite.color
sprite.fillColor = 'pink';  // alias di sprite.color
sprite.stroke = 'red';
sprite.strokeColor = 'pink';// alias di sprite.stroke

sprite.textColor = 'blue';
sprite.textSize = 40;
sprite.text = "Hello!";

sprite.img = 'immagi.jpg';  // immagine dello sprite
sprite.image = 'img.jpg';   // alias di sprite.img
sprite.image.scale = 2;     // scala l'immagine

sprite.visible = false;
```

### Proprietà relative al movimento

Uno Sprite può avere una velocità di movimento lungo gli assi X e Y, misurate in pixel al secondo, una direzione di movimento, una velocità di rotazione rispetto all'asse X, misurata in gradi al secondo. Queste velocità possono essere modificate dalla forza di gravità, dalle forze applicate e dalle collisioni dovute all'ambiente circostante.

Per utilizzarle, si può far riferimento al codice sottostante:

```javascript
let sprite = new Sprite();

sprite.direction = 145;     // direzione di movimento (angolo)

sprite.vel.x = 1;           // velocity (pixel / seconds)
sprite.vel.y = 2;

sprite.rotationSpeed = 45;  // rotazione continua rispetto all'asse X
sprite.offset.x = 20;       // sposta il punto di rotazione di x
sprite.offset.y = 20;       // sposta il punto di rotazione di y
```

La proprietà ``sprite.direction`` specifica una direzione di movimento dello sprite. Il valore può essere numerico, quindi l'angolo della direzione, oppure una stringa (e quindi deve essere indicata tra apici singoli o doppi) che indica la direzione e può assumere solo uno dei seguenti valori:

- ``up``: -90 gradi;
- ``down``: 90 gradi;
- ``left``: 180 gradi;
- ``right``: 0 gradi;
- ``upright``: -45 gradi;
- ``rightup``: -45 gradi;
- ``upleft``: -135 gradi;
- ``leftup``: -135 gradi;
- ``downright``: 45 gradi;
- ``rightdown``: 45 gradi;
- ``downleft``: 135 gradi;
- ``leftdown``: 135 gradi;
- ``forward``: this.rotation;
- ``backward``: this.rotation + 180 gradi;

### Proprietà legate al motore di fisica

Un **collisore** (dall'inglese collider) è un'area invisibile intorno ad un oggetto che viene utilizzata per rilevare collisioni con altri oggetti.

Uno Sprite si relaziona con gli altri Sprite a seconda del tipo di collisore specificato:

- ``none``: lo Sprite non subisce collisioni, viene completamente attraversato dagl```
i altri Sprite;
- ``static``: lo Sprite subisce collisioni, ma non può essere spostato o ruotato ne attraverso istruzioni di programmazione, ne dalle collisioni con altri Sprite;
- ``kinematic``: lo Sprite subisce collisioni, può essere spostato solo attraverso istruzioni di programmazione, non viene spostato o ruotato dalle collisioni con altri Sprite;
- ``dynamic``: lo Sprite subisce collisioni, può essere spostato o ruotato attraverso istruzioni di programmazione e dalle collisioni con altri Sprite.

Una volta creato lo Sprite, può essere specificato il collisore attraverso la proprietà ``collider``.

Uno Sprite può avere una **massa** che determina la sua resistenza alle forze applicate e alle collisioni con altri oggetti. Maggiore è la massa, maggiore sarà l'effetto di una forza applicata. Si può assegnare ad uno Sprite una massa attraverso la proprietà ``mass``.

Uno Sprite può avere una **frizione di strofinamento** che rappresenta il coefficiente di attrito quando lo Sprite si muove su una superficie. Non si applica se lo Sprite rotola su questa superficie. Il coefficiente di attrito si imposta attraverso la proprietà ``friction``.

Per indicare una **frizione di rotolamento** nelle situazioni in cui lo Sprite rotola su una superficie bisogna impostare la proprietà ``rotationDrag``.

Uno Sprite può avere un coefficiente di **rimbalzo**, che determina quanto lontano rimbalzerà dopo una collisione con un altro oggetto. Per indicare una coefficiente di rimbalzo, bisogna impostare la proprietà ``bounciness``.

Uno Sprite può essere bloccato rispetto alle rotazioni utilizzando la proprietà ``rotationLock``.

Le proprietà sopra citate si possono applicare ad uno Sprite come nel seguente esempio:

```javascript
let circle = new Sprite();
circle.x = 100;             // posizione
circle.y = 100;
circle.d = 100;             // diametro
circle.collider = 'dynamic';// collisore
circle.mass = 2;            // massa
circle.friction = 10;       // frizione di trascinamento
circle.rotationDrag = 8;    // frizione di rotolamento
circle.bounciness = 3;      // 300 %
circle.rotationLock = true; // blocca il rotolamento
```

## Costruttori

Nella programmazione ad oggetti, un oggetto può essere costruito attraverso i costruttori, che si occupano di allocare in memoria l'oggetto e di inizializzare le sue proprietà. La classe Sprite definisce molti costruttori, ognuno adatto ad un particolare scopo.

### Costruttore per oggetti di forma rettangolare

Il costruttore per oggetti di forma rettangolare ha la firma seguente:

```plaintext
Syntax: new Sprite(x, y, width, height, colliderType)

Parameters:
  x             Number: the x-coordinate
  y             Number: the y-coordinate
  width         Number: width of the Sprite
  height        Number: height of the Sprite
  colliderType  String: the collider type
```

I parametri formali ``x`` ed ``y`` sono le coordinate del punto in alto a sinistra dal quale disegnare lo Sprite, i parametri formali ``width`` ed ``height`` rappresentano la larghezza e l'altezza dello Sprite. Il parametro formale ``colliderType`` indica il tipo di collisore.

Per creare uno Sprite con collisore dinamico a coordinate x=20 ed y=30, con larghezza 15 ed altezza 35 punti, sostituiamo al parametro formale ``x`` il valore ``20``, al parametro formale ``y`` il valore ``30``, al parametro formale ``width`` il valore ``15``, al parametro formale ``height`` il valore ``35`` ed infine al parametro formale ``colliderType`` il valore ``dynamic`` (è di tipo ``String``, quindi deve essere indicato tra apici singoli o doppi), invocando il costruttore nel seguente modo:

```javascript
let sprite = new Sprite(20, 30, 15, 35, 'dynamic');
```

### Costruttore per oggetti di forma rotonda

Il costruttore per oggetti di forma rotonda ha la firma seguente:

```plaintext
Syntax: new Sprite(x, y, diameter, colliderType)

Parameters:
  x             Number: the x-coordinate
  y             Number: the y-coordinate
  diameter      Number: diameter of the Sprite
  colliderType  String: the collider type
```

I parametri formali ``x`` ed ``y`` sono le coordinate del punto in alto a sinistra dal quale disegnare lo Sprite, il parametro formale ``diameter`` rappresenta il diametro del cerchio. Il parametro formale ``colliderType`` indica il tipo di collisore.

Per creare uno Sprite con collisore statico a coordinate x=50 ed y=30, con diametro 35, sostituiamo al parametro formale ``x`` il valore ``50``, al parametro formale ``y`` il valore ``30``, al parametro formale ``diameter`` il valore ``35`` ed infine al parametro formale ``colliderType`` il valore ``static`` (è di tipo ``String``, quindi deve essere indicato tra apici singoli o doppi), invocando il costruttore nel seguente modo:

```javascript
let sprite = new Sprite(50, 30, 35, 'static');
```

### Costruttore per oggetti linea

Il costruttore degli oggetti di tipo linea ha la firma seguente:

```plaintext
Syntax: new Sprite(x, y, vector[], colliderType)

Parameters:
  x             Number: the x-coordinate
  y             Number: the y-coordinate
  vector        Array:  the length and the angle of the Sprite
  colliderType  String: the collider type
```

I parametri formali ``x`` ed ``y`` sono le coordinate del punto in alto a sinistra dal quale disegnare lo Sprite, i parametro formale ``vector`` è un array che contiene lunghezza ed angolo della linea, il parametro formale ``colliderType`` indica il tipo di collisore.

Per creare uno Sprite senza collisore a coordinate x=80 ed y=30, con lunghezza 35 ed angolo 45 gradi, sostituiamo al parametro formale ``x`` il valore ``80``, al parametro formale ``y`` il valore ``30``, al parametro formale ``vector`` un array contenente due valori, la lunghezza ``35`` e l'angolo ``45``. L'ultimo parametro formale ``colliderType`` assegniamo il valore ``none`` (è di tipo ``String``, quindi deve essere indicato tra apici singoli o doppi), invocando il costruttore nel seguente modo:

```javascript
let sprite = new Sprite(80, 30, [35, 45], 'static');
```

### Costruttore di poligoni regolari per nome

Costruttore di poligoni regolari permette la costruzione di poligoni a partire dal nome del poligono. Ha la seguente firma:

```plaintext
Syntax: new Sprite(x, y, sideLength, polygonName, colliderType)

Parameters:
  x             Number: the x-coordinate
  y             Number: the y-coordinate
  sideLength    Number: the length of the polygon side
  polygonName   String: the polygon name
  colliderType  String: the collider type
```

I parametri formali ``x`` ed ``y`` sono le coordinate del punto in alto a sinistra dal quale disegnare lo Sprite, il parametro formale ``sideLength`` rappresenta la lunghezza del lato del poligono, il parametro formale ``polygonName`` rappresenta il nome (in inglese) del poligono ed infine il parametro formale ``colliderType`` indica il tipo di collisore.

Il parametro formale polygonName può assumere solo uno dei seguenti valori: ``triangle`` (triangolo), ``square`` (quadrato), ``pentagon`` (pentagono), ``hexagon`` (esagono), ``septagon`` (ettagono), ``octagon`` (ottagono), ``enneagon`` (ennagono), ``decagon`` (decagono), ``hendecagon`` (endecagono) ed infine ``dodecagon`` (dodecagono).

Per creare uno Sprite con collisore cinematico a coordinate x=120 ed y=30 di forma esagonale con lato 40, sostituiamo al parametro formale ``x`` il valore ``80``, al parametro formale ``y`` il valore ``30``, al parametro formale ``length`` il valore 40, al parametro formale ``polygonName`` il valore ``hexagon`` (è di tipo ``String``, quindi deve essere indicato tra apici singoli o doppi). L'ultimo parametro formale ``colliderType`` assegniamo il valore ``kinematic`` (è di tipo ``String``, quindi deve essere indicato tra apici singoli o doppi), invocando il costruttore nel seguente modo:

```javascript
let sprite = new Sprite(20, 30, 'hexagon', 'kinematic');
```

### Costruttore per ripetizione

Il costruttore per ripetizione permette di costruire uno Sprite ripetendo due semplici passi:

1. costruisce un lato di lunghezza indicata;
2. applica un certo angolo a partire dal quale costruire il lato successivo;
3. se il numero di ripetizioni indicato non è stato raggiunto, esegue un'altra esecuzione dei punti 1. 2. e 3.

Questo costruttore permette di disegnare tutti gli altri poligoni regolari, quali il tridecagono, tetradecagono, pentadecagono, esadecagono, ettadecagono, ottadecagono, ennadecagono, icosagono, e qualsiasi altro poligono (n-agono).

Per disegnare un poligono regolare di n lati, basta applicare un angolo pari a 360/n ed il numero di ripetizioni pari a n. Ad esempio, per disegnare l'esadecagono, basta applicare un angolo pari a 360/16 ed il numero di ripetizioni pari a 16.

La firma di questo costruttore è la seguente:

```plaintext
Syntax: new Sprite(x, y, vector[], colliderType)

Parameters:
  x             Number: the x-coordinate
  y             Number: the y-coordinate
  vector        Array:  sideLength, angle and number of repetition
  colliderType  String: the collider type
```

I parametri formali ``x`` ed ``y`` sono le coordinate del punto in alto a sinistra dal quale disegnare lo Sprite, il parametro formale ``vector`` è un array contenente tre valori, la lunghezza del lato, l'angolo da utilizzare per disegnare il lato successivo ed il numero di ripetizioni da raggiungere. Infine il parametro formale ``colliderType`` indica il tipo di collisore.

Per creare uno Sprite dell'esadecagono con collisore cinematico a coordinate x=170 ed y=30 con lato 25, sostituiamo al parametro formale ``x`` il valore ``170``, al parametro formale ``y`` il valore ``30``, al parametro formale ``vector`` un array contenente tre valori, la lunghezza del lato``25``, l'angolo ``360/16`` (possiamo lasciare l'espressione matematica) ed il numero di ripetizioni ``16``. L'ultimo parametro formale ``colliderType`` assegniamo il valore ``kinematic`` (è di tipo ``String``, quindi deve essere indicato tra apici singoli o doppi). Invochiamo il costruttore nel seguente modo:

```javascript
let sprite = new Sprite(20, 30, [25, 360/16, 16], 'kinematic');
```

## Movimento e rotazione

Esistono molte modalità di movimento e di rotazione di uno Sprite.

Si può modificare la posizione di uno Sprite cambiando i valori delle sue proprietà, come nel seguente esempio:

```javascript
player.x = player.x + 1;
player.y = player.y + 2;
```

Si può modificare la velocità di uno Sprite come nel seguente esempio:

```javascript
player.vel.x = -2;
player.vel.y = 0.1;
```

Si può modificare la sua direzione e velocità, come nel seguente esempio:

```javascript
player.direction = 187;
player.speed = 3;
```

Si può modificare l'inclinazione, come nel seguente esempio:

```javascript
sprite.rotation = sprite.rotation + 20;
```

Si può modificare la velocità di rotazione, come nel seguente esempio:

```javascript
sprite.rotationSpeed = 5;
```

Esistono poi i metodi di movimento e di rotazione, che non tengono conto dell'ambiente fisico in cui si trova uno Sprite, vengono applicati senza condizioni.

I metodi di movimento e di rotazione permettono di muovere uno Sprite in una certa direzione o verso un determinato oggetto in maniera accurata.

### Metodo ``move(distance, direction, speed)``

Per muovere uno Sprite in una direzione specificata per una certa distanza, si utilizza il metodo ``move``, che ha la seguente firma:

```plaintext
Syntax: move(distance, direction, speed)

Parameters:
  distance      Number: the distance
  direction     Number | String: the direction
  speed         Number: the speed
```

Il parametro formale ``distance`` indica la distanza, il parametro formale ``direction`` indica la direzione ed il parametro formale ``speed`` indica la velocità del movimento dello Sprite.

Per muovere uno Sprite di 50 pixel verso destra con velocità di 5 frame / secondo, sostituiamo al parametro formale ``distance`` il valore ``50``, al parametro formale ``direction`` il valore ``right`` (quando utilizziamo un valore di tipo ``String``, il valore deve essere indicato tra apici singoli o doppi) ed al parametro formale ``speed`` il valore ``5``. Invochiamo il metodo nel seguente modo:

```javascript
sprite.move(50, 'right', 5);
```

### Metodo ``moveTowards(position, tracking)``

Per muovere uno Sprite verso un secondo oggetto con una certa percentuale di distanza da coprire per ogni frame, si utilizza il metodo ``moveTowards``, che ha la seguente firma:

```plaintext
Syntax: moveTowards(position, tracking)

Parameters:
  position      Object: the target position
  tracking      Number: the tracking speed
```

Il parametro formale ``position`` indica la posizione dell'oggetto, mentre il parametro formale ``tracking`` indica la percentuale di distanza da coprire per ogni frame.

Per muovere uno Sprite verso il mouse con una percentuale di distanza da coprire per ogni frame del 10%, sostituiamo al parametro formale ``position`` l'oggetto ``mouse``, al parametro formale ``tracking`` il valore ``0.10`. Invochiamo il metodo nel seguente modo:

```javascript
sprite.moveTowards(mouse, 0.10);
```

### Metodo ``moveAway(position, repel)``

Per muovere uno Sprite allontanandolo da un secondo oggetto con una certa percentuale di distanza da coprire per ogni frame, si utilizza il metodo ``moveAway``, che ha la seguente firma:

```plaintext
Syntax: moveAway(position, repel)

Parameters:
  position      Object: the target position
  repel         Number: the repel speed
```

Il parametro formale ``position`` indica la posizione dell'oggetto, mentre il parametro formale ``repel`` indica la percentuale di distanza da coprire per l'allontanamento ad ogni frame.

Per muovere uno Sprite allontanandolo dal mouse con una percentuale di distanza da coprire per ogni frame del 5%, sostituiamo al parametro formale ``position`` l'oggetto ``mouse``, al parametro formale ``repel`` il valore ``0.05`. Invochiamo il metodo nel seguente modo:

```javascript
sprite.moveAway(mouse, 0.05);
```

### Metodo ``moveTo(position, speed)``

Per dare ad uno Sprite un impulso di movimento verso un secondo oggetto con una certa velocità costante, si utilizza il metodo ``moveTo``, che ha la seguente firma:

```plaintext
Syntax: moveTo(position, speed)

Parameters:
  position      Object: the target position
  speed         Number: the speed
```

Il parametro formale ``position`` indica la posizione dell'oggetto, mentre il parametro formale ``speed`` indica la velocità di movimento.

Per muovere uno Sprite verso il mouse con una velocità di movimento di un frame per secondo, sostituiamo al parametro formale ``position`` l'oggetto ``mouse``, al parametro formale ``speed`` il valore ``1`. Invochiamo il metodo nel seguente modo:

```javascript
sprite.moveTo(mouse, 1);
```

### Metodo ``rotate(angle, rotationSpeed)``

Per ruotare uno Sprite di un angolo specificato e con una certa velocità, si utilizza il metodo ``rotate``, che ha la seguente firma:

```plaintext
Syntax: rotate(angle, rotationSpeed)

Parameters:
  angle         Number: the angle
  rotationSpeed Number: the rotation speed
```

Il parametro formale ``angle`` indica l'angolo dell'oggetto, mentre il parametro formale ``rotationSpeed`` indica la velocità di rotazione (espressa in frame al secondo).

Per ruotare uno Sprite di 15 gradi con una velocità di rotazione di 5 fps, sostituiamo al parametro formale ``angle`` il valore ``15``, al parametro formale ``rotationSpeed`` il valore ``5``. Invochiamo il metodo nel seguente modo:

```javascript
sprite.rotate(15, 5);
```

### Metodo ``rotateTo(position, speed, [facing])``

Per ruotare uno Sprite verso un oggetto specificato, con una certa velocità e posizionandolo con uno specifico angolo rispetto all'oggetto, si utilizza il metodo ``rotateTo``, che ha la seguente firma:

```plaintext
Syntax: rotateTo(position, speed, [facing])

Parameters:
  position      Number | Object: the angle or the target position
  speed         Number: the rotation speed
  facing        Number: the angle that the Sprite should be at when facing the target position (Optional)
```

Il parametro formale ``position`` indica l'angolo o la posizione dell'oggetto, il parametro formale ``speed`` indica la velocità di rotazione (espressa in frame al secondo), il parametro formale ``facing`` indica l'angolo al quale lo Sprite si deve posizionare quando la posizione finale è stata raggiunta.

Per ruotare uno Sprite a 15 gradi con una velocità di rotazione di 3 fps, sostituiamo al parametro formale ``position`` il valore ``3``, al parametro formale ``speed`` il valore ``5``. Invochiamo il metodo nel seguente modo:

```javascript
sprite.rotateTo(15, 3);
```

Per ruotare uno Sprite verso il mouse con una velocità di rotazione di 4 fps, facendo sì che lo Sprite si trovi sempre a 30 gradi rispetto al mouse, sostituiamo al parametro formale ``position`` l'oggetto ``mouse``, al parametro formale ``speed`` il valore ``4`` ed al parametro formale ``facing`` il valore 30. Invochiamo il metodo nel seguente modo:

```javascript
sprite.rotateTo(mouse, 4, 30);
```

### Metodo ``rotateTowards(position, tracking, [facing])``

Per ruotare uno Sprite verso un oggetto specificato, con una certa percentuale della distanza angolare da coprire per ogni frame e posizionandolo con uno specifico angolo rispetto all'oggetto, si utilizza il metodo ``rotateTowards``, che ha la seguente firma:

```plaintext
Syntax: rotateTowards(position, tracking, [facing])

Parameters:
  position      Number | Object: the angle or the target position
  tracking      Number: the tracking speed
  facing        Number: the angle that the Sprite should be at when facing the target position (Optional)
```

Il parametro formale ``position`` indica l'angolo o la posizione dell'oggetto, il parametro formale ``tracking`` indica la percentuale della distanza angolare da coprire per ogni frame, il parametro formale ``facing`` indica l'angolo al quale lo Sprite si deve posizionare quando la posizione finale è stata raggiunta.

Per ruotare uno Sprite verso il mouse con una percentuale della distanza angolare da coprire per ogni frame del 3%, facendo sì che lo Sprite si trovi sempre a 90 gradi rispetto al mouse, sostituiamo al parametro formale ``position`` l'oggetto ``mouse``, al parametro formale ``tracking`` il valore ``0.03`` ed al parametro formale ``facing`` il valore 90. Invochiamo il metodo nel seguente modo:

```javascript
sprite.rotateTo(mouse, 0.03, 90);
```

### Metodo ``offsetCenter(x, y)``

Per cambiare il centro di rotazione di uno Sprite ad un punto specificato, si utilizza il metodo ``offsetCenter``, che ha la seguente firma:

```plaintext
Syntax: offsetCenter(x, y)

Parameters:
  x             Number: the x-coordinate
  y             Number: the y-coordinate
```

I parametri formali ``x`` ed ``y`` sono le coordinate del punto sul quale lo Sprite dovrà ruotare.

Per impostare il punto di rotazione di uno Sprite a coordinate x=30 e y=50, sostituiamo al parametro formale ``x`` il valore ``30`` ed al parametro formale ``y`` il valore ``50``, invocando il metodo nel seguente modo:

```javascript
sprite.offsetCenter(30, 50);
```

### Metodi per movimenti in serie

E' possibile definire una sequenza di movimenti ed invocarla una volta o ripetutamente. Per creare una sequenza di movimenti, semplicemente si dichiara una funzione ed in questa funzione si inseriscono tutte le istruzioni di movimento desiderate.

Sono però necessarie due accortezze:

1. La prima è che questa funzione deve essere dichiarata con la parola ``async`` che in JavaScript sta ad indicare che l'esecuzione avviene in parallelo (in contemporanea) rispetto al flusso di esecuzione principale.

2. La seconda è che tutte le funzioni di movimento invocate all'interno devono essere precedute dalla parola chiave ``await``, che in JavaScript sta ad indicare che si deve attendere il completamento di un'istruzione prima di passare alla successiva.

Ad esempio, per muovere uno Sprite di 100 punti in una direzione, poi ruotare di 90 gradi e muovere di altri 100 punti, possiamo realizzare la seguente funzione:

```javascript
async function movimentoConAngolo() {
    await sprite.move(100);
    await sprite.rotate(90);
    await sprite.move(100);
}
```

La funzione creata deve poi essere invocata nella funzione ``setup``, come nel seguente esempio:

```javascript
let sprite;

function setup() {
    new Canvas(160, 160);
    sprite = new Sprite(30, 50, 30);

    movimentoConAngolo();
}
```

E' possibile creare un ciclo continuo di movimenti in serie, semplicemente  invocando la funzione creata al termine dei movimenti, e quindi eseguire i movimenti nella funzione ``setup``, come nel seguente esempio:

```javascript
let sprite;

function setup() {
    new Canvas(160, 160);
    sprite = new Sprite(30, 50, 30);

    movimentoConAngolo();
}

async function movimentoConAngolo() {
    await sprite.move(100);
    await sprite.rotate(90);
    await sprite.move(100);
    movimentoConAngolo();    // ciclo continuo
}
```

## Applicare forze per il movimento

I metodi per applicare una forze tengono conto dell'ambiente fisico, come la gravità applicata, la massa dei corpi, gli attriti e le resistenze intrinseche dei corpi rispetto alla rotazione, al rimbalzo, ecc... L'insieme delle forze modifica infine la direzione e la velocità di movimento dello Sprite.

La proprietà ``bearing`` di uno Sprite indica la direzione (o angolo di movimento) di una forza.

I metodi ``applyForce()`` e ``applyForceScaled()`` applicano una forza in direzione ``x`` ed ``y`` sullo Sprite, il primo metodo non tiene conto della massa, il secondo tiene conto della massa dell'oggetto.

```javascript
if (mouse.pressing()) {
  sprite.mass = 10;
  sprite.bearing = -90;
  sprite.applyForce(6, 5);
  sprite.applyForceScaled(0, 10);
}
```

Il metodo ``attractTo()`` attrae uno sprite verso un altro o verso una posizione (x, y) con una certa forza:

```javascript
if (mouse.pressing()) {
  sprite1.attractTo(sprite2, 5);
}
```
