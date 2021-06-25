---
type: "p5js"
title: "02 - Primitive grafiche"
description: "Le primitive grafiche, ovvero le funzioni che realizzano le figure geometriche più elementari"
date: 2020-09-10
publishdate: 2020-09-10
lastmod: 2020-09-10
spellcheck: 2021-01-14
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Le primitive grafiche, ovvero le funzioni che realizzano le figure geometriche più elementari"
customJS: ["/static/js/p5-1.2.0-min.js", "/static/coding/web/p5js/Example02.js", "/static/coding/web/p5js/basics.js"]

references:
    -   title: "Computer Graphics from scratch"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://gabrielgambetta.com/computer-graphics-from-scratch/introduction.html"
        description: "Computer Graphics from scratch (for 3D rendering)"
---

# Primitive per la grafica 2D

<!-- TODO correggere i riferimenti nella sezione "frontmatter" in YAML -->

Le primitive grafiche, nella moderna computer grafica, sono le funzioni che realizzano le figure geometriche più elementari, come punti, linee e triangoli. I poligoni e le curve sono considerate primitive, anche se possono essere realizzate combinando altre primitive. Oggetti e scene più complesse sono realizzati combinando l'uso di più primitive.

Ogni primitiva è una funzione, e quindi ha una firma composta dal nome e dalla lista di parametri formali, che possono essere obbligatori o facoltativi, riportati tra parentesi tonde.

Di seguito saranno elencate le primitive principali, con i relativi parametri necessari ad invocarle. Per ulteriori dettagli sulle primitive grafiche, si rimanda alla documentazione ufficiale.

## Creazione dell'area da disegno

L'area da disegno è la tavola sulla quale disegnare ed è caratterizzata da una larghezza ed un'altezza. La funzione progettata allo scopo è ``createCanvas``, la cui firma è la seguente:

```plaintext
Syntax: createCanvas(w, h)

Parameters:
    w    Number: width of the canvas
    h    Number: height of the canvas
```

I parametri formali sono ``w`` ed ``h``, che rappresentano la larghezza e l'altezza dell'area da disegno.

Per creare un'area da disegno di larghezza 600 ed altezza 400 punti, sostituiamo al parametro formale ``w`` (che indica la larghezza dell'area da disegno) il valore ``600`` ed al parametro formale ``h`` (che indica l'altezza dell'area da disegno) il valore ``400``, invocando la funzione nel seguente modo:

```javascript
createCanvas(600, 400);
```

## Disegno di un punto

Il punto è l'entità più semplice da realizzare. La funzione progettata allo scopo è ``point``, la cui firma è la seguente:

```plaintext
Syntax: point(x, y, [z])

x   Number: the x-coordinate
y   Number: the y-coordinate
z   Number: the z-coordinate (for WebGL mode) (Optional)
```

I parametri formali sono ``x``, ``y`` e ``z``, che rappresentano le coordinate del **punto**.  I primi due parametri sono obbligatori e rappresentano le coordinate in un piano, il terzo parametro è tra parentesi quadre, quindi è opzionale, e lo si utilizza per indicare una terza coordinata in un sistema a tre dimensioni (non più un piano, ma uno spazio). Questo terzo parametro si usa solo quando si attiva la modalità WebGL, che non sarà trattata in questo capitolo.

Per creare un punto alle coordinate (20, 20), sostituiamo al parametro formale ``x`` (che indica la coordinata X) il valore ``20`` ed al parametro formale ``y`` (che indica la coordinata Y) il valore ``20``, invocando la funzione nel seguente modo:

```javascript
point(20, 20);
```

## Disegno di una linea

La linea è un segmento che unisce due punti ed è realizzata dalla funzione ``line`` la cui sintassi è la seguente:

```plaintext
Syntax: line(x1, y1, x2, y2)
```

I parametri formali ``x1`` ed ``y1`` rappresentano le coordinate del punto da cui parte la linea ed i parametri formali ``x2`` ed ``y2`` rappresentano le coordinate del punto in cui la linea termina.

```javascript
line(80, 20, 120, 40);
```

## Disegno di un triangolo

La figura del triangolo è caratterizzata da tre punti in cui originano e terminano i lati che la vanno a formare e la si può realizzare attraverso la funzione ``triangle`` la cui sintassi è la seguente:

```plaintext
Syntax: triangle(x1, y1, x2, y2, x3, y3)
```

I parametri formali ``x1`` ed ``y1`` rappresentano le coordinate del primo vertice,  ``x2`` ed ``y2`` rappresentano le coordinate del secondo vertice, ``x3`` ed ``y3`` le coordinate del terzo vertice, come nel seguente esempio:

```javascript
triangle(20, 60, 20, 100, 60, 100);
```

## Disegno di un cerchio

La circonferenza è caratterizzata da un punto centrale ed un diametro e la si può realizzare attraverso la funzione ``circle`` la cui sintassi è la seguente:

```plaintext
Syntax: circle(x, y, diameter)
```

I parametri formali ``x`` ed ``y`` sono le coordinate del centro, ``diameter`` è la dimensione del diametro.

```javascript
circle(100, 80, 40);
```

## Disegno di un quadrato

Il rettangolo è caratterizzata da un punto da cui iniziare a disegnare e dalla dimensioni del lato. Si può disegnare attraverso la funzione ``square`` la cui sintassi è la seguente:

```plaintext
Syntax: square(x, y, side)
```

I parametri formali ``x`` ed ``y`` sono le coordinate del punto da cui iniziare a disegnare, ``side`` è la dimensione del lato.

```javascript
square(20, 140, 40);
```

## Disegno di un rettangolo

Il rettangolo è caratterizzata da un punto da cui iniziare a disegnare e dalla dimensioni della base e dell'altezza ed è realizzabile attraverso la funzione ``rect`` la cui sintassi è la seguente:

```plaintext
Syntax: rect(x, y, w, h)
```

I parametri formali ``x`` ed ``y`` sono le coordinate del punto da cui iniziare a disegnare, ``w`` ed ``h`` sono le dimensioni della base e dell'altezza del rettangolo, come nel seguente esempio:

```javascript
rect(80, 140, 80, 20);
```

## Disegno di un ellisse

Un ellisse è una sorta di circonferenza "schiacciata", la si può interpretare come una sorta di circonferenza con larghezza ed altezza differenti. Nel caso in cui la larghezza è uguale all'altezza, la figura risultante è una circonferenza. Matematicamente parlando, l'ellisse ha due punti focali invece di uno (a differenza della circonferenza che ha come unico fuoco il centro).

La funzione per realizzare un ellisse è ``ellipse``, la cui sintassi è la seguente:

```plaintext
Syntax: ellipse(x, y, w, h)
```

I parametri formali ``x`` ed ``y`` sono le coordinate del punto da cui iniziare a disegnare, ``w`` ed ``h`` sono le dimensioni della larghezza e dell'altezza dell'ellisse, come nel seguente esempio:

```javascript
ellipse(60, 220, 80, 40);
```

## Disegno di un arco di circonferenza e d'ellisse

Un **arco di circonferenza** è il tratto di linea curva che ha le due estremità definite da due raggi della circonferenza stessa. Un **arco d'ellisse** è simile ad un arco di circonferenza, con la differenza che il tratto di linea curva è parte dell'ellisse.

L'arco di circonferenza lo si realizza impostando la stessa dimensione per larghezza ed altezza della figura. L'arco d'ellisse si realizza specificando valori differenti per larghezza ed altezza della figura;

La funzione per realizzare un arco di circonferenza o d'ellisse è ``arc`` la cui sintassi è la seguente:

```plaintext
Syntax: arc(x, y, w, h, start, stop, [mode])
```

I parametri formali ``x`` ed ``y`` sono le coordinate del centro, ``w`` ed ``h`` sono le dimensioni della larghezza e dell'altezza della figura. Il parametro ``start`` indica l'angolo del primo raggio che fa da prima estremità all'arco, il parametro``stop`` indica l'angolo del secondo raggio che fa da seconda estremità all'arco. Il parametro ``mode`` è tra parentesi quadre, quindi è opzionale, ed indica come disegnare l'arco, in particolare come collegare i due estremi d'arco.

Per capire le modalità di disegno dell'arco è necessario riportare alla mente altri due concetti di geometria.

Un **settore circolare** è l'area compresa tra l'arco di circonferenza ed i raggi che delimitano le estremità dell'arco.

Una **corda di circonferenza** è un segmento che ha le due estremità definite da due punti della circonferenza stessa.

Per indicare come disegnare l'arco, si utilizza il parametro ``mode`` che è definito dalle seguenti costanti:

- ``OPEN``: indica di realizzare l'arco come figura aperta, quindi senza linee di contorno per unire gli estremi. Questa è l'impostazione predefinita;
- ``CHORD``: indica di chiudere l'arco con una linea di contorno tracciata come corda di circonferenza;
- ``PIE``: indica di chiudere l'arco realizzato con due raggi di contorno al fine di formare un settore circolare;

![p5.js - Opzioni di disegno per gli archi di circonferenza](/static/coding/web/p5js/basics_arcs.png "p5.js - Opzioni di disegno per gli archi di circonferenza")

Gli archi non sono gli unici tipi di curve supportate. La libreria p5.js permette di disegnare curve complesse, come le curve **spline** e le curve di **Bézier**, ma per queste realizzazioni si rimanda alle specifiche e agli esempi ufficiali.

```javascript
arc(40, 300, 40, 40, PI, TWO_PI);
arc(100, 300, 40, 80, PI, TWO_PI);
```

## Disegno di un testo

Il testo può essere racchiuso in un elemento HTML o gestito direttamente nell'area da disegno. Per realizzarlo graficamente si utilizza la funzione ``text``, che prevede la seguente sintassi:

```plaintext
Syntax: text(str, x, y, [w], [h])
```

Il parametro formale ``str`` indica il testo da disegnare, i parametri formali ``x`` ed ``y`` sono le coordinate del punto in alto a sinistra dal quale disegnare il testo.  I parametri ``w`` ed ``h`` sono tra parentesi quadre, quindi sono opzionali, e si utilizzano per indicare le dimensioni del rettangolo nel quale racchiudere il testo come nel seguente esempio:

```javascript
text("questo è un testo", 20, 340);
text("questo è un testo troppo lungo", 20, 360, 160, 20);
```

Bisogna prestare attenzione al fatto che se il testo è troppo grande e non può essere racchiuso nell'area del rettangolo, la parte eccessiva del testo non sarà disegnata.


<!-- TODO check it

## Esercizio svolto

Creiamo un'area da disegno, delle dimensioni di 600 per 400, nella quale disegniamo:

- un punto alle coordinate (20, 20);
- una linea che parte dalle coordinate (80, 20) e termina alle coordinate (120, 40);
- un triangolo con vertici i punti alle coordinate (20, 60), (20, 100) e (60, 100);
- una circonferenza alle coordinate (100, 80) e di diametro 40;
- un quadrato con angolo in alto a sinistra posizionato alle coordinate square(20, 140) e con lato 40;
- un rettangolo con angolo in alto a sinistra posizionato alle coordinate (80, 140) e con larghezza 80 ed altezza 20;
- un ellisse con centro alle coordinate (60, 220), con larghezza 80 ed altezza 40;
- un arco di circonferenza


Di seguito, si visualizza un esempio completo delle figure realizzate mediante il codice riportato nei vari esempi mostrati:

![p5.js - Basi della grafica 2D](/static/coding/web/p5js/basics.png "p5.js - Basi della grafica 2D")

-->
