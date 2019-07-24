---
title: "Tag principali dell'HTML"
date: 2019-07-16T17:10:46+02:00
draft: false

title: "Tag principali dell'HTML"
linktitle: "Tag principali dell'HTML"
description: "Tag principali dell'HTML"
date: 2019-07-16T17:10:46+02:00
publishdate: 2019-07-19
lastmod: 2019-07-19
menu:
  docs:
    identifier: "tags"
    parent: "web"
    weight: 01
weight: 01	#rem
categories: ["html"]
keywords: ["html"]
draft: false
toc: false
notesforauthors: ""
summary: "Tag principali dell'HTML"
---

<p>Un documento HTML è l'insieme di etichette, chiamate TAG (in inglese), che indicano l'inizio e la fine dei vari contenuti del documento. La struttura base di un documento HTML e' la seguente:</p>
<pre>
  &lt;!doctype html&gt;
  &lt;html&gt;
    &lt;head&gt;
      &lt;meta name="author" content="John Doe"&gt;
    &lt;/head&gt;
    &lt;body&gt;
      &lt;h1&gt;Titolo pagina web&lt;/h1&gt;
      &lt;p&gt;paragrafo della pagina web.&lt;/p&gt;
      &lt;!-- commento in html--&gt;
    &lt;/body&gt;
  &lt;/html&gt;
</pre>

<p>In questa struttura sono presenti i 4 tag principali che devono sempre essere presenti: </p>
<ol>
    <li>Il tag <code>doctype</code> indica semplicemente che il documento è di tipo HTML (versione 5) e non prevede simbolo di chiusura;</li>
    <li>Il tag <code>html</code> che viene aperto ad inizio documento (con il simbolo <code>&lt;html&gt;</code>) e chiuso (con il simbolo <code>&lt;/html&gt;</code>) alla fine del documento;</li>
    <li>Il tag di informazioni <code>head</code> (non indirizzate all'utente, ma al browser o ai motori di ricerca) che viene aperto (con il simbolo <code>&lt;head&gt;</code>) e chiuso (con il simbolo <code>&lt;/head&gt;</code>);</li>
    <li>Il tag di contenuti <code>body</code> che viene aperto (con il simbolo <code>&lt;body&gt;</code>) e poi chiuso (con il simbolo <code>&lt;/body&gt;</code>) appena prima della fine del documento.</li>
</ol>

 <p>Si fa notare nuovamente che tutti i tag nell'esempio sono prima aperti e poi chiusi. Inoltre, si fa notare che il testo è <strong>indentato</strong>, ovvero che, nella riga successiva ad un simbolo di apertura, vengono aggiunti 2 o 4 spazi. Questi spazi vengono tolti quando il tag viene chiuso (simbolo di chiusura). L'indentazione è una caratteristica dei documenti molto apprezzata, ed alcuni editor di testo permettono di indentare il documento in automatico, con combinazioni di tasti e/o plugins. Altra caratteristica apprezzata è la presenza di <strong>commenti</strong>, che l'autore scrive come informazioni aggiuntive e promemoria al fine di fare chiarezza.</p>

 <p>Tutti i contenuti vanno inseriti nel tag <code>body</code>, tra i simboli di apertura <code>&lt;body&gt;</code> e chiusura <code>&lt;/body&gt;</code>, come nell'esempio precedente, in cui il titolo <code>h1</code> ed il paragrafo <code>p</code> si trovano nel tag dei contenuti <code>body</code>.</p>

<p>Possiamo dividere i tag in differenti categorie:</p>

<ol>
    <li><a href="#tagTesto">Tag di testo;</a></li>
    <li><a href="#tagArticoli">Tag di articoli;</a></li>
    <li><a href="#tagListe">Tag di liste e tabelle;</a></li>
    <li><a href="#tagAttr">Tag di immagini e video;</a></li>
</ol>

<h3 id="tagTesto">Tag di testo</h3>

<p>Il titolo, come visto nell'esempio precedente, è generato dal TAG <code>h1</code>, che ha il simbolo di apertura <code>&lt;h1&gt;</code> ed il simbolo di chiusura <code>&lt;/h1&gt;</code>. In realtà, esistono 7 livelli di titolo, che servono a dividere il documento in più capitoli e sotto-capitoli, in modo da poter dare una struttura "alberata" al documento. Questi livelli sono espressi dai tag <code>h1</code>, <code>h2</code>, <code>h3</code>, <code>h4</code>, <code>h5</code>, <code>h6</code> ed <code>h7</code>, ma nella realtà si consiglia l'uso fino al terzo livello.</p>

<p> Di seguito si riporta un esempio dei primi tre livelli:
<pre>
    &lt;h1&gt; Titolo primo livello &lt;/h1&gt;
    &lt;h2&gt; Titolo secondo livello &lt;h2&gt;
    &lt;h3&gt; Titolo terzo livello &lt;h2&gt;
</pre>
    che vengono poi trasformati dal browser come si vede di seguito:
<pre>
<h3>Titolo primo livello</h3>
<h4>Titolo secondo livello</h4>
<h5>Titolo terzo livello</h5>
</pre>
</p>

<p>Il paragrafo è generato dal TAG <code>p</code> che ha il simbolo di apertura <code>&lt;p&gt;</code> ed il simbolo di chiusura <code>&lt;/p&gt;</code>;</p>

<p>il tag <code>del</code> genera un testo cancellato come ad esempio questo testo <del>cancellato</del> generato dal seguente codice:
    <code>&lt;del&gt;cancellato&lt;/del&gt;</code>;</p>
<p>il tag <code>ins</code> genera un testo sottolineato come ad esempio questo testo <ins>sottolineato</ins> generato dal seguente codice: <code>&lt;ins&gt;sottolineato&lt;/ins&gt;</code>;</p>
<p>il tag <code>sup</code> genera un testo in apice come ad esempio questo testo <sup>in apice</sup> generato dal seguente codice:
    <code>&lt;sup&gt;in apice&lt;/sup&gt;</code>;</p>
<p>il tag <code>sub</code> genera un testo in pedice come ad esempio questo testo <sub>in pedice</sub> generato dal seguente codice:
    <code>&lt;sub&gt;in pedice&lt;/sub&gt;</code>;</p>
<p>il tag <code>strong</code> genera un testo in grassetto, come ad esempio questo testo <strong>in grassetto</strong> generato dal seguente codice:
    <code>&lt;strong&gt;in grassetto&lt;/strong&gt;</code>;</p>
<p>il tag <code>em</code> genera un testo in corsivo, come ad esempio questo testo <em>in corsivo</em> generato dal seguente codice:
    <code>&lt;em&gt;in corsivo&lt;/em&gt;</code>;</p>
<p>il tag <code>mark</code> genera un testo evidenziato, come ad esempio questo testo <mark>evidenziato</mark> generato dal seguente codice:
    <code>&lt;mark&gt;evidenziato&lt;/mark&gt;</code>;</p>
<p>il tag <code>abbr</code> è usato per visualizzarne il significato di un acronimo quando il mouse si ferma sopra questo, come ad esempio questo acronimo <abbr title="HyperText Markup Language">HTML</abbr> generato dal seguente codice:
    <code>&lt;abbr title="HyperText Markup Language"&gt;HTML&lt;/abbr&gt;</code>;</p>

<!-- Obsolete TAG <acronym title="as soon as possible">ASAP</acronym> -->
<!-- Obsolete TAG <big>This text is big</big> -->

<p>E' ovvio che i tag possono essere inseriti (innestati) l'uno dentro l'altro per creare le combinazioni desiderate, ad esempio per generare un testo grassetto, evidenziato e sottolineato, come <strong><mark><ins>questo testo</ins></mark></strong> si usa il codice</p>

<pre>
    &lt;strong&gt;
        &lt;mark&gt;
            &lt;ins&gt;questo testo&lt;/ins&gt;
        &lt;/mark&gt;
    &lt;/strong&gt;
</pre>
</p>


<p>il tag <code>hr</code> genera una semplice linea orizzontale, come la seguente, generata dal codice <code>&lt;hr&gt;&lt;/hr&gt;</code>.</p>

<hr></hr>

<h3 id="tagArticoli">Tag di articoli e libri</h3>

<p>Esistono diversi tag che permettono di definire le varie sezioni di una pubblicazione: intestazione, articolo, corpo, sezioni, pie di pagina, ecc..</p>

<p>Il tag <code>header</code> è usato sia come intestazione principale della pubblicazione, sia come intestazione di ogni sezione.</p>

<p>Il tag <code>article</code> indica il contenuto dell'articolo pubblicato, che deve essere "auto-contenuto", cioè che si può leggere indipendentemente dal resto.</p>

<p>Il tag <code>section</code> è usato per raggruppare contenuti dell'articolo che trattano la stessa tematica.</p>

<p>Il tag <code>aside</code> è usato per indicare contenuti legati all'articolo, ma in maniera trasversale, come digressioni e divagazioni che interrompono la linearità dell'articolo.</p>

<p>Il tag <code>main</code> raggruppa sia l'articolo che i contenuti trasversali. Ha la limitazione che un solo main può essere contenuto nella pagina web.</p>

<p>Il tag <code>footer</code> è usato per indicare l'autore, la data di pubblicazione, il copyright, i collegamenti esterni e tutte le informazioni della pubblicazione.</p>

<p>Il tag <code>nav</code> è usato per indicare i collegamenti principali della pubblicazione.</p>

Un esempio di articolo potrebbe essere:
<pre>
&lt;main&gt;
  &lt;nav&gt;link1, link2, ...&lt;/nav&gt;
  &lt;article&gt;
    &lt;header&gt;
        &lt;h1&gt;Titolo 1° livello&lt;/h1&gt;
        &lt;h3&gt;Titolo 3° livello (sottotitolo)&lt;/h3&gt;
        &lt;p&gt;Altre informazioni&lt;/p&gt;
    &lt;/header&gt;

    &lt;section&gt;
        &lt;h2&gt;Titolo sezione&lt;/h2&gt;
        &lt;p&gt;contenuto sezione...&lt;/p&gt;
    &lt;/section&gt;

    &lt;section&gt;
        &lt;h2&gt;Titolo sezione&lt;/h2&gt;
        &lt;p&gt;contenuto sezione...&lt;/p&gt;
    &lt;/section&gt;

    &lt;aside&gt;
        &lt;h4&gt;Titolo contenuti legati&lt;/h4&gt;
        &lt;p&gt;contenuti legati...&lt;/p&gt;
    &lt;/aside&gt;

    &lt;footer&gt;
        &lt;p&gt;Scritto da: Me&lt;/p&gt;
        &lt;p&gt;Contattami a someone@example.com&lt;/p&gt;
    &lt;/footer&gt;
  &lt;/article&gt;
</pre>
