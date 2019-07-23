---
title: "Tag principali dell'HTML"
date: 2019-07-16T17:10:46+02:00
draft: false
---


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

<h2>Tag principali</h2>
<p>I tag principali dell'HTML, tutti da inserire all'interno del tag <code>body</code> sono:</p>

<ol>
    <li><a href="#tagTesto">Tag di testo</a></li>
    <li><a href="#tagListe">Tag di liste</a></li>
    <li><a href="#tagAttr">Tag con attributi</a></li>
</ol>

<h3 id="tagTesto">Tag di testo</h3>

<p>il titolo, come visto nell'esempio precedente, generato dal TAG "h1" <code>&lt;h1&gt; &lt;/h1&gt;</code>.</p>

<p>il paragrafo, generato dal TAG "p" <code>&lt;p&gt; &lt;/p&gt;</code>.</p>

<p>The <abbr title="World Health Organization">WHO</abbr> abbreviation.</p>

<!-- Obsolete TAG <acronym title="as soon as possible">ASAP</acronym> -->

<p>Style of text for my favorite color is <del>blue</del> <ins>red</ins>!</p>

<p>This is<sub> subscript</sub> and <sup>superscript</sup></p>

<p><b>This text is bold</b></p>
<p><strong>This text is strong</strong></p>
<!-- Obsolete TAG <big>This text is big</big> -->
<p><em>This text is emphasized</em></p>

<p>il tag HR <code>&lt;hr /&gt;</code> che genera una linea orizzontale come questa:</p>
<hr />

<h3 id="tagListe">Tag di liste</h3>

<p>i tag <code>ol</code> ed <code>ul</code> che generano liste di elementi, con ogni elemento contenuto in tag <code>li</code>, come ad esempio la lista non ordinata di browser ottimi:</p>
<pre>
  &lt;ul&gt;
    &lt;li&gt;Firefox&lt;/li&gt;
    &lt;li&gt;Chrome&lt;/li&gt;
    &lt;li&gt;Edge (Microsoft)&lt;/li&gt;
  &lt;/ul&gt;
</pre>

che genera:
<ol>
    <li>Firefox</li>
    <li>Chrome</li>
    <li>Edge (Microsoft)</li>
</ol>

<p>e la lista ordinata di browser pessimi:</p>
<pre>
  &lt;ol&gt;
    &lt;li&gt;Internet Explorer&lt;/li&gt;
    &lt;li&gt;Safari&lt;/li&gt;
  &lt;/ol&gt;
</pre>

che genera:
<ul>
    <li>Internet Explorer</li>
    <li>Safari</li>
</ul>

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
