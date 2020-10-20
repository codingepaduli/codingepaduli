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
summary: "HTML Lez. 01 - Creazione ed amministrazione di siti web"
---

# Creazione ed amministrazione di siti web

## World Wide Web

Il World Wide Web (dall'inglese "Rete di Ampiezza Globale) è il servizio di internet che permette di navigare tra i siti web utilizzando i collegamenti tra un sito e l'altro. Sono questi collegamenti tra i vari siti web a creare una rete di estensione mondiale.

Ad esempio, un utente, seguendo i collegamenti di volta in volta presenti, può iniziare la navigazione sul sito web di un quotidiano italiano, poi ritrovarsi a vedere un video su una piattaforma web americana ed ancora visualizzare un'offerta di un prodotto presente su un e-commerce australiano, e così via.

Il <abbr title="World Wide Web">WWW</abbr> ha avuto un diffusione capillare nella società grazie anche alla presenza dei motori di ricerca che permettono di trovare le informazioni presenti sui vari siti web. Oggi la disponibilità di tablet, smartphone e dispositivi mobile ha permesso la diffusione del <abbr title="World Wide Web">WWW</abbr> a quasi tutta la popolazione mondiale.

## Tecnologie e software per la creazione di siti web

Esistono software che permettono, anche con poche conoscenze tecniche, di disegnare, configurare ed amministrare un sito web attraverso delle interfacce grafiche che guidano l'utente. Questi software sono chiamati genericamente
[CMS](https://it.wikipedia.org/wiki/Content_management_system "Link all'articolo sui CMS su wikipedia.it"). Tra i CMS più noti troviamo
[WordPress](https://wordpress.org/ "Link al sito web di WordPress") e
[Joomla](https://www.joomla.org/ "Link al sito web di Joomla"), ma la scelta è ampia.

E' possibile creare dei siti web "statici", cioè scritti con software che trasformano un insieme di articoli e contenuti in un sito web. Questi strumenti prendono il nome di "Static site generator" (generatori di siti web statici).

I software per la costruzione di un sito web, sia in modalità grafica, sia "statica", si basano su framework per lo sviluppo web, quali
[Bootstrap](http://getbootstrap.com/ "Link al sito web di Bootstrap"),
[ZURB foundation](http://foundation.zurb.com/ "Link al sito web di ZURB") e
[Pure CSS](http://purecss.io/ "Link al sito web di Pure CSS"), giusto per nominarne alcuni, che intendono essere la base sulla quale poggiarsi per sviluppare siti web.

## Attività di amministrazione

Dal punto di vista tecnico, l'amministrazione di un sito web comporta una serie di attività da svolgere, dato che le pagine del sito si devono:

- **validare**, per individuare e correggere errori. Per questi compiti troviamo strumenti per la correzione grammaticale, validatori delle pagine web, validatori dei link (per
  evitare che possano riferirsi a risorse rimosse o spostate). Uno strumento di controllo dei link è il [W3C Link Checker](https://validator.w3.org/checklink "Link al validatore dei link"). Per validare il codice HTML si può utilizzare il validatore [W3C Validator](https://validator.w3.org/ "Link al validatore HTML");
- rendere **accessibili** <!-- TODO add accessibility tools--> a chiunque, anche a chi ha difficoltà visive
  o motorie. Il controllo avviene attraverso strumenti specifici;
- rendere **"responsive"**, cioè fruibili su differenti risoluzioni e
  formati, da quelli piccoli dei cellulari e palmari, a quelli
  classici dei computer e tablet, a quelli extra-large delle smart-TV. Uno strumento per il controllo delle varie risoluzioni è [Responsively.App](https://responsively.app/ "App open source per simulare in un'unica schermata la visualizzazione del sito su più dispositivi");
- rendere **performanti**, cioè far si che i tempi di caricamento siano
  ridotti, soprattutto su connessioni lente, usando strumenti quali
  [lighthouse](https://developers.google.com/web/tools/lighthouse/ "Link al sito web di lighthouse");
  opzionalmente si puó rendere il sito capace di funzionare anche
  senza connessione internet
  ([PWA](https://it.m.wikipedia.org/wiki/Progressive_Web_App "Link all'articolo su PWA su wikipedia.it"));
- **ottimizzare per i motori di ricerca**
  ([SEO](https://it.m.wikipedia.org/wiki/Ottimizzazione_\(motori_di_ricerca\) "Link all'articolo su SEO su wikipedia.it"))
  ed adattare al
  [semantic-web](https://it.m.wikipedia.org/wiki/Web_semantico "Link all'articolo sul Web semantico su wikipedia.it");
- integrare con eventuali servizi esterni, quali social, servizi di
  pagamento, servizi pubblicitari e di gestione contenuti (come
  youtube);
- **pubblicare** sul web, scegliendo le caratteristiche del servizio
  di hosting o di cloud, i certificati di sicurezza e gli strumenti
  adatti per il trasferimento e la sincronizzazione delle pagine sul
  dominio.

## Riferimenti alle risorse online

Le pagine web sono scritte in linguaggio "HTML", un linguaggio che descrive la struttura dei vari contenuti della pagina.

Su internet sono presenti moltissimi corsi e chiarimenti sul linguaggio
HTML, degni di nota sono:
[HTML.it](https://www.html.it/guide/guida-html/ "Link al sito web di html.it") (in italiano),
[HTML.it (versione 5)](https://www.html.it/guide/guida-html5/ "Link al sito web di html.it") ( Guida HTML5 in italiano),
[corsidia.com](https://corsidia.com/materia/web-design/webmaster-tutorial/guida-html "Link al sito web di corsidia.com") (in italiano),
[it.wikibooks.org](https://it.m.wikibooks.org/wiki/HTML "Link al sito web di wikibooks.org") (un buon manuale in italiano),
[w3schools.com](https://www.w3schools.com/html/ "Link al sito web di w3schools.com") (in inglese),
[internetingishard.com](https://internetingishard.com/html-and-css/ "Link al sito web di internetingishard.com") (in inglese, per principianti),
[developer.mozilla.org](https://developer.mozilla.org/it/docs/Web/HTML "Link al sito web di developer.mozilla.org"), sito della Mozilla Foundation dedicato agli sviluppatori (in corso di traduzione), ed infine
[freecodecamp.org](https://guide.freecodecamp.org/html/ "Link al sito web di freecodecamp.org"), organizzazione
no-profit per aiutare le persone ad apprendere l'arte della
programmazione, con corsi e certificazioni disponibili gratuitamente (in
inglese).

Gli stili grafici della pagina web sono scritti in linguaggio CSS, che indica stili e colori da utilizzare.

Le informazioni della pagina web possono invece essere elaborate dai programmi, chiamati script, che risiedono nella pagina web e che sono realizzati principalmente in linguaggio di programmazione JavaScript.
