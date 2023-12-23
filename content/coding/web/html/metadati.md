---
type: "html"
title: "HTML Lez. 05 - Struttura e layout"
description: "HTML Lez. 05 - Struttura e layout di una pagina web"
date: 2019-07-27
publishdate: 2019-07-27
lastmod: 2019-07-27
spellcheck: 2022-10-08
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 05 - Struttura e layout di una pagina web"
weight: 9550

references:
    -   title: "Sito htmlhead.dev"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://htmlhead.dev/"
        description: "Guida (in inglese) all'elemento 'head' dell'HTML;"
    -   title: "Icone del sito web nel 2021"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://evilmartians.com/chronicles/how-to-favicon-in-2021-six-files-that-fit-most-needs"
        description: "Articolo (in inglese) sulla scelta e sulla creazione delle icone del sito web nel 2021"
    -   title: "My current HTML template"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.matuzo.at/blog/html-boilerplate/"
        description: "Articolo (in inglese) sugli elementi basilari utilizzati per costruire un template di una pagina HTML"
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
    -   title: "Facebook Sharing Debugger"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://developers.facebook.com/tools/debug"
        description: "Il debugger di condivisione di facebook consente di visualizzare l'anteprima del contenuto che sarà pubblicato su Facebook"
    -   title: "Social Media Preview"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://socialsharepreview.com/"
        description: "Social Media Preview consente di visualizzare l'anteprima del contenuto che sarà pubblicato sui social"
    -   title: "Meta Tags Toolkit"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://metatags.io/"
        description: "Meta Tags Toolkit consente di visualizzare l'anteprima del contenuto che sarà pubblicato sui social"
---

# Struttura, layout ed elementi multimediali

Un documento HTML generalmente contiene informazioni relative alla pagina web, come l'autore della pagina, la descrizione dei contenuti o un'immagine di anteprima ed ha un proprio layout, ovvero una propria impaginazione e struttura grafica che serve ad indicare la posizione e la dimensione degli elementi sugli schermi di computer, smartphone e tablet.

Le informazioni aggiuntive sono dette **metadati** e, sebbene quasi tutte facoltative, sono utilizzatissime da social network e motori di ricerca per catalogare la pagina e mostrarne un'anteprima.

Il layout grafico è gestito attraverso i **CSS**, ovvero i fogli di stile grafico che definiscono colore, dimensione e posizione degli elementi della pagina web. Il layout si poggia su una struttura basilare che indica ad esempio l'area in cui è situato il menu laterale, l'area destinata al piè di pagina e l'area dei contenuti pubblicitari. Ognuno di questi elementi della struttura basilare è descritto attraverso un'apposita etichetta del linguaggio HTML.

A seconda del layout scelto e della risoluzione dello schermo del dispositivo è possibile scegliere l'immagine o il video che meglio si adatta, ad esempio un'immagine verticale in risoluzione media si adatta meglio a smartphone e tablet, mentre un immagine orizzontale ad altissima risoluzione si adatta meglio a TV e monitor PC. I dispositivi più recenti possono poi sfruttare le ultime tecnologie, ad esempio video ad altissima risoluzione in 8K.

## Metadati

I **metadati** sono informazioni relative alla pagina web, come l'autore, l'icona, la descrizione e l'immagine di anteprima. Questi [metadati](https://it.wikipedia.org/wiki/Metadato "Link a Wikipedia sui metadati") non sono mostrati all'utente, ma sono utilizzati dai motori di ricerca e dai social network per presentare e catalogare la pagina web.

Ad esempio, quando si condivide agli amici un articolo sui social, questi visualizzano, oltre al collegamento, sia il titolo dell'articolo, sia la descrizione, sia un'immagine o un video di anteprima. Queste informazioni di anteprima i social le recuperano dai metadati allegati alla pagina web.

Per un riferimento completo ai metadati si rimanda al link [https://htmlhead.dev/](https://htmlhead.dev/ "Link al sito di riferimento per i metadati") ed alle specifiche del linguaggio HTML.

Tutti i metadati devono essere contenuti nell'etichetta ``head`` della pagina web, ad eccezione dell'icona principale del sito web: non è descritta da nessun etichetta, deve essere semplicemente salvata nel file ``favicon.ico`` nella cartella principale del sito per poter essere recuperata.

Una volta inseriti tutti i metadata nelle pagine web, è possibile visualizzare le anteprime di condivisione sui social utilizzando gli strumenti indicati di seguito:

- [Facebook Sharing Debugger](https://developers.facebook.com/tools/debug);
- [Social Media Preview](https://socialsharepreview.com/);
- [Meta Tags Toolkit](https://metatags.io/).

### Metadati obbligatori

I seguenti metadati sono obbligatori e devono essere inseriti rispettivamente in prima, seconda e terza posizione tra i metadati della pagina web:

1. la codifica della pagina web, per la quale si rimanda all'apposito capitolo sulla codifica Unicode e UTF-8;
2. la "viewport", che indica come adattare la pagina web per far si che sia correttamente visibile sugli schermi dei vari dispositivi, dalle smart TV agli smartphone. Tecnicamente un sito web con le pagine che si adattano agli schermi dei vari dispositivi è detto **responsive**. Per un dettaglio maggiore sull'argomento si rimanda alle specifiche HTML; <!-- Nota 1: Nel viewport non è più necessario includere shrink-to-fit=no, dato che l'opzione è relativa ai vecchi dispositivi iOS 9 Nota 2: non è più necessario inserire per Internet Explorer X-UA-Compatible : ie=edge -->
3. il titolo del documento.

Il seguente codice, contenente i metadati obbligatori e comprensivo dell'etichetta ``head``, è da includere in tutte le pagine web:

```html
<head>
    <!-- metadati obbligatori, vanno nelle prime posizioni -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Page Title</title>
</head>
```

### Informazioni sul documento

Tra le varie informazioni facoltative che si possono aggiungere sulla pagina abbiamo: autore, descrizione, argomento trattato, ecc...

Queste informazioni sono descritte dall'etichetta ``meta`` che ha come attributi ``name`` e ``content``. In pratica ogni etichetta ``meta`` permette di aggiungere una coppia chiave-valore, in cui la chiave (definite con l'attributo ``name``) indica la proprietà del documento (autore, descrizione, ...) alla quale è assegnato il valore (definito per mezzo dell'attributo ``content``).

Di seguito un esempio di metadati facoltativi, da includere nell'etichetta ``head``:

```html
<!-- altri metadati della pagina html -->
<meta name="author" content="Bill Gates">
<meta name="description" content="Pagina con spiegazione sui metadati">
<meta name="subject" content="Linguaggio HTML">
```

### Informazioni per i social

Le informazioni per i social network sono descritte attraverso l'Open Graph protocol, a cui si rimanda per approfondimenti.

I social estraggono le informazioni di una pagina web dalle seguenti chiavi:

```html
<!--indica il contenuto che si condivide, scegliendo tra:
    website, article o video.movie -->
<meta property="og:type" content="website">
<!--indica il linguaggio utilizzato -->
<meta property="og:locale" content="it_IT">
<!--indica le informazioni sulla pagina web -->
<meta property="og:title" content="Titolo pagina">
<meta property="og:description" content="Descrizione pagina">
<!--indica l'immagine principale della pagina con relativa descrizione -->
<meta property="og:image" content="https://example.com/image.jpg">
<meta property="og:image:alt" content="Descrizione immagine">
```

Twitter fa eccezione, perché usa le Twitter Card, una tecnologia proprietaria, a cui si rimanda per approfondimenti.

Twitter estrae le informazioni di una pagina web dalle seguenti chiavi:

```html
<meta name="twitter:creator" content="@account_twitter">
<meta property="twitter:title" content="Page Title">
<meta property="twitter:image" content="https://example.com/image.jpg">
<meta property="twitter:description" content="Descrizione pagina">
```

**Si fa notare che per quanto riguarda i social, sia "Open Graph", sia le "Twitter Card" descrivono le informazioni attraverso l'etichetta ``meta`` che in alcuni casi fa uso dell'attributo ``property`` al posto dell'attributo ``name``.**

### Risorse collegate al documento

Altre informazioni sulla pagina web sono invece le risorse collegate, come ad esempio la pagina web della licenza dei contenuti (copyright), la pagina web relativa agli autori del documento, le pagine web collegate nella serie di articoli (se la pagina web fa parte di una serie di articoli, si possono indicare il primo e l'ultimo articolo della serie, l'articolo precedente e successivo nella serie), la pagina web collegate nella struttura gerarchica (se si ha una struttura ad albero, si può indicare la pagina web "radice" dell'albero), si può indicare l'icona ad alta risoluzione.

Queste risorse sono indicate nell'etichetta ``link`` che ha come attributi ``rel`` e ``href``. In pratica ogni etichetta ``link`` permette di aggiungere una coppia chiave-valore, in cui la chiave (definita con l'attributo ``rel``) indica quale risorsa si vuole collegare ed i valore (definito con l'attributo ``href``) indica il collegamento alla risorsa da collegare.

Di seguito un esempio di metadati relativi alle risorse collegate, da includere nell'etichetta ``head``:

```html
<!-- Provides information about an author or another person -->
<link rel="me" href="https://google.com/profiles/name" type="text/html">
<link rel="me" href="mailto:name@example.com">
<link rel="me" href="sms:+15035550125">

<!-- Links to information about the author(s) of the document -->
<link rel="author" href="humans.txt">

<!-- Refers to a copyright statement that applies to the link's context -->
<link rel="license" href="copyright.html">

<!-- The first, last, previous, and next documents in a series of documents -->
<link rel="first" href="/serie/first.html">
<link rel="last" href="/serie/last.html">
<link rel="prev" href="/serie/article4.html">
<link rel="next" href="/serie/article6.html">

<!-- Links to top level resource in an hierarchical structure -->
<link rel="index" href="/serie/">

<!-- Icon in the highest resolution -->
<link rel="icon" sizes="192x192" href="/path/to/icon.png">
```

### Icone del sito web

Possono essere necessarie anche più di 30 icone, in formati e risoluzioni differenti, per poter mostrare correttamente l'icona del sito su tutti i dispositivi. Tablet, smartphone, computer o smart-TV scelgono l'icona da mostrare all'utente in base alla risoluzione ed alle caratteristiche dello schermo.

Piuttosto che creare un così vasto numero di icone, in questi paragrafi sarà mostrato un approccio minimale, in cui solo le icone indispensabili saranno incluse nella pagina web.

Per motivi storici, l'icona è memorizzata nel file ``favicon.ico`` e si deve trovare all'indirizzo ``/favicon.ico``.

Le icone moderne sono, invece, in formato **SVG**, un formato vettoriale che permette di ingrandirle o ridurle senza perdere qualità.

Il formato **SVG** non è supportato da tutti i dispositivi, quindi alcune icone sono ancora in formato ``PNG``.

Alcune icone possono essere descritte nel file ``manifest.webmanifest``, un file che configura il sito web come una **PWA**.

```html
<!-- 32×32 px for legacy browsers -->
<link rel="icon" href="/favicon.ico">

<!-- Icone standard -->
<link rel="icon" href="icona.svg" type="image/svg+xml">
<link rel="manifest" href="manifest.webmanifest">

<!-- Icona per dispositivi Apple 180×180 px -->
<link rel="apple-touch-icon" href="apple-touch-icon.png">
```

Il file ``manifest.webmanifest`` descrive le icone da utilizzare attraverso le seguenti proprietà:

```javascript
{
  "icons": [
    { "src": "/192.png", "type": "image/png", "sizes": "192x192" },
    { "src": "/512.png", "type": "image/png", "sizes": "512x512" }
  ]
}
```

## Struttura basilare

La struttura basilare di una pagina web è definita dalle seguenti etichette HTML:

- L'etichetta ``header`` rappresenta un contenuto introduttivo o un gruppo di contenuti introduttivi in un documento o in una sezione. Solitamente contiene elementi come il logo del sito, il titolo della pagina o la navigazione principale;
- L'etichetta ``nav`` definisce una sezione di navigazione all'interno di un documento HTML. Solitamente contiene link a diverse pagine o sezioni del sito web.
- L'etichetta ``main`` rappresenta il contenuto principale di un documento HTML. È unico all'interno del documento e dovrebbe contenere solo il contenuto direttamente correlato a quella pagina specifica.
- L'etichetta ``article`` rappresenta un contenuto autonomo e indipendente all'interno di un documento HTML. Può essere utilizzato per articoli di notizie, post di blog, commenti o altre sezioni di contenuto simili.
- L'etichetta ``section`` definisce una sezione generica di contenuto in un documento HTML. È utilizzata per raggruppare insieme contenuti correlati. Può essere utilizzata per creare una struttura gerarchica nel documento.
- L'etichetta ``aside`` rappresenta un contenuto non strettamente attinente, separato dal contenuto principale del documento. Solitamente contiene informazioni correlate, come barre laterali, note o contenuti pubblicitari.
- L'etichetta ``footer`` rappresenta una sezione di contenuto di un documento HTML che contiene informazioni di chiusura, come i dettagli di contatto, i link ai social media o le informazioni di copyright. È spesso posizionata alla fine della pagina web.

Un esempio di struttura di una pagina web che utilizza queste etichette è la seguente:

![Esempio di struttura di una pagina web](/static/coding/web/html/webPageStructure.png "Esempio di struttura di una pagina web")

La struttura mostrata nell'esempio precedente viene realizzata attraverso il codice HTML seguente:

```html
<!DOCTYPE html>
<html>
  <head>
    <!-- metadati obbligatori, vanno nelle prime posizioni -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Esempio di struttura</title>
  </head>
  <body>
    <!-- contenuto introduttivo -->
    <header>
      <h1>Nome del sito web</h1>
    </header>

    <!-- sezione di navigazione -->
    <nav>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Articoli</a></li>
        <li><a href="#">Contatti</a></li>
      </ul>
    </nav>
  
    <!-- contenuto principale -->
    <main>
    
      <!-- sezione -->
      <section>
        <h2>Sezione 1</h2>
        <p>Contenuto della sezione 1...</p>
      </section>

      <!-- articolo -->
      <article>
        <h2>Titolo dell'articolo</h2>
        <p>Contenuto dell'articolo...</p>
      </article>
    </main>
  
    <!-- informazioni separate -->
    <aside>
      <h3>Informazioni correlate</h3>
      <p>contenuto non strettamente attinente</p>
    </aside>

    <footer>
      <p>informazioni di chiusura</p>
    </footer>
  </body>
</html>
```

Sia lo sviluppatore, sia il grafico devono conoscere queste regole e rispettare la struttura basilare della pagina web utilizzando le etichette in maniera coerente al contenuto.

## Multimedialità e interattività

La multimedialità è una forma di comunicazione caratterizzata dalla compresenza e interazione di più linguaggi (testi scritti, immagini, suoni, animazioni) in uno stesso supporto o contesto informativo.

Il termine multimedialità si sta progressivamente sovrapponendo a quello di interattività, dato che i contenuti multimediali, che una volta erano fruibili su TV, radio o telefono oggi sono fruibili su dispositivi sempre più interattivi, dal computer al palmare, al telefono, alla LIM (lavagna interattiva multimediale).

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
