---
type: "html"
title: "HTML Lez. 05 - Tag audio e  video"
description: "HTML Lez. 05 - Tag audio e  video"
date: 2019-08-22
publishdate: 2019-08-22
lastmod: 2019-08-22
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: true
toc: false
summary: "HTML Lez. 05 - Tag audio e  video"
---

<h1>Tag audio e  video</h1>

<p>È consigliabile, per questioni di performance, proporre i contenuti audio e video in streaming. Comunque si possono proporre anche come file o collegamenti.</p>

<p>L'aggiunta di audio e video ad una pagina web è semplice, ma, spesso, è necessario preparare questi contenuti, affinchè siano utilizzabili su risoluzioni diverse, dagli smartphone alle smart-tv, e su connessioni a differenti velocitá, dal 3G alla fibra.</p>

<p>Su connessioni lente e su dispositivi con schermi piccoli, quali gli smartphone, è preferibile mostrare video che abbiano qualitá ridotta e immagini con le dimensioni adattate (in verticale), in modo che siano completamente visibili e che possano essere caricati piú velocemente. In caso di connessioni veloci e schermi grandi, invece, è preferibile aumentare la qualitá, preferendo video Full-HD e immagini ad alta risoluzione, preferibilmente orientate in orizzontale.</p>

<p>Per inserire un file audio, che l'utente puó ascoltare, si utilizza il seguente codice:</p>

<pre>
  <code class="html">
    &lt;audio controls autoplay&gt;
      &lt;source src="horse.ogg" type="audio/ogg"&gt;
      &lt;source src="horse.mp3" type="audio/mpeg"&gt;
      &lt;source src="horse.wav" type="audio/wav"&gt;
    &lt;/audio&gt;
  </code>
</pre>

<p>Per inserire un file video, che l'utente puó guardare, si utilizza il seguente codice:</p>

<pre>
  <code class="html">
    &lt;video controls autoplay width="800px" height="600px" poster="poster.png"&gt;
      &lt;source src="horse.mp4" type="video/mp4"&gt;
      &lt;source src="horse.ogg" type="video/ogg"&gt;
      &lt;source src="horse.webm" type="video/webm"&gt;
      &lt;track label="English" kind="subtitles" srclang="en" src="captions/vtt/sintel-en.vtt" default&gt;
    &lt;/video&gt;
  </code>
</pre>

<p>Come si vede, entrambi i tag <code class="html">audio</code> e <code class="html">video</code> hanno gli attributi: </p>

<ul>
    <li><code>mute</code>, per silenziare il video;</li>
    <li><code>loop</code>, per riavviare l'audio o il video una volta terminato;</li>
  <li><code>autoplay</code>, per avviare automaticamente l'audio o il video; Le specifiche indicano che deve essere usato insieme all'attributo <code>mute</code> per poter effettuare l'autoplay sui dispositivi mobile;</li>
  <li><code>controls</code>, per visualizzare i pulsanti di controllo "play", "pause", "stop", ....</li>
  <li><code>controlsList</code>, una lista di tre possibili valori: <code class="hrml">nodownload</code> non permette all'utente di scaricare il file; <code>nofullscreen</code> non permette all'utente di vedere il video a tutto schermo; <code>noremoteplayback</code>, non permette all'utente di riprodurre il contenuto in remoto; Essendo una lista, questo attributo viene utilizzato come nel seguente esempio: <code class="hrml">controlsList="nodownload nofullscreen noremoteplayback"</code></li>
</ul>

<p>Ovviamente, solo il tag video ha gli attributi:
<ul>
    <li><code>poster</code>, l'immagine di anteprima da mostrare;</li>
    <li><code>width</code>, la larghezza del video (in pixel);</li>
  <li><code>height</code>, l'altezza del video (in pixel); </li>
</ul>

<p>Entrambi i tag <code class="html">audio</code> e <code class="html">video</code> fanno uso del tag <code class="html">source</code>, per indicare i video o gli audio da riprodurre. Di questi, solo uno viene effettivamente riprodotto: il browser sceglie (nell'ordine indicato) il primo file che riesce a riprodurre (in base ai formati supportati).</p>

<p>Il tag <code class="html">source</code> prevede diversi attributi, ma alcuni sono ad uso esclusivo per le immagini, per cui quelli maggiormente utilizzabili per <strong>audio e video</strong> sono: </p>

<ul>
  <li><code>src</code>, per indicare il percorso del file da riprodurre;</li>
  <li><code>type</code>, per indicare il mime-type del file da riprodurre. Tra i possibili mime-type <strong>audio</strong> abbiamo <code>audio/mpeg</code> per i file mp3, <code>audio/wav</code> per i file wav e <code>audio/ogg</code> per i file ogg. Tra i possibili mime-type <strong>video</strong> abbiamo <code>video/mp4</code> per i file mp4, <code>video/webm</code> per i file webm e <code>video/ogg</code> per i file ogg.</li>
</ul>

<p>Il tag <code class="html">video</code> permette anche di specificare dei possibili sottotitoli da mostrare sopra il video. I sottotitoli sono indicati nei tag <code class="html">track</code>, che prevede i seguenti attributi:</p>

<ul>
    <li><code>label</code>, una descrizione, generalmente la lingua del sottotitolo;</li>
    <li><code>kind</code>, il tipo di traccia (per ora subtitles);</li>
    <li><code>srclang</code> il codice del linguaggio;</li>
    <li><code>src</code> il percorso del file di sottotitoli; Il formato del file è VTT.</li>
    <li><code>default</code> il sottotitolo da mostrare di default.</li>
</ul>
