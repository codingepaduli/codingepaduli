---
type: "html"
title: "HTML Lez. 02 - Etichette (tag)"
description: "HTML Lez. 02 - Etichette (tag) - Creazione di una prima pagina web e spiegazione dei primi tag"
date: 2019-07-16
publishdate: 2019-07-16
lastmod: 2019-07-16
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 02 - Etichette (tag) - Creazione di una prima pagina web e spiegazione dei primi tag"
---

# Etichette (tag)

Le **etichette** (in inglese Markup o TAG) sono dei segnaposto, indicano
l'inizio e la fine di un elemento della pagina web.

Ogni etichetta ha un nome, ad esempio
``h1`` è l'etichetta del titolo,
``p`` è l'etichetta del paragrafo,
``mark`` è l'etichetta per il testo evidenziato.

E' importante comprendere che, quando si parla di un'etichetta, in realtà ci si riferisce a due etichette: l'etichetta di inizio (o apertura) e l'etichetta di fine (o chiusura).

Ad esempio,
``h1`` è l'etichetta del titolo, quindi ci si riferisce all'etichetta di inizio del titolo e l'etichetta di fine del titolo; Allo stesso modo,
``p`` è l'etichetta del paragrafo, quindi ci si riferisce all'etichetta di inizio del paragrafo e l'etichetta di fine del paragrafo; Ancora,
``mark`` è l'etichetta per il testo evidenziato, quindi ci si riferisce all'etichetta di inizio del testo evidenziato e l'etichetta di fine del testo evidenziato.

Queste etichette di apertura e chiusura sono scritte secondo le seguenti regole:
- l'etichetta di apertura è composta dal nome dell'etichetta racchiuso tra parentesi angolari (i caratteri ``<`` e ``>`` nel campo della programmazione sono detti appunto parentesi angolari).
- l'etichetta di chiusura è composta dalle parentesi angolari contenenti il nome dell'etichetta preceduto dal carattere ``/``.

Per esempio,
l'etichetta di inizio del titolo è ``<h1>`` e l'etichetta di fine titolo è ``</h1>``, quindi, il titolo in HTML sarà scritto usando il codice: ``<h1>Titolo</h1>``;
l'etichetta di inizio paragrafo è ``<p>`` e l'etichetta di fine paragrafo è ``</p>``, quindi, il paragrafo in HTML sarà scritto usando il codice: ``<p>paragrafo</p>``;
l'etichetta di inizio testo evidenziato è ``<mark>`` e l'etichetta di fine testo evidenziato è ``</mark>``, quindi, il testo evidenziato in HTML sarà scritto usando il codice: ``<mark>testo evidenziato</mark>``;

Non tutte le etichette prevedono un'etichetta di chiusura, esistono delle eccezioni di cui tenere conto.

# Struttura basilare di una pagina web

## Dichiarazione del tipo di documento

Un'indicazione fondamentale che deve essere inserita **nella prima riga** della pagina web (del file HTML) è la dichiarazione del tipo di documento: si deve indicare che il documento è scritto in HTML, utilizzando il codice ``<!doctype html>``.

Si fa notare che "doctype" è l'abbreviazione di "document type", che tradotto significa "tipo di documento", quindi il tipo di documento è "HTML". Inoltre questa non un'etichetta, è una dichiarazione.

## Metadati

Un documento HTML contiene i metadati, che sono informazioni relative alla pagina web (autore, icona, descrizione, immagine di anteprima, ecc...). Questi metadati non sono mostrati all'utente, ma utilizzati dai motori di ricerca e dai social network per presentare e catalogare la pagina web.

Ad esempio, quando si condivide agli amici un'articolo sui social, questi visualizzano, oltre al collegamento, sia il titolo dell'articolo, sia la descrizione, sia un'immagine o un video di anteprima. Queste informazioni di anteprima i social le recuperano dai metadati allegati alla pagina web.

La codifica della pagina, la parte della pagina visibile (detta viewport) ed il titolo sono metadati obbligatori, per cui devono essere sempre presenti rispettivamente in prima, seconda e terza posizione tra i metadati.

Per un riferimento completo ai metadati si rimanda al link [https://htmlhead.dev/](https://htmlhead.dev/ "Link al sito di riferimento per i metadati").

## Contenuti

Un documento HTML contiene il "corpo della pagina", nel quale sono inseriti tutti i contenuti (titoli, paragrafi, immagini, ecc..) che l'utente visualizza.

## Codice HTML basilare di una pagina web

La struttura base di un documento HTML e' la seguente:

```html
<!doctype html>
<html>
  <head>
    <!-- metadati obbligatori, vanno nelle prime posizioni -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Page Title</title>

    <!-- altri metadati della pagina html -->
    <meta name="author" content="Bill Gates">
    <meta name="description" content="Descrizione pagina">
    <meta name="subject" content="Linguaggio HTML">
  </head>
  <body>
    <!-- contenuti della pagina html -->
    <h1>Titolo pagina web</h1>
    <p>paragrafo della pagina web.</p>
  </body>
</html>
```

In questo codice si evidenziano alcuni elementi principali che devono
sempre essere presenti:

1. La dichiarazione del tipo di documento ``doctype`` (abbreviazione di
  "document type") indica che il documento è di tipo HTML (versione 5).
  E' una dichiarazione, non un tag, quindi non ha una chiusura;
2. Il tag ``html`` delimita l'intera pagina web (l'etichetta di
    apertura ``<html>`` indica l'inizio del documento HTML e l'etichetta
    di chiusura ``</html>`` indica la fine del documento HTML);
3. Il tag ``head`` delimita i metadati (l'etichetta di
    apertura ``<head>`` indica l'inizio dei metadati e l'etichetta
    di chiusura ``</head>`` indica la fine dei metadati);
4. Il tag ``body`` delimita i contenuti (l'etichetta di
    apertura ``<body>`` indica l'inizio dei contenuti e l'etichetta
    di chiusura ``</body>`` indica la fine dei contenuti);.

Si fa notare nuovamente che tutti i tag nell'esempio sono prima aperti e
poi chiusi. Inoltre, si fa notare che il testo è **indentato**, ovvero
che, nella riga successiva ad un simbolo di apertura, vengono aggiunti 2
o 4 spazi. Questi spazi vengono tolti quando il tag viene chiuso
(simbolo di chiusura).

L'indentazione è una caratteristica dei documenti
molto apprezzata, ed alcuni editor di testo permettono di indentare il
documento in automatico, con combinazioni di tasti e/o plugins. Altra
caratteristica apprezzata è la presenza di **commenti**, che l'autore
scrive come informazioni aggiuntive e promemoria al fine di fare
chiarezza.

## Tag obsoleti

Alcuni tag sono stati "cancellati" dalle specifiche HTML e non devono più essere utilizzati, ad esempio:

```html
<acronym title="as soon as possible">ASAP</acronym> -->
<big>This text is big</big>
```

Gli strumenti di validazione del codice HTML aiutano a rilevarli e sostituirli.