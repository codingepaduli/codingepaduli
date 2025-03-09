---
type: "html"
title: "HTML Lez. 04 - Elementi multimediali e interattività"
description: "HTML Lez. 04 - Etichette per audio, video, immagini e collegamenti a risorse esterne"
date: 2019-08-26
publishdate: 2019-08-26
lastmod: 2022-10-15
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: true
toc: false
summary: "HTML Lez. 04 - Etichette per audio, video, immagini e collegamenti a risorse esterne"
weight: 9670

references:
    -   title: "HTML images done right - Web graphics, good to the last byte"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://evilmartians.com/chronicles/images-done-right-web-graphics-good-to-the-last-byte-optimization-techniques"
        description: "HTML images done right - Web graphics, good to the last byte"
    -   title: "HTML images with srcset"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.sitepoint.com/how-to-build-responsive-images-with-srcset/"
        description: "How to Build Responsive Images with srcset"
    -   title: "HTML images srcset and sizes"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://ericportis.com/posts/2014/srcset-sizes/"
        description: "media queries aren’t the right tool for responsive images, srcset and sizes are"
    -   title: "WebP image compression"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://opensource.com/article/20/4/webp-image-compression"
        description: "HTML images - Drop PNG and JPG for your online images: Use WebP"
    -   title: "HTML Images to base64 data-URI converter"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://websemantics.uk/tools/image-to-data-uri-converter/"
        description: "A tool to convert images to base64 data-URI"
    -   title: "MIME Types"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.asciitable.it/mime-types"
        description: "A list of mime types"
---

## Elementi multimediali e interattività

La multimedialità è una forma di comunicazione caratterizzata dalla compresenza e interazione di più linguaggi (testi scritti, immagini, suoni, animazioni) in uno stesso supporto o contesto informativo.

Il termine multimedialità si sta progressivamente sovrapponendo a quello di interattività, dato che i contenuti multimediali, che una volta erano fruibili su TV, radio o telefono oggi sono fruibili su dispositivi sempre più interattivi, dal computer al palmare, al telefono, alla LIM (lavagna interattiva multimediale).

Da questi dispositivi oramai detti "smart", cioè collegabili in rete, si può usufruire di servizi internet e si può navigare sulle pagine web, che devono avere un layout adeguato.

A seconda del layout scelto e della risoluzione dello schermo del dispositivo è possibile selezionare gli **elementi multimediali** (immagini o video) che meglio si adattano, ad esempio un'immagine verticale in risoluzione media si adatta meglio a smartphone e tablet, mentre un immagine orizzontale ad altissima risoluzione si adatta meglio a TV e monitor PC. I dispositivi più recenti possono poi sfruttare le ultime tecnologie, ad esempio video ad altissima risoluzione in 8K.

### Immagini

Smartphone e dispositivi IoT spesso sono dotati di connessioni lente e a
pagamento, come il 3G, e di schermi piccoli con risoluzioni ridotte, per
cui su questi dispositivi è consigliato mostrare immagini di qualità
ridotta, che siano adatte come dimensioni e che possano al contempo
ridurre i tempi di caricamento dal server. In caso di monitor per PC e smart TV 8K con schermi grandi e ad altissima risoluzione è invece preferibile mostrare immagini ad alta qualità, poiché generalmente questi dispositivi sono collegati in wi-fi o a reti veloci.

Inoltre i dispositivi sono dotati tipicamente di uno schermo rettangolare che viene letto in verticale per smartphone e tablet e in orizzontale nel caso di smart TV e monitor per PC.

Per permettere la selezione dell'immagine adatta allo schermo del
dispositivo è necessario conoscere alcuni concetti. Ogni
dispositivo, a seconda della risoluzione dello schermo, ha una propria
**pixel density**, ovvero un numero di pixel presenti su una linea di un
pollice (PPI), descritta talvolta anche come punti presenti su una linea
di un pollice (DPI). Piú la pixel density è alta, piú la qualità dello
schermo è alta. Il browser, però, utilizza una propria misura, detta
**pixel CSS**, calcolata a partire dalla pixel density.

Il rapporto tra **pixel density** e **pixel CSS** è detto
**pixel-ratio**, ed è un secondo valore da considerare, oltre alla
larghezza dello schermo, per la selezione dell'immagine.

Su uno schermo di 1200px, un'immagine di 1200px occupa:

- l'intero schermo se la pixel ratio è 1x;
- metà schermo se la pixel ratio è 2x;
- un terzo dello schermo se la pixel ratio è 3x;
- e cosi via...

Si deve tener presente che ogni browser puó leggere a proprio modo larghezza
e pixel ratio. Quindi, data la stessa immagine salvata in risoluzioni diverse (per
mostrarle su schermi con pixel ratio differenti), ad esempio
"immagine1.png, immagine2.png ed immagine3.png", e dato uno schermo con
pixel ratio di 1x, puó il browser selezionare l'immagine che piú si
adatta ad occupare l'intera larghezza del dispositivo?

Non puó, perché non conosce la larghezza delle immagini "immagine1.png, immagine2.png ed immagine3.png".
Per conoscere la risoluzione di ogni immagine, dovrebbe scaricarle tutte
dal server. Per evitare questo spreco di tempo e risorse, è necessario
che sia lo sviluppatore ad indicare, per ogni immagine, la rispettiva
risoluzione.

Ad oggi l'unico parametro che viene considerato della risoluzione è la
larghezza (in futuro forse lo sarà anche l'altezza?), che viene indicata
esplicitamente aggiungendo al valore la lettera **w** (che sta per
"width" ovvero "larghezza"). Quindi, per permettere al browser di
scegliere l'immagine con la larghezza adatta allo spazio da riempire
sullo schermo, il programmatore deve indicare nell'attributo ``srcset`` dell'etichetta ``img`` la lista di immagini, con
rispettive larghezze, come nel seguente esempio:

``srcset="immagine1.png 200w, immagine2.png 600w, immagine3.png 1200w"``

Indicate le immagini e le rispettive larghezze, ad esempio img1 di
200px, img2 di 600px e img3 di 1200px, dobbiamo associare queste
immagini ai vari dispositivi. Si tenga presente che, su uno schermo di
1200px di larghezza, non è detto si debba visualizzare un immagine di
1200px, perché magari si ha una pagina con 6 colonne e quindi la
larghezza adatta per ogni colonna è 1200px/6 = 200px. Caricando quindi
un'immagine di 200px x 150px (invece che una da 1200px x 900px) si ha un
risparmio di tempo (e dati trasmessi di rete) di 35 volte\! Considerando
che le colonne dell'esempio sono 6, il risparmio è considerevole.

Inoltre c'è da considerare la pixel ratio, quindi come indicare
l'associazione delle immagini al dispositivo? Per indicare il
dispositivo, si usano le media query, che però saranno trattate nelle lezioni sui CSS, ed alle quali si rimanda per una completa descrizione. Per indicare invece
la dimensione che deve occupare l'immagine, si usano i descrittori
**vw**, che descrive la percentuale di larghezza da occupare sullo
schermo (in termini di pixel CSS), e **vh**, che descrive la percentuale
di altezza da occupare sullo schermo (in termini di pixel CSS).

L'attributo ``sizes`` dell'etichetta ``img`` serve appunto a descrivere le associazioni tra schermo e larghezza desiderata per l'immagine, di seguito se ne fa un esempio d'uso:

``sizes="(max-width: 500px) 100vw, (max-width: 1500px) 50vw, 25vm"``

Il codice indicato descrive 3 associazioni: la prima indica che a
schermi con risoluzione massima di 500 pixel, l'immagine deve essere
presentata a schermo intero; la seconda indica che a schermi con
risoluzione massima di 1500 pixel, l'immagine deve essere presentata a
metà schermo, nell'ultimo caso, con schermi piú grandi di 1500 (per
esclusione), l'immagine deve essere presentata ad un quarto dello
schermo.

Il browser, quindi, conoscendo la grandezza del display e la
pixel-ratio, conoscendo le dimensioni che deve occupare l'immagine per
lo schermo utilizzato, descritte nell'attributo ``sizes``, puó scegliere
l'immagine appropriata tra quelle
indicate nell'attributo ``srcset`` e quindi mostrarla alla dimensione indicata (come da associazione indicata sempre nell'attributo ``srcset``). Se nessuna delle immagini viene selezionata,
il browser di default visualizza l'immagine descritta nell'attributo ``src``.

L'esempio completo è il seguente:

```html
<img srcset="immagine1.png 200w, immagine2.png 600w, immagine3.png 1200w"
  sizes="(max-width: 500px) 100vw, (max-width: 1500px) 50vw, 25vm"
  src="immagine.png" alt="esempio etichetta immagine" />
```

che genera l'immagine:
<!-- markdown-link-check-disable-next-line -->
![esempio etichetta immagine](/static/coding/web/html/program_CC0.png "immagine generata dal codice HTML")

### Picture e source

Quando si devono visualizzare versioni alternative di una stessa immagine per dispositivi o schermi differenti, si utilizza l'etichetta ``picture`` che sceglie tra differenti elementi ``source``, se nessuno è adeguato la scelta di default (di fallback) ricade sull'elemento ``img``.

Ad esempio, se i tipi di immagine "AVIF" e "WEBP" non sono supportate dai browser, si ricade su quella di default "JPG":

```html
<picture>
  <source srcset="photo.avif" type="image/avif" />
  <source srcset="photo.webp" type="image/webp" />
  <img src="photo.jpg" alt="photo" />
</picture>
```

Un secondo esempio è la scelta dell'immagine effettuata con delle media query, utilizzando l'attributo  ``media``. Ad esempio, se l'orientamento dello schermo è "orizzontale" si usa un immagine, in alternativa si ricade su quella di default "JPG":

```html
<picture>
  <source srcset="photo-240-200.jpg" media="(orientation: portrait)" />
  <img src="photo-200-240.jpg" alt="photo" />
</picture>
```

Se la scelta dell'immagine deve essere effettuata in base alla densità del display si utilizza l'attributo ``srcset``:

```html
<picture>
  <source srcset="photo.avif 1x, photo2x.avif 2x, photo3x.avif 3x" type="image/avif" />
  <source srcset="photo.webp 1x, photo2x.webp 2x, photo3x.webp 3x" type="image/webp" />
  <img src="photo.jpg" alt="photo" height="320" width="320"  />
</picture>
```

Se la scelta dell'immagine deve essere effettuata in base alla dimensione dell'immagine che si adatta meglio alla densità del display, si utilizza l'attributo ``sizes``:

```html
<picture>
  <source sizes="photo.avif 50vw, photo2x.avif 70vw, photo3x.avif 100vw" type="image/avif" />
  <source srcset="photo.webp 50vw, photo2x.webp 70vw, photo3x.webp 100vw" type="image/webp" />
  <img src="photo.jpg" alt="photo" height="320" width="320"  />
</picture>
```

Si possono anche combinare le scelte, ad esempio:

```html
<picture>
  <source media="(min-width: 1920px)" srcset="image-big.png" type="image/avif" />
  <source media="(min-width: 1200px)" srcset="image-medium.png" type="image/avif" />
  <source media="(min-width: 700px)" srcset="image-small.png" type="image/avif" />
  <source media="(min-width: 1920px)" srcset="image-big.png" type="image/webp" />
  <source media="(min-width: 1200px)" srcset="image-medium.png" type="image/webp" />
  <source media="(min-width: 700px)" srcset="image-small.png" type="image/webp" />
  <img src="photo.jpg" alt="photo" height="320" width="320"  />
</picture>
```

### Figure

Questa etichetta prevede che al suo interno siano presenti uno o più elementi multimediali (``img``, ``picture``, ``video``, ...) e l'etichetta ``figcaption`` che consente di aggiungere una didascalia o una descrizione testuale all'elemento. Questo la rende più adatta a legare l'elemento multimediale con la sua descrizione associata.

Un'esempio d'uso dell'etichetta è il seguente:

```html
<figure>
  <img src="imageMele.jpg" alt="Mela">
  <img src="imagePere.jpg" alt="Pera">
  <figcaption>Frutta tipica</figcaption>
</figure>
```

E' preferibile utilizzarla con gli elementi ``picture``, ad esempio:

```html
<figure>
  <picture>
    <source srcset="photo.avif" type="image/avif" />
    <source srcset="photo.webp" type="image/webp" />
    <img src="photo.jpg" alt="photo" />
  </picture>

   <figcaption>Didascalia della foto</figcaption>
</figure>
```

### Etichette audio e video

È consigliabile, per questioni di performance, proporre i contenuti audio e video attraverso servizi **streaming**, in modo che la risoluzione dei contenuti si adatti alla velocità di trasmissione dati della linea dell'utente.

Volendo, però, evitare lo streaming ed inserire direttamente un file audio nella pagina web, si utilizza il seguente codice:

```html
<audio controls autoplay>
    <source src="horse.ogg" type="audio/ogg">
    <source src="horse.mp3" type="audio/mpeg">
    <source src="horse.wav" type="audio/wav">
</audio>
```

Allo stesso modo, per inserire direttamente un file video, si utilizza il seguente codice:

```html
<video controls autoplay width="800px" height="600px" poster="poster.png">
    <source src="horse.mp4" type="video/mp4">
    <source src="horse.ogg" type="video/ogg">
    <source src="horse.webm" type="video/webm">
    <track label="English" kind="subtitles" srclang="en" src="captions/vtt/sintel-en.vtt" default>
</video>
```

Come si vede, entrambe le etichette ``audio`` e ``video`` hanno gli attributi:

- ``mute``, per silenziare il video;
- ``loop``, per riavviare l'audio o il video una volta terminato;
- ``autoplay``, per avviare automaticamente l'audio o il video; Le specifiche indicano che deve essere usato insieme all'attributo
  ``mute`` per poter effettuare l'autoplay sui dispositivi mobile;
- ``controls``, per visualizzare i pulsanti di controllo "play", "pause", "stop", ....
- ``controlsList``, una lista di tre possibili valori:
    1. ``nodownload`` non permette all'utente di scaricare il file;
    2. ``nofullscreen`` non permette all'utente di vedere il video a tutto schermo;
    3. ``noremoteplayback``, non permette all'utente di riprodurre il contenuto in remoto.

Essendo una lista, l'attributo ``controlsList`` può avere uno o più valori, come nel seguente esempio: ``controlsList="nodownload nofullscreen noremoteplayback"``.

Ovviamente, solo l'etichetta video ha gli attributi:

- ``poster``, l'immagine di anteprima da mostrare;
- ``width``, la larghezza del video (in pixel);
- ``height``, l'altezza del video (in pixel).

Entrambe le etichette ``audio`` e ``video`` fanno uso dell'etichetta ``source``, per indicare i video o gli audio da riprodurre. Di questi, solo uno viene effettivamente riprodotto: il browser sceglie (nell'ordine indicato) il primo file che riesce a riprodurre (in base ai formati supportati).

L'etichetta ``source`` prevede diversi attributi, ma alcuni sono ad uso esclusivo per le immagini, per cui quelli maggiormente utilizzabili per **audio e video** sono:

- ``src``, per indicare il percorso del file da riprodurre;
- ``type``, per indicare il mime-type del file da riprodurre. Tra i possibili mime-type **audio** abbiamo ``audio/mpeg`` (per i file mp3), ``audio/wav`` e ``audio/ogg`` per i file audio wav/ogg. Tra i possibili mime-type **video** abbiamo ``video/mp4``, ``video/webm`` e ``video/ogg`` per i rispettivi file.

L'etichetta ``video`` permette anche di specificare dei possibili sottotitoli da mostrare sopra il video. I sottotitoli sono indicati nelle etichette ``track``, che prevede i seguenti attributi:

- ``label``, una descrizione, generalmente la lingua del sottotitolo;
- ``kind``, il tipo di traccia (per ora subtitles);
- ``srclang`` il codice del linguaggio;
- ``src`` il percorso del file di sottotitoli; Il formato del file è VTT;
- ``default`` il sottotitolo da mostrare di default.

## Immagini ed aree

L'aggiunta di immagini ad una pagina web è semplice, ma si deve
garantire un'esperienza utente soddisfacente in termini di
visualizzazione e tempi di caricamento.

Sempre nell'ottica dell'ottimizzazione dei tempi, si possono utilizzare
tecniche di **lazy loading**, ovvero di caricamento delle immagini solo
su richiesta.

Partendo dal caso piú semplice, ovvero per mostrare un'unica immagine
sempre alle stesse dimensioni qualsiasi sia il dispositivo, il tag delle
immagini `img` prevede, per questo specifico compito, gli attributi
`src` per indicare l'URL dell'immagine, `width` per indicare la
larghezza ed `height` per l'altezza.

Il codice di esempio è il seguente:

```html
<img src="/static/immagine.png" width="145" height="126" alt="Immagine" />
```

Il risultato si puó apprezzare qua:

![Immagine](/static/coding/web/html/program_CC0.png "immagine")

[Immagine](https://svgsilh.com/3f51b5/image/1970468.html "logo") rilasciata con
Licenza
[CC0 1.0](https://creativecommons.org/licenses/cc0/1.0/?ref=ccsearch&atype=html "Logo licenza CC0")

Ci possono essere casi in cui l'immagine non puó trovarsi su un file a
parte e non puó essere scaricata da internet, perché magari il
dispositivo IoT è collegato ad una rete locale senza accesso ad
internet, quindi l'immagine puó essere contenuta direttamente nel tag, ma a
patto che sia stata convertita in base 64 data-URI e che sia specificato
il tipo con `data:image/png;base64,`, come nel seguente esempio:

```html
<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUA
AAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg==" alt="Immagine" />
```

Il risultato dell'esempio è il seguente:

![Red dot](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg== "immagine di un punto rosso")

Per la conversione dell'immagine in base64 data-URI si puó usare uno dei numerosi
servizi on-line, come il seguente:
[https://websemantics.uk/tools/image-to-data-uri-converter](https://websemantics.uk/tools/image-to-data-uri-converter "servizio di conversione immagine in base64")

Si tenga presente che ogni browser puó leggere a proprio modo larghezza
e pixel ratio. Per valutare quelle del proprio schermo, si puó navigare
con browser diversi questo sito:
[www.mydevice.io](https://www.mydevice.io/ "sito web per ottenere informazioni sul dispositivo").

Le immagini possono essere arricchite di **mappe**, cioè di aree
cliccabili sovrapposte all'immagine. Le mappe sono descritte dal tag
`map` che prevede l'attributo `name` come unico attributo di
identificazione della mappa.

All'interno della mappa devono essere indicate tutte le aree
dell'immagine da mappare. Ogni area viene descritta dal tag `area`, che
prevede i seguenti attributi:

- `shape` per indicare la figura che sovrappone l'immagine, come un
  rettangolo (rect) o un cerchio (circ);
- `coords` per indicare le coordinate e le dimensioni dell'area da
  mappare;
- `href` per indicare l'URL che l'utente deve visitare quando clicca
  sull'area;
- `alt` per indicare il testo alternativo;

Un esempio di mappa è la seguente:

```html
<map name="planetmap">
    <area shape="rect" coords="0,0,82,126" alt="Terra" title="Terra" href="https://it.wikipedia.org/wiki/Terra" />
</map>
```

La mappa poi viene associata all'immagine indicando l'id della mappa
nell'attributo `usemap` del tag `img`, come nel seguente esempio:

```html
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Terrestrial_Planets_Size_Comp_True_Color.png/320px-Terrestrial_Planets_Size_Comp_True_Color.png"
    width="145" height="126" alt="Planets" usemap="#planetmap" />
```

Cliccare su uno dei pianeti per collegarsi sulla pagina corrispondente
al pianeta scelto.

<!-- markdownlint-disable MD033 MD044 -->

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Terrestrial_Planets_Size_Comp_True_Color.png/320px-Terrestrial_Planets_Size_Comp_True_Color.png" width="145" height="126" alt="Planets" usemap="#planetmap" />

<map name="planetmap">
    <area shape="rect" coords="0,0,82,126" alt="Terra" title="Terra" href="https://it.wikipedia.org/wiki/Terra" />
    <area shape="circle" coords="90,58,3" alt="Mercury" title="Mercury" href="https://it.wikipedia.org/wiki/Mercurio_(astronomia)" />
    <area shape="circle" coords="124,58,8" alt="Venus" title="Venus" href="https://it.m.wikipedia.org/wiki/Venere_(astronomia)" />
</map>

<!-- markdownlint-enable MD033 MD044 -->

Ricapitolando quindi gli attributi del tag img, abbiamo:

- `src` per indicare l'URL dell'**unica** immagine da mostrare;
- `width` per la larghezza dello spazio occupato in pagina;
- `height` per l'altezza dello spazio occupato in pagina;
- `srcset` per la lista di immagini da scegliere con relative
  larghezze;
- `sizes` per la lista di associazioni tra risoluzione dei dispositivi
  e larghezza da occupare in pagina;
- `loading` con valore "eager" per indicare che le immagini vanno
  lette immediatamente; con valore "lazy" per rimandare il caricamento
  a quando l'utente arriva a visualizzare il contenuto;
- `usemap` per indicare l'id della mappa da sovrapporre all'immagine;

## Etichette di progresso

Quando si vuole visualizzare graficamente lo stato di avanzamento di un'attività o la quantità attuale in un determinato intervallo, si usano le etichette **progress** e **meter**. La prima etichetta è pensata per una visualizzazione in percentuale (quindi da zero a cento), la seconda permette di personalizzare l'intervallo.

L'etichetta ``progress`` prevede i seguenti attributi:

- ``max``: indica il valore massimo, non piú in centesimi, ma magari in millesimi;
- ``value`` indica il valore attuale, ad esempio 75% oppure 75 millesimi;

```html
<progress value="75" max="100">75 %</progress>
```

L'etichetta **meter** permette di personalizzare l'intervallo, utilizzando gli attributi:

- ``min`` valore minimo da visualizzare;
- ``max`` valore massimo da visualizzare;
- ``low`` valore minimo consigliato;
- ``high`` valore massimo consigliato;
- ``value`` valore attuale, da mostrare sulla barra di progresso;
- ``optimum`` valore ottimale.

Vale la seguente relazione:

min <= low <= high <= max

```html
<meter low="18" high="30" value="24"> Esame superato.</meter>
```

Gli attributi ``low`` e ``high`` permettono di dividere l'intervallo definito da [``min``, ``max``] in tre intervalli differenti: [``min``, ``low``], [``low``, ``high``] ed [``high``, ``max``].

Il valore ``optimum`` sta semplicemente ad indicare quale intervallo è quello gradito.

Il browser adatta lo stile grafico del componente basandosi sul valore ``value`` da mostrare e sul valore ``optimum`` gradito.

Se il valore da mostrare ``value`` si trova nello stesso intervallo del valore gradito ``optimum``, allora il componente viene visualizzato in verde. Se invece i due valori si trovano in due intervalli adiacenti, il componente viene visualizzato in giallo, altrimenti in rosso.

<!-- markdownlint-disable MD033 -->

<meter min="12" low="18" high="30" max="35" value="32" optimum="16"> Esame superato.</meter>

<meter min="12" low="18" high="30" max="35" value="32" optimum="24"> Esame superato.</meter>

<meter min="12" low="18" high="30" max="35" value="32" optimum="34"> Esame superato.</meter>

<!-- markdownlint-enable MD033 -->
