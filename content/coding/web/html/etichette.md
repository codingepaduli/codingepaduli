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

## Prima pagina web

Un'indicazione fondamentale che deve essere inserita **nella prima riga** della pagina web (del file HTML) è la dichiarazione del "tipo di documento": si deve indicare che il documento è scritto in HTML, utilizzando il codice ``<!doctype html>`` ("doctype" è l'abbreviazione di "document type", che tradotto significa "tipo di documento", quindi si dichiara che il tipo di documento è "HTML").

Si precisa che non si tratta di un'etichetta, è una dichiarazione, difatti quindi ha una chiusura;

Il tag ``html`` delimita l'intera pagina web (l'etichetta di
apertura ``<html>`` indica l'inizio del documento HTML e l'etichetta
di chiusura ``</html>`` indica la fine del documento HTML);

Il tag ``body`` delimita i contenuti (l'etichetta di
apertura ``<body>`` indica l'inizio dei contenuti e l'etichetta
di chiusura ``</body>`` indica la fine dei contenuti);.

La pagina HTML risultante  (ancora incompleta) è la seguente:

```html
<!doctype html>
<html>
  <body>
    <!-- contenuti della pagina html -->
    <h1>Titolo pagina web</h1>
    <p>paragrafo della pagina web.</p>
  </body>
</html>
```

Si fa notare nuovamente che tutte le etichette nell'esempio riportato sono prima aperte e
poi chiuse.

L'indentazione è una caratteristica molto apprezzata, perchè migliora la leggibilità e permette di rilevare gli errori più rapidamente. Difatti, il codice riportato nell'esempio è **indentato**. Alcuni editor di testo permettono di indentare il documento in maniera automatica.

Anche la la presenza di **commenti** è molto apprezzata, poichè rappresentano informazioni aggiuntive e promemoria che rendono più chiaro il codice.

## Tag obsoleti

Alcuni tag sono stati "cancellati" dalle specifiche HTML e non devono più essere utilizzati, ad esempio:

```html
<acronym title="as soon as possible">ASAP</acronym> -->
<big>This text is big</big>
```

Gli strumenti di validazione del codice HTML aiutano a rilevarli e sostituirli.
