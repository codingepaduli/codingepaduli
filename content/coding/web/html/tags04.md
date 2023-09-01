---
type: "html"
title: "HTML Lez. 09 - Altre etichette"
description: "HTML Lez. 09 - Altre etichette"
date: 2019-08-29
publishdate: 2019-08-29
lastmod: 2019-08-29
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: true
toc: false
summary: "HTML Lez. 09 - Altre etichette"
---

# Altre etichette

Sono numerose le etichette HTML utili a descrivere i contenuti di una pagina web. Di seguito elenchiamo le etichette  che non sono state descritte nei capitoli precedenti, ma che possono risultare utili in più di una situazione e che possono aggiungere preziose informazioni per i motori di ricerca e per i lettori audio.

## Etichetta per le variabili matematiche

Le variabili matematiche possono essere indicate dall'etichetta **var**, come di seguito:

```html
<var>i</var> * <var>i</var> = -1
```

## Etichette per l'input e l'output di un programma

Quando si vuole indicare l'input di un software, si usa l'etichetta **kbd** (dall'inglese "keyboard input").

Allo stesso modo, quando si vuole indicare l'output di un software, si usa l'etichetta **samp** (dall'inglese "sample output element").

Nel seguente esempio verrà mostrato l'uso di entrambe le etichette:

```html
<samp>Keyboard not found. Press F1 to continue</samp>
<kbd>F</kbd>
<samp>Invalid key. Press F1 to continue</samp>
<kbd>F1</kbd>
```

## Attributi comuni

Alcuni attributi sono comuni a tutte le etichette:

- l'attributo ``id`` identifica in maniera univoca l'etichetta, è anche utilizzato per collegamenti che fanno riferimento ad un preciso punto della pagina;
- l'attributo ``class`` serve ad indicare i gruppi di cui le etichette fanno parte. Un'etichetta può appartenere a più insiemi;
- l'attributo ``style`` indica lo stile grafico da applicare per l'etichetta, è rappresentato da un valore scritto in linguaggio CSS;

Un esempio di questi attributi è il seguente:

```html
<p id="paragrafo1" class="insieme1">paragrafo 1</p>
<p id="paragrafo2" class="insieme1">paragrafo 2</p>
<p id="paragrafo3" class="insieme1 citazione">paragrafo 3</p>
<p id="paragrafo4" class="citazione">paragrafo 4</p>
```

Dall'esempio si nota che ogni paragrafo ha un suo identificativo e che i primi tre paragrafi fanno parte dello stesso insieme (chiamato "
``insieme1``), dato che il valore dell'attributo ``class`` è presente in tutte e tre le etichette; Poi si nota che il terzo e il quarto paragrafo fanno parte di un secondo insieme (chiamato ``citazione``) e che solo la terza etichetta fa parte di entrambi gli insiemi. Per un approfondimento, si rimanda alle specifiche sui selettori CSS.

Non tutti gli attributi sono comuni a tutte le etichette, vi sono attributi specifici per una singola etichetta, per cui è possibile associarli solo ed esclusivamente a questa etichetta.
