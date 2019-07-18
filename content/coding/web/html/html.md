---
title: "HTML"
date: 2019-07-15T17:10:46+02:00
draft: false
---

<h2>Introduzione all' HTML</h2>

<p>HTML e' un Linguaggio a Marcatori che serve a definire la <b>struttura</b> di un Ipertesto (HyperText).</p>

<p>L'ipertesto e' un testo contenente immagini, collegamenti, video, ecc..</p>
<p>I marcatori sono semplicemente delle etichette, chiamate <b>TAG</b>, che indicano inizio e fine dei vari elementi della pagina HTML: inizio e fine del titolo, di un immagine, di un video, di una tabella...</p>

<p>Per esempio l'etichetta <code>h1</code> è l'etichetta del "titolo", ed ha il simbolo di apertura <code>&lt;h1&gt;</code> che indica l'inizio ed il simbolo di chiusura <code>&lt;/h1&gt;</code> che indica la fine del titolo.

<p>Da sottolineare nuovamente che il linguaggio HTML non definisce lo stile grafico del documento, ma solo la <b>struttura</b>.</p>

<p>La struttura base di un documento html e' la seguente:</p>
<pre>
  &lt;html&gt;
    &lt;head&gt;
      &lt;meta name="author" content="John Doe"&gt;
    &lt;/head&gt;
    &lt;body&gt;
      &lt;h1&gt;Titolo pagina web&lt;/h1&gt;
    &lt;/body&gt;
  &lt;/html&gt;
</pre>

<p>In questa struttura sono presenti i 3 tag principali che devono sempre essere presenti: </p>
<ol>
    <li>Il tag <code>html</code> che viene aperto ad inizio documento (con il simbolo <code>&lt;html&gt;</code>) e chiuso (con il simbolo <code>&lt;/html&gt;</code>) alla fine del documento;</li>
    <li>Il tag di informazioni <code>head</code> (non indirizzate all'utente, ma al browser o ai motori di ricerca) che viene aperto (con il simbolo <code>&lt;head&gt;</code>) e chiuso (con il simbolo <code>&lt;/head&gt;</code>);</li>
    <li>Il tag di contenuti <code>body</code> che viene aperto (con il simbolo <code>&lt;body&gt;</code>) e poi chiuso (con il simbolo <code>&lt;/body&gt;</code>) appena prima della fine del documento.</li>
</ol>

 <p>Si fa notare nuovamente che tutti i tag nell'esempio sono prima aperti e poi chiusi.</p>

<h2>Strumenti di sviluppo per HTML</h2>
<p>Per scrivere pagine web in HTML, serve semplicemente un editor di testi, da evitare però sia l'editor Word di Office, sia Notepad di Windows.</p>
<p>Di editor HTML ce ne sono moltissimi, si consigliano <a href="https://notepad-plus-plus.org/">Notepad++</a> o <a href="https://atom.io/">Atom</a> perchè sono estremamente configurabili.</p>

<p>Scritta una pagina HTML, si deve verificare che non contenga errori, utilizzando un validatore HTML come quello della <a href="https://validator.w3.org/">W3C Validator</a></p>

<p>Inoltre si deve verificare l'accessibilità della pagina web, in modo che siano accessibili a chiunque, anche chi ha difficoltà visive o motorie</p>

<p>Esistono strumenti di sviluppo visuale, che permettono di disegnare le pagine HTML, piuttosto che scriverle, ed esistono i <a href="https://it.wikipedia.org/wiki/Content_management_system">CMS</a>, ovvero software che permettono di amministrare l'intero sito, anche con poche conoscenze tecniche. Tra i CMS più noti troviamo <a href="https://wordpress.org/">WordPress</a> e <a href="https://www.joomla.org/">Joomla</a>, ma ve ne sono miriadi.</p>

<p>In qualsiasi modo vengano create le pagine web, la conoscenza dell'HTML è sempre utile a chi intende gestire un sito, che sia un blog, un e-commerce o qualsiasi altra tipologia.</p>
