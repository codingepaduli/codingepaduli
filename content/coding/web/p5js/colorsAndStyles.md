---
type: "p5js"
title: "03 - Colori e stili"
description: "Colori e stili"
date: 2020-09-13
publishdate: 2020-09-13
lastmod: 2020-09-13
spellcheck: 2020-12-11
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Colori e stili"
---

# Colori e stili

Il cervello umano interpreta lo spettro elettromagnetico come **colore**.

Le sezioni non visibili dello spettro sono da una parte onde radio ed infrarossi, che hanno bassa energia e raramente risultano dannosi per gli organismi viventi, e dall'altra ultravioletto e raggi gamma, che hanno alta energia e risultano dannosi per gli organismi viventi.

La sezione centrale dello spettro è visibile e va dal rosso al violetto, passando per arancione, giallo, verde e blu. Se tutti questi colori sono percepiti insieme, cioè se tutto l'intervallo dello spettro visibile arriva all'occhio umano, il colore risultante è il bianco. Se nessuna parte dello spettro visibile arriva all'occhio umano, c'è il "buio" che interpretiamo come nero.

Gli oggetti, però, non hanno un colore proprio, sono visti grazie alla luce che si riflette su di essi. Un foglio bianco riflette quasi tutta la luce che riceve. Un foglio nero la assorbe quasi del tutto.

Quando applichiamo il colore "giallo" ad un foglio bianco, parte della luce viene assorbita dall'inchiostro del pennarello, quindi la luce riflessa viene interpretata di colore "giallo". Si può affermare che l'inchiostro giallo "sottrae", in un certo qual modo, una parte dello spettro visibile.

I colori, in ambito informatico, sono espressi attraverso differenti modelli:

- **RGB**: indica il modello Red-Green-Blue, nel quale i colori sono espressi come combinazione di rosso, verde e blu;
- **CMYK**: indica il modello Cyan-Magenta-Yellow-blacK, nel quale i colori sono espressi come combinazione di ciano, magenta, giallo e nero.
- **HSB**: indica il modello Hue-Saturation-Brightness, nel quale i colori sono espressi come combinazione di tonalità, saturazione e luminosità.

## Modello di colori RGB

Il modello **RGB** è un modello di colori **additivo**, esprime i colori come somma di colori "primari", che in questo modello sono il Rosso, il Verde ed il Blu.

![p5.js - Modello di colori RGB](https://p5js.org/assets/learn/color/rgb.jpg "p5.js - Modello di colori RGB")

Ogni colore è definito come una somma delle quantità dei tre colori elencati. La quantità applicabile per ogni colore primario va da 0 (zero) a 255, quindi un colore lo si può esprimere come una terna di quantità (**r**, **g**, **b**), in cui **r** è la quantità di rosso, **g** è la quantità di verde e **b** è la quantità di blu.

Come ci si può aspettare, quindi, in questo modello:

- il colore rosso si esprime impostando solo la quantità massima di rosso: (255, 0, 0);
- il colore verde si esprime impostando solo la quantità massima di verde: (0, 255, 0);
- il colore blue si esprime impostando solo la quantità massima di blu: (0, 0, 255);
- il colore nero si esprime impostando a zero tutte le quantità: (0, 0, 0);
- il colore bianco si esprime impostando al massimo tutte le quantità: (255, 255, 255), ovvero sommando tutti i colori (il modello è additivo);

Il problema principale di questo modello consiste nel fatto che non è intuitivo indicare le quantità dei colori primari necessari per ottenere un qualsiasi altro colore, come il viola, il marrone o il celeste.

## Modello di colori CMYK

Il modello **CMYK** è un modello di colori **sottrattivo**, esprime i colori come combinazione di colori "primari", che in questo modello sono il ciano, il magenta, il giallo ed il nero.

![p5.js - Modello di colori CMYK](https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/CMYK_subtractive_color_mixing.svg/300px-CMYK_subtractive_color_mixing.svg.png "p5.js - Modello di colori CMYK")

Il colore ciano è il colore complementare al rosso, ovvero il colore che si ottiene sottraendo il colore rosso dalla luce bianca.

Il colore magenta è il colore complementare al verde, ovvero il colore che si ottiene sottraendo il colore verde dalla luce bianca.

Il colore giallo è il colore complementare al viola, ovvero il colore che si ottiene sottraendo il colore viola dalla luce bianca.

Dato che miscelando ciano, magenta e giallo si ottiene un colore molto scuro (il modello è sottrattivo), ma non un vero e proprio nero, in questo modello si è aggiunto il colore nero per completare lo spettro di colori visibili.

Anche per questo modello, il problema principale consiste nel fatto che non è intuitivo indicare le quantità dei colori primari necessari per ottenere un qualsiasi altro colore, come il viola, il marrone o il celeste.

## Modello di colori HSB

Il modello Hue-Saturation-Brightness è un modello utilizzato al fine di rendere più intuitivo la definizione di un colore. In questo modello, ogni colore è definito nel seguente spazio curvo:

![p5.js - Modello di colori HSB](https://p5js.org/assets/learn/color/hsb.png "p5.js - Modello di colori HSB")

L'angolo definisce la tonalità del colore, detta anche tinta. Quindi troviamo la tonalità rossa a 0 gradi, la tonalità verde a 120 gradi e la tonalità blu a 240 gradi, e nel mezzo tutte le altre sfumature di tonalità di colori.

La saturazione indica quanto forte o, al contrario, pallida si vuole la tonalità di colore. Saturazioni forti rendono la tonalità di colore molto accesa, saturazioni deboli la rendono vicina ad un colore bianco.

La brillantezza indica quanto luminosa si vuole la tonalità di colore.

Ogni colore è, quindi, definito come una combinazione delle tre componenti elencate. Il valore applicabile per ogni componente va da 0 (zero) a 255, quindi un colore lo si può esprimere come una terna di quantità (**h**, **s**, **b**), in cui **h** è il valore che esprime la tonalità, **s** è il valore che indica la saturazione e **b** è il valore che definisce la brillantezza.

Come ci si può aspettare, una volta scelta la tonalità, ad esempio il rosso, è facile ottenere un rosso forte e carico impostando valori alti di saturazione e brillantezza; viceversa, è altrettanto intuitivo ottenere un colore rosa scuro (che è un rosso pallido) impostando valori bassi di saturazione e brillantezza.

## Impostare il modello di colori

Solo i modelli ``RGB`` ed ``HSB`` sono implementati dalla libreria p5.js.

Per impostare un modello di colori, è necessario utilizzare la funzione ``colorMode``, che prende come parametro una costante rappresentativa del modello da utilizzare. Le costanti sono le seguenti:

- ``RGB``, costante che indica di utilizzare il modello RGB;
- ``HSB``, costante che indica di utilizzare il modello HSB.

Un esempio d'uso per impostare il modello di colori da utilizzare è il seguente:

```javascript
colorMode(RGB);
```

## Disegnare testi e figure colorati

### Usare un colore di sfondo

Fin'ora abbiamo utilizzato la funzione ``background`` per impostare lo sfondo. Questa funzione prevede differenti modalità per indicare il colore di sfondo. La modalità tipica è di utilizzare tre parametri per indicare il colore nel modello di colori utilizzato.

Ad esempio, per impostare uno sfondo rosso "acceso", usando il modello di colori **HSB**, si utilizza il seguente codice:

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

Una volta impostato il colore di **riempimento**, questo sarà **memorizzato** e quindi sarà utilizzato per qualsiasi entità da disegnare. Se si vuole cambiare il colore di riempimento, bisogna richiamare nuovamente la funzione ``fill`` impostando un altro colore.

Ad esempio, supponiamo di voler disegnare un triangolo ed un cerchio di un colore, e poi un rettangolo ed un quadrato di un secondo colore, si utilizzerà il seguente codice:

```javascript
colorMode(RGB);
background(0, 0, 255);

fill(255, 255, 0); // primo colore, combinazione di rosso e verde
triangle(20, 60, 20, 100, 60, 100);
circle(100, 80, 40);

fill(0, 255, 255); // secondo colore, somma di verde e blu
square(20, 140, 40);
rect(80, 140, 80, 20);
```

Il risultato sarà il seguente:

![p5.js - Uso di più colori](/static/coding/web/p5js/colors01.png "p5.js - Uso di più colori")

### Usare uno stile di linea

Punti, linee e contorni possono essere stilizzati impostando lo spessore delle linee, il colore, il tipo di linea (continua, tratteggiata, ecc..).

Per impostare lo spessore, si utilizza la funzione ``strokeWeight`` che prende come parametro lo spessore in pixel della linea, come nel seguente esempio:

```javascript
strokeWeight(4);
```

Per scegliere il colore (sempre riferito al modello di colori utilizzato) di **linea** da utilizzare per qualsiasi entità da disegnare, si utilizza la funzione ``stroke``, che usa tre parametri per indicare il colore.

Una volta impostato il colore di **linea**, questo sarà **memorizzato** e quindi sarà utilizzato per qualsiasi entità da disegnare. Se si vuole cambiare il colore di linea, bisogna richiamare nuovamente la funzione ``stroke`` impostando un altro colore.

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

![p5.js - Uso di colori differenti anche per i contorni](/static/coding/web/p5js/colors02.png "p5.js - Uso di colori differenti anche per i contorni")

### Usare uno stile di testo

Il testo può essere stilizzato impostando il carattere, la dimensione, l'allineamento, ecc...

Per impostare la dimensione del testo, si utilizza la funzione ``textSize``, che prende come parametro la dimensione in pixel del testo, come nel seguente esempio:

```javascript
textSize(16);
text("testo", 100, 50);
```

Una volta impostata la dimensione del testo, questa sarà **memorizzato** e quindi sarà utilizzata per qualsiasi testo da disegnare. Se si vuole cambiare la dimensione del testo, bisogna richiamare nuovamente la funzione ``textSize`` impostando un altro colore.

Lo stesso discorso vale per l'allineamento, che viene memorizzato e quindi utilizzato per qualsiasi testo da disegnare.

L'allineamento può essere verticale e/o orizzontale e si imposta mediante la funzione ``textAlign``, che prende come parametri due costanti che indichino rispettivamente l'allineamento verticale e orizzontale da applicare; La libreria p5.js prevede le seguenti costanti:

- ``LEFT`` indica l'allineamento orizzontale a sinistra;
- ``CENTER`` indica l'allineamento orizzontale centrale;
- ``RIGHT`` indica l'allineamento orizzontale a destra;
- ``TOP``  indica l'allineamento verticale in alto;
- ``BOTTOM`` indica l'allineamento verticale in basso;
- ``CENTER`` indica l'allineamento verticale al centro;
- ``BASELINE`` indica l'allineamento verticale sulla linea di base;

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

Per impostare la dimensione del testo, si utilizza la funzione ``textStyle``, che prende come parametro la costante di allineamento tra quelle precedentemente elencate, come nel seguente esempio:

```javascript
textStyle(ITALIC);
text("testo", 100, 50);
```

Una volta impostato lo stile del testo, questo sarà **memorizzato** e quindi sarà utilizzato per qualsiasi testo da disegnare. Se si vuole cambiare lo stile del testo, bisogna richiamare nuovamente la funzione ``textSize`` impostando un altro colore.

Per il caricamento e la scelta del carattere da utilizzare (in inglese il **font**), si rimanda alle specifiche della libreria.

Di seguito un esempio completo del disegno del testo con il codice fino ad ora utilizzato:

```javascript
textSize(16);
textAlign(RIGHT, CENTER);
textStyle(ITALIC);
text("testo", 100, 50);
```

Il risultato sarà il seguente:

![p5.js - Uso dello stile del testo](/static/coding/web/p5js/colors03.png "p5.js - Uso dello stile del testo")
