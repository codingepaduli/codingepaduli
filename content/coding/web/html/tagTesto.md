---
type: "html"
title: "HTML Lez. 03 - Formattazione carattere, liste e tabelle"
description: "HTML Lez. 03 - Formattazione carattere, liste e tabelle"
date: 2019-07-18
publishdate: 2019-07-18
lastmod: 2019-07-18
spellcheck: 2020-12-11
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 03 - Etichette per la formattazione carattere, per la creazione di liste e di tabelle"
weight: 9790
---

# Formattazione carattere, liste e tabelle

## Titoli

Esistono 7 livelli di titolo, che servono a dividere il documento in più capitoli e sotto-capitoli, in modo da poter dare una struttura "alberata" al documento. Questi livelli sono espressi dalle etichette ``h1``, ``h2``, ``h3``, ``h4``, ``h5``, ``h6`` ed ``h7``, anche se si consiglia l'uso fino al terzo livello.

Il titolo di primo livello è generato dall'etichetta ``h1``, che ha il simbolo di apertura ``<h1>`` ed il simbolo di chiusura ``</h1>``.

Di seguito si riporta un esempio di codice per generare i titoli dei primi tre livelli:

```html
<h1> Esempio di titolo di primo livello </h1>
<h2> Esempio di titolo di secondo livello </h2>
<h3> Esempio di titolo di terzo livello </h3>
```

che vengono poi trasformati dal browser come si vede di seguito:

![Esempio di titoli](/static/coding/web/html/tagTesto-title-examples.png)

## Formattazione carattere

Il paragrafo è generato dall'etichetta ``p`` che ha il simbolo di apertura ``<p>``
ed il simbolo di chiusura ``</p>``;

<!-- markdownlint-disable MD033 -->

L'etichetta ``del`` genera un testo cancellato come ad esempio questo testo
<del>cancellato</del> generato dal seguente codice:
``<del>cancellato</del>``;

L'etichetta ``ins`` genera un testo sottolineato come ad esempio questo testo
<ins>sottolineato</ins> generato dal seguente codice:
``<ins>sottolineato</ins>``;

L'etichetta ``sup`` genera un testo in apice come ad esempio questo testo
<sup>in apice</sup> generato dal seguente codice:
``<sup>in apice</sup>``;

L'etichetta ``sub`` genera un testo in pedice come ad esempio questo testo
<sub>in pedice</sub> generato dal seguente codice:
``<sub>in pedice</sub>``;

L'etichetta ``strong`` genera un testo in grassetto, come ad esempio questo
testo **in grassetto** generato dal seguente codice:
``<strong>in grassetto</strong>``;

L'etichetta ``em`` genera un testo in corsivo, come ad esempio questo testo *in corsivo* generato dal seguente codice:
``<em>in corsivo</em>``;

L'etichetta ``mark`` genera un testo evidenziato, come ad esempio questo testo
<mark>evidenziato</mark> generato dal seguente codice:
``<mark>evidenziato</mark>``;

L'etichetta ``abbr`` è usato per visualizzarne il significato di un acronimo
quando il mouse si ferma sopra questo, come ad esempio questo acronimo
<abbr title="HyperText Markup Language">HTML</abbr> generato dal seguente codice:
``<abbr title="HyperText Markup Language">HTML</abbr>``;

L'etichetta ``hr`` genera una semplice linea orizzontale, come la seguente, generata dal codice ``<hr>``.

<hr>

## Combinazioni innestate per la formattazione

Le etichette possono essere inserite (innestate) l'una dentro
l'altra per creare le formattazioni di testo desiderate.

Ad esempio, per generare un testo grassetto, evidenziato e sottolineato, come
<strong><mark><ins>questo testo</ins></mark></strong> si usa il codice:

```html
<strong>
    <mark>
        <ins>questo testo</ins>
    </mark>
</strong>
```

Se si vuole che tutto il testo sia grassetto ed evidenziato, ma solo una parte del testo sia sottolineata, come
<strong><mark>questo <ins>testo</ins></mark></strong> si usa il codice:

```html
<strong>
    <mark>
      questo
      <ins>testo</ins>
    </mark>
</strong>
```

## Liste puntate o numerate

L'etichetta ``ol`` genera una lista numerata di elementi, analogamente l'etichetta ``ul`` genera una lista di elementi non ordinata. Gli elementi della lista devono essere contenuti nell'etichetta ``li``.

Ad esempio, il seguente codice genera la lista numerata (con numeri romani) di browser pessimi per la navigazione:

```html
<ol>
    <li>Internet Explorer</li>
    <li>Safari</li>
</ol>
```

Entrambe le liste prevedono lo stile di numerazione, descritto dall'attributo ``type`` (di recente sostituito dalla proprietà CSS ``list-style-type``) che può avere uno dei seguenti valori:

- ``1`` elementi della lista elencati con numeri latini;
- ``A`` oppure ``a`` elementi della lista elencati con lettere alfabetiche maiuscole o minuscole;
- ``I`` oppure ``i`` elementi della lista elencati con numeri romani in maiuscolo o minuscolo;
- ``disc`` elementi della lista elencati con dei cerchietti pieni;
- ``square`` elementi della lista elencati con dei quadrati pieni;
- ``circle`` elementi della lista elencati con dei cerchietti vuoti;

Ad esempio, il seguente codice genera la lista numerata (con numeri romani) di browser pessimi per la navigazione:

```html
<ol type="I">
    <li>Internet Explorer</li>
    <li>Safari</li>
</ol>
```

La lista viene visualizzata di seguito:

<ol type="I">
    <li>Internet Explorer</li>
    <li>Safari</li>
</ol>

Altro esempio, il seguente codice genera la lista non ordinata di browser ottimi per la navigazione:

```html
<ul type="disc">
    <li>Firefox</li>
    <li>Chrome</li>
    <li>Edge (Microsoft)</li>
</ul>
```

La lista viene visualizzata di seguito:

<ul type="disc">
    <li>Firefox</li>
    <li>Chrome</li>
    <li>Edge (Microsoft)</li>
</ul>

## Definizioni e liste di definizioni

Per indicare un termine del quale si vuole dare una definizione, si usa l'etichetta **dfn**, come nel seguente esempio:

```html
<dfn>WWW</dfn> sta per "World wide web.
```

Quando si vuole creare una lista di definizioni si usano le etichette ``dl``, ``dt`` e ``dd``, come nel seguente esempio:

```html
<dl>
    <dt>Firefox</dt>
    <dd>A free, open source, cross-platform, graphical web browser.</dd>
</dl>
```

La lista viene visualizzata di seguito:

<dl>
    <dt>Firefox</dt>
    <dd>A free, open source, cross-platform, graphical web browser.</dd>
</dl>

## Tabelle

L'etichetta ``table`` indica l'inizio e la fine di una tabella.

Una tabella può contenere le righe, racchiuse dall'etichetta ``tr`` (in inglese "table row"), ed, opzionalmente, una descrizione del contenuto, indicato nell'etichetta ``caption``.

Tutte le righe contengono delle celle. Le celle delle prime righe e/o colonne di una tabella possono essere di intestazione (in inglese "table header"), e quindi devono essere racchiuse dalle etichette ``th``, mentre le celle successive contengono i dati, e quindi devono essere racchiusi dalle etichette ``td`` (in inglese "table data").

Le etichette delle celle ``th`` e ``td`` hanno gli attributi:

- ``colspan`` permette ad una cella di espandersi su più colonne;
- ``rowspan`` permette ad una cella di espandersi su più righe.

Ad esempio, una tabella di 3 righe e 2 colonne viene generata dal seguente codice:

```html
<table style="border: 5px solid green;">
    <caption>Tabella con stile</caption>
    <tr>
        <th>header1</th>
        <th>header2</th>
    </tr>
    <tr>
        <td>data1</td>
        <td>$100</td>
    </tr>
    <tr>
        <td>data2</td>
        <td>$50</td>
    </tr>
</table>
```

La tabella viene visualizzata di seguito:

<table style="border: 5px solid green;">
    <caption>Tabella con stile</caption>
    <tr>
        <th>header1</th>
        <th>header2</th>
    </tr>
    <tr>
        <td>data1</td>
        <td>$100</td>
    </tr>
    <tr>
        <td>data2</td>
        <td>$50</td>
    </tr>
</table>

Volendo riportare un esempio di codice che preveda l'espansione delle celle su più righe o colonne, possiamo creare una tabella di 3 righe e 2 colonne, in cui l'ultima riga si espande su entrambe le colonne, mentre la prima cella in alto a sinistra occupa due righe:

```html
<table style="border: 5px solid green;">
    <caption>Tabella con stile</caption>
    <tr>
        <th rowspan="2">Cella espansa su 2 righe grazie all'attributo rowspan="2" </th>
        <td>34£</td>
    </tr>
    <tr>
        <!−− Cella mancante perché occupata dalla cella che si è espansa −−>
        <td>$100</td>
    </tr>
    <tr>
        <th colspan="2">Cella espansa su 2 colonne, grazie all'attributo colspan="2"</th>
        <!−− Cella mancante perché occupata dalla cella che si è espansa −−>
    </tr>
</table>
```

La tabella viene visualizzata di seguito:

<table style="border: 5px solid green;">
    <caption>Tabella con stile</caption>
    <tr>
        <th rowspan="2">Cella espansa su 2 righe grazie all'attributo <code>rowspan="2"</code></th>
        <td>34£</td>
    </tr>
    <tr>
        <!-- Cella mancante perché occupata dalla cella che si è espansa -->
        <td>$100</td>
    </tr>
    <tr>
        <th colspan="2">Cella espansa su 2 colonne, grazie all'attributo <code>colspan="2"</code> </th>
        <!-- Cella mancante perché occupata dalla cella che si è espansa -->
    </tr>
</table>

<!-- markdownlint-enable MD033 -->
