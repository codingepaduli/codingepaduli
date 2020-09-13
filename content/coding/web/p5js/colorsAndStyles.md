---
type: "p5js"
title: "03 - Colori e stili"
description: "Colori e stili"
date: 2020-09-13
publishdate: 2020-09-13
lastmod: 2020-09-13
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Colori e stili"
externalJS: ["https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.1.9/p5.js"]
customJS: ["/static/coding/web/p5js/colors01.js", "/static/coding/web/p5js/colors02.js", "/static/coding/web/p5js/colors03.js"]
---

# Colori e stili

I colori, in ambito informatico, sono espressi attraverso differenti modelli. Quelli utilizzabili nella libreria p5.js sono i seguenti:
- **RGB**: indica il modello Red-Green-Blue, nel quale i colori sono espressi come combinazione di rosso, verde, blu;
- **HSB**: indica il modello Hue-Saturation-Brightness, nel quale i colori sono espressi come combinazione di tonalità, saturazione e luminosità.

## Modello di colori RGB

Il modello **RGB** esprime i colori come combinazione di colori "primari", che in questo modello sono il Rosso, il Verde ed il Blu. 

![Image](https://p5js.org/assets/learn/color/rgb.jpg "p5js - Modello RGB")

Ogni colore è definito come una combinazione di quantità dei tre colori elencati. La quantità applicabile per ogni colore primario va da 0 (zero) a 255, quindi un colore lo si può esprimere come una terna di quantità (**r**, **g**, **b**), in cui **r** è la quantità di rosso, **g** è la quantità di verde e **b** è la quantità di blu.

Come ci si può aspettare, quindi, in questo modello:
- il colore rosso si esprime impostando solo la quantità massima di rosso: (255, 0, 0);
- il colore verde si esprime impostando solo la quantità massima di verde: (0, 255, 0);
- il colore blue si esprime impostando solo la quantità massima di blu: (0, 0, 255);
- il colore nero si esprime impostando a zero tutte le quantità: (0, 0, 0);
- il colore bianco si esprime impostando al massimo tutte le quantità: (255, 255, 255);

Il problema di questo modello è che per una persona non è intuitivo indicare le quantità dei colori primari per ottenere il viola o il marrone o il celeste.

## Modello di colori HSB

Il modello Hue-Saturation-Brightness è un modello più intuitivo per le persone, perchè definisce il colore nel seguente spazio dei colori:

![Image](https://p5js.org/assets/learn/color/hsb.png "p5js - Modello HSB")

In questo spazio curvo, l'angolo definisce la tonalità, detta anche tinta. Quindi troviamo la tonalità rossa a 0 gradi, la tonalità verde a 120 gradi e la tonalità blu a 240 gradi, e nel mezzo tutte le altre sfumature di tonalità di colori.

La saturazione indica quanto forte o, al contrario, pallida si vuole la tonalità di colore. Saturazioni forti rendono la tonalità di colore molto accesa, saturazioni deboli la rendono vicina ad un colore bianco.
 
La brillantezza indica quanto luminosa si vuole la tonalità di colore. 

Ogni colore è definito come una combinazione delle tre componenti elencate. Il valore applicabile per ogni componente va da 0 (zero) a 255, quindi un colore lo si può esprimere come una terna di quantità (**h**, **s**, **b**), in cui **h** è il valore che esprime la tonalità, **s** è il valore che indica la saturazione e **b** è il valore che definisce la brillantezza.

Come ci si può aspettare, quindi, in questo modello, una volta scelta la tonalità, ad esempio il rosso, è facile ottenere un rosso forte e carico impostando valori alti di saturazione e brillantezza; viceversa, con valori bassi di saturazione e brillantezza si otterrà un colore vicino al rosa (che è un rosso pallido) scuro;

## Impostare il modello di colori

Per passare da un modello all'altro, è necessario utilizzare la funzione ``colorMode``, che prende come parametro una costante rappresentativa del modello di colori da utilizzare.
Le costanti sono le seguenti:
- ``RGB``, costante che indica di utilizzare il modello RGB;
- ``HSB``, costante che indica di utilizzare il modello HSB.

Un esempio d'uso per scegliere il modello di colori da utilizzare è il seguente:
```javascript
colorMode(RGB);
```

## Disegnare testi e figure colorati

### Usare un colore di sfondo

Fin'ora abbiamo utilizzato la funzione ``background`` per impostare lo sfondo. Questa funzione prevede differenti modalità per indicare il colore di sfondo. La modalità tipica è di utilizzare tre parametri per indicare il colore nel modello di colori utilizzato.

Ad esempio, per impostare uno sfondo rosso usando il modello di colori **HSB**, si utilizza il seguente codice:

```javascript
colorMode(HSB);
background(0, 255, 255);
```

Come secondo esempio, per impostare uno sfondo blu usando il modello di colori **RGB**, si utilizza il seguente codice:

```javascript
colorMode(RGB);
background(0, 0, 255);
```

### Usare un colore di riempimento

Per scegliere il colore (sempre riferito al modello di colori utilizzato) di **riempimento** da utilizzare per qualsiasi entità da disegnare, si utilizza la funzione ``fill``, che usa tre parametri per indicare il colore. 

Una volta impostato il colore di **riempimento**, questo sarà **memorizzato** e quindi sarà utilizzato per qualsiasi entità da disegnare. Se si vuole cambiare il colore di riempimento, bisogna richiamare nuovamente la funzione ``fill`` impostando un'altro colore. 

Ad esempio, supponiamo di voler disegnare un triangolo ed un cerchio di un colore, e poi un rettangolo ed un quadrato di un secondo colore, si utilizzerà il seguente codice:

```javascript
colorMode(RGB);
background(0, 0, 255);

fill(255, 255, 0); // primo colore, combinando rosso e verde
triangle(20, 60, 20, 100, 60, 100);
circle(100, 80, 40);

fill(0, 255, 255); // secondo colore, combinando verde e blu
square(20, 140, 40);
rect(80, 140, 80, 20);
```

Il risultato sarà il seguente:

![Image](/static/coding/web/p5js/colors01.png "p5js - Uso di colori differenti")

### Usare uno stile di linea

Punti, linee e contorni possono essere stilizzati impostando lo spessore delle linee, il colore, il tipo di linea (continua, tratteggiata, ecc..).

Per impostare lo spessore, si utilizza la funzione ``strokeWeight`` che prende come parametro lo spessore in pixel della linea, come nel seguente esempio:

```javascript
strokeWeight(4);
```

Per scegliere il colore (sempre riferito al modello di colori utilizzato) di **linea** da utilizzare per qualsiasi entità da disegnare, si utilizza la funzione ``stroke``, che usa tre parametri per indicare il colore. 

Una volta impostato il colore di **linea**, questo sarà **memorizzato** e quindi sarà utilizzato per qualsiasi entità da disegnare. Se si vuole cambiare il colore di linea, bisogna richiamare nuovamente la funzione ``stroke`` impostando un'altro colore. 

Ad esempio, supponiamo di riprendere l'esempio precedente e di voler aggiungere anche stile di linea e colore di contorno delle figure. Per effettuare ciò, si utilizzerà il seguente codice:

```javascript
colorMode(RGB);
background(0, 0, 255);

strokeWeight(4);     // primo spessore di linea
stroke(0, 204, 255); // primo colore di linea

fill(255, 255, 0); // primo colore di riempimento
triangle(20, 60, 20, 100, 60, 100);
circle(100, 80, 40);

strokeWeight(8);     // secondo spessore di linea
stroke(255, 204, 0); // secondo colore di linea

fill(0, 255, 255); // secondo colore di riempimento
square(20, 140, 40);
rect(80, 140, 80, 20);
```

Il risultato sarà il seguente:

![Image](/static/coding/web/p5js/colors02.png "p5js - Uso di colori differenti anche per i contorni")

### Usare uno stile di testo

Il testo può essere stilizzato impostando il carattere, la dimensione, l'allineameno, ecc...

Per impostare la dimensione del testo, si utilizza la funzione ``textSize``, che prende come parametro la dimensione in pixel del testo, come nel seguente esempio:

```javascript
textSize(16);
text("testo", 100, 50);
```

Una volta impostata la dimensione del testo, questa sarà **memorizzato** e quindi sarà utilizzata per qualsiasi testo da disegnare. Se si vuole cambiare la dimensione del testo, bisogna richiamare nuovamente la funzione ``textSize`` impostando un'altro colore. 

Lo stesso discorso vale per l'allineamento, che viene memorizzato e quindi utilizzato per qualsiasi testo da disegnare.

L'allineameno può essere verticale e/o orizzontale e si imposta mediante la funzione ``textAlign``, che prende come parametri due costanti che indichino rispettivamente l'allineameno verticale e orizzontale da applicare; La libreria p5.js prevede le seguenti costanti:
- ``LEFT`` indica l'allineameno orizzontale a sinistra;
- ``CENTER`` indica l'allineameno orizzontale centrale;
- ``RIGHT`` indica l'allineameno orizzontale a destra;
- ``TOP``  indica l'allineameno verticale in alto;
- ``BOTTOM`` indica l'allineameno verticale in basso;
- ``CENTER`` indica l'allineameno verticale al centro;
- ``BASELINE`` indica l'allineameno verticale sulla linea di base;

Un esempio d'uso dell'allineamento del testo è il seguente:
```javascript
textAlign(RIGHT, CENTER);
text("testo", 100, 50);
```

Anche i classici stili del testo sono indicati attraverso delle costanti, di seguito elencate:
- ``NORMAL``: indica lo stile di testo **normale**;
- ``ITALIC``: indica lo stile di testo **corsivo**;
- ``BOLD``: indica lo stile di testo **grassetto**;
- ``BOLDITALIC``: indica lo stile di testo **corsivo-grassetto**.

Per impostare la dimensione del testo, si utilizza la funzione ``textStyle``, che prende come parametro la costante di allineameno tra quelle precedentemente elencate, come nel seguente esempio:

```javascript
textStyle(ITALIC);
text("testo", 100, 50);
```

Una volta impostato lo stile del testo, questo sarà **memorizzato** e quindi sarà utilizzato per qualsiasi testo da disegnare. Se si vuole cambiare lo stile del testo, bisogna richiamare nuovamente la funzione ``textSize`` impostando un'altro colore. 

Per il caricamento e la scelta del carattere da utilizzare (in inglese il **font**), si rimanda alle specifiche della libreria.

Di seguito un esempio completo del disegno del testo con il codice fino ad ora utilizzato:
```javascript
textSize(16);
textAlign(RIGHT, CENTER);
textStyle(ITALIC);
text("testo", 100, 50);
```

Il risultato sarà il seguente:

![Image](/static/coding/web/p5js/colors03.png "p5js - Uso dello stile del testo")
