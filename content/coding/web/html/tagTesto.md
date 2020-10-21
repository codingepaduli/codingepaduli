---
type: "html"
title: "HTML Lez. 03 - Etichette per la formattazione del testo"
description: "HTML Lez. 03 - Etichette per la formattazione del testo"
date: 2019-07-17
publishdate: 2019-07-17
lastmod: 2019-07-17
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 03 - Etichette per la formattazione del testo"
---

# Etichette per la formattazione del testo

## Titoli

Il titolo, come visto nell'esempio precedente, è generato dal tag ``h1``,
che ha il simbolo di apertura ``<h1>`` ed il simbolo di chiusura ``</h1>``.

Esistono 7 livelli di titolo, che servono a dividere il
documento in più capitoli e sotto-capitoli, in modo da poter dare una
struttura "alberata" al documento. Questi livelli sono espressi dai tag
``h1``, ``h2``, ``h3``, ``h4``, ``h5``, ``h6`` ed ``h7``, anche se si consiglia
l'uso fino al terzo livello.

Di seguito si riporta un esempio di codice per generare i titoli dei primi tre livelli:

```html
<h1> Esempio di titolo di primo livello </h1>
<h2> Esempio di titolo di secondo livello <h2>
<h3> Esempio di titolo di terzo livello <h2>
```

che vengono poi trasformati dal browser come si vede di seguito:

<!-- TODO replace with an image of titles ?? -->

### Esempio di titolo di primo livello

#### Esempio di titolo di secondo livello

##### Esempio di titolo di terzo livello

## Formattazione testo

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

## Combinazioni innestate per la formattazione

I tag possono essere inseriti (innestati) l'uno dentro
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

Se si vuole che solo una parte del testo sia sottolineata, come
<strong><mark>questo <ins>testo</ins></mark></strong> si usa il codice

```html
<strong>
    <mark>
      questo
      <ins>testo</ins>
    </mark>
</strong>
```
