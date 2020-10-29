---
type: "html"
title: "HTML Lez. 06 - Codifica UTF-8, HTML entities ed emoji"
description: "HTML Lez. 06 - Codifica UTF-8 delle pagine web, HTML entities ed emoji"
date: 2019-07-30
publishdate: 2019-07-30
lastmod: 2019-07-30
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 06 - Codifica UTF-8 delle pagine web, HTML entities ed emoji"
---

# Codifica UTF-8, HTML entities ed emoji

É importante che il documento HTML sia salvato con codifica
[UTF-8](https://it.wikipedia.org/wiki/UTF-8 "Link ad UTF-8 su wikipedia"), in modo tale da poter
inserire nel documento qualsiasi carattere o simbolo, dall'alfabeto
cinese a quello arabo, dalle lingue morte come latino e greco ai simboli
matematici, alle figure geometriche, fino agli emoticons ed emoji.

La codifica UTF-8 deriva dal sistema
[Unicode](https://it.m.wikipedia.org/wiki/Unicode "Link ad Unicode su wikipedia"),
che assegna un
numero univoco ad ogni carattere di ogni lingua, ad ogni simbolo e ad
ogni emoticons o emoji.

Per salvare i file nella codifica UTF-8, si consiglia il tool [EditorConfig](/coding/tools/editorconfig/ "Link ad EditorConfig su wikipedia"), leggendo il relativo articolo.

Una volta che le pagine web sono state salvate con la codifica giusta, è
consigliato indicarla nelle informazioni della pagina, all'interno del
tag `head`, come nell'esempio:

```html
<head>
  <meta charset="UTF-8">
</head>
```

**Senza la codifica giusta, molti caratteri potrebbero non essere
visualizzati nella pagina web**.

In alcuni casi, peró, è necessario evitare di scrivere direttamente
questi caratteri nel documento, ed utilizzare, invece, delle
rappresentazioni alternative, che utilizzino i codici numerici decimali
o esadecimali del sistema Unicode, oppure, i codici mnemonici chiamati
"HTML entities".

Gli HTML entities sono dei codici mnemonici che vengono associati ad
alcuni caratteri. La specifica delle HTML entities si trova al link
[https://html.spec.whatwg.org/multipage/entities.json](https://html.spec.whatwg.org/multipage/entities.json "Link alla lista di HTML entities"). Tra le varie
HTML entities elencate, troviamo ad esempio:

- gt = greather than (&gt;)
- lt = lower than (&lt;)
- minus = segno meno o trattino (&minus;)
- amp = ampersand (&amp;)
- quot = quotation mark (")
- apos = apostrophe (')
- …

Questi codici devono essere usati tra il simbolo `&` ed il simbolo `;`,
come negli esempi `&minus;` (con risultato &minus; <!-- − -->) ed `&amp;` (con risultato
&amp; <!-- & -->).

La rappresentazione mediante codice numerico decimale permette di
inserire i caratteri o i simboli usando il corrispondente codice
decimale, che deve essere inserito tra il simbolo `&#` ed il simbolo
`;`. Si puó usare anche il codice numerico esadecimale, che va inserito
tra il simbolo `&#x` ed il simbolo `;`.

Ad esempio, la lettera greca &Delta; <!-- Δ --> è associata al codice numerico decimale
916 ed al codice numerico esadecimale 394, quindi possiamo scrivere
questo carattere o con la notazione decimale `&#916;` (con risultato &#916;)
oppure con quella esadecimale `&#x394;` (con risultato &#x394;).

Altro esempio, il simbolo dell'euro &euro; <!-- € --> è associato al codice numerico
decimale 8364 ed al codice numerico esadecimale 20AC, quindi possiamo
scrivere questo carattere o con la notazione decimale `&#8364;` (con
risultato &#8364;) oppure con quella esadecimale `&#x20AC;` (con risultato &#x20AC;).

Anche gli emoticons e gli
[emoji](https://www.unicode.org/emoji/charts/full-emoji-list.html "Link alle specifiche degli emoji") fanno
parte della specifica Unicode, per cui o li si scrive nel documento
"cosi come sono" o li si puó includere attraverso "HTML entities" o
attraverso rappresentazione con codice decimale/esadecimale.

Ad esempio, l'emoji "rolling on the floor laughing" (rotola sul
pavimento ridendo) è associata al codice numerico esadecimale 1F923,
quindi possiamo scrivere questo carattere con la notazione esadecimale
`&#x1F923;` (con risultato &#x1F923; <!-- 🤣 -->).

I tag, gli attributi e le rappresentazioni in decimale/esadecimale fin
qui visti, possono portare ad una vasta serie di errori, che devono
essere corretti mediante validazione.
