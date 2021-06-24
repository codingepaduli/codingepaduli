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
toc: true
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

## Sistema di coordinate

Il sistema di coordinate **cartesiane**, tipicamente usato da librerie di grafica computerizzata 2D, è caratterizzato dagli assi X ed Y che si intersecano nell'angolo in alto a sinistra dell'area da disegno. In tale estremità si trova, quindi, l'origine degli assi, rappresentata dal punto di coordinate (0,0).

La particolarità di questo sistema di coordinate è l'asse Y invertito, cioè i valori positivi sono in basso ed i negativi in alto. Solo i punti che hanno entrambe le coordinate (x, y) con valore positivo saranno disegnati nell'area da disegno.

Di seguito si mostrano le differenze tra il classico sistema cartesiano e la variante utilizzata in p5.js:

![p5.js - Sistema di coordinate](https://p5js.org/assets/learn/coordinate-system-and-shapes/images/drawing-03.svg "p5.js - Sistema di coordinate")

### Misurazione angoli

In ambito matematico, gli angoli sono tipicamente espressi mediante due differenti unità di misura: il **grado d'arco** (detto anche grado sessagesimale) ed il **radiante**, che fa parte del **sistema internazionale di unità di misura**.

Un grado d'arco è la misura dell'angolo che si ha in corrispondenza di un arco di circonferenza che misura 1/360 della circonferenza di un cerchio.

Un radiante è la misura dell'angolo che si ha in corrispondenza di un arco di circonferenza di lunghezza pari al raggio.

Una caratteristica importante della libreria p5.js è che gli angoli sono misurati seguendo un **senso orario**. Il programmatore può esprimere le grandezze angolari in gradi d'arco o radianti, anche se in alcune casistiche è possibile utilizzare esclusivamente valori espressi in radianti.

Possiamo fare un'analogia con il quadrante di un orologio per misurare gli angoli. Ponendo la lancetta delle ore sempre sul numero tre (ore 3) ed utilizzando la lancetta dei minuti per definire l'ampiezza dell'angolo, il classico valore **novanta gradi** sull'orologio non corrisponde alle ore **3.00** come ci aspetterebbe, ma corrisponde alle ore **3.30**. Allo stesso modo, un angolo di **zero gradi** corrisponde alle ore **3.15**, un angolo di **quarantacinque gradi** corrisponde alle ore **3.22** circa, un angolo di **centottanta gradi d'arco** corrisponde alle ore **3.45**.

<!-- TODO aggiungere immagine degli orologi -->

## API

Per poter utilizzare correttamente la libreria p5.js, è necessario conoscere l'interfaccia esposta dalla libreria stessa.

Il termine **interfaccia**, nelle discipline tecniche, indica l'area (la "faccia") esposta da un sistema, al fine di potervi interagire. Un esempio sono le interfacce grafiche di Microsoft Windows, che permettono di interagire con i calcolatori, oppure le interfacce vocali di iPhone ed Android, con "Siri" ed il famoso "OK Google", che permettono di interagire con gli smartphone.

Nello sviluppo di applicazioni, le interfacce esposte da librerie e linguaggi di programmazione, e quindi anche dalla libreria p5.js, prendono il nome di **Application Programming Interface** (API).

Le API espongono strutture, funzioni, costanti e tanti altri elementi che il programmatore può usare per realizzare la propria applicazione.

Le API sono sempre accompagnate dalla documentazione, che descrive cosa rappresenta una determinata costante oppure come utilizzare una determinata funzione.

Le **costanti**, nell'ambito informatico come nell'ambito matematico, sono dei valori che non variano nel tempo, ed ai quali è associato un nome, come ad esempio la costante fisica **c** che definisce la velocità della luce nel vuoto pari a 299792458 m/s. Per conoscere il nome, il compito e la descrizione di una costante è necessario consultare la documentazione.

Le **funzioni** in ambito informatico sono delle istruzioni particolari che identificano un frammento di codice che svolge uno specifico compito, come il disegno di un cerchio o la creazione dell'area da disegno. Una caratteristica peculiare delle funzioni è che permettono allo sviluppatore di riutilizzare frammenti di codice scritti da altri programmatori.

Una funzione è definita da un **nome**, come ad esempio la funzione logaritmo, che nelle formule matematiche viene definita dal simbolo ``log``, oppure la funzione coseno, che nelle formule matematiche viene definita dal simbolo ``cos``.

Le funzioni possono prevedere dei **parametri** necessari alla realizzazione del compito. Ad esempio, per creare l'area da disegno abbiamo bisogno di due parametri, la larghezza e l'altezza dell'area da creare. Per disegnare un cerchio abbiamo bisogno di tre parametri, le coordinate x ed y del centro ed il raggio del cerchio.

Alcuni parametri possono essere obbligatori, altri facoltativi, e tipicamente sono elencati prima quelli obbligatori e poi, tra parentesi quadre, quelli facoltativi.

Per conoscere il nome, il compito ed i parametri obbligatori o facoltativi di una funzione, è necessario consultare la documentazione.

I parametri indicati nella documentazione sono detti **parametri formali** e, come si vedrà nel capitolo relativo alla creazione di funzioni, sono definiti dallo sviluppatore autore della funzione.

Il nome della funzione insieme alla lista dei parametri formali riportata tra parentesi tonde formano la **firma della funzione**.

### Documentazione delle API

La documentazione delle API della libreria p5.js si può consultare sul sito web della libreria stessa, all'indirizzo [https://p5js.org/reference/](https://p5js.org/reference/ "Documentazione di p5.js").

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

Ogni costante è documentata indicando uno o più esempi d'uso, il nome, la descrizione ed il valore.

La documentazione di ogni funzione riporta:

- uno o più esempi d'uso;
- la descrizione del compito svolto;
- la sintassi d'uso, ovvero la firma della funzione. Ogni parametro formale, obbligatorio o facoltativo, è ulteriormente chiarito con l'indicazione del tipo e della descrizione.

#### Esempio di documentazione delle costanti

Un esempio di documentazione delle costanti è quello della documentazione della costante ``PI``. Nella descrizione si legge che questa costante rappresenta la costante matematica **pi greco**, che definisce il rapporto tra la lunghezza della circonferenza e quella del suo diametro. Il nome di questa costante è ``PI`` ed il valore associato è 3.14159265358979323846...

Nella documentazione sono definite anche le seguenti costanti:

- ``TWO_PI``, che rappresenta il doppio del valore della costante ``PI``, con valore associato 6.28318530717958647693...
- ``HALF_PI``, che rappresenta la metà del valore della costante ``PI``, con valore associato 1.57079632679489661923...
- ``QUARTER_PI``, che rappresenta un quarto del valore della costante ``PI``, con valore associato 0.7853982...

#### Esempio di documentazione delle funzioni

Un esempio di documentazione di una funzione è quello della documentazione della funzione ``createCanvas``. Nella documentazione è descritto che questa funzione ha il compito di creare l'area da disegno nella quale poi disegnare. La sintassi, ovvero la firma, è la seguente:

```plaintext
Syntax: createCanvas(w, h)
```

I parametri formali sono ``w`` ed ``h`` e sono entrambi obbligatori, dato che non sono riportati tra parentesi quadre. La documentazione dei parametri riporta:

```plaintext
Parameters:
    w    Number: width of the canvas
    h    Number: height of the canvas
```

Quindi il parametro formale ``w`` è un numero e rappresenta la larghezza dell'area da disegno. Il parametro formale ``h`` è un numero e rappresenta l'altezza dell'area da disegno.

Un secondo esempio di documentazione di una funzione è quello della documentazione della funzione ``background``. Nella documentazione è descritto che questa funzione ha il compito di disegnare uno sfondo colorato nell'area da disegno. La sintassi, ovvero la firma, è la seguente:

```plaintext
Syntax:
    background(gray, [a])
    background(v1, v2, v3, [a])
```

Come si nota, si può creare lo sfondo usando una delle due firme. La prima firma crea uno sfondo grigio, la seconda crea uno sfondo colorato.

I parametri formali per la prima firma sono ``gray`` ed ``a``, il primo obbligatorio, il secondo facoltativo, dato che è riportato tra parentesi quadre.

I parametri formali per la seconda firma sono ``v1``, ``v2``, ``v3`` ed ``a``, i primi tre obbligatori, il quarto facoltativo, dato che è riportato tra parentesi quadre.

La documentazione dei parametri riporta:

```plaintext
Parameters:
    gray   Number: specifies a value between white and black
    v1     Number: red or hue value (depending on the current color mode)
    v2     Number: green or saturation value (depending on the current color mode)
    v3     Number: blue or brightness value (depending on the current color mode)
    a      Number: opacity of the background relative to current color range (default is 0-255) (Optional)
```

Quindi il parametro formale ``gray`` è un numero e rappresenta la quantità di grigio per colorare l'area da disegno.
I parametri formali ``v1``, ``v2``, ``v3`` sono numerici e rappresentano la quantità di colore da applicare.
Il parametro formale ``a`` è un numero e rappresenta la quantità di trasparenza del colore.

Si rimanda al capitolo sui colori per una spiegazione più dettagliata di questi parametri. In questo paragrafo, l'attenzione è focalizzata sulla documentazione dei parametri.

## Primitive per la grafica 2D

Le primitive grafiche, nella moderna computer grafica, sono le funzioni che realizzano le figure geometriche più elementari, come punti, linee e triangoli. I poligoni e curve sono considerate primitive, anche se possono essere realizzate combinando altre primitive. Oggetti e scene più complesse sono realizzati combinando l'uso di più primitive.

Ogni primitiva è una funzione identificata da un nome e da una lista di parametri, che possono essere obbligatori o facoltativi, riportati tra parentesi tonde.

Di seguito saranno elencate le primitive principali con i parametri necessari ad indirizzare il lettore ad uso basilare, per tutti gli altri dettagli si rimanda alla documentazione ufficiale.

### Creazione dell'area da disegno

L'area da disegno è la tavola sulla quale disegnare ed è caratterizzata da una larghezza ed un'altezza. La funzione progettata allo scopo è ``createCanvas``, la cui sintassi è la seguente:

```plaintext
Syntax: createCanvas(w, h)
```

I parametri formali sono ``w`` ed ``h``, che rappresentano la larghezza e l'altezza dell'area da disegno.

### Disegno di un punto

Il punto è l'entità più semplice da realizzare. La funzione progettata allo scopo è ``point``, la cui sintassi è la seguente:

```plaintext
Syntax: point(x, y, [z])
```

I parametri formali sono ``x``, ``y`` e ``z``, che rappresentano le coordinate del **punto**.  I primi due parametri sono obbligatori e rappresentano le coordinate in un piano, il terzo parametro è tra parentesi quadre, quindi è opzionale, e lo si utilizza per indicare una terza coordinata in un sistema a tre dimensioni (non più un piano, ma uno spazio).

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
Syntax: rect(x, y, w, h)
```

I parametri formali ``x`` ed ``y`` sono le coordinate del punto da cui iniziare a disegnare, ``w`` ed ``h`` sono le dimensioni della base e dell'altezza del rettangolo, come nel seguente esempio:

```javascript
rect(80, 140, 80, 20);
```

### Disegno di un ellisse

Un ellisse è una sorta di circonferenza "schiacciata", la si può interpretare come una sorta di circonferenza con larghezza ed altezza differenti. Nel caso in cui la larghezza è uguale all'altezza, la figura risultante è una circonferenza. Matematicamente parlando, l'ellisse ha due punti focali invece di uno (a differenza della circonferenza che ha come unico fuoco il centro).

La funzione per realizzare un ellisse è ``ellipse``, la cui sintassi è la seguente:

```plaintext
Syntax: ellipse(x, y, w, h)
```

I parametri formali ``x`` ed ``y`` sono le coordinate del punto da cui iniziare a disegnare, ``w`` ed ``h`` sono le dimensioni della larghezza e dell'altezza dell'ellisse, come nel seguente esempio:

```javascript
ellipse(60, 220, 80, 40);
```

### Disegno di un arco di circonferenza e d'ellisse

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

### Disegno di un testo

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

<!-- TODO da sistemare documentazione sugli angoli -->

## Editor online per p5.js

Il punto di partenza, per iniziare velocemente ad esplorare le potenzialità della libreria p5.js, è sicuramente l'editor presente sul sito web [https://editor.p5js.org](https://editor.p5js.org "Editor online di p5.js"), che si presenta con la seguente interfaccia grafica:

![p5.js - Editor online](/static/coding/web/p5js/basics-p5-js-editor.png "p5.js - Editor online")

L'interfaccia grafica presenta i tipici componenti di un ambiente di sviluppo:
- la barra dei menù, con a sinistra i classici menu per salvare il progetto, accedere alla guida, mentre a destra troviamo i pulsanti per effettuare il login o la registrazione;
- la barra dei pulsanti, contenente i pulsanti per avviare e fermare il proprio lavoro, la casella di scelta per aggiornare automaticamente l'area di lavoro mentre si scrive il codice, la casella di testo nella quale inserire il nome del progetto ed, infine, il pulsante delle impostazioni;
- l'area di progetto, contenente i file che compongono il progetto;
- l'area del codice, per la modifica del codice relativo al file selezionato nell'area di progetto;
- l'area di anteprima, per visualizzare il lavoro realizzato;
- la console per visualizzare i messaggi di informazione, di avviso e di errore.

Effettuando il login, utilizzando un servizio esterno tra quelli proposti oppure procedendo alla registrazione, è possibile gestire i propri progetti, le proprie collezioni ed utilizzare altre funzionalità non consentite all'utente non registrato. La barra dei menù, in alto a destra, riporta il nome utente e le diverse aree a cui l'utente può accedere. Il menù File, appena si salva il progetto, si arricchisce di nuove voci che permettono di duplicare il progetto, condividerlo o aggiungerlo ad una collezione.

![p5.js - Editor online](/static/coding/web/p5js/basics-p5-js-editor-logged-in.png "p5.js - Editor online con i menù visualizzati dopo il login")

Cliccando sulla voce di menu "share" presente nel menù "File", si apre una finestra di dialogo contenente 4 opzioni, come da immagine seguente:

![p5.js - Editor online](/static/coding/web/p5js/basics-p5-js-editor-logged-in-sharing.png "p5.js - Editor online - finestra di dialogo per la condivisione progetto")

Le voci visualizzate nell'immagine sono:

- "Embed": contiene il codice HTML per includere il lavoro in una pagina esterna;
- "Present": contiene un collegamento ad un'immagine di presentazione del progetto, visualizzabile cliccando sul pulsante associato;
- "Fullscreen": contiene un collegamento che permette di aprire in modalità "schermo intero" l'area di anteprima;
- "Edit": contiene un collegamento che permette di aprire il progetto per modificarlo.

Nell'area personale è possibile gestire i propri progetti e le proprie collezioni. Il menù contestuale ad ogni progetto permette di gestire le varie azioni sul progetto, come da immagine seguente:

![p5.js - Editor online](/static/coding/web/p5js/basics-p5-js-editor-logged-in-projects.png "p5.js - Editor online - finestra di dialogo per la condivisione progetto")

## Struttura del progetto

L'editor online è di grande utilità per iniziare, tuttavia si può voler lavorare in modalità "off-line" (senza internet, quindi senza utilizzare l'editor online) oppure si può voler realizzare una pagina web che contenga il lavoro realizzato, in modo tale da poterla inglobare in un proprio sito web. Per le casistiche elencate e per altre eventuali casistiche, è necessario conoscere la composizione del progetto realizzato o da realizzare.

Dato che un progetto può essere scaricato dall'editor online, partiamo proprio dalla descrizione del file scaricato. Si tratta di un archivio compresso, come si può notare dall'estensione ".zip"). Estraendo questo archivio in una cartella vuota, notiamo che vengono generati alcuni file:

Il file ``index.html`` è semplicemente una pagina HTML vuota nella quale sono presenti:

- un riferimento alla libreria ``p5.js``, definito tramite l'etichetta ``script``, come nel seguente esempio:

```html
<script src="p5.js"></script>
```

- un riferimento alla libreria ``p5.sound.min.js``, definito tramite l'etichetta ``script``, come nel seguente esempio:

```html
<script src="p5.sound.min.js"></script>
```

- un riferimento al codice JavaScript realizzato, definito tramite l'etichetta ``script``, come nel seguente esempio:

```html
<script src="sketch.js"></script>
```

- un riferimento allo stile della pagina, definito tramite l'etichetta ``link``, come nel seguente esempio:

```html
<link rel="stylesheet" type="text/css" href="style.css">
```

In questo contesto, non entreremo nei dettagli del linguaggio HTML che è alla base di una pagina web, e nemmeno nei dettagli del linguaggio CSS necessario a definire gli stili, ma focalizzeremo l'attenzione sulla struttura del progetto.

Come si nota, i riferimenti non indicano un percorso assoluto, per cui i quattro file devono essere presenti nella stessa cartella della pagina web ``index.html``, in caso contrario possono essere generati degli errori ed il lavoro realizzato non verrà mostrato.

Il vantaggio di usare questa struttura basata su una cartella permette allo sviluppatore di lavorare senza bisogno di un collegamento ad internet. Inoltre, più lavori possono condividere le stesse librerie e gli stessi stili.

### Progetto in un singolo file

Nel caso sia necessario, è possibile racchiudere tutto il lavoro in un singolo file. Invece di utilizzare dei riferimenti ad altri file, si può scegliere di caricare le librerie necessarie da una risorsa presente su web, utilizzando un indirizzo assoluto, come nel seguente esempio:

```html
<script src="https://cdn.jsdelivr.net/npm/p5@1.3.1/lib/p5.js"></script>
<script src="https://cdn.jsdelivr.net/npm/p5@1.3.1/lib/addons/p5.sound.js"></script>
```

In questo modo, le librerie saranno scaricate da internet all'apertura della pagina web.

Lo stile, invece, può essere incluso direttamente nella pagina web, all'interno delle etichette di stile:

```html
<style>
    html, body { margin: 0; padding: 0; }
    canvas { display: block; }
</style>
```

Allo stesso modo, il programma realizzato, magari tramite l'editor online, deve essere incluso nelle etichette ``script``, come nel seguente esempio:

```html
<script>
    function setup() {
        createCanvas(400, 400);
    }

    function draw() {
        background(220);
        circle(100, 150, 50);
    }
</script>
```

L'esempio completo della pagina web è il seguente:

```html
<!DOCTYPE html>
<html>
    <head>
        <script src="https://cdn.jsdelivr.net/npm/p5@1.3.1/lib/p5.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/p5@1.3.1/lib/addons/p5.sound.js"></script>
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
                circle(100, 150, 50);
            }
        </script>
    </body>
</html>
```

## Struttura del programma

Sia che si lavori con una singola pagina web, sia che si utilizzi l'editor online, sia che si utilizzino più file per definire il progetto, i programmi in ``p5.js`` devono sempre dichiarare i due blocchi principali ``setup`` e ``draw``.

Le istruzioni contenute nel blocco ``setup`` sono eseguite una sola volta e servono ad impostare gli strumenti e le condizioni iniziali.

Le istruzioni contenute nel blocco ``draw`` sono eseguite ciclicamente e servono a ridisegnare continuamente l'area di lavoro.

Come si può notare, sia le istruzioni iniziali, sia le istruzioni di disegno ciclico sono racchiuse tra le parentesi graffe ``{`` e ``}`` che indicano l'inizio e la fine del blocco istruzioni.

### Invocare le funzioni

In precedenza abbiamo detto che una funzione identifica un frammento di codice che svolge uno specifico compito, ha una firma formata dal nome e, tra parentesi tonde, dei parametri formali.

Quando il programmatore realizza che deve svolgere un compito già svolto da una funzione conosciuta, può delegare tale compito a questa funzione. Tecnicamente si dice che si **invoca** una funzione quando si vuole indicare che viene utilizzata una funzione. Per poterla invocare, il programmatore verifica sulla documentazione la firma della funzione, in particolare prendendo nota del nome e dei parametri formali.

Se nella firma della funzione non sono presenti parametri formali, la funzione viene invocata semplicemente utilizzando la firma (il nome seguito da parentesi tonde):

```javascript
funzione()
```

Se invece nella firma della funzione sono presenti parametri formali, allora ad ogni parametro formale si deve sostituire un valore. I valori assegnati prendono il nome di **parametri attuali**.

In questo caso, per invocare una funzione, bisogna semplicemente scrivere il nome seguito da parentesi tonda aperta, la lista di parametri attuali, e la parentesi chiusa.

```javascript
funzione(p1, p2, ...)
```

Ad esempio, volendo creare un'area da disegno di larghezza 600 ed altezza 400, il programmatore verifica sulla documentazione la firma della funzione:

```plaintext
Syntax: createCanvas(w, h)

Parameters:
    w    Number: width of the canvas
    h    Number: height of the canvas
```

Il programmatore, quindi, sostituisce al parametro formale ``w`` (che indica la larghezza dell'area da disegno) il valore ``600`` ed al parametro formale ``h`` (che indica l'altezza dell'area da disegno) il valore ``400``, quindi invoca la funzione nel seguente modo:

```javascript
createCanvas(600, 400);
```

Nello stesso esempio, per creare un cerchio con centro alle coordinate (100, 150) e con diametro 50, verifica sulla documentazione la firma della funzione:

```plaintext
Syntax: circle(x, y, diameter)

Parameters:
    x           Number: x-coordinate of the centre of the circle.
    y           Number: y-coordinate of the centre of the circle.
    diameter    Number: diameter of the circle.
```

Il programmatore, quindi, sostituisce al parametro formale ``x`` (che indica la coordinata x del centro del cerchio) il valore ``100``, al parametro formale ``y`` (che indica la coordinata y del centro del cerchio) il valore ``150`` ed al parametro formale ``diameter`` il valore ``50``, quindi invoca la funzione nel seguente modo:

```javascript
circle(100, 150, 50);
```

Queste istruzioni devono essere inserite o nel blocco ``setup`` oppure nel blocco ``draw``. Ad esempio:

```javascript
function setup() {
    createCanvas(400, 400);
    circle(100,150, 50);
}

function draw() {

}
```

Il risultato è il seguente:

![p5.js - Primo esempio](/static/coding/web/p5js/basics01.png "p5.js - Primo esempio")

Alcune operazioni, invece, devono essere effettuate una sola volta, come ad esempio la creazione dell'area da disegno, per cui è **errato** invocare la funzione ``createCanvas()`` all'interno del blocco ``draw()``.

```javascript
function draw() {
    // ERRORE
    createCanvas(400, 400);
}
```

### Esercizio svolto

Creiamo un'area da disegno, delle dimensioni di 600 per 400, nella quale disegnamo:

- un punto alle coordinate (20, 20);
- una linea che parte dalle coordinate (80, 20) e termina alle coordinate (120, 40);
- un triangolo con vertici i punti alle coordinate (20, 60), (20, 100) e (60, 100);
- una circonferenza alle coordinate (100, 80) e di diametro 40;
- un quadrato con angolo in alto a sinistra posizionato alle coordinate square(20, 140) e con lato 40;
- un rettangolo con angolo in alto a sinistra posizionato alle coordinate (80, 140) e con larghezza 80 ed altezza 20;
- un ellisse con centro alle coordinate (60, 220), con larghezza 80 ed altezza 40;
- un arco di circonferenza

arc(40, 300, 40, 40, PI, TWO_PI);
arc(100, 300, 40, 80, PI, TWO_PI);


ricordando che la firma della funzione è ``createCanvas(w, h)``, per invocare la funzione bisogna scrivere:

Di seguito, si visualizza un esempio completo delle figure realizzate mediante il codice riportato nei vari esempi mostrati:

![p5.js - Basi della grafica 2D](/static/coding/web/p5js/basics.png "p5.js - Basi della grafica 2D")

## Posizionamento dell'area da disegno

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
