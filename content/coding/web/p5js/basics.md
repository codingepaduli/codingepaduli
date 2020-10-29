---
type: "p5js"
title: "02 - Area da disegno e primitive per la grafica 2D"
description: "Area da disegno e primitive per la grafica 2D"
date: 2020-09-11
publishdate: 2020-09-11
lastmod: 2020-09-11
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Area da disegno e primitive per la grafica 2D"
disableNextLineWorkaround: '<!-- markdown-link-check-disable-next-line -->'
externalJS: ['https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.1.9/p5.js']
customJS: ["/static/coding/web/p5js/basics.js"]
---

# Area da disegno e primitive per la grafica 2D

## Area da disegno

L'area da disegno è creata attraverso la funzione ``createCanvas``, già accennata in precedenza, la quale prevede larghezza e lunghezza dell'elemento, come nel seguente esempio:

```javascript
createCanvas(100, 50);
```

### Posizionamento dell'area da disegno

L'area da disegno viene generalmente posizionata alla fine della pagina web, è possibile però riposizionarla in un'altro elemento. Il riposizionamento avviene mediante l'uso della funzione ``parent``, passando come argomento un ID dell'elemento HTML in cui riposizionarla.

Supponiamo, ad esempio, di avere una pagina HTML contenente un paragrafo con id ``area`` come nel seguente esempio:

```html
<p id="area"></p>
<p>altro paragrafo</p>
```

Per riposizionare il canvas all'interno del paragrafo, utilizzeremo la funzione ``parent``, passando come argomento l'identificativo del paragrafo ``area``, come nel seguente esempio:

```javascript
createCanvas(100, 100).parent('area');
```

### Dimensioni memorizzate dell'area da disegno

Una volta creata l'area da disegno attraverso la funzione ``createCanvas``, la larghezza e l'altezza dell'area da disegno vengono memorizzate rispettivamente nelle variabili ``width`` ed ``height``, in modo da essere sempre disponibili.

## Sistema di coordinate

Il sistema di coordinate **cartesiane** tipicamente usato da librerie di grafica 2D computerizzata è caratterizzato dagli assi X,Y che si intersecano nell'angolo in alto a sinistra dello schermo, che rappresenta il punto di coordinate (0,0).

La particolarità di questo sistema di coordinate è che l'asse Y è invertito, cioè i valori positivi sono in basso ed i negativi in alto. Si nota inoltre che saranno disegnati sullo schermo del computer solo i punti che hanno entrambe le coordinate (x, y) con valore positivo.

Di seguito si mostrano le differenze tra il classico sistema cartesiano e la variante utilizzata in p5.js:

![p5.js - Sistema di coordinate](https://p5js.org/assets/learn/coordinate-system-and-shapes/images/drawing-03.svg "p5.js - Sistema di coordinate")

### Gestione angoli

In ambito matematico, gli angoli sono tipicamente espressi mediante due differenti unità di misura: il **grado d'arco** (detto anche **grado sessagesimale**) ed il **radiante** (che fa parte del **sistema internazionale di unità di misura**).

Un radiante è la misura dell'angolo che si ha in corrispondenza di un arco di circonferenza di lunghezza pari al raggio.

La libreria p5.js permette al programmatore di esprimere le grandezze angolari in **gradi sessagesimali** o **radianti**, specificando l'unità di misura attraverso la funzione ``angleMode``, che prende come parametro una delle seguenti costanti:

- ``DEGREES``: indica che l'unità di misura degli angoli che si intende usare è il **grado d'arco**;
- ``RADIANS``: indica che l'unità di misura degli angoli che si intende usare è il **radiante**.

Una caratteristica importante della libreria p5.js è che gli angoli sono misurati seguendo un **senso orario**.

Volendo fare un parallelo con il quadrante di un l'orologio, in cui la lancetta delle ore è posta sul numero tre (ore 3) e la lancetta dei minuti completa l'angolo, il classico valore **novanta gradi** sull'orologio non corrisponde alle ore **3.00** come ci aspetterebbe, ma corrispone alle ore **3.30**. Allo stesso modo, un angolo di **zero gradi** corrisponde alle ore **3.15**, un angolo di **quarantacinque gradi** corrisponde alle ore **3.22** circa, un angolo di **centottanta gradi d'arco** corrisponde alle ore **3.45**.

Per facilitare l'uso del radiante, la libreria p5.js mette a disposizione le seguenti costanti:

- ``PI``, ovvero la famosa costante matematica **pi greco**, dal valore (approssimato) **3.14**, corrispondente a centottanta gradi d'arco;
- ``HALF_PI``, ovvero **pi greco mezzi**, corrispondenti a novanta gradi gradi d'arco;
- ``QUARTER_PI``, ovvero **pi greco quarti**, corrispondenti a quarantacinque gradi d'arco;
- ``TWO_PI``, ovvero **due pi greco**, corrispondenti a trecentosessanta gradi d'arco;

## Primitive per la grafica 2D

Le primitive sono delle funzioni che realizzano le basi della grafica, sulle quali poi si poggia il lavoro per il rendering di scene complesse.

Ogni primitiva è una funzione identificata da un nome e da una lista di parametri obbligatori o facoltativi. Di seguito saranno elencate le primitive principali con i parametri necessari ad indirizzare il lettore ad uso basilare, per tutti gli altri dettagli si rimanda alle specifiche della libreria.

### Disegno di un punto

Il punto è l'entità più semplice da realizzare. La funzione progettata allo scopo è ``point``, che prevede come argomenti le coordinate ``x`` ed ``y`` del **punto**, come nel seguente esempio:

```javascript
point(20, 20);
```

### Disegno di una linea

La linea è rappresentata da un segmento che unisce due punti, per cui la si può realizzare attraverso la funzione ``line`` che prevede come argomenti le coordinate ``x1`` ed ``y1`` relative al **primo punto** e le coordinate ``x2`` ed ``y2`` relative al **secondo punto**, come nel seguente esempio:

```javascript
line(80, 20, 120, 40);
```

### Disegno di un triangolo

La figura del triangolo è caratterizzata da tre punti in cui originano e terminano i lati che la vanno a formare, per cui la si può realizzare attraverso la funzione ``triangle`` che prevede come argomenti le coordinate ``x1`` ed ``y1`` relative al **primo punto**, le coordinate ``x2`` ed ``y2`` relative al **secondo punto** e  le coordinate ``x3`` ed ``y3`` relative al **terzo punto**, come nel seguente esempio:

```javascript
triangle(20, 60, 20, 100, 60, 100);
```

### Disegno di un cerchio

Il cerchio lo si può realizzare attraverso la funzione ``circle`` che prevede come argomenti le coordinate ``x`` ed ``y`` relative al **centro** e la dimensione del **diametro**, come nel seguente esempio:

```javascript
circle(100, 80, 40);
```

### Disegno di un quadrato

Si può realizzare un quadrato attraverso la funzione ``square`` che prevede come argomenti le coordinate ``x`` ed ``y`` relative all'**angolo in alto a sinistra** e la dimensione del **lato**, come nel seguente esempio:

```javascript
square(20, 140, 40);
```

### Disegno di un rettangolo

Il rettangolo è realizzabile attraverso la funzione ``rect`` che prevede come argomenti le coordinate ``x`` ed ``y`` relative all'**angolo in alto a sinistra**, la dimensione della **base** e la dimensione dell'**altezza**, come nel seguente esempio:

```javascript
rect(80, 140, 80, 20);
```

### Disegno di un ellisse

Un ellisse è una sorta di cerchio "schiacciato", lo si può interpretare come una sorta di cerchio con larghezza ed altezza differenti. Matematicamente parlando, l'ellisse ha due punti focali invece di uno (a differenza del cerchio che ha come unico fuoco il centro del cerchio).

Lo si può realizzare attraverso la funzione ``ellipse`` che prevede come argomenti le coordinate ``x`` ed ``y`` relative al **centro** e le dimensioni di **larghezza** ed **altezza**, come nel seguente esempio:

```javascript
ellipse(60, 220, 80, 40);
```

### Disegno di un'arco di circonferenza e d'ellisse

Un arco di circonferenza è realizzabile attraverso la funzione ``arc`` che prevede come argomenti le coordinate ``x`` ed ``y`` relative al **centro** della circonferenza, **due volte** la dimensione del **diametro** del cerchio ed infine **l'angolo di inizio** e **l'angolo di fine** dell'arco. Da sottolineare che entrambi gli angoli devono essere espressi in radianti.

```javascript
arc(40, 300, 40, 40, PI, TWO_PI);
```

L'arco d'ellisse si realizza con la stessa funzione ``arc`` che prevede gli stessi argomenti, con la sola distinzione che invece di specificare due volte il diametro, si deve specificare un valore per l'altezza ed uno per la larghezza dell'ellisse;

```javascript
arc(100, 300, 40, 80, PI, TWO_PI);
```

Gli archi non sono gli unici tipi di curve supportate. La libreria p5.js permette di disegnare curve complesse, come le curve **spline** e le curve di **Bézier**, ma per queste realizzazioni si rimanda alle specifiche e agli esempi ufficiali.

### Disegno di un testo

Il testo può essere racchiuso in un elemento HTML o gestito direttamente nell'area da disegno. Per realizzarlo graficamente si utilizza la funzione ``text``, che prevede come argomenti il testo e le coordinate ``x`` ed ``y`` del **punto in alto a sinistra** dal quale disegnare il testo, come nel seguente esempio:

```javascript
text("questo è un testo", 20, 340);
```

Un'alternativa è rappresentata dalla stessa funzione che utilizza però come argomenti le coordinate ``x`` ed ``y`` relative al **punto in alto a sinistra** e la dimensione della **base** e la dimensione dell'**altezza** del rettangolo nel quale racchiudere il testo, come nel seguente esempio:

```javascript
text("questo è un testo troppo lungo", 20, 360, 160, 20);
```

Da prestare attenzione che se il testo è troppo lungo e non può essere racchiuso nello spazio indicato, il testo rimanente non sarà disegnato.

## Esempio completo

Di seguito, si visualizza un esempio completo delle figure realizzate mediante il codice riportato nei vari esempi mostrati:

![p5.js - Basi della grafica 2D](/static/coding/web/p5js/basics.png "p5.js - Basi della grafica 2D")

In ambiente web è visualizzabile l'esempio funzionante dell'animazione realizzata.

<div id="basics"></div>
