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
customJS: ["/static/js/p5-1.2.0-min.js", "/static/coding/web/p5js/Example02.js", "/static/coding/web/p5js/basics.js"]

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

Esistono inoltre numerose estensioni che aggiungono strumenti per la gestione audio, per la gestione grafica in 3 dimensioni,  per la gestione della geo-localizzazione, delle mappe, della webcam, per l'applicazione di algoritmi di intelligenza artificiale e per la comunicazione con diversi dispositivi basati su micro-controllore, come Arduino.

## Editor online per p5.js

Il punto di partenza, per iniziare velocemente ad esplorare le potenzialità della libreria p5.js, è sicuramente l'editor presente sul sito web [https://editor.p5js.org](https://editor.p5js.org "Editor online di p5.js"), che si presenta con la seguente interfaccia grafica:

![p5.js - Editor online](/static/coding/web/p5js/OnlineEditor.png "p5.js - Editor online")

L'interfaccia grafica presenta i menù tipici dei classici ambienti di sviluppo, quali la barra dei pulsanti, per avviare e fermare il proprio lavoro, l'area del codice, per la scrittura del codice JavaScript, l'area di anteprima, per visualizzare il lavoro realizzato e la console per visualizzare i messaggi di informazione, di avviso e di errore.

L'area del codice si presenta con un esempio minimale di programma, valido come punto di partenza e descritto successivamente.

## Prima pagina web con p5.js

L'editor online è di grande utilità per iniziare, tuttavia si può voler includere il lavoro realizzato in una pagina web. Per far ciò, è necessario conoscere la struttura HTML nella quale includerlo.

Dando per assunti i fondamentali sul linguaggio HTML, nella pagina web è possibile definire un riferimento alla libreria p5.js mediante l'etichetta ``script``, come nel seguente esempio:

```html
<script src="https://cdn.jsdelivr.net/npm/p5@1.2.0/lib/p5.js"></script>
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
        <script src="https://cdn.jsdelivr.net/npm/p5@1.2.0/lib/p5.js"></script>
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

## Prime funzioni

Sia che si utilizzi la pagina web, sia che si utilizzi l'editor online, i programmi in p5.js devono sempre dichiarare le due funzioni principali ``setup`` e ``draw``.

Le istruzioni contenute nella funzione ``setup`` sono eseguite una sola volta e servono ad impostare gli strumenti e le condizioni iniziali.

Le istruzioni contenute nella funzione ``draw`` sono eseguite ciclicamente e servono a ridisegnare continuamente l'area di lavoro.

Come si può notare, sia le istruzioni iniziali, sia le istruzioni di disegno ciclico sono racchiuse tra le parentesi graffe ``{`` e ``}`` che indicano l'inizio e la fine del blocco istruzioni.

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

Le funzione ``background`` serve ad impostare lo sfondo, in questo caso di colore grigio, mentre la funzione ``circle`` serve a creare un cerchio. Si può scegliere di ridisegnare continuamente lo sfondo ed il cerchio, e quindi inserire queste istruzioni nella funzione ``draw``

Il risultato è il seguente:

![p5.js - Primo esempio](/static/coding/web/p5js/basics01.png "p5.js - Primo esempio")

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

## API, funzioni e documentazione

Per poter utilizzare correttamente la libreria p5.js, è necessario conoscere l'interfaccia esposta dalla libreria stessa.

Il termine **interfaccia**, nelle discipline tecniche, indica l'area (la "faccia") esposta da un sistema, al fine di potervi interagire. Un esempio sono le interfacce grafiche di Microsoft Windows, che permettono di interagire con i calcolatori, oppure le interfacce vocali di iPhone ed Android, con "Siri" ed il famoso "OK Google", che permettono di interagire con gli smartphone.

Nello sviluppo di applicazioni, le interfacce esposte da librerie ed ambienti di sviluppo, e quindi anche dalla libreria p5.js, prendono il nome di **Application Programming Interface** (API).

Le API espongono strutture, funzioni, costanti e tanti altri elementi della libreria, che il programmatore può usare per realizzare la propria applicazione. Le API sono sempre accompagnate dalla documentazione, che descrive cosa rappresenta una determinata costante oppure come utilizzare una determinata funzione. La documentazione delle API della libreria p5.js si può consultare sul sito web della libreria stessa, all'indirizzo [https://p5js.org/reference/](https://p5js.org/reference/ "Documentazione di p5.js").

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

Ogni categoria mostra le costanti e le funzioni disponibili, con un link alla documentazione specifica.

Le costanti, nell'ambito informatico come nell'ambito matematico, sono dei valori che non variano nel tempo, ed ai quali associamo un nome, come ad esempio la costante matematica **pi greco**, che definisce il rapporto tra la lunghezza della circonferenza e quella del suo diametro, oppure la costante fisica **c** che definisce la velocità della luce.

Ogni costante è documentata indicando uno o più esempi d'uso, il nome, la descrizione ed il valore.

Le funzioni sono delle istruzioni particolari che permettono di svolgere uno specifico compito, come il disegno di un cerchio o un quadrato o la creazione dell'area da disegno. Le funzioni possono prevedere dei **parametri** necessari alla realizzazione del compito. Ad esempio, per creare l'area da disegno abbiamo bisogno di due parametri, la larghezza e l'altezza dell'area da creare. Per disegnare un cerchio abbiamo bisogno di tre parametri, le coordinate x ed y del centro ed il raggio del cerchio. Alcuni parametri possono essere obbligatori, altri facoltativi, e tipicamente sono elencati prima quelli obbligatori e poi, tra parentesi quadre, quelli facoltativi.

Il nome della funzione insieme alla lista dei parametri riportata tra parentesi tonde formano la **firma della funzione**.

La documentazione di ogni funzione riporta:

- uno o più esempi d'uso;
- la descrizione del compito svolto;
- la sintassi d'uso, ovvero la firma della funzione. Ogni parametro, obbligatorio o facoltativo, è ulteriormente chiarito con l'indicazione del tipo e della descrizione.

I parametri indicati nella documentazione sono detti **parametri formali** e, come si vedrà nel capitolo sulle funzioni, sono definiti dallo sviluppatore durante la creazione di una funzione.

### Documentazione della funzione ``circle``

La documentazione della funzione ``circle`` riporta i vari esempi e la descrizione del compito svolto, che è il disegno di un cerchio nell'area da disegno.

La sintassi riporta la firma della funzione, ovvero il nome della funzione e la lista dei parametri **formali** tra parentesi tonde:

```plaintext
Syntax: circle(x, y, d)

Parameters:
    x   Number: x-coordinate of the centre of the circle.
    y   Number: y-coordinate of the centre of the circle.
    d   Number: diameter of the circle.
```

La funzione ``circle`` non prevede parametri facoltativi, dato che nessun parametro è indicato tra parentesi quadre.

Dalla descrizione dei parametri si comprende che sono tutti numerici, con ``x`` ed ``y`` che indicano le coordinate del centro del cerchio e ``d`` che indica il diametro del cerchio.

### Documentazione della funzione ``square``

La documentazione della funzione ``square`` riporta i vari esempi e la descrizione del compito svolto, che è il disegno di un quadrato nell'area da disegno.

La sintassi riporta la firma della funzione, ovvero il nome della funzione e la lista dei parametri **formali** tra parentesi tonde:

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

Dalla sintassi si deduce che la funzione ``square`` prevede i parametri **obbligatori** ``x``, ``y`` ed ``s``. I parametri facoltativi, indicati tra parentesi quadre, sono ``tl``, ``tr``, ``br``, ``bl``.

La descrizione dei parametri obbligatori indica che ``x`` ed ``y`` sono le coordinate dell'angolo in alto a sinistra del quadrato ed ``s`` è la lunghezza del lato; I rimanenti parametri facoltativi rappresentano rispettivamente l'arrotondamento dell'angolo in alto a sinistra, in alto a destra, in basso a destra ed in basso a sinistra.

Dalla documentazione si apprende che la funzione può essere usata per disegnare un quadrato senza angoli arrotondati oppure indicare l'arrotondamento dei vari angoli, come nelle seguenti istruzioni:

```javascript
square(50, 50, 100);
square(160, 50, 100, 40, 5);
square(270, 50, 100, 40, 5, 20, 20);
```

Il risultato è riportato di seguito:

![p5.js - Editor online](/static/coding/web/p5js/api-doc-example.png "p5.js - Esempio risultante dalla documentazione delle API")

## Primitive per la grafica 2D

Le primitive grafiche, nella moderna computer grafica, sono le funzioni che realizzano le figure geometriche più elementari, come punti, linee e triangoli. I poligoni e curve sono considerate primitive, anche se possono essere realizzate combinando altre primitive. Oggetti e scene più complesse sono realizzati combinando l'uso di più primitive.

Ogni primitiva è una funzione identificata da un nome e da una lista di parametri obbligatori o facoltativi. Di seguito saranno elencate le primitive principali con i parametri necessari ad indirizzare il lettore ad uso basilare, per tutti gli altri dettagli si rimanda alla documentazione ufficiale.

### Disegno di un punto

Il punto è l'entità più semplice da realizzare. La funzione progettata allo scopo è ``point``, la cui sintassi è la seguente:

```plaintext
Syntax: point(x, y)
```

I parametri formali sono ``x`` ed ``y``, che rappresentano le coordinate del **punto**.

```javascript
point(20, 20);
```

### Disegno di una linea

La linea è un segmento che unisce due punti ed è realizzata dalla funzione ``line`` la cui sintassi è la seguente:

```plaintext
Syntax: line(x1, y1, x2, y2)
```

I parametri formali ``x1`` ed ``y1`` rappresentano le coordinate del punto da cui parte la linea ed i parametri formali ``x2`` ed ``y2`` rappresentano le coordinate del punto in cui la linea termina.

```javascript
line(80, 20, 120, 40);
```

### Disegno di un triangolo

La figura del triangolo è caratterizzata da tre punti in cui originano e terminano i lati che la vanno a formare e la si può realizzare attraverso la funzione ``triangle`` la cui sintassi è la seguente:

```plaintext
Syntax: triangle(x1, y1, x2, y2, x3, y3)
```

I parametri formali ``x1`` ed ``y1`` rappresentano le coordinate del primo vertice,  ``x2`` ed ``y2`` rappresentano le coordinate del secondo vertice, ``x3`` ed ``y3`` le coordinate del terzo vertice, come nel seguente esempio:

```javascript
triangle(20, 60, 20, 100, 60, 100);
```

### Disegno di un cerchio

La circonferenza è caratterizzata da un punto centrale ed un diametro e la si può realizzare attraverso la funzione ``circle`` la cui sintassi è la seguente:

```plaintext
Syntax: circle(x, y, diameter)
```

I parametri formali ``x`` ed ``y`` sono le coordinate del centro, ``diameter`` è la dimensione del diametro.

```javascript
circle(100, 80, 40);
```

### Disegno di un quadrato

Il rettangolo è caratterizzata da un punto da cui iniziare a disegnare e dalla dimensioni del lato. Si può disegnare attraverso la funzione ``square`` la cui sintassi è la seguente:

```plaintext
Syntax: square(x, y, side)
```

I parametri formali ``x`` ed ``y`` sono le coordinate del punto da cui iniziare a disegnare, ``side`` è la dimensione del lato.

```javascript
square(20, 140, 40);
```

### Disegno di un rettangolo

Il rettangolo è caratterizzata da un punto da cui iniziare a disegnare e dalla dimensioni della base e dell'altezza ed è realizzabile attraverso la funzione ``rect`` la cui sintassi è la seguente:

```plaintext
Syntax: rect(x, y, base, altezza)
```

I parametri formali ``x`` ed ``y`` sono le coordinate del punto da cui iniziare a disegnare, ``base`` ed ``altezza`` sono le dimensioni della base e dell'altezza del rettangolo, come nel seguente esempio:

```javascript
rect(80, 140, 80, 20);
```

### Disegno di un ellisse

Un ellisse è una sorta di circonferenza "schiacciata", la si può interpretare come una sorta di circonferenza con larghezza ed altezza differenti. Matematicamente parlando, l'ellisse ha due punti focali invece di uno (a differenza della circonferenza che ha come unico fuoco il centro).

La funzione per realizzare un ellisse è ``ellipse``, la cui sintassi è la seguente:

```plaintext
Syntax: ellipse(x, y, larghezza, altezza)
```

I parametri formali ``x`` ed ``y`` sono le coordinate del punto da cui iniziare a disegnare, ``larghezza`` ed ``altezza`` sono le dimensioni della larghezza e dell'altezza dell'ellisse, come nel seguente esempio:

```javascript
ellipse(60, 220, 80, 40);
```

### Disegno di un arco di circonferenza e d'ellisse

Un **arco di circonferenza** è il tratto di linea curva che ha le due estremità definite da due raggi della circonferenza stessa. Un **arco d'ellisse** è simile ad un arco di circonferenza, con la differenza che il tratto di linea curva è parte dell'ellisse.

La funzione per realizzare un arco è ``arc`` la cui sintassi è la seguente:

```plaintext
Syntax: arc(x, y, larghezza, altezza, angoloIniziale, angoloFinale, [type])
```

I parametri formali ``x`` ed ``y`` sono le coordinate del centro, ``larghezza`` ed ``altezza`` sono le dimensioni della larghezza e dell'altezza dell'ellisse. Il parametro ``angoloIniziale`` indica l'angolo del primo raggio che fa da prima estremità all'arco, ``angoloFinale`` indica l'angolo del secondo raggio che fa da seconda estremità all'arco.

```javascript
arc(40, 300, 40, 40, PI, TWO_PI);
```

Per impostazione predefinita, questa funzione disegna l'arco come fosse una figura aperta. Lo si può disegnare come figura chiusa, utilizzando il parametro ``type`` per indicare come collegare i due estremi d'arco.

Le due estremità dell'arco possono essere unite con una **corda di circonferenza** oppure con i due raggi che si congiungono alle estremità dell'arco, disegnando un **settore circolare**.

Una **corda di circonferenza** è un segmento che ha le due estremità definite da due punti della circonferenza stessa.

Un **settore circolare** è l'area compresa tra l'arco di circonferenza ed i raggi che delimitano le estremità dell'arco.

Per indicare come disegnare l'arco, si utilizza il parametro ``type``, non obbligatorio, che è definito dalle seguenti costanti:

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

Il testo può essere racchiuso in un elemento HTML o gestito direttamente nell'area da disegno. Per realizzarlo graficamente si utilizza la funzione ``text``, che prevede la seguente sintassi:

```plaintext
Syntax: text(words, x, y)
```

Il parametro formale ``words`` indica il testo da disegnare, i parametri formali ``x`` ed ``y`` sono le coordinate del punto in alto a sinistra dal quale disegnare il testo, come nel seguente esempio:

```javascript
text("questo è un testo", 20, 340);
```

Un'alternativa è rappresentata dalla stessa funzione che utilizza però una sintassi alternativa:

```plaintext
Syntax: text(words, x, y, base, altezza)
```

Il parametro formale ``words`` indica il testo da disegnare, i parametri formali ``x`` ed ``y`` sono le coordinate del punto in alto a sinistra dal quale disegnare il testo, ``base`` ed ``altezza`` sono le dimensioni del rettangolo nel quale racchiudere il testo, come nel seguente esempio:

```javascript
text("questo è un testo troppo lungo", 20, 360, 160, 20);
```

Bisogna prestare attenzione al fatto che se il testo è troppo grande e non può essere racchiuso nell'area del rettangolo, la parte eccessiva del testo non sarà disegnata.

## Esempio completo

Di seguito, si visualizza un esempio completo delle figure realizzate mediante il codice riportato nei vari esempi mostrati:

![p5.js - Basi della grafica 2D](/static/coding/web/p5js/basics.png "p5.js - Basi della grafica 2D")

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
