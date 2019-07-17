---
title: "HTML"
date: 2019-07-15T17:10:46+02:00
draft: false
---

<h2>Introduzione all' HTML</h2>

<p>HTML e' un Linguaggio a Marcatori che serve a definire la <b>struttura</b> di un Ipertesto (HyperText).</p>

<p>L'ipertesto e' un testo contenente immagini, collegamenti, ecc..</p>
<p>I marcatori sono semplicemente i TAG (le etichette) dell'HTML.</p>
<p>Di ogni tag esiste il simbolo di apertura e di chiusura.</p>

<p>Esempio di TAG "titolo" (con simbolo di apertura e di chiusura):</p>
<pre>&lt;h1&gt; Etichette di apertura e chiusura titolo &lt;/h1&gt;</pre>

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
    <li>Il tag di informazioni <code>&lt;head&gt;</code> (non indirizzate all'utente, ma al browser o ai motori di ricerca) che viene aperto (con il simbolo <code>&lt;head&gt;</code>) e chiuso (con il simbolo <code>&lt;/head&gt;</code>);</li>
    <li>Il tag di contenuti della pagina web <code>&lt;body&gt;</code> che viene aperto (con il simbolo <code>&lt;body&gt;</code>) e poi chiuso (con il simbolo <code>&lt;head&gt;</code>) appena prima della fine del documento.</li>
</ol>

 <p>Si fa notare nuovamente che tutti i tag nell'esempio sono prima aperti e poi chiusi.</p>

<h2>Strumenti di sviluppo per HTML</h2>
<p>Per scrivere pagine web in HTML, serve semplicemente un editor di testi, da evitare però sia l'editor Word di Office, sia Notepad di Windows.</p>
<p>Di editor HTML ce ne sono moltissimi, si consigliano Notepad++ o Atom perchè sono estremamente configurabili.</p>

<p>Esistono anche strumenti di sviluppo visuale, per disegnare le pagine, piuttosto che scriverle, ed esistono i CMS, cioè i software per la gestione dei contenuti, che permettono di amministrare l'intero sito, creare pagine web, personalizzare il logo, il titolo, scegliere lo stile grafico, ecc...</p>

<p>Di questi CMS, i più noti sono WordPress e Joomla, ma anche in questo caso, ne sono tantissimi</p>

<p>Infine, c'è bisogno sia di validatori HTML, per assicurarsi che le pagine web non contengano errori, sia di validatori per l'accessibilità, per far in modo che le pagine web siano accessibili a chiunque, anche chi ha difficoltà visive o motorie</p>
