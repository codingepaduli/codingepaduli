---
type: "p5play"
title: "p5play Lez. 01 - Introduzione al motore di gioco p5play"
description: "Introduzione al motore di gioco p5play"
date: 2023-03-21
publishdate: 2023-03-21
lastmod: 2023-04-10
categories: ["coding", "web", "p5play"]
keywords: ["coding", "web", "p5play"]
draft: true
toc: true
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

Nel mondo dei videogiochi la parola Sprite è usata per indicare qualsiasi personaggio, cosa o oggetto si muove sopra lo sfondo. In pratica è un contenitore che può avere una componente visuale (grafica) e/o un corpo fisico (cioè che interagisce con il motore di fisica).

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

Uno Sprite può avere una **velocità** di movimento lungo gli assi X e Y, misurate in pixel al secondo, ed una velocità di rotazione rispetto all'asse X, misurata in gradi al secondo. Queste velocità possono essere modificate dalla forza di gravità e dalle collisioni che il motore fisico applica.

Per ad uno Sprite le velocità di movimento e di rotazione si può far riferimento al seguente esempio:

```javascript
let rectangle = new Sprite(40, 30, 50, 80);
rectangle.vel.x = 2;
rectangle.vel.y = 2;
rectangle.rotationSpeed = 45;  // rotazione continua rispetto all'asse X
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
Syntax: new Sprite(x, y, length, polygonName, colliderType)

Parameters:
  x             Number: the x-coordinate
  y             Number: the y-coordinate
  sideLength    Number: the length of the polygon side
  polygonName   String: the polygon name
  colliderType  String: the collider type
```

I parametri formali ``x`` ed ``y`` sono le coordinate del punto in alto a sinistra dal quale disegnare lo Sprite, il parametro formale ``length`` rappresenta la lunghezza del lato del poligono, il parametro formale ``polygonName`` rappresenta il nome (in inglese) del poligono ed infine il parametro formale ``colliderType`` indica il tipo di collisore.

Il parametro formale polygonName può assumere solo uno dei seguenti valori: ``triangle`` (triangolo), ``square`` (quadrato), ``pentagon`` (pentagono), ``hexagon`` (esagono), ``septagon`` (ettagono), ``octagon`` (ottagono), ``enneagon`` (ennagono), ``decagon`` (decagono), ``endecagono`` (endecagono) ed infine ``dodecagon`` (dodecagono).

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

## Metodi di movimento e rotazione

<!-- TODO check it 

Nella programmazione ad oggetti, un metodo è una funzione o procedura appartenente ad un oggetto, per cui deve essere invocato indicando l'oggetto. La classe Sprite definisce molti metodi, ognuno adatto ad un particolare scopo.

-->

Il movimento di uno Sprite può essere realizzato in diversi modi. Si può modificare la sua posizione, cambiando i valori delle sue proprietà, come nel seguente esempio:

```javascript
player.x = player.x + 1;
player.y = player.y + 2;
```

Si può modificare la sua velocità, come nel seguente esempio:

```javascript
player.vel.x = -2;
player.vel.y = 0.1;
```

Si può modificare la sua direzione e velocità, come nel seguente esempio:

```javascript
player.direction = 187;
player.speed = 3;
```

I metodi di movimento permettono di muovere uno Sprite in una certa direzione o verso un determinato oggetto in maniera accurata ed evitando molti calcoli.

### Metodo ``move``

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

### Metodo ``moveTowards``

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

### Metodo ``moveAway``

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

### Metodo ``moveTo``

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

## Metodi di rotazione

La rotazione di uno Sprite può essere realizzata in diversi modi.

Si può impostare l'inclinazione iniziale, come nel seguente esempio:

```javascript
sprite.rotation = 0;
```

Si può impostare la velocità di rotazione iniziale, come nel seguente esempio:

```javascript
sprite.rotationSpeed = 1;
```

I metodi di rotazione permettono di ruotare uno Sprite di un certo angolo o verso un determinato oggetto in maniera accurata ed evitando molti calcoli.

### Metodo ``rotate``

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

### Metodo ``rotateTo``

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

### Metodo ``rotateTowards``

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

### Metodo ``offsetCenter``

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
