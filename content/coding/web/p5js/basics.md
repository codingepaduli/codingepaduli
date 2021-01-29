---
type: "p5js"
title: "02 - Area da disegno e primitive per la grafica 2D"
description: "Area da disegno e primitive per la grafica 2D"
date: 2020-09-11
publishdate: 2020-09-11
lastmod: 2020-09-11
spellcheck: 2020-12-11
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Area da disegno e primitive per la grafica 2D"
disableNextLineWorkaround:  <!-- markdown-link-check-disable-next-line -->
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

### Dimensioni memorizzate dell'area da disegno

Una volta creata l'area da disegno attraverso la funzione ``createCanvas``, la larghezza e l'altezza dell'area da disegno vengono memorizzate rispettivamente nelle variabili ``width`` ed ``height``, in modo da essere sempre disponibili.

## Sistema di coordinate

Il sistema di coordinate **cartesiane**, tipicamente usato da librerie di grafica computerizzata 2D, è caratterizzato dagli assi X,Y che si intersecano nell'angolo in alto a sinistra dell'area da disegno'. In tale estremità si trova, quindi, l'origine degli assi, rappresentata dal punto di coordinate (0,0).

La particolarità di questo sistema di coordinate è l'asse Y invertito, cioè i valori positivi sono in basso ed i negativi in alto. Solo i punti che hanno entrambe le coordinate (x, y) con valore positivo saranno disegnati nell'area da disegno.

Di seguito si mostrano le differenze tra il classico sistema cartesiano e la variante utilizzata in p5.js:

![p5.js - Sistema di coordinate](https://p5js.org/assets/learn/coordinate-system-and-shapes/images/drawing-03.svg "p5.js - Sistema di coordinate")

### Gestione angoli

In ambito matematico, gli angoli sono tipicamente espressi mediante due differenti unità di misura: il **grado d'arco** (detto anche **grado sessagesimale**) ed il **radiante** (che fa parte del **sistema internazionale di unità di misura**).

Un radiante è la misura dell'angolo che si ha in corrispondenza di un arco di circonferenza di lunghezza pari al raggio.

Una caratteristica importante della libreria p5.js è che gli angoli sono misurati seguendo un **senso orario**.

Volendo fare un parallelo con il quadrante di un l'orologio, in cui la lancetta delle ore è posta sempre sul numero tre (ore 3) e la lancetta dei minuti è usata per definire l'ampiezza dell'angolo, il classico valore **novanta gradi** sull'orologio non corrisponde alle ore **3.00** come ci aspetterebbe, ma corrisponde alle ore **3.30**. Allo stesso modo, un angolo di **zero gradi** corrisponde alle ore **3.15**, un angolo di **quarantacinque gradi** corrisponde alle ore **3.22** circa, un angolo di **centottanta gradi d'arco** corrisponde alle ore **3.45**.

La libreria p5.js permette al programmatore di esprimere le grandezze angolari in **gradi sessagesimali** o **radianti**, specificando l'unità di misura desiderata attraverso la funzione ``angleMode``, che prende come parametro una delle seguenti costanti:

- ``DEGREES``: indica che l'unità di misura degli angoli che si intende usare è il **grado d'arco**;
- ``RADIANS``: indica che l'unità di misura degli angoli che si intende usare è il **radiante**.

Per facilitare l'uso del radiante, la libreria p5.js mette a disposizione le seguenti costanti:

- ``PI``, ovvero la famosa costante matematica **pi greco**, dal valore (approssimato) **3.14**, corrispondente a centottanta gradi d'arco;
- ``HALF_PI``, ovvero **pi greco mezzi**, corrispondenti a novanta gradi gradi d'arco;
- ``QUARTER_PI``, ovvero **pi greco quarti**, corrispondenti a quarantacinque gradi d'arco;
- ``TWO_PI``, ovvero **due pi greco**, corrispondenti a trecentosessanta gradi d'arco;

Alcune funzioni della libreria permettono come parametri esclusivamente valori espressi  in radianti, per cui si rimanda alla documentazione ufficiale per verificare la possibilità d'uso di valori espressi in gradi sessagesimali.

## Primitive per la grafica 2D

Le primitive grafiche, nella moderna computer grafica, sono le funzioni che realizzano le figure geometriche più elementari, come punti, linee e triangoli. I poligoni e curve sono considerate primitive, anche se possono essere realizzate combinando altre primitive. Oggetti e scene più complesse sono realizzati combinando l'uso di più primitive.

Ogni primitiva è una funzione identificata da un nome e da una lista di parametri obbligatori o facoltativi. Di seguito saranno elencate le primitive principali con i parametri necessari ad indirizzare il lettore ad uso basilare, per tutti gli altri dettagli si rimanda alla documentazione ufficiale.

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

### Disegno di un arco di circonferenza e d'ellisse

Un **arco di circonferenza** è il tratto di linea curva che ha le due estremità definite da due raggi della circonferenza stessa.

La funzione ``arc`` disegna un arco di circonferenza e prevede come argomenti le coordinate ``x`` ed ``y`` relative al **centro** della circonferenza, **due volte** la dimensione del **diametro** del cerchio ed infine **l'angolo di inizio** e **l'angolo di fine** dell'arco. Ad esempio:

```javascript
arc(40, 300, 40, 40, PI, TWO_PI);
```

Per impostazione predefinita, questa funzione disegna l'arco come fosse una figura aperta. Lo si può disegnare come figura chiusa, indicando come collegare i due estremi d'arco.

Le due estremità dell'arco possono essere unite con una **corda di circonferenza** oppure con i due raggi che si congiungono alle estremità dell'arco, disegnando un **settore circolare**.

Una **corda di circonferenza** è un segmento che ha le due estremità definite da due punti della circonferenza stessa.

Un **settore circolare** è l'area compresa tra l'arco di circonferenza ed i raggi che delimitano le estremità dell'arco.

Per indicare come disegnare l'arco, si utilizza un ulteriore parametro, non obbligatorio, che è definito dalle seguenti costanti:

- ``OPEN``: indica di realizzare l'arco come figura aperta, quindi senza linee di contorno per unire gli estremi;
- ``CHORD``: indica di chiudere l'arco con una linea di contorno tracciata come corda di circonferenza;
- ``PIE``: indica di chiudere l'arco realizzato con due raggi di contorno al fine di formare un settore circolare;

![p5.js - Opzioni di disegno per gli archi di circonferenza](/static/coding/web/p5js/basics_arcs.png "p5.js - Opzioni di disegno per gli archi di circonferenza")

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
