---
type: "html"
title: "HTML Lez. 03 - Etichette con attributi"
description: "HTML Lez. 03 - Etichette con attributi - Spiegazione dei tag che fanno uso di attributi"
date: 2019-07-25
publishdate: 2019-07-25
lastmod: 2019-07-25
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 03 - Etichette con attributi - Spiegazione dei tag che fanno uso di attributi"
---

<h1>Etichette con attributi</h1>

<p>I tag possono avere degli <strong>attributi</strong> che servono ad aggiungere informazioni al tag. Alcuni attributi sono comuni a tutti i tag, ad esempio gli attributi <code>id</code> (che identifica in maniera univoca il tag) e <code>style</code> (che indica lo stile grafico del tag), mentre altri attributi sono specifici del singolo tag.</p>

<p>Gli attributi sono aggiunti solo nei simboli di apertura di un tag, non nei simboli di chiusura, e hanno la forma <strong>nome='valore'</strong>. Il valore deve essere sempre racchiuso da apici singoli o doppi.</p>
 
<p>Di seguito, elenchiamo altri tag dell'HTML che utilizzano gli attributi.</p>

<p>Il tag <code>a</code> serve a creare un collegamento (in inglese "link") verso un ipertesto (un'altra pagina web). Questo tag ha gli attributi:</p>
<ul>
  <li><code>href</code>, che permette di indicare l'indirizzo dell'ipertesto da raggiungere;</li>
  <li><code>target</code>, che permette di indicare come aprire l'ipertesto, e può assumere solo i seguenti valori: <code>&#95;blank</code>, per aprire l'ipertesto in una nuova pagina, e <code>&#95;self</code>, per aprire l'ipertesto nella stessa pagina.</li>
</ul>

<p>Un esempio di collegamento è questo <a href="/" target="&#95;blank">collegamento alla home</a>, generato dal codice
    <code>&lt;a href="/" target="&#95;blank"&gt;collegamento alla home&lt;/a&gt;</code>; 
    in cui si evidenzia sia l'indirizzo dell'ipertesto "/", cioè la home page, sia l'attributo <code>target="&#95;blank"</code>, cioè l'indicazione di aprire la home page in una nuova scheda del browser</p>

<p>Il tag <code>ol</code> genera una lista numerata di elementi, analogamente il tag <code>ul</code> genera una lista di elementi non ordinata. Entrambi i tag prevedono che ogni elemento della lista  deve essere contenuto nel tag <code>li</code>. Entrambi i tag di lista hanno l'attributo <code>type</code> (di recente sostituito dalla proprietà CSS list-style-type) che può avere uno dei seguenti valori:</p>
<ul>
  <li><code>1</code> elementi della lista elencati con numeri latini;</li>
  <li><code>A</code> oppure <code>a</code> elementi della lista elencati con lettere alfabetiche maiuscole o minuscole;</li>
  <li><code>I</code> oppure <code>i</code> elementi della lista elencati con numeri romani in maiuscolo o minuscolo;</li>
  <li><code>disc</code> elementi della lista elencati con dei cerchietti pieni;</li>
  <li><code>square</code> elementi della lista elencati con dei quadrati pieni;</li>
  <li><code>circle</code> elementi della lista elencati con dei cerchietti vuoti;</li>
</ul>
<p>Ad esempio, il seguente codice genera la lista numerata (con numeri romani) di browser pessimi per la navigazione:</p>
<pre>
  <code class="html">
    &lt;ol type="I"&gt;
      &lt;li&gt;Internet Explorer&lt;/li&gt;
      &lt;li&gt;Safari&lt;/li&gt;
    &lt;/ol&gt;
  </code>
</pre>

<p>La lista viene visualizzata di seguito:</p>
<ol type="I">
  <li>Internet Explorer</li>
  <li>Safari</li>
</ol>

<p>Altro esempio, il seguente codice genera la lista non ordinata di browser ottimi per la navigazione:</p>
<pre>
  <code class="html">
    &lt;ul type="disc"&gt;
      &lt;li&gt;Firefox&lt;/li&gt;
      &lt;li&gt;Chrome&lt;/li&gt;
      &lt;li&gt;Edge (Microsoft)&lt;/li&gt;
    &lt;/ul&gt;
  </code>
</pre>

<p>La lista viene visualizzata di seguito:</p>
<ul type="disc">
  <li>Firefox</li>
  <li>Chrome</li>
  <li>Edge (Microsoft)</li>
</ul>

<p>Il tag <code>table</code> genera una tabella, e può contenere una descrizione del contenuto generata dal tag <code>caption</code>. Il tag di tabella deve contenere i tag <code>tr</code>, che generano le righe della tabella. Ogni tag <code>tr</code> deve contenere all'interno delle celle che formano le colonne. Le celle possono essere di intestazione, e sono generate dai tag <code>th</code>, oppure di dati, e sono generate dai tag <code>td</code>.</p>
<p>I tag delle celle <code>th</code> e <code>td</code> hanno gli attributi:</p>
<ul>
  <li><code>colspan</code>, che permette ad una cella di espandersi su più colonne;</li>
  <li><code>rowspan</code>, che permette ad una cella di espandersi su più righe.</li>
</ul>

<p>Ad esempio, una tabella di 3 righe e 2 colonne viene generata dal seguente codice:</p>
  <pre>
    <code class="html">
      &lt;table style="border: 5px solid green;"&gt;
        &lt;caption&gt;Tabella con stile&lt;/caption&gt;
        &lt;tr&gt;
          &lt;th&gt;header1&lt;/th&gt;
          &lt;th&gt;header2&lt;/th&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
          &lt;td&gt;data1&lt;/td&gt;
          &lt;td&gt;$100&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
          &lt;td&gt;data2&lt;/td&gt;
          &lt;td&gt;$50&lt;/td&gt;
        &lt;/tr&gt;
      &lt;/table&gt;
    </code>
  </pre>

  <p>La tabella viene visualizzata di seguito:</p>
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

<p>Volendo riportare un esempio di codice che preveda l'espansione delle celle su piu righe o colonne, possiamo creare una tabella di 3 righe e 2 colonne, in cui l'ultima riga si espande su entrambe le colonne, mentre la prima cella in alto a sinistra occupa due righe:</p>
<pre>
  <code class="html">
    &lt;table style="border: 5px solid green;"&gt;
      &lt;caption&gt;Tabella con stile&lt;/caption&gt;
      &lt;tr&gt;
        &lt;th rowspan="2"&gt;Cella espansa su 2 righe grazie all'attributo rowspan="2" &lt;/th&gt;
        &lt;td&gt;34£&lt;/td&gt;
      &lt;/tr&gt;
      &lt;tr&gt;
        &lt;!&minus;&minus; Cella mancante perchè occupata dalla cella che si è espansa 	&minus;	&minus;&gt;
        &lt;td&gt;$100&lt;/td&gt;
      &lt;/tr&gt;
      &lt;tr&gt;
        &lt;th colspan="2"&gt;Cella espansa su 2 colonne, grazie all'attributo colspan="2"&lt;/th&gt;
        &lt;!&minus;&minus; Cella mancante perchè occupata dalla cella che si è espansa &minus;&minus;&gt;
      &lt;/tr&gt;
    &lt;/table&gt;
  </code>
</pre>

<p>La lista viene visualizzata di seguito:</p>
<table style="border: 5px solid green;">
  <caption>Tabella con stile</caption>
  <tr>
      <th rowspan="2">Cella espansa su 2 righe grazie all'attributo <code>rowspan="2"</code></th>
      <td>34£</td>
  </tr>
  <tr>
      <!-- Cella mancante perchè occupata dalla cella che si è espansa -->
      <td>$100</td>
  </tr>
  <tr>
      <th colspan="2">Cella espansa su 2 colonne, grazie all'attributo <code>colspan="2"</code> </th>
      <!-- Cella mancante perchè occupata dalla cella che si è espansa -->
  </tr>
</table>
