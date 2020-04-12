---
type: "html"
title: "HTML Lez. 02 - Etichette (tag)"
description: "HTML Lez. 02 - Etichette (tag) - Creazione di una prima pagina web e spiegazione dei primi tag"
date: 2019-07-16
publishdate: 2019-07-16
lastmod: 2019-07-16
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 02 - Etichette (tag) - Creazione di una prima pagina web e spiegazione dei primi tag"
---

<h1>Etichette (tag)</h1>

<p>Un documento HTML è composto da un insieme di etichette, chiamate TAG (in inglese), che indicano l'inizio e la fine dei vari contenuti del documento. La struttura base di un documento HTML e' la seguente:</p>
<pre>
  <code class="html">
    &lt;!doctype html&gt;
    &lt;html&gt;
      &lt;head&gt;
        &lt;meta name="author" content="codingepaduli"&gt;
      &lt;/head&gt;
      &lt;body&gt;
        &lt;h1&gt;Titolo pagina web&lt;/h1&gt;
        &lt;p&gt;paragrafo della pagina web.&lt;/p&gt;
        &lt;!-- commento in html--&gt;
      &lt;/body&gt;
    &lt;/html&gt;
  </code>
</pre>

<p>In questa struttura si evidenziano i 4 elementi principali che devono sempre essere presenti: </p>
<ol>
    <li>L'indicazione <code>doctype</code> (non è un tag, quindi non va chiuso) indica semplicemente che il documento è di tipo HTML (versione 5);</li>
    <li>Il tag <code>html</code> indica l'inizio del documento HTML (con il simbolo di apertura <code>&lt;html&gt;</code>) e la fine del documento HTML (con il simbolo di chiusura <code>&lt;/html&gt;</code>);</li>
    <li>Il tag di informazioni <code>head</code> (non indirizzate all'utente, ma al browser o ai motori di ricerca) che viene aperto (con il simbolo <code>&lt;head&gt;</code>) e chiuso (con il simbolo <code>&lt;/head&gt;</code>);</li>
    <li>Il tag di contenuti <code>body</code> che viene aperto (con il simbolo <code>&lt;body&gt;</code>) e poi chiuso (con il simbolo <code>&lt;/body&gt;</code>) appena prima della fine del documento.</li>
</ol>

 <p>Si fa notare nuovamente che tutti i tag nell'esempio sono prima aperti e poi chiusi. Inoltre, si fa notare che il testo è <strong>indentato</strong>, ovvero che, nella riga successiva ad un simbolo di apertura, vengono aggiunti 2 o 4 spazi. Questi spazi vengono tolti quando il tag viene chiuso (simbolo di chiusura). L'indentazione è una caratteristica dei documenti molto apprezzata, ed alcuni editor di testo permettono di indentare il documento in automatico, con combinazioni di tasti e/o plugins. Altra caratteristica apprezzata è la presenza di <strong>commenti</strong>, che l'autore scrive come informazioni aggiuntive e promemoria al fine di fare chiarezza.</p>

<p>Tutti i contenuti vanno inseriti nel tag <code>body</code>, tra i simboli di apertura <code>&lt;body&gt;</code> e chiusura <code>&lt;/body&gt;</code>, come nell'esempio precedente, in cui il titolo <code>h1</code> ed il paragrafo <code>p</code> si trovano nel tag dei contenuti <code>body</code>.</p>

<p>Di seguito vengono elencati i tag per la gestione del testo:</p>

<p>Il titolo, come visto nell'esempio precedente, è generato dal tag <code>h1</code>, che ha il simbolo di apertura <code>&lt;h1&gt;</code> ed il simbolo di chiusura <code>&lt;/h1&gt;</code>. In realtà, esistono 7 livelli di titolo, che servono a dividere il documento in più capitoli e sotto-capitoli, in modo da poter dare una struttura "alberata" al documento. Questi livelli sono espressi dai tag <code>h1</code>, <code>h2</code>, <code>h3</code>, <code>h4</code>, <code>h5</code>, <code>h6</code> ed <code>h7</code>, ma nella realtà si consiglia l'uso fino al terzo livello.</p>

<p>Di seguito si riporta un esempio dei primi tre livelli:</p>
<pre>
  <code class="html">
    &lt;h1&gt; Titolo primo livello &lt;/h1&gt;
    &lt;h2&gt; Titolo secondo livello &lt;h2&gt;
    &lt;h3&gt; Titolo terzo livello &lt;h2&gt;
  </code>
</pre>

<p>che vengono poi trasformati dal browser come si vede di seguito:</p>
<h3>Titolo primo livello</h3>
<h4>Titolo secondo livello</h4>
<h5>Titolo terzo livello</h5>

<p>Il paragrafo è generato dal tag <code>p</code> che ha il simbolo di apertura <code>&lt;p&gt;</code> ed il simbolo di chiusura <code>&lt;/p&gt;</code>;</p>

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
  <code class="html">
    &lt;strong&gt;
        &lt;mark&gt;
            &lt;ins&gt;questo testo&lt;/ins&gt;
        &lt;/mark&gt;
    &lt;/strong&gt;
  </code>
</pre>
