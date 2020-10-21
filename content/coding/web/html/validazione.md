---
type: "html"
title: "HTML Lez. 07 - Validazione del codice HTML"
description: "HTML Lez. 07 - Validazione del codice HTML"
date: 2019-08-03
publishdate: 2019-08-03
lastmod: 2019-08-03
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 07 - Validazione del codice HTML"
---

# Validazione del codice HTML

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
