---
type: "html"
title: "HTML Lez. 04 - Etichette con attributi"
description: "HTML Lez. 04 - Etichette con attributi"
date: 2019-07-25
publishdate: 2019-07-25
lastmod: 2019-07-25
spellcheck: 2020-12-11
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: true
toc: false
summary: "HTML Lez. 04 - Etichette che richiedono l'uso di attributi"
weight: 9670
---

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
