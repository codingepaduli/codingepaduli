---
type: "html"
title: "HTML Lez. 04 - Validazione, codifica UTF-8, HTML entities ed emoji"
description: "HTML Lez. 04 - Validazione del codice HTML e codifica UTF-8 delle pagine web, HTML entities ed emoji"
date: 2019-07-30
publishdate: 2019-07-30
lastmod: 2019-07-30
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 04 - Validazione del codice HTML e codifica UTF-8 delle pagine web, HTML entities ed emoji"
---

<h1>Validazione, codifica UTF-8, HTML entities ed emoji</h1>

<p>É importante che il documento HTML sia salvato con codifica <a href="https://it.wikipedia.org/wiki/UTF-8">UTF-8</a>, in modo tale da poter inserire nel documento qualsiasi carattere o simbolo, dall'alfabeto cinese a quello arabo, dalle lingue morte come latino e greco ai simboli matematici, alle figure geometriche, fino agli emoticons ed emoji.</p>

<p>La codifica UTF-8 deriva dal sistema <a href="https://it.m.wikipedia.org/wiki/Unicode">Unicode</a>, che assegna un numero univoco ad ogni carattere di ogni lingua, ad ogni simbolo e ad ogni emoticons o emoji.</p>

<p>Per salvare i file nella codifica UTF-8, si consiglia di leggere l'articolo sull'uso di <a href="/coding/tools/EditorConfig/">EditorConfig</a>.</p>

<p>Una volta che le pagine web sono state salvate con la codifica giusta, è consigliato indicarla nelle informazioni della pagina, all'interno del tag <code class="html">head</code>, come nell'esempio:</p>

<pre>
  <code class="html">
    &lt;head&gt;
      &lt;meta charset="UTF-8"&gt;
    &lt;/head&gt;
  </code>
</pre>

<p><strong>Senza la codifica giusta, molti caratteri potrebbero non essere visualizzati nella pagina web</strong>.</p>

<p>In alcuni casi, peró, è necessario evitare di scrivere direttamente questi caratteri nel documento, ed utilizzare, invece, delle rappresentazioni alternative, che utilizzino i codici numerici decimali o esadecimali del sistema Unicode, oppure, i codici mnemonici chiamati "html entities".</p>

<p>Gli html entities sono dei codici mnemonici che vengono associati ad alcuni caratteri. La specifica delle html entities si trova al link <a href="https://html.spec.whatwg.org/multipage/entities.json">https://html.spec.whatwg.org/multipage/entities.json</a>. Tra le varie html entities elencate, troviamo ad esempio:<p>

<ul>
  <li>gt = greather than (&gt;)</li>
  <li>lt = lower than (&lt;)</li>
  <li>minus = segno meno o trattino (-)</li>
  <li>amp = ampersand (&amp;)</li>
  <li>quot = quotation mark (")</li>
  <li>apos = apostrophe (')</li>
  <li>…</li>
</ul>

<p>Questi codici devono essere usati tra il simbolo <code class="html">&amp;</code> ed il simbolo <code class="html">;</code>, come negli esempi <code class="html">&amp;minus;</code> (con risultato &minus;) ed <code class="html">&amp;amp;</code> (con risultato &amp;).</p>

<p>La rappresentazione mediante codice numerico decimale permette di inserire i caratteri o i simboli usando il corrispondente codice decimale, che deve essere inserito tra il simbolo <code class="html">&amp;#</code> ed il simbolo <code class="html">;</code>. Si puó usare anche il codice numerico esadecimale, che va inserito tra il simbolo <code class="html">&amp;#x</code> ed il simbolo <code class="html">;</code>.</p>

<p>Ad esempio, la lettera greca &Delta; è associata al codice numerico decimale 916 ed al codice numerico esadecimale 394, quindi possiamo scrivere questo carattere o con la notazione decimale <code class="html">&amp;#916;</code> (con risultato &#916;) oppure con quella esadecimale <code class="html">&amp;#x394;</code> (con risultato &#x394;).</p>

<p>Altro esempio, il simbolo dell'euro &euro; è associato al codice numerico decimale 8364 ed al codice numerico esadecimale 20AC, quindi possiamo scrivere questo carattere o con la notazione decimale <code class="html">&amp;#8364;</code> (con risultato &#8364;) oppure con quella esadecimale <code class="html">&amp;#x20AC;</code> (con risultato &#x20AC;).</p>

<p>Anche gli emoticons e gli <a href="https://www.unicode.org/emoji/charts/full-emoji-list.html">emoji</a> fanno parte della specifica Unicode, per cui o li si scrive nel documento "cosi come sono" o li si puó includere attraverso
"html entities" o attraverso rappresentazione con codice decimale/esadecimale.</p>

<p>Ad esempio, l'emoji "rolling on the floor laughing" (rotola sul pavimento ridendo) è associata al codice numerico esadecimale 1F923, quindi possiamo scrivere questo carattere con la notazione esadecimale <code class="html">&amp;#x1F923;</code> (con risultato &#x1F923;).</p>

<p>I tag, gli attributi e le rappresentazioni in decimale/esadecimale fin qui visti, possono portare ad una vasta serie di errori, che devono essere corretti mediante validazione.</p>

<p>La validazione di una pagina web serve sia a risolvere eventuali errori presenti, sia ad evitare l'uso di pratiche non piú al passo con gli ultimi standard.</p>

<p>La validazione puó essere inclusa all'interno dell'editor, oppure, ci si puó servire di servizi esterni, come il <a href="https://validator.w3.org/">W3C Validator</a>.</p>

<p>Il servizio di validazione della W3C permette di validare attraverso un link, facendo l'upload del file, oppure inserendo in input (con copia e incolla) il codice HTML da validare, come da immagine seguente:
<img src="/static/coding/web/html/html-W3C-validator.webp" alt="immagine del validatore">
</p>

<p>L'operazione di validazione, con il servizio della W3C, puó indicare che in pagina non sono presenti errori, come da immagine seguente:
<img src="/static/coding/web/html/html-W3C-validator-OK.webp" alt="immagine del validatore senza errori"></p>

<p> Nel caso siano presenti errori, vengono elencati uno ad uno, e viene riportata sia la presunta riga d'errore, sia viene evidenziato il codice con tutti gli errori, come nella seguente immagine:
<img src="/static/coding/web/html/html-W3C-validator-Errors.webp" alt="immagine del validatore con errori"></p>

<p>Tra i diversi messaggi, di avviso o di errore, abbiamo:</p>

<p><strong>Consider adding a lang attribute to the html start tag to declare the language of this document</strong>:
È un messaggio di avviso per indicare che il tag <code>html</code> manca dell'attributo che indica la lingua in cui è scritta la pagina, quindi bisogna correggere con: <code class="html">&lt;html lang="it"&gt;</code>.</p>

<p><strong>Non-space characters found without seeing a doctype first. Expected <code class="html">&lt;!DOCTYPE html&gt;</code></strong>:
Manca la prima riga di intestazione, che indica che il documento è un HTML. Deve essere aggiunta come prima riga.</p>

<p><strong>Element head is missing a required instance of child element title</strong>:
All'interno del tag <code>head</code> deve essere inserito il tag <code>title</code> come di seguito:</p>
<pre>
  <code class="html">
    &lt;head&gt;
      &lt;title&gt;Titolo pagina web &lt;/title&gt;
    &lt;/head&gt;
  </code>
</pre>

<p><strong>The document is not mappable to XML 1.0 due to two consecutive hyphens in a comment</strong> Indica che non si possono mettere due trattini consecutivi all'interno di un commento, quindi i due trattini vanno rimossi. Spesso si sbaglia a scrivere il commento, aggiungendo uno spazio di troppo, che deve essere rimosso, come nel seguente esempio: <code class="html">&lt;!<mark> </mark>&minus;&minus; commento &minus;&minus;<mark> </mark>&gt;</code>, nel quale sono evidenziati gli spazi da rimuovere.</p>

<p><strong>No <mark>p</mark> element in scope but a <mark>p</mark> end tag seen</strong> indica che l'etichetta evidenziata è stata aperta (ad esempio <mark>&lt;p&gt;</mark>) e non è stata chiusa (con <mark>&lt;/p&gt;</mark>).</p>

<p><strong>The <mark>center</mark> element is obsolete. Use CSS instead.</strong> indica che gli ultimi standard sconsigliano l'uso dell'etichetta evidenziata. In questo caso si consiglia di sostituirla facendo uso dei CSS.</p>

<p><strong>Bad character after <mark>&lt;</mark>. Probable cause: Unescaped. Try escaping it as &amp;#xxxx;</strong> indica che il carattere evidenziato deve essere codificato come "html entity" oppure rappresentato con codifica Unicode decimale o esadecimale.</p>
