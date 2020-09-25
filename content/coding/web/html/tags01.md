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

Un documento HTML è composto da un insieme di etichette, chiamate TAG
(in inglese), che indicano l'inizio e la fine dei vari contenuti del
documento. La struttura base di un documento HTML e' la seguente:

```html
<!doctype html>
<html>
  <head>
    <meta name="author" content="codingepaduli">
  </head>
  <body>
    <h1>Titolo pagina web</h1>
    <p>paragrafo della pagina web.</p>
    <!-- commento in html-->
  </body>
</html>
```

In questa struttura si evidenziano i 4 elementi principali che devono
sempre essere presenti:

1. L'indicazione ``doctype`` (non è un tag, quindi non va chiuso) indica
    semplicemente che il documento è di tipo HTML (versione 5);
2. Il tag ``html`` indica l'inizio del documento HTML (con il simbolo di
    apertura ``<html>``) e la fine del documento HTML (con il simbolo di
    chiusura ``</html>``);
3. Il tag di informazioni ``head`` (non indirizzate all'utente, ma al
    browser o ai motori di ricerca) che viene aperto (con il simbolo
    ``<head>``) e chiuso (con il simbolo ``</head>``);
4. Il tag di contenuti ``body`` che viene aperto (con il simbolo
    ``<body>``) e poi chiuso (con il simbolo ``</body>``) appena prima della
    fine del documento.

Si fa notare nuovamente che tutti i tag nell'esempio sono prima aperti e
poi chiusi. Inoltre, si fa notare che il testo è **indentato**, ovvero
che, nella riga successiva ad un simbolo di apertura, vengono aggiunti 2
o 4 spazi. Questi spazi vengono tolti quando il tag viene chiuso
(simbolo di chiusura). L'indentazione è una caratteristica dei documenti
molto apprezzata, ed alcuni editor di testo permettono di indentare il
documento in automatico, con combinazioni di tasti e/o plugins. Altra
caratteristica apprezzata è la presenza di **commenti**, che l'autore
scrive come informazioni aggiuntive e promemoria al fine di fare
chiarezza.

Tutti i contenuti vanno inseriti nel tag ``body``, tra i simboli di
apertura ``<body>`` e chiusura ``</body>``, come nell'esempio precedente, in
cui il titolo `h1` ed il paragrafo `p` si trovano nel tag dei contenuti
``body``.

Di seguito vengono elencati i tag per la gestione del testo:

Il titolo, come visto nell'esempio precedente, è generato dal tag ``h1``,
che ha il simbolo di apertura ``<h1>`` ed il simbolo di chiusura ``</h1>``.
In realtà, esistono 7 livelli di titolo, che servono a dividere il
documento in più capitoli e sotto-capitoli, in modo da poter dare una
struttura "alberata" al documento. Questi livelli sono espressi dai tag
``h1``, ``h2``, ``h3``, ``h4``, ``h5``, ``h6`` ed ``h7``, ma nella realtà si consiglia
l'uso fino al terzo livello.

Di seguito si riporta un esempio di codice per generare i titoli dei primi tre livelli:

```html
<h1> Esempio di titolo di primo livello </h1>
<h2> Esempio di titolo di secondo livello <h2>
<h3> Esempio di titolo di terzo livello <h2>
```

che vengono poi trasformati dal browser come si vede di seguito:

<!-- TODO replace with an image of titles -->

### Esempio di titolo di primo livello

#### Esempio di titolo di secondo livello

##### Esempio di titolo di terzo livello

Il paragrafo è generato dal tag ``p`` che ha il simbolo di apertura ``<p>``
ed il simbolo di chiusura ``</p>``;

il tag ``del`` genera un testo cancellato come ad esempio questo testo
<del>cancellato</del> generato dal seguente codice:
``<del>cancellato</del>``;

il tag ``ins`` genera un testo sottolineato come ad esempio questo testo
<ins>sottolineato</ins> generato dal seguente codice:
``<ins>sottolineato</ins>``;

il tag ``sup`` genera un testo in apice come ad esempio questo testo
<sup>in apice</sup> generato dal seguente codice:
``<sup>in apice</sup>``;

il tag ``sub`` genera un testo in pedice come ad esempio questo testo
<sub>in pedice</sub> generato dal seguente codice:
``<sub>in pedice</sub>``;

il tag ``strong`` genera un testo in grassetto, come ad esempio questo
testo **in grassetto** generato dal seguente codice:
``<strong>in grassetto</strong>``;

il tag ``em`` genera un testo in corsivo, come ad esempio questo testo *in
corsivo* generato dal seguente codice:
``<em>in corsivo</em>``;

il tag ``mark`` genera un testo evidenziato, come ad esempio questo testo
<mark>evidenziato</mark> generato dal seguente codice:
``<mark>evidenziato</mark>``;

il tag ``abbr`` è usato per visualizzarne il significato di un acronimo
quando il mouse si ferma sopra questo, come ad esempio questo acronimo
<abbr title="HyperText Markup Language">HTML</abbr> generato dal seguente codice:
``<abbr title="HyperText Markup Language">HTML</abbr>``;

<!-- Obsolete TAG <acronym title="as soon as possible">ASAP</acronym> -->

<!-- Obsolete TAG <big>This text is big</big> -->

E' ovvio che i tag possono essere inseriti (innestati) l'uno dentro
l'altro per creare le combinazioni desiderate, ad esempio per generare
un testo grassetto, evidenziato e sottolineato, come
<strong><mark><ins>questo testo</ins></mark></strong> si usa il codice

```html
<strong>
    <mark>
        <ins>questo testo</ins>
    </mark>
</strong>
```
