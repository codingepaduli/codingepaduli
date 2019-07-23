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
categories: [html]
keywords: [html]
draft: false
toc: false
notesforauthors: ""
summary: "Tag principali dell'HTML"
---

Un documento HTML è l'insieme di etichette, chiamate TAG (in inglese), che indicano l'inizio e la fine dei vari contenuti del documento. La struttura base di un documento HTML e' la seguente:</p>
<pre>
  &lt;html&gt;
    &lt;head&gt;
      &lt;meta name="author" content="John Doe"&gt;
    &lt;/head&gt;
    &lt;body&gt;
      &lt;h1&gt;Titolo pagina web&lt;/h1&gt;
      &lt;p&gt;paragrafo della pagina web.&lt;/p&gt;
    &lt;/body&gt;
  &lt;/html&gt;
</pre>

<p>In questa struttura sono presenti i 3 tag principali che devono sempre essere presenti: </p>
<ol>
    <li>Il tag <code>html</code> che viene aperto ad inizio documento (con il simbolo <code>&lt;html&gt;</code>) e chiuso (con il simbolo <code>&lt;/html&gt;</code>) alla fine del documento;</li>
    <li>Il tag di informazioni <code>head</code> (non indirizzate all'utente, ma al browser o ai motori di ricerca) che viene aperto (con il simbolo <code>&lt;head&gt;</code>) e chiuso (con il simbolo <code>&lt;/head&gt;</code>);</li>
    <li>Il tag di contenuti <code>body</code> che viene aperto (con il simbolo <code>&lt;body&gt;</code>) e poi chiuso (con il simbolo <code>&lt;/body&gt;</code>) appena prima della fine del documento.</li>
</ol>

 <p>Si fa notare nuovamente che tutti i tag nell'esempio sono prima aperti e poi chiusi. Inoltre, si fa notare che il testo è <strong>indentato</strong>, ovvero che nella riga successiva ad un simbolo di apertura, vengono aggiunti 2 o 4 spazi, che poi vengono tolti quando compare un simbolo di chiusura. L'indentazione è una caratteristica dei documenti molto apprezzata, ed alcuni editor di testo permettono di indentare il documento in automatico.</p>

 <p>Tutti i contenuti vanno inseriti nel tag <code>body</code>, tra i simboli di apertura <code>&lt;body&gt;</code> e chiusura <code>&lt;/body&gt;</code>, come nell'esempio precedente, in cui il titolo <code>h1</code> ed il paragrafo <code>p</code> si trovano nel tag dei contenuti <code>body</code>.</p>

<p>Possiamo dividere i tag in differenti categorie:</p>

<ol>
    <li><a href="#tagTesto">Tag di testo;</a></li>
    <li><a href="#tagListe">Tag di liste e tabelle;</a></li>
    <li><a href="#tagAttr">Tag di immagini e video;</a></li>
</ol>

<h3 id="tagTesto">Tag di testo</h3>

<p>Il titolo, come visto nell'esempio precedente, è generato dal TAG <code>h1</code>, che ha il simbolo di apertura <code>&lt;h1&gt;</code> ed il simbolo di chiusura <code>&lt;/h1&gt;</code>. In realtà, esistono 7 livelli di titolo, che servono a dividere il documento in piu capitoli e sotto-capitoli, in modo da poter dare una struttura "alberata" al documento. Questi livelli sono espressi dai tag <code>h1</code>, <code>h2</code>, <code>h3</code>, <code>h4</code>, <code>h5</code>, <code>h6</code> ed <code>h7</code>, ma nella realtà si consiglia l'uso fino al terzo livello.</p>

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
<p>il tag <code>abbr</code> è usato per gli acronimi allo scopo di visualizzarne il significato quando il mouse si ferma sopra, come ad esempio questo acronimo <abbr title="HyperText Markup Language">HTML</abbr> generato dal seguente codice:
    <code>&lt;abbr title="HyperText Markup Language"&gt;HTML&lt;/abbr&gt;</code>;</p>

<!-- Obsolete TAG <acronym title="as soon as possible">ASAP</acronym> -->
<!-- Obsolete TAG <big>This text is big</big> -->

<p>il tag <code>hr</code> genera una semplice linea orizzontale, come la seguente, generata dal codice <code>&lt;hr&gt;&lt;/hr&gt;</code>.</p>

<h3 id="tagListe">Tag di liste e tabelle</h3>

<p>Il tag <code>ul</code> genera una lista di elementi non ordinata, ogni elemento della lista è contenuto nel tag <code>li</code>. Ad esempio il seguente codice genera la lista non ordinata di browser ottimi per la navigazione:
    <pre>
      &lt;ul&gt;
        &lt;li&gt;Firefox&lt;/li&gt;
        &lt;li&gt;Chrome&lt;/li&gt;
        &lt;li&gt;Edge (Microsoft)&lt;/li&gt;
      &lt;/ul&gt;
    </pre>

    La lista viene visualizzata di seguito:
    <ul>
        <li>Firefox</li>
        <li>Chrome</li>
        <li>Edge (Microsoft)</li>
    </ul>
</p>

<p>Il tag <code>ol</code> genera invece una lista ordinata, ed anche per questo tag gli elementi della lista sono contenuti nel tag <code>li</code>. Ad esempio il seguente codice genera la lista non ordinata di browser pessimi per la navigazione:
    <pre>
      &lt;ol&gt;
        &lt;li&gt;Internet Explorer&lt;/li&gt;
        &lt;li&gt;Safari&lt;/li&gt;
      &lt;/ol&gt;
    </pre>

    La lista viene visualizzata di seguito:
    <ol>
        <li>Internet Explorer</li>
        <li>Safari</li>
    </ol>

<h3 id="tagAttr">Attributi dei tag</h3>
<p>Tutti i tag hanno degli attributi come ad esempio l'attributo "style", che serve a definire uno stile grafico (in questo caso il bordo verde):</p>
<table style="border: 5px solid green;">
    <caption>Tabella con stile</caption>
    <tr>
        <th>header1</th>
        <th>header2</th>
    </tr>
    <tr>
        <td>data1</td>
        <td>$100</td>
    </tr>
    <tr>
        <td>data2</td>
        <td>$50</td>
    </tr>
</table>

<p>
    Idem i tag per creare collegamenti <code>a</code> che ha l'attributo <code>href</code> indicante l'URL della pagina collegata, ad esempio
    <code>&lt;a href="www.wikipedia.it"&gt;link&lt;a&gt;</code> che genera
    il collegamento <a href="www.wikipedia.it">link</a>
</p>
<p>
    Idem per il tag delle immagini <code>img</code>, che ha gli attributi <code>src</code> per indicare l'URL dell'immagine, <code>width</code> per la larghezza e <code>height</code> per l'altezza, ad esempio:
    <code>&ltimg src="img/planets.gif" alt="appunti HTML" width="32" height="32" /&gt;</code>
    che genera l'immagine:
    <img src="img/planets.gif" alt="appunti HTML" width="32" height="32" />
</p>

<p>Particolarmente interessante il tag MAP che mappa elementi di un immagine:</p>
<p>
    <img src="img/planets.gif" width="145" height="126" alt="Planets" usemap="#planetmap" />

    <br />Posiziona il mouse oppure clicca su Sole, Mercurio o Venere, sono mappati su pagine differenti.<br />

    <map id="planetmap" name="planetmap">
        <area shape="rect" coords="0,0,82,126" alt="Sun" title="Sun" href="formPage.html" />
        <area shape="circle" coords="90,58,3" alt="Mercury" title="Mercury" href="esempioAffiancamento.html" />
        <area shape="circle" coords="124,58,8" alt="Venus" title="Venus" href="esempioAffiancamento.html" />
    </map>
</p>

<hr />
