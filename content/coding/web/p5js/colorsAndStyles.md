---
type: "p5js"
title: "p5.js Lez. 03 - Colori e stili"
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
weight: 8800
references:
    -   title: "The color of infinite temperature"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://johncarlosbaez.wordpress.com/2022/01/16/the-color-of-infinite-temperature/"
        description: "For an extremely hot blackbody, the spectrum of light is shown by a color called ‘Perano’, RGB(148, 177, 255)."
---

# La luce ed i colori

<!-- Fonte: Fisicast - La luce -->
Uno dei primi trattati scientifici sul funzionamento della luce e dei colori è il "Kitab al-Manazir" (Manuale di Ottica) pubblicato nel 1015 da Ibn Al-Haytham, uno scienziato vissuto in una zona corrispondente all'attuale Iraq. Questo trattato spiegava già alcuni fenomeni, come il funzionamento della vista o la creazione di un arcobaleno.

![p5.js - Arcobaleno](/static/coding/web/p5js/colors_and_styles_color_rainbow.png "p5.js - Arcobaleno")

Anche Newton nel 1704 pubblicò il suo trattato scientifico "Opticks", uno studio nel quale concluse che la luce è composta da particelle colorate, che si combinano apparendo bianche. Introdusse il termine **spettro dei colori** e decise di suddividerlo in sette colori: rosso, arancione, giallo, verde, blu, indaco e violetto. Il suo esperimento del fascio di luce che attraversava due prismi di vetro, il primo che suddivideva il fascio di luce nei suoi colori primari, ed il secondo che ricomponeva questi colori in un unico fascio di luce bianca, è molto famoso.

![p5.js - Spettro dei colori](/static/coding/web/p5js/colors_and_styles_color_spectrum.png "p5.js - Spettro dei colori")

<!-- Fonte: Fisicast - Una chiacchierata sul Sole -->
Nel 1800 il fisico William Herschel utilizzò un termometro a mercurio per misurare il calore delle differenti bande di luce colorate risultanti dal passaggio della luce attraverso il prisma di vetro. Scoprì che il termometro misurava una temperatura maggiore di quella ambientale anche dopo la banda rossa, dove non c'era più luce visibile, e quindi concluse che doveva esserci una luce invisibile, che chiamò “raggi calorifici”, oggi conosciuti come raggi infrarossi.

<!-- Fonte: Fottuti Geni - J. C. Maxwell -->
Nel 1860 James Clerk Maxwell pubblico il suo lavoro sulla classificazione dei colori e sul principio della sintesi additiva dei colori, definendo i colori primari che compongono la luce: il rosso, il verde ed il blu. Nel 1861, come risultato di questo lavoro, proiettò nell'aula magna della Royal Institution di Londra la prima fotografia a colori della storia.

Nel 1864 Maxwell pubblicò il suo trattato "A Dynamical Theory of the Electromagnetic Field", in cui unificava le leggi che regolano i fenomeni elettrici, magnetici, la luce ed il calore radiante, evidenziando come il campo elettrico ed il campo magnetico avessero la stessa natura della luce, come il segnale elettromagnetico si propaghi come un'onda proprio alla velocità della luce e come il calore sia irradiato sotto forma di onda elettromagnetica.

<!-- Fonte: Fisicast - Il principio fotoelettrico-->
Agli inizi del 1900, Einstein pubblicò il suo studio sull'effetto fotoelettrico, teorizzando che la luce è formata da corpuscoli chiamati fotoni. Nello stesso periodo, Plank spiegò come l'energia dei fotoni fosse direttamente proporzionale alla frequenza. Più è alta la frequenza, più energia trasporta un fotone.

<!-- Fonte: Fisicast - il fotone Phòs -->
Grazie al lavoro di tutti questi geniali scienziati, oggi sappiamo che la luce è irradiata dal Sole sotto forma di onda elettromagnetica e può essere chiamata radiazione elettromagnetica. Lo **spettro elettromagnetico** è l'insieme di tutte le frequenze dei fotoni che compongono il fascio di luce. Questo insieme può essere suddiviso in più categorie:

- **raggi gamma**, **raggi X** ed **raggi ultravioletti**, che hanno alta frequenza ed alta energia, quindi risultano dannosi per gli organismi viventi;
- **raggi visibili**, percepiti dall'uomo come **colore**. In base alla frequenza di questi raggi visibili, percepiamo i colori che vanno dal rosso al violetto, passando per arancione, giallo, verde e blu;
- **onde radio**, **microonde** ed **infrarossi** hanno bassa frequenza e bassa energia, raramente risultano dannosi per gli organismi viventi.

<!-- TODO aggiungere le immagini delle figure indicate -->

Aprendo una breve parentesi di approfondimento, sappiamo che i fotoni sono mediatori della forza elettromagnetica, responsabili dell'attrazione e della repulsione elettrica (come insegnano a scuola, le cariche opposte si attraggono, le cariche uguali si respingono scambiandosi fotoni).

Oggi, sempre più spesso, il colore della luce è espresso come temperatura di colore correlata ed è misurato in gradi Kelvin. Il simbolo di questa unità di misura è la lettera "K" maiuscola.Un corpo solido, man mano che viene portato all'incandescenza, inizia ad emettere una radiazione elettromagnetica che assume un:

- colore non visibile (infrarosso) quando la temperatura è inferiore ai 600K (considerando che la temperatura ambientale a 30 gradi centigradi è 303K, cioè molto inferiore ai 600K, questo spiega perché non è visibile il calore irradiato sotto forma di onda elettromagnetica da un oggetto);
- colore rosso quando la temperatura è intorno ai 600K;
- colore arancione quando la temperatura aumenta raggiungendo i 2000K;
- colore giallo quando la temperatura aumenta raggiungendo i 3500K;
- colore bianco freddo quando la temperatura aumenta raggiungendo i 4000K;
- colore bianco (luce solare a mezzogiorno) quando la temperatura aumenta raggiungendo i 4900K;
- colore bianco "puro" quando la temperatura aumenta raggiungendo i 5500K;
- colore azzurro chiaro quando la temperatura aumenta raggiungendo i 8000K;
- colore azzurro (cielo sereno) quando la temperatura aumenta raggiungendo i 12000K;
- colore "Perano" (tra azzurro e violetto) quando la temperatura tende all'infinito;

<!-- TODO aggiungere le immagini delle figure indicate -->

<!-- TODO da sistemare
In chimica si utilizza una tecnica di analisi detta test della fiamma (o saggio alla fiamma) per verificare la presenza di determinati elementi chimici in base al colore della fiamma. Sullo stesso principio si basano i fuochi d'artificio. La spettroscopia è lo studio di uno spettro elettromagnetico al fine di identificare la natura chimica di una sostanza -->

## Percezione e riproduzione digitale dei colori

I colori non sono una proprietà della luce, ma un'interpretazione (una percezione) che il cervello realizza basandosi sui segnali che arrivano dagli occhi, in particolare dai coni e dai bastoncelli, le cellule fotosensibili della retina. I bastoncelli non rilevano i colori, operano in condizioni di scarsa illuminazione per realizzare la "visione notturna". I coni permettono di distinguere i colori in condizione di sufficiente illuminazione, permettendo la "visione diurna".

L'occhio umano ha la massima sensibilità per la luce verde, intermedia per la luce rossa e bassa per quella blu. Questo significa che piccoli cambi di intensità di luce verde portano ad una percezione di grande cambiamento del colore, mentre piccoli cambi di intensità di luce blu portano ad una percezione di minore cambiamento del colore. Di conseguenza l'occhio umano è significativamente più sensibile alle variazioni di luminosità rispetto ai cambiamenti di tonalità o saturazione.

I colori non sono una proprietà degli oggetti. Li vediamo colorati grazie alla luce che si riflette su di essi. Un foglio bianco riflette quasi tutta la luce che riceve. Un foglio nero la assorbe quasi del tutto.

Quando applichiamo il colore "giallo" ad un foglio bianco, parte della luce bianca viene assorbita dall'inchiostro del pennarello, quindi la luce riflessa è solo quella "gialla". Si può affermare che allo spettro visibile viene sottratta una parte di spettro e rimane solo la parte relativa alla luce "gialla", che viene riflessa. Più colori si sovrappongono, maggiore è la quantità di spettro visibile che viene sottratta, maggiore è il buio che si percepisce, fino ad arrivare al colore risultante nero (viene sottratto tutto lo spettro visibile, la luce non viene riflessa, c'è il buio).

Se i colori che si sovrappongono non sottraggono ma si sommano e vanno ad aumentare la quantità di spettro visibile, allora maggiore è la quantità, maggiore è la luminosità che si percepisce, fino ad arrivare al colore risultante bianco (tutto lo spettro è visibile, c'è "luce").

Gli schermi si basano su questo principio **additivo**, ogni pixel dello schermo è colorato attraverso tre LED, che accesi insieme formano la luce bianca.

Le stampanti e i lettori di ebook ad inchiostro si basano invece sul principio **sottrattivo**, stampando piu colori sovrapposti sullo stesso punto di un foglio di carta si forma il colore nero, i colori sottraggono tutto lo spettro visibile e nessuna parte viene riflessa.

![p5.js - Principio additivo e sottrattivo dei colori](/static/coding/web/p5js/colors_and_styles_rgb_and_cymk.png "p5.js - Principio additivo e sottrattivo dei colori")

Per sviluppare la riproduzione digitale dei colori, nel 1931 la CIE (Commission Internationale de l'Éclairage) sviluppò lo spazio dei colori CIE XYZ, una sorta di spazio completo di colori che l'occhio umano può vedere. I primi schermi a colori non erano ovviamente capaci di mostrare tutti i colori che l'occhio umano può vedere ed inoltre un colore poteva essere visualizzato su schermi e stampanti di diversi modelli con una tonalità differente tra un dispositivo e l'altro.

Per risolvere il problema della rappresentazione su dispositivi differenti le aziende crearono la International Color Consortium (ICC) che sviluppò i **profili ICC**. Ogni dispositivo ha uno specifico profilo ICC che permette di visualizzare un colore con le stesse caratteristiche di brillantezza e tonalità mostrate su un dispositivo diverso.

Per risolvere il problema di come indicare i colori in maniera indipendente da qualsiasi dispositivo o formato digitale, Microsoft and Hewlett-Packard si allearono e svilupparono lo **spazio di colori sRGB** (standard Red Green Blue). La riproduzione dei colori era coerente su monitor, stampanti, fotocamere digitali e sul web, ogni colore era individuato da tre componenti primarie, il Rosso, il Verde ed Blu.

Da allora la tecnologia di realizzazione dei dispositivi digitali è migliorata ed i moderni schermi riproducono uno spazio di colori molto piu grande ed accurato. L'industria cinematografica oggi usa lo spazio dei colori DCI-P3, mentre i consumatori utilizzano schermi con spazio colori Display P3.

Un gradiente è una transizione graduale e progressiva tra due o più valori, come due colori o due intensità di colore. Gli spazi di colore non sempre permettono gradienti uniformi, quindi i passaggi da un colore ad un altro risultano con intermezzi piu o meno saturi o piu o meno luminosi rispetto all'intero gradiente. Inoltre, oltre ai salti di luminosità presenti in uno spazio di colore, anche l'occhio umano è significativamente più sensibile alle variazioni di luminosità rispetto ai cambiamenti di tonalità (hue) o saturazione.

Gli **spazi di colore percettivamente uniformi** nascono con l'obiettivo di ridurre al minimo i salti di luminosità nella realizzazione dei gradienti. Gia nel 1976 la CIE (Commission Internationale de l'Éclairage) crea lo spazio di colori percettivamente uniforme **CIE LAB**, ma non risulta completamente corretto. Gli spazi di colore **oklab** e **oklch**, basati proprio sul CIE LAB, nascono nel 2020 proprio per correggere questi errori, compensando anche la differenza di sensibilità dovuta al funzionamento dell'occhio umano.

## Modelli di colore

Un **modello di colore** è un modello matematico astratto che descrive un modo per rappresentare i colori come combinazioni di **componenti di colore**, tipicamente tre o quattro valori numerici; Ogni modello ha una forma e delle caratteristiche particolari, come i gradienti risultanti.

Una volta definito un colore come combinazione delle **componenti di colore** utilizzando uno specifico modello di colori, il software sottostante si occupa di identificare il colore nello spazio di colori utilizzato.

Un modello ha una forma caratteristica, come un cubo, un cilindro o un cono, che rende più o meno intuitiva la scelta dei colori ed i passaggi (i gradienti) da un colore all'altro. Il percorso da un colore all'altro è vincolato o reso più agevole dalla forma del modello, ad esempio tracciando una linea retta lungo una diagonale del cubo oppure seguendo la linea curva della base del cilindro.

### Modelli di colori RGB e RGB-HDR

Il modello **RGB** è un modello di colori **additivo**, esprime i colori come somma di colori "primari", che in questo modello sono il Rosso, il Verde ed il Blu. Ogni altro colore è definito come una somma delle quantità dei tre colori elencati.

Il modello **RGB-HDR** è una versione del modello RGB ad intervallo ampio, cioè usa lo spazio di colori **Display P3** (e non sRGB) per mostrare una gamma di colori piu ampia;

La forma caratteristica di questi modelli è il **cubo**, di seguito vediamo le due angolazioni, una che mostra lo spigolo "bianco", l'altra che mostra lo spigolo "nero".

![p5.js - Forma dei modelli di colore RGB e RGB-HDR](/static/coding/web/p5js/colors_and_styles_color_model_rgb_cube_A_B.png "p5.js - Forma dei modelli di colore RGB e RGB-HDR")

La quantità applicabile per ogni colore primario va da 0 (zero) a 255, quindi un colore lo si può esprimere come una terna di quantità (**r**, **g**, **b**), in cui **r** è la quantità di rosso, **g** è la quantità di verde e **b** è la quantità di blu.

Come ci si può aspettare, in questo modello:

- il colore rosso si esprime impostando solo la quantità massima di rosso: (255, 0, 0);
- il colore verde si esprime impostando solo la quantità massima di verde: (0, 255, 0);
- il colore blue si esprime impostando solo la quantità massima di blu: (0, 0, 255);
- il colore nero si esprime impostando a zero tutte le quantità: (0, 0, 0);
- il colore bianco si esprime impostando al massimo tutte le quantità: (255, 255, 255), ovvero sommando tutti i colori (il modello è additivo);

Come nota di approfondimento, un corpo solido portato a temperatura quasi infinita emette una luce con colore denominato "Perano" che nel modello RGB è identificato con la combinazione (148, 177, 255);

Il problema principale di questo modello consiste nel fatto che non è intuitivo indicare le quantità dei colori primari necessari per ottenere un qualsiasi altro colore, come il viola, il marrone o il celeste. Un altro problema è che i gradienti tendono a passare per una fascia grigiastra.

### Modelli di colori CMY e CMYK

Il modello **CMY** è un modello di colori **sottrattivo**, esprime i colori come combinazione di colori "primari", che in questo modello sono il ciano, il magenta ed il giallo.

Il colore ciano è il colore complementare al rosso, ovvero il colore che si ottiene sottraendo il colore rosso dalla luce bianca.

Il colore magenta è il colore complementare al verde, ovvero il colore che si ottiene sottraendo il colore verde dalla luce bianca.

Il colore giallo è il colore complementare al viola, ovvero il colore che si ottiene sottraendo il colore viola dalla luce bianca.

Il modello CMY è "l'inverso" del modello RGB (ed RGB-HDR) in termini di complemento del colore, quindi ha la stessa forma cubica e gli stessi colori, solo con gli spigoli del bianco e del nero in posizioni inverse.

In teoria, miscelando ciano, magenta e giallo nelle massime quantità si ottiene il colore nero (il modello è sottrattivo, l'intero spettro visibile viene "sottratto" prima di arrivare all'occhio umano), nella realtà il processo di stampa produce un colore molto scuro, un nero non abbastanza profondo, e la produzione del nero consuma molto inchiostro colorato.

Il modello **CYMK** aggiunge al modello CMY il colore nero, identificato dalla lettera **K** (perché la lettera B è per il blue). Se la somma delle quantità di colori primari supera una certa soglia, piuttosto che combinare i colori primari si utilizza direttamente l'inchiostro nero per ottenere ombreggiature più profonde e ridurre il consumo di inchiostro colorato.

Anche per questo modello, il problema principale consiste nel fatto che non è intuitivo indicare le quantità dei colori primari necessari per ottenere un qualsiasi altro colore, come il viola, il marrone o il celeste. I gradienti fanno enormi sbalzi di luminosità.

In p5.js non è possibile indicare i modelli di colori CMY e CMYK, ma si pu facilmente implementare a partire dal modello RGB.

### Modelli di colori HSB (HSV), HSL (HSI) e HBL

Il modello **Hue-Saturation-Brightness**, conosciuto anche come **Hue-Saturation-Value**, è un modello computerizzato basato su trasformazioni matematiche, ed è utilizzato al fine di rendere più intuitivo la definizione di un colore. In questo modello, ogni colore è definito nel seguente spazio curvo:

![p5.js - Modello di colori HSB](/static/coding/web/p5js/colors_and_styles_hsb.png "p5.js - Modello di colori HSB")

L'angolo definisce la tonalità del colore, detta anche tinta. Quindi troviamo la tonalità rossa a 0 gradi, la tonalità verde a 120 gradi e la tonalità blu a 240 gradi, e nel mezzo tutte le altre sfumature di tonalità di colori.

La saturazione indica quanto forte o, al contrario, pallida si vuole la tonalità di colore. Saturazioni forti rendono la tonalità di colore molto accesa, saturazioni deboli la rendono spenta, quindi tra il bianco ed il nero passando per il grigio a seconda della brillantezza.

La brillantezza indica quanto luminosa si vuole la tonalità di colore, valori alti portano ad un colore acceso, valori bassi portano ad un colore spento.

Ogni colore è, quindi, definito come una combinazione delle tre componenti elencate. Il valore applicabile per la tonalità va da 0 (zero) a 360, mentre per saturazione e brillantezza vanno da da 0 (zero) a 100, quindi un colore lo si può esprimere come una terna di quantità (**h**, **s**, **b**), in cui **h** è il valore che esprime la tonalità, **s** è il valore che indica la saturazione e **b** è il valore che definisce la brillantezza.

Come ci si può aspettare, in questo modello:

- il colore rosso si esprime impostando la tonalità del rosso (a zero gradi) e la quantità massima di saturazione e brillantezza: (0, 100, 100);
- il colore verde si esprime impostando la tonalità del verde (a 120 gradi) e la quantità massima di saturazione e brillantezza: (120, 100, 100);
- il colore blue si esprime impostando la tonalità del blu (a 240 gradi) e la quantità massima di saturazione e brillantezza: (240, 100, 100);
- il colore nero si esprime impostando una qualsiasi tonalità e saturazione ed impostando a zero la brillantezza: (34, 20, 0);
- il colore bianco si esprime impostando una qualsiasi tonalità, saturazione a zero e massima brillantezza: (47, 0, 100);
- il colore grigio si esprime impostando una qualsiasi tonalità, saturazione a zero e valore medio di brillantezza: (47, 0, 50);

La facilità d'uso di questo modello è dovuta al fatto che, una volta scelta la tonalità, ad esempio il rosso, è facile ottenere un rosso forte e carico impostando valori alti di saturazione e brillantezza; viceversa, è altrettanto intuitivo ottenere un colore rosa scuro (che è un rosso pallido) impostando valori bassi di saturazione e brillantezza.

Il modello **Hue-Saturation-Lightness**, conosciuto anche come **Hue-Saturation-Intensity** è un modello computerizzato molto simile al modello HSB, ha la stessa forma e le stesse componenti **H** per la tinta del colore ed **S** per la saturazione. Cambia l'ultima componente, sostituita dal valore di luminosità L, che ha la precedenza sulla saturazione S. Se L è un valore alto, il colore risultante è bianco, non importa la saturazione espressa.

Il modello **Hue-Whiteness-Blackness** è un modello computerizzato molto simile ai due precedenti, ha la stessa forma, conserva la componente **H** per la tinta del colore ed utilizza i valori di "chiarezza" e "oscurità". Una volta espressa la tonalità di colore, il colore è mescolato con bianco e nero. Valori alti di oscurità portano al nero, valori alti di chiarezza portano al bianco, entrambi alti portando ad un grigio intenso.

### Impostare il modello di colori

Solo i modelli ``RGB`` ed ``HSB`` sono implementati dalla libreria p5.js in versione ``1.0``.

Dalla versione ``2.0`` abbiamo:

- ``RGBHDR``, cioè RGB ad ampio intervallo, implementato per fare uso dello spazio di colori definito da **Display P3**;
- ``HWB`` è una variante di ``HSB``;
- ``LAB`` ed ``LCH`` per lo spazio di colori **quasi** percettivamente uniforme **CIE LAB**, gli errori sono presenti;
- ``OKLAB`` ed ``OKLCH`` che si basano sullo spazio di colore **CIE LAB** e ne correggono gli errori, rendendoli realmente spazi di colore percettivamente uniformi, senza errori.

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
