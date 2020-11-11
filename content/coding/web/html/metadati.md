---
type: "html"
title: "HTML Lez. 05 - Metadati"
description: "HTML Lez. 05 - Metadati"
date: 2019-07-26
publishdate: 2019-07-26
lastmod: 2019-07-26
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 05 - Metadati: Informazioni relative ad una pagina web"

references:
  - title: "Sito htmlhead.dev"
    disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
    link: "https://htmlhead.dev/"
    description: "Guida (in inglese) all'elemento 'head' dell'HTML;"
---

# Metadati

Un documento HTML deve contenere i **metadati**, ovvero informazioni relative alla pagina web (autore, icona, descrizione, immagine di anteprima, ecc...). Questi [metadati](https://it.wikipedia.org/wiki/Metadato "Link a wikipedia sui metadati") non sono mostrati all'utente, ma sono utilizzati dai motori di ricerca e dai social network per presentare e catalogare la pagina web.

Ad esempio, quando si condivide agli amici un'articolo sui social, questi visualizzano, oltre al collegamento, sia il titolo dell'articolo, sia la descrizione, sia un'immagine o un video di anteprima. Queste informazioni di anteprima i social le recuperano dai metadati allegati alla pagina web.

Per un riferimento completo ai metadati si rimanda al link [https://htmlhead.dev/](https://htmlhead.dev/ "Link al sito di riferimento per i metadati") ed alle specifiche del linguaggio HTML.

Tutti i metadati devono essere contenuti nel tag ``head`` della pagina web, ad eccezione dell'icona principale del sito web: non è descritta da nessun tag, deve essere semplicemente salvata nel file ``favicon.ico`` nella cartella principale del sito per poter essere recuperata.

## Metadati obbligatori

I seguenti metadati sono obbligatori e devono essere inseriti rispettivamente in prima, seconda e terza posizione tra i metadati della pagina web:

1. la codifica della pagina web ("utf-8" è la codifica standard) descritta in un capitolo successivo;
2. la "viewport" che imposta la parte della pagina visibile sui dispositivi. L'impostazione aiuta a rendere "responsive" la pagina web (cioè correttamente visualizzabile sui vari schermi, dalle smart TV agli smartphone). Per un dettaglio maggiore sull'argomento si rimanda alle specifiche HTML;
3. il titolo del documento.

Il codice completo dei metadati obbligatori, comprensivo dell'etichetta ``head`` che racchiude i metadati, è il seguente:

```html
<head>
  <!-- metadati obbligatori, vanno nelle prime posizioni -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Page Title</title>
</head>
```

## Metadati facoltativi

### Ulteriori informazioni sul documento

Tra le varie informazioni che si possono aggiungere sulla pagina abbiamo: autore, descrizione, argomento trattato, ecc...

Queste informazioni sono descritte dal tag ``meta`` che ha come attributi ``name`` e ``content``. In pratica ogni tag ``meta`` permette di aggiungere una coppia chiave-valore, in cui la chiave (definite con l'attributo ``name``) indica la proprietà del documento (autore, descrizione, ...) alla quale è assegnato il valore (definito per mezzo dell'attributo ``content``).

Di seguito un'esempio di metadati facoltativi, da includere nel tag ``head``:

```html
  <!-- altri metadati della pagina html -->
  <meta name="author" content="Bill Gates">
  <meta name="description" content="Descrizione pagina">
  <meta name="subject" content="Linguaggio HTML">
```

### Informazioni per i social

Le informazioni per i social network sono descritte attraverso l'Open Graph protocol, a cui si rimanda per approfondimenti.

I social estraggono le informazioni di una pagina web dalle seguenti chiavi:

```html
  <meta property="og:title" content="Page Title">
  <meta property="og:image" content="https://example.com/image.jpg">
  <meta property="og:description" content="Descrizione pagina">
```

Twitter fa eccezione, perchè usa le Twitter Card, una tecnologia proprietaria, a cui si rimanda per approfondimenti.

Twitter estrae le informazioni di una pagina web dalle seguenti chiavi:

```html
  <meta name="twitter:creator" content="@account_twitter">
  <meta property="twitter:title" content="Page Title">
  <meta property="twitter:image" content="https://example.com/image.jpg">
  <meta property="twitter:description" content="Descrizione pagina">
```

**Si fa notare che per quanto riguarda i social, sia "Open Graph", sia le "Twitter Card" descrivono le informazioni attraverso il tag ``meta`` che però fa uso dell'attributo ``property`` al posto dell'attributo ``name``.**

### Risorse collegate al documento

Altre informazioni sulla pagina web sono invece le risorse collegate, come ad esempio la pagina web della licenza dei contenuti (copyright), la pagina web relativa agli autori del documento, le pagine web collegate nella serie di articoli (se la pagina web fa parte di una serie di articoli, si possono indicare il primo e l'ultimo articolo della serie, l'articolo precedente e successivo nella serie), la pagina web collegate nella struttura gerarchica (se si ha una struttura ad albero, si può indicare la pagina web "radice" dell'albero), si può indicare l'icona ad alta risoluzione.

Queste risorse sono indicate nel tag ``link`` che ha come attributi ``rel`` e ``href``. In pratica ogni tag ``link`` permette di aggiungere una coppia chiave-valore, in cui la chiave (definita con l'attributo ``rel``) indica quale risorsa si vuole collegare ed i valore (definito con l'attributo ``href``) indica il collegamento alla risorsa da collegare.

Di seguito un'esempio di metadati relativi alle risorse collegate, da includere nel tag ``head``:

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
