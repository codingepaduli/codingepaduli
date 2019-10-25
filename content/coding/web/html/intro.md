---
type: "html"
title: "HTML Lez. 01 - Introduzione"
description: "HTML Lez. 01 - Introduzione"
date: 2019-07-15
publishdate: 2019-07-15
lastmod: 2019-07-15
categories: ["html"]
keywords: ["html"]
draft: false
toc: false
notesforauthors: "HTML Lez. 01 - Introduzione al linguaggio HTML ed alla creazione, validazione e pubblicazione di pagine web"
summary: "HTML Lez. 01 - Introduzione al linguaggio HTML ed alla creazione, validazione e pubblicazione di pagine web"
menu: "html"
---

<p>Il linguaggio <abbr title="HyperText Markup Language">HTML</abbr> e' un linguaggio di etichettatura (in inglese Markup) degli ipertesti (in inglese HyperText).</p>

<p>L'<strong>ipertesto</strong> e' un testo contenente immagini, collegamenti, video, ecc... quindi l'ipertesto rappresenta i contenuti di una pagina web. Le <strong>etichette</strong> (in inglese Markup o TAG) indicano un elemento della pagina web ed hanno un simbolo di inizio elemento ed uno di fine elemento: inizio e fine di un titolo, di un'immagine, di un video, di una tabella...</p>

<p>Per esempio l'etichetta <code>h1</code> è l'etichetta del "titolo", ed ha il simbolo di apertura <code>&lt;h1&gt;</code>, che indica l'inizio del titolo, ed il simbolo di chiusura <code>&lt;/h1&gt;</code> che indica la fine del titolo, quindi, il titolo in HTML sarà scritto cosi: <code>&lt;h1&gt;Titolo&lt;/h1&gt;</code></p>

<p>Da sottolineare che il linguaggio HTML non definisce lo stile grafico del documento, ma solo la <strong>struttura</strong> di un ipertesto. Imparare il linguaggio HTML corrisponde ad imparare tutte le etichette. Gli effetti grafici, le animazioni, le azioni, che sono comunque parte della pagina web, sono scritte in altri linguaggi, ed interagiscono con la struttura del documento.</p>

<p>Per creare una pagina HTML serve un semplice editor di testi, tra quelli consigliati spunta <a href="https://atom.io/">Atom</a>, estremamente configurabile, mentre tra quelli da evitare assolutamente si elenca l'editor Word di Office, e l'editor Notepad di Windows.</p>

<p>La creazione di pagine web può avvenire anche attraverso strumenti di sviluppo visuale, che permettono di disegnarle e configurarle, piuttosto che scriverle. Esistono software che permettono di amministrare anche l'intero sito, pur avendo poche conoscenze tecniche, e sono chiamati genericamente <a href="https://it.wikipedia.org/wiki/Content_management_system">CMS</a>. Tra i CMS più noti troviamo <a href="https://wordpress.org/">WordPress</a> e <a href="https://www.joomla.org/">Joomla</a>, ma la scelta è ampia.</p>

<p>Esistono poi i framework per lo sviluppo web, quali <a href='http://getbootstrap.com/'>Bootstrap</a>, <a href='http://foundation.zurb.com/'>ZURB foundation</a> e <a href='http://purecss.io/'>Pure CSS</a>, giusto per nominarne alcuni, che intendono essere la base sulla quale poggiarsi per sviluppare siti web.</p>

Create le pagine web, queste si devono:

<ul>
  <li><strong>validare</strong>, utilizzando un validatore HTML come quello della <a href="https://validator.w3.org/">W3C Validator</a>, per individuare e correggere errori;</li>
  <li>rendere <strong>accessibili</strong> a chiunque, anche a chi ha difficoltà visive o motorie. Il controllo avviene attraverso strumenti specifici;<!-- TODO add accessibility tools--></li>
  <li>rendere <strong>"responsive"</strong>, cioè fruibili su differenti risoluzioni e formati, da quelli piccoli dei cellulari e palmari, a quelli classici dei computer e tablet, a quelli extra-large delle smart-TV;
<!-- TODO add responsive tools--></li>
  <li>rendere <strong> performanti</strong>, cioè che abbiano tempi di caricamento ridotti, soprattutto su connessioni lente, usando strumenti quali <a href="https://developers.google.com/web/tools/lighthouse/">lighthouse</a>; opzionalmente si puó rendere il sito capace di funzionare anche senza connessione internet (<a href="https://it.m.wikipedia.org/wiki/Progressive_Web_App">PWA</a>);</li>
  <li><strong>ottimizzare per i motori di ricerca</strong> (<a href="https://it.m.wikipedia.org/wiki/Ottimizzazione_(motori_di_ricerca)">SEO</a>) ed adattare al <a href="https://it.m.wikipedia.org/wiki/Web_semantico">semantic-web</a>;</li>
  <li>integrare eventuali servizi esterni, quali social, servizi di pagamento, pubblicitari e di gestione contenuti (come youtube);</li>
  <li><strong>pubblicare</strong> sul web, scegliendo le caratteristiche del servizio di hosting o di cloud, i certificati di sicurezza e gli strumenti adatti per il trasferimento e la sincronizzazione delle pagine sul dominio.</li>
</ul>

<p>Su internet sono presenti moltissimi corsi e chiarimenti sul linguaggio HTML, degni di nota sono:
    <a href="https://www.html.it/guide/guida-html/">html.it</a> (in italiano),
    <a href="https://corsidia.com/materia/web-design/webmaster-tutorial/guida-html">corsidia.com</a> (in italiano),
    <a href="https://it.m.wikibooks.org/wiki/HTML">it.wikibooks.org</a> (un buon manuale in italiano),
    <a href="https://www.w3schools.com/html/">w3schools.com</a> (in inglese),
    <a href="https://internetingishard.com/html-and-css/">internetingishard.com</a> (in inglese, per principianti),
    <a href="https://developer.mozilla.org/it/docs/Web/HTML">developer.mozilla.org</a>, sito della Mozilla Foundation dedicato agli sviluppatori (in corso di traduzione) ed infine
    <a href="https://guide.freecodecamp.org/html/">freecodecamp.org</a>, organizzazione no-profit per aiutare le persone ad apprendere l'arte della programmazione, con corsi e certificazioni disponibili gratuitamente (in inglese).</p>
