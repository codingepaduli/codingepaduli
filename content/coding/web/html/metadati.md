---
type: "html"
title: "HTML Lez. 05 - Struttura, metadati e validazione"
description: "HTML Lez. 05 - Struttura, metadati e validazione di una pagina web"
date: 2019-07-27
publishdate: 2019-07-27
lastmod: 2025-03-08
spellcheck: 2022-10-08
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 05 - Struttura, metadati e validazione di una pagina web"
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
    -   title: "W3C Markup Validation Service"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "http://validator.w3.org/nu/"
        description: "A W3C Markup Validation Service for your web pages"
---

# Struttura, metadati e validazione

Un documento HTML generalmente contiene **informazioni** relative alla pagina web, come l'autore della pagina, la descrizione dei contenuti o un'immagine di anteprima ed ha un proprio **layout**, ovvero una propria impaginazione e struttura grafica che serve ad indicare la posizione e la dimensione degli elementi sugli schermi di computer, smartphone e tablet.

Le informazioni aggiuntive sono dette "metadati" e, sebbene quasi tutte facoltative, sono utilizzatissime da social network e motori di ricerca per catalogare la pagina e mostrarne un'anteprima.

Il layout grafico è gestito attraverso i "CSS", ovvero i fogli di stile grafico che definiscono colore, dimensione e posizione degli elementi della pagina web. Il layout si poggia su una struttura basilare che indica ad esempio l'area in cui è situato il menu laterale, l'area destinata al piè di pagina e l'area dei contenuti pubblicitari. Ognuno di questi elementi della struttura basilare è descritto attraverso un'apposita etichetta del linguaggio HTML.


## Flusso di layout

Il flusso di layout determina come gli elementi si dispongono nella pagina. Esistono due categorie di elementi:

- gli elementi "di blocco" occupano l'intera larghezza disponibile e iniziano su una nuova riga;
- gli elementi "in linea" occupano solo lo spazio necessario al contenuto, non iniziano su una nuova riga ma si dispongono all'interno della riga presente.

Gli elementi "in linea" sono pochi, tra questi troviamo l'etichetta della data e dell'ora, tutte le etichette di formattazione del carattere, e poche altre.

L'etichetta ``span`` è la classica etichetta "in linea". Definisce un contenitore generico utilizzato per raggruppare tipicamente porzioni di testo senza andare a capo ed occupa solo lo spazio necessario per il suo contenuto. La si utilizza molto per stilizzare la pagina o per identificare una porzione di testo. Un esempio d'uso è il seguente:

```html
<p>Questo prodotto arriverà tra <span class="seleziona">12 giorni</span>.</p>
```

Gli elementi "di blocco" sono tutte le etichette di formattazione del paragrafo, le etichette multimediali, quelle di struttura, quelle dei moduli di invio dati.

L'etichetta ``div`` è la classica etichetta "di blocco". Definisce un contenitore generico utilizzato per raggruppare altri elementi. Lo si utilizza molto per stilizzare meglio la pagina. Un esempio d'uso è il seguente:

```html
<div>La descrizione del prodotto è ...</div>
```

Il flusso di layout è modificabile attraverso i CSS, che permettono di specificare se e quando andare a capo, se occupare solo lo spazio necessario o in che percentuale, ecc..

## Struttura basilare

La struttura basilare di una pagina web è definita dalle seguenti etichette HTML:

- L'etichetta ``header`` rappresenta un contenuto introduttivo o un gruppo di contenuti introduttivi in un documento o in una sezione. Solitamente contiene elementi come il logo del sito, il titolo della pagina o la navigazione principale;
- L'etichetta ``nav`` definisce una sezione di navigazione all'interno di un documento HTML. Solitamente contiene link a diverse pagine o sezioni del sito web.
- L'etichetta ``search`` definisce una sezione per la ricerca di contenuti.
- L'etichetta ``main`` rappresenta il contenuto principale di un documento HTML. È unico all'interno del documento e dovrebbe contenere solo il contenuto direttamente correlato a quella pagina specifica.
- L'etichetta ``article`` rappresenta un contenuto autonomo e indipendente all'interno di un documento HTML. Può essere utilizzato per articoli di notizie, post di blog, commenti o altre sezioni di contenuto simili.
- L'etichetta ``section`` definisce una sezione generica di contenuto in un documento HTML. È utilizzata per raggruppare insieme contenuti correlati. Può essere utilizzata per creare una struttura gerarchica nel documento.
- L'etichetta ``aside`` rappresenta un contenuto non strettamente attinente, separato dal contenuto principale del documento. Solitamente contiene informazioni correlate, come barre laterali, note o contenuti pubblicitari.
- L'etichetta ``footer`` rappresenta una sezione di contenuto di un documento HTML che contiene informazioni di chiusura, come i dettagli di contatto, i link ai social media o le informazioni di copyright. È spesso posizionata alla fine della pagina web.

Tutte queste etichette sono etichette "di blocco", quindi il contenuto di ogni etichetta va a capo.

Un esempio di struttura di una pagina web che utilizza queste etichette è la seguente:

![Esempio di struttura di una pagina web](/static/coding/web/html/webPageFullStructure.png "Esempio di struttura di una pagina web")

La struttura mostrata nell'esempio precedente viene realizzata attraverso il codice HTML seguente:

```html
<!DOCTYPE html>
<html>
  <head>
    <!-- metadati obbligatori, in questo ordine -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Esempio di struttura</title>
    
    <!-- metadati facoltativi, sempre dopo i metadati obbligatori -->
    <meta name="author" content="Bill Gates">
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

    <!-- sezione di ricerca -->
    <search>
      <form action="/search" method="get">
        <input type="text" name="q" placeholder="Search...">
        <button type="submit">Cerca</button>
      </form>
    </search>

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
  
    <!-- sezione con informazioni non strettamente attinenti -->
    <aside>
      <h3>Informazioni correlate</h3>
      <p>contenuto non strettamente attinente</p>
    </aside>

    <!-- informazioni a piè di pagina -->
    <footer>
      <p>informazioni di chiusura</p>
    </footer>
  </body>
</html>
```

Sia lo sviluppatore, sia il grafico devono conoscere queste regole e rispettare la struttura basilare della pagina web utilizzando le etichette in maniera coerente al contenuto, soprattutto per questioni di Accessibilità (illustrata in un successivo capitolo).

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

## Validazione del codice HTML

La validazione di una pagina web serve sia a risolvere eventuali errori presenti, sia ad evitare l'uso di pratiche non piú al passo con gli ultimi standard.

La validazione puó essere inclusa all'interno dell'editor, oppure ci si puó servire di servizi esterni, come il [W3C Validator](https://validator.w3.org/ "Link al validatore W3C").

Il servizio di validazione della W3C permette di validare il codice HTML di una pagina web, caricando il file online, inserendo in input (con copia e incolla) il codice HTML da validare, oppure inserendo l'URL della pagina, come da immagine seguente:
![immagine del validatore](/static/coding/web/html/html-W3C-validator.png "immagine del validatore")

Nel caso il servizio di validazione della W3C non rilevi errori nella pagina web, un messaggio di conferma della validità del codice HTML viene riportato all'utente, come da immagine seguente:
![immagine del validatore senza errori](/static/coding/web/html/html-W3C-validator-OK.png "immagine del validatore senza errori")

Nel caso siano presenti errori, vengono elencati uno ad uno, e viene riportata sia la presunta riga d'errore, sia viene evidenziato il codice con tutti gli errori, come nella seguente immagine:
![immagine del validatore con errori](/static/coding/web/html/html-W3C-validator-Errors.png "immagine del validatore con errori")

Tra i diversi messaggi, di avviso o di errore, abbiamo:

**Consider adding a lang attribute to the HTML start tag to declare the language of this document**: È un messaggio di avviso per indicare che l'etichetta ``html`` manca dell'attributo che indica la lingua in cui è scritta la pagina, quindi bisogna correggere con: ``<html lang="it">``.

**Non-space characters found without seeing a doctype first. Expected ``<!DOCTYPE html>``**: Manca la prima riga di intestazione, che indica che il documento è un HTML. Deve essere aggiunta come prima riga.

**Element head is missing a required instance of child element title**: Indica che nella pagina web deve essere presente l'etichetta ``head`` che a sua volta deve contenere l'etichetta ``title`` come di seguito:

```html
<head>
    <title>Titolo pagina web </title>
</head>
```

<!-- markdownlint-disable MD033 -->

**The document is not mappable to XML 1.0 due to two consecutive hyphens in a comment** Indica che non si possono mettere due trattini consecutivi all'interno di un commento, quindi i due trattini vanno rimossi. Spesso si sbaglia a scrivere il commento, aggiungendo uno spazio di troppo, che deve essere rimosso, come nel seguente esempio, nel quale sono evidenziati gli spazi da rimuovere: ``<!``<mark> </mark>``−− commento −−``<mark> </mark>``>``.

**No <mark>p</mark> element in scope but a <mark>p end tag</mark> seen** indica che l'etichetta evidenziata è stata aperta (ad esempio ``<p>``) e non è stata chiusa correttamente (con ``</p>``).

<!-- markdownlint-enable MD033 -->

**The center element is obsolete. Use CSS instead.** indica che gli ultimi standard sconsigliano l'uso dell'etichetta evidenziata (in questo caso, l'etichetta ``<center>``). In questo caso si consiglia di sostituirla facendo uso dei CSS.

**Bad character after ``<``. Probable cause: Unescaped. Try escaping it as ``&#xxxx;``** indica che il carattere evidenziato deve essere codificato come "HTML entity" oppure rappresentato con codifica Unicode decimale o esadecimale.
