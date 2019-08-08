---
type: "html"
title: "HTML Lez. 05 - Articoli"
description: "HTML Lez. 05 - Struttura HTML di pagine ed articoli"
date: 2019-07-16
publishdate: 2019-07-16
lastmod: 2019-07-16
categories: ["html"]
keywords: ["html"]
draft: true
toc: false
notesforauthors: "HTML Lez. 05 - Tag di articoli"
summary: "HTML Lez. 05 - Struttura HTML di pagine ed articoli"
---


<p>il tag <code>hr</code> genera una semplice linea orizzontale, come la seguente, generata dal codice <code>&lt;/hr&gt;</code>.</p>

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
