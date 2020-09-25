---
type: "html"
title: "HTML Lez. 01 - Introduzione"
description: "HTML Lez. 01 - Introduzione"
date: 2019-07-15
publishdate: 2019-07-15
lastmod: 2019-07-15
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 01 - Introduzione al linguaggio HTML ed alla creazione, validazione e pubblicazione di pagine web"
---

# Introduzione al linguaggio HTML

Il linguaggio <abbr title="HyperText Markup Language">HTML</abbr> e' un linguaggio di etichettatura (in inglese Markup) degli ipertesti (in inglese HyperText).

L'**ipertesto** e' un testo contenente immagini, collegamenti, video,
ecc... quindi l'ipertesto rappresenta i contenuti di una pagina web. Le
**etichette** (in inglese Markup o TAG) indicano un elemento della
pagina web ed hanno un simbolo di inizio elemento ed uno di fine
elemento: inizio e fine di un titolo, di un'immagine, di un video, di
una tabella...

Per esempio l'etichetta ``h1`` è l'etichetta del "titolo", ed ha il
simbolo di apertura ``<h1>``, che indica l'inizio del titolo, ed il
simbolo di chiusura ``</h1>`` che indica la fine del titolo, quindi, il
titolo in HTML sarà scritto usando il codice: ``<h1>Titolo</h1>``

Da sottolineare che il linguaggio HTML non definisce lo stile grafico
del documento, ma solo la **struttura** di un ipertesto. Imparare il
linguaggio HTML corrisponde ad imparare tutte le etichette. Gli effetti
grafici, le animazioni, le azioni, che sono comunque parte della pagina
web, sono scritte in altri linguaggi, ed interagiscono con la struttura
del documento.

Per creare una pagina HTML serve un semplice editor di testi, tra quelli
consigliati spunta [Atom](https://atom.io/ "Link all'editor Atom"), estremamente configurabile, mentre tra quelli da evitare assolutamente si elenca l'editor Word di
Office, e l'editor Notepad di Windows.

La creazione di pagine web può avvenire anche attraverso strumenti di
sviluppo visuale, che permettono di disegnarle e configurarle, piuttosto
che scriverle. Esistono software che permettono di amministrare anche
l'intero sito, pur avendo poche conoscenze tecniche, e sono chiamati
genericamente
[CMS](https://it.wikipedia.org/wiki/Content_management_system "Link all'articolo sui CMS su wikipedia.it"). Tra i CMS più noti troviamo
[WordPress](https://wordpress.org/ "Link al sito web di WordPress") e
[Joomla](https://www.joomla.org/ "Link al sito web di Joomla"), ma la scelta è ampia.

Esistono poi i framework per lo sviluppo web, quali
[Bootstrap](http://getbootstrap.com/ "Link al sito web di Bootstrap"),
[ZURB foundation](http://foundation.zurb.com/ "Link al sito web di ZURB") e
[Pure CSS](http://purecss.io/ "Link al sito web di Pure CSS"), giusto per nominarne alcuni, che intendono essere la base sulla quale poggiarsi per sviluppare siti web.

Create le pagine web, queste si devono:

  - **validare**, utilizzando un validatore HTML come quello della [W3C Validator](https://validator.w3.org/ "Link al validatore HTML"), per individuare e correggere
    errori. Inoltre devono essere periodicamente controllati i link, per
    evitare che possano essere "rotti" (cioè puntare a risorse su
    internet rimosse o spostate). Per controllare i link si usano
    strumenti come il [W3C Link Checker](https://validator.w3.org/checklink "Link al validatore dei link per HTML");
  - rendere **accessibili** <!-- TODO add accessibility tools--> a chiunque, anche a chi ha difficoltà visive
    o motorie. Il controllo avviene attraverso strumenti specifici;
  - rendere **"responsive"**, <!-- TODO add responsive tools--> cioè fruibili su differenti risoluzioni e
    formati, da quelli piccoli dei cellulari e palmari, a quelli
    classici dei computer e tablet, a quelli extra-large delle smart-TV;
  - rendere **performanti**, cioè che abbiano tempi di caricamento
    ridotti, soprattutto su connessioni lente, usando strumenti quali
    [lighthouse](https://developers.google.com/web/tools/lighthouse/ "Link al sito web di lighthouse");
    opzionalmente si puó rendere il sito capace di funzionare anche
    senza connessione internet
    ([PWA](https://it.m.wikipedia.org/wiki/Progressive_Web_App "Link all'articolo su PWA su wikipedia.it"));
  - **ottimizzare per i motori di ricerca**
    ([SEO](https://it.m.wikipedia.org/wiki/Ottimizzazione_\(motori_di_ricerca\) "Link all'articolo su PWA su wikipedia.it"))
    ed adattare al
    [semantic-web](https://it.m.wikipedia.org/wiki/Web_semantico  "Link all'articolo su PWA su wikipedia.it");
  - integrare con eventuali servizi esterni, quali social, servizi di
    pagamento, servizi pubblicitari e di gestione contenuti (come
    youtube);
  - **pubblicare** sul web, scegliendo le caratteristiche del servizio
    di hosting o di cloud, i certificati di sicurezza e gli strumenti
    adatti per il trasferimento e la sincronizzazione delle pagine sul
    dominio.

Su internet sono presenti moltissimi corsi e chiarimenti sul linguaggio
HTML, degni di nota sono:
[html.it](https://www.html.it/guide/guida-html/ "Link al sito web di html.it") (in italiano),
[html.it (versione 5)](https://www.html.it/guide/guida-html5/ "Link al sito web di html.it") ( Guida HTML5 in italiano),
[corsidia.com](https://corsidia.com/materia/web-design/webmaster-tutorial/guida-html "Link al sito web di corsidia.com") (in italiano),
[it.wikibooks.org](https://it.m.wikibooks.org/wiki/HTML "Link al sito web di wikibooks.org") (un buon manuale in italiano),
[w3schools.com](https://www.w3schools.com/html/ "Link al sito web di w3schools.com") (in inglese),
[internetingishard.com](https://internetingishard.com/html-and-css/ "Link al sito web di internetingishard.com") (in inglese, per principianti),
[developer.mozilla.org](https://developer.mozilla.org/it/docs/Web/HTML "Link al sito web di developer.mozilla.org"),sito della Mozilla Foundation dedicato agli sviluppatori (in corso di traduzione), ed infine
[freecodecamp.org](https://guide.freecodecamp.org/html/ "Link al sito web di freecodecamp.org"), organizzazione
no-profit per aiutare le persone ad apprendere l'arte della
programmazione, con corsi e certificazioni disponibili gratuitamente (in
inglese).
