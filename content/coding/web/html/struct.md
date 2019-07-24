---
title: "Tag per liste e tabelle"
linktitle: "Tag per liste e tabelle"
description: "Tag per liste e tabelle"
date: 2019-07-15T17:10:46+02:00
publishdate: 2019-07-19
lastmod: 2019-07-19
menu:
  docs:
    identifier: "liste"
    parent: "web"
    weight: 01
weight: 01	#rem
categories: ["html"]
keywords: ["html"]
draft: true
toc: false
notesforauthors: ""
summary: "Tag per liste e tabelle"
---

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

<p>Il tag <code>ol</code> genera, invece, una lista ordinata, ed anche per questo tag gli elementi della lista sono contenuti nel tag <code>li</code>. Ad esempio, il seguente codice genera la lista non ordinata di browser pessimi per la navigazione:
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
