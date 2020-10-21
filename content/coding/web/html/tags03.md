---
type: "html"
title: "HTML Lez. 04 - Validazione, codifica UTF-8, HTML entities ed emoji"
description: "HTML Lez. 04 - Validazione del codice HTML e codifica UTF-8 delle pagine web, HTML entities ed emoji"
date: 2019-07-30
publishdate: 2019-07-30
lastmod: 2019-07-30
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 04 - Validazione del codice HTML e codifica UTF-8 delle pagine web, HTML entities ed emoji"
---

# Validazione, codifica UTF-8, HTML entities ed emoji

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

Per salvare i file nella codifica UTF-8, si consiglia il tool [EditorConfig](/coding/tools/EditorConfig/ "Link ad EditorConfig su wikipedia"), leggendo il relativo articolo.

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

La validazione di una pagina web serve sia a risolvere eventuali errori
presenti, sia ad evitare l'uso di pratiche non piú al passo con gli
ultimi standard.

La validazione puó essere inclusa all'interno dell'editor, oppure, ci si
puó servire di servizi esterni, come il
[W3C Validator](https://validator.w3.org/ "Link al validatore W3C").

Il servizio di validazione della W3C permette di validare attraverso un
link, facendo l'upload del file, oppure inserendo in input (con copia e
incolla) il codice HTML da validare, come da immagine seguente:
![immagine del validatore](/static/coding/web/html/html-W3C-validator.png "immagine del validatore")

L'operazione di validazione, con il servizio della W3C, puó indicare che
in pagina non sono presenti errori, come da immagine seguente:
![immagine del validatore senza errori](/static/coding/web/html/html-W3C-validator-OK.png "immagine del validatore")

Nel caso siano presenti errori, vengono elencati uno ad uno, e viene
riportata sia la presunta riga d'errore, sia viene evidenziato il codice
con tutti gli errori, come nella seguente immagine:
![immagine del validatore con errori](/static/coding/web/html/html-W3C-validator-Errors.png "immagine del validatore con errori")

Tra i diversi messaggi, di avviso o di errore, abbiamo:

**Consider adding a lang attribute to the HTML start tag to declare the language of this document**: È un messaggio di avviso per indicare che
il tag `html` manca dell'attributo che indica la lingua in cui è scritta
la pagina, quindi bisogna correggere con: `<html lang="it">`.

**Non-space characters found without seeing a doctype first. Expected `<!DOCTYPE html>`**: Manca la prima riga di intestazione, che indica che
il documento è un HTML. Deve essere aggiunta come prima riga.

**Element head is missing a required instance of child element title**:
All'interno del tag `head` deve essere inserito il tag `title` come di
seguito:

```html
<head>
  <title>Titolo pagina web </title>
</head>
```

**The document is not mappable to XML 1.0 due to two consecutive hyphens in a comment** Indica che non si possono mettere due trattini
consecutivi all'interno di un commento, quindi i due trattini vanno
rimossi. Spesso si sbaglia a scrivere il commento, aggiungendo uno
spazio di troppo, che deve essere rimosso, come nel seguente esempio:
`<!`<mark> </mark>`−− commento −−`<mark> </mark>`>`, nel quale sono evidenziati gli spazi da
rimuovere.

**No <mark>p</mark> element in scope but a <mark>p end tag</mark> seen** indica che l'etichetta
evidenziata è stata aperta (ad esempio `<p>`) e non è stata chiusa (con
`</p>`).

**The center element is obsolete. Use CSS instead.** indica che gli
ultimi standard sconsigliano l'uso dell'etichetta evidenziata (in questo caso, l'etichetta `<center>`). In questo
caso si consiglia di sostituirla facendo uso dei CSS.

**Bad character after `<`. Probable cause: Unescaped. Try escaping it as
`&#xxxx;`** indica che il carattere evidenziato deve essere codificato
come "HTML entity" oppure rappresentato con codifica Unicode decimale o
esadecimale.
