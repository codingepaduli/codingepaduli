---
type: "html"
title: "HTML Lez. 04 - Validazione e codifica UTF-8"
description: "HTML Lez. 04 - Validazione del codice HTML e codifica UTF-8 delle pagine web, HTML entities ed emoji"
date: 2019-07-30
publishdate: 2019-07-30
lastmod: 2019-07-30
categories: ["html"]
keywords: ["html"]
draft: true
toc: false
notesforauthors: "HTML Lez. 04 - Spiegati i messaggi di validazione, la codifica UNICODE, gli html entities e l'uso di emoji"
summary: "HTML Lez. 04 - Validazione del codice HTML e codifica UTF-8 delle pagine web, HTML entities ed emoji"
---

<p>É importante che il documento HTML sia codificato in <a href="https://it.m.wikipedia.org/wiki/Unicode">Unicode</a>. La codifica Unicode permette di inserire nel documento qualsiasi carattere o simbolo, dall'alfabeto cinese a quello arabo, dalle lingue morte come latino e greco ai simboli matematici, alle figure geometriche, fino agli emoticons. In Italia è consigliata la codifica <a href="https://it.wikipedia.org/wiki/UTF-8">UTF-8</a>, che è semplicemente uno dei vari modi per codificare i caratteri in UNICODE. <strong>Senza la codifica giusta, molti caratteri potrebbero non essere visualizzati nella pagina web</strong>.</p>

<p>Ogni editor ha le proprie opzioni per salvare i file nella codifica scelta <!-- TODO aggiungere immagine x Atom-->.</p>

<p>Una volta impostata la codifica giusta, è consigliato indicarla nelle informazioni della pagina, all interno del tag <code  class="html">head</code>, come nell'esempio:</p>
<pre>
  <code class="html">
    &lt;head&gt;
      &lt;meta charset="UTF-8" &gt;
    &lt;/head&gt;
  </code>
</pre>

<p>Spesso, peró, è necessario evitare di scrivere direttamente questi caratteri ed utilizzare delle rappresentazioni alternative, come gli "html entities" e la rappresentazione mediante codici numerici decimali o esadecimali che il sistema UNICODE associa ad ogni singolo carattere o simbolo.</p>

<p>Gli html entities sono dei codici mnemonici che vengono dati ad alcuni caratteri, ad esempio:
gt = greather than (&gt;),
lt = lower than (&lt;),
minus = segno meno o trattino (-), 
amp = ampersand (&amp;)
quot = quotation mark (")
apos = apostrophe ('), …
Questi codici devono essere usati tra il simbolo <code  class="html">&amp;</code> ed il simbolo <code  class="html">;</code>, come negli esempi <code  class="html">&amp;minus;</code> ed <code  class="html">&amp;amp;</code>.</p>

<p>La rappresentazione mediante codice numerico decimale permette di inserire i caratteri o i simboli usando il corrispondente codice decimale, che deve essere inserito tra il simbolo <code  class="html">&amp;#</code> ed il simbolo <code  class="html">;</code>. Si puó usare anche il codice numerico esadecimale, che va inserito tra il simbolo <code  class="html">&amp;#x</code> ed il simbolo <code  class="html">;</code>.</p>

<p>Ad esempio, la lettera greca &Delta; è associata al codice numerico decimale 916 ed al codice numerico esadecimale 0394, quindi possiamo scrivere questo carattere o con la notazione decimale <code  class="html">&amp;#916;</code> (con risultato &#916;) oppure con quella esadecimale <code  class="html">&amp;#x0394;</code> (con risultato &#x0394;).</p>

<p>Altro esempio, il simbolo dell'euro &euro; è associato al codice numerico decimale 8364 ed al codice numerico esadecimale 20AC, quindi possiamo scrivere questo carattere o con la notazione decimale <code  class="html">&amp;#8364;</code> (con risultato &#8364;) oppure con quella esadecimale <code  class="html">&amp;#x20AC;</code> (con risultato &#x20AC;).</p>

<p>Anche gli emoticons (emoji) fanno parte della specifica UNICODE e la lista puó essere trovata <a href="https://www.unicode.org/emoji/charts/full-emoji-list.html">qui</a>. Gli emoji possono essere scritti nel documento o possono essere inclusi attraverso  
html entities" e/o rappresentazione con codice decimale/esadecimale.</p>

<p>Ad esempio, l'emoji "rolling on the floor laughing" (rotola sul pavimento ridendo) è associata al codice numerico esadecimale 1F923, quindi possiamo scrivere questo carattere con la notazione esadecimale <code  class="html">&amp;#x1F923;</code> (con risultato &#x1F923;).</p>

<p>I tag, gli attributi e le rappresentazioni in decimale/esadecimale fin qui visti, possono portare ad una vasta serie di errori, che devono essere corretti mediante validazione.</p>

<p>La validazione di una pagina web serve sia a risolvere eventuali errori presenti, sia ad evitare l'uso di pratiche non piú al passo con gli ultimi standard.</p>

<p>La validazione puó essere inclusa all'interno di uno strumento di sviluppo (gli IDE o i RAD) 
<!-- TODO aggiungere IDE e RAD --> oppure ci si puó servire di servizi esterni, come il <a href="https://validator.w3.org/">W3C Validator</a>.</p>

<p>Il servizio di validazione della W3C permette di validare attraverso un link, facendo l'upload del file, oppure inserendo in input (con copia e incolla) il codice HTML da validare.</p>

<p>L'operazione di validazione, con il servizio della W3C, restituisce diversi messaggi di allarme o di errore, individuando anche la riga di errore. Tra questi messaggi abbiamo:</p>

<p><strong>Consider adding a lang attribute to the html start tag to declare the language of this document</strong>: 
È un messaggio di avviso per indicare che il tag <code>html</code> manca dell'attributo che indica la lingua in cui è scritta la pagina, quindi bisogna correggere con: <code  class="html">&lt;html lang="it"&gt;</code>.</p>

<p><strong>Non-space characters found without seeing a doctype first. Expected <code  class="html">&lt;!DOCTYPE html&gt;</code></strong>:
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

<p><strong>No <mark>p</mark> element in scope but a <mark>p</mark> end tag seen</strong> indica che un etichetta è stata aperta (ad esempio <mark>&lt;p&gt;</mark>) e non è stata chiusa (con <mark>&lt;/p&gt;</mark>).</p>

<p><strong>The <mark>center</mark> element is obsolete. Use CSS instead.</strong> indica che gli ultimi standard sconsigliano l'uso dell'etichetta evidenziata. In questo caso si consiglia di sostituirla facendo uso dei CSS.</p>

<p><strong>Bad character after <mark>&lt;</mark>. Probable cause: Unescaped. Try escaping it as &amp;#xxxx;</strong> indica che un carattere deve essere codificato come "html entity" oppure rappresentato con codifica UNICODE decimale o esadecimale.</p>