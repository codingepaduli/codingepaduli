---
type: "html"
title: "HTML Lez. 06 - Validazione del codice HTML"
description: "HTML Lez. 06 - Validazione del codice HTML"
date: 2019-08-03
publishdate: 2019-08-03
lastmod: 2019-08-03
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 06 - Validazione del codice HTML"
weight: 9490

references:
    -   title: "W3C Markup Validation Service"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "http://validator.w3.org/nu/"
        description: "A W3C Markup Validation Service for your web pages"
---

# Validazione del codice HTML

La validazione di una pagina web serve sia a risolvere eventuali errori presenti, sia ad evitare l'uso di pratiche non piú al passo con gli ultimi standard.

La validazione puó essere inclusa all'interno dell'editor, oppure ci si puó servire di servizi esterni, come il [W3C Validator](https://validator.w3.org/ "Link al validatore W3C").

Il servizio di validazione della W3C permette di validare il codice HTML di una pagina web, caricando il file online, inserendo in input (con copia e incolla) il codice HTML da validare, oppure inserendo l'URL della pagina, come da immagine seguente:
![immagine del validatore](/static/coding/web/html/html-W3C-validator.png "immagine del validatore")

Nel caso il servizio di validazione della W3C non rilevi errori nella pagina web, un messaggio di conferma della validità del codice HTML viene riportato all'utente, come da immagine seguente:
![immagine del validatore senza errori](/static/coding/web/html/html-W3C-validator-OK.png "immagine del validatore senza errori")

Nel caso siano presenti errori, vengono elencati uno ad uno, e viene riportata sia la presunta riga d'errore, sia viene evidenziato il codice con tutti gli errori, come nella seguente immagine:
![immagine del validatore con errori](/static/coding/web/html/html-W3C-validator-Errors.png "immagine del validatore con errori")

Tra i diversi messaggi, di avviso o di errore, abbiamo:

**Consider adding a lang attribute to the HTML start tag to declare the language of this document**: È un messaggio di avviso per indicare che l'etichetta ``html`` manca dell'attributo che indica la lingua in cui è scritta la pagina, quindi bisogna correggere con: ``<html lang="it">``.

**Non-space characters found without seeing a doctype first. Expected ``<!DOCTYPE html>``**: Manca la prima riga di intestazione, che indica che il documento è un HTML. Deve essere aggiunta come prima riga.

**Element head is missing a required instance of child element title**: Indica che nella pagina web deve essere presente l'etichetta ``head`` che a sua volta deve contenere l'etichetta ``title`` come di seguito:

```html
<head>
    <title>Titolo pagina web </title>
</head>
```

**The document is not mappable to XML 1.0 due to two consecutive hyphens in a comment** Indica che non si possono mettere due trattini consecutivi all'interno di un commento, quindi i due trattini vanno rimossi. Spesso si sbaglia a scrivere il commento, aggiungendo uno spazio di troppo, che deve essere rimosso, come nel seguente esempio, nel quale sono evidenziati gli spazi da rimuovere: ``<!``<mark> </mark>``−− commento −−``<mark> </mark>``>``.

**No <mark>p</mark> element in scope but a <mark>p end tag</mark> seen** indica che l'etichetta evidenziata è stata aperta (ad esempio ``<p>``) e non è stata chiusa correttamente (con ``</p>``).

**The center element is obsolete. Use CSS instead.** indica che gli ultimi standard sconsigliano l'uso dell'etichetta evidenziata (in questo caso, l'etichetta ``<center>``). In questo caso si consiglia di sostituirla facendo uso dei CSS.

**Bad character after ``<``. Probable cause: Unescaped. Try escaping it as ``&#xxxx;``** indica che il carattere evidenziato deve essere codificato come "HTML entity" oppure rappresentato con codifica Unicode decimale o esadecimale.
