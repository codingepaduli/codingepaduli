---
type: "html"
title: "HTML Lez. 04 - Multimedialità e interattività"
description: "HTML Lez. 04 - Etichette per audio, video, immagini e collegamenti a risorse esterne"
date: 2019-08-26
publishdate: 2019-08-26
lastmod: 2022-10-15
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 04 - Etichette per audio, video, immagini e collegamenti a risorse esterne"
weight: 9670

references:
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

# Multimedialità e interattività

La multimedialità è una forma di comunicazione caratterizzata dalla compresenza e interazione di più linguaggi (testi scritti, immagini, suoni, animazioni) in uno stesso supporto o contesto informativo.

Il termine multimedialità si sta progressivamente sovrapponendo a quello di interattività, dato che i contenuti multimediali, che una volta erano fruibili su TV, radio o telefono oggi sono fruibili su dispositivi sempre più interattivi, dal computer al palmare, al telefono, alla LIM (lavagna interattiva multimediale).

## Etichette audio e video

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

<!-- markdownlint-disable MD033 -->

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Terrestrial_Planets_Size_Comp_True_Color.png/320px-Terrestrial_Planets_Size_Comp_True_Color.png" width="145" height="126" alt="Planets" usemap="#planetmap" />

<map name="planetmap">
    <area shape="rect" coords="0,0,82,126" alt="Terra" title="Terra" href="https://it.wikipedia.org/wiki/Terra" />
    <area shape="circle" coords="90,58,3" alt="Mercury" title="Mercury" href="https://it.wikipedia.org/wiki/Mercurio_(astronomia)" />
    <area shape="circle" coords="124,58,8" alt="Venus" title="Venus" href="https://it.m.wikipedia.org/wiki/Venere_(astronomia)" />
</map>

<!-- markdownlint-enable MD033 -->

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
