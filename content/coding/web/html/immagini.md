---
type: "html"
title: "HTML Lez. 06 - Immagini, aree e caricamento asincrono"
description: "HTML Lez. 06 - Immagini, aree e caricamento asincrono"
date: 2019-08-26
publishdate: 2019-08-26
lastmod: 2019-08-26
categories: ["html"]
keywords: ["html"]
draft: false
toc: false
notesforauthors: "HTML Lez. 06 - Immagini, aree cliccabili sopra l'immagine, lazy loading e scelta immagine in base a larghezza e risoluzione del display"
summary: "HTML Lez. 06 - Immagini, aree e caricamento asincrono"
---

<p>L'aggiunta di immagini ad una pagina web è semplice, ma si deve garantire un'esperienza utente soddisfacente in termini di visualizzazione e tempi di caricamento.</p>

<p>Smartphone e dispositivi IoT spesso sono dotati di connessioni lente e a pagamento, come il 3G, e di schermi piccoli con risoluzioni ridotte, per cui su questi dispositivi è consigliato mostrare immagini di qualitá ridotta, che siano adatte come dimensioni e che possano al contempo ridurre i tempi di caricamento dal server. In caso di schermi grandi ed HD, invece, è preferibile mostrare immagini ad alta qualitá, poichè generalmente questi dispositivi sono collegati in wi-fi o a reti veloci.</p>

<p>Sempre nell'ottica dell'ottimizzazione dei tempi, si possono utilizzare tecniche di <strong>lazy laoding</strong>, ovvero di caricamento delle immagini solo su richiesta.</p>

<p>Partendo dal caso piú semplice, ovvero per mostrare un'unica immagine sempre alle stesse dimensioni qualsiasi sia il dispositivo, il tag delle immagini <code>img</code> prevede, per questo specifico compito, gli attributi <code>src</code> per indicare l'URL dell'immagine, <code>width</code> per indicare la larghezza ed <code>height</code> per l'altezza.</p>

<p>Il codice di esempio è il seguente:</p>

<code>&lt;img src="/static/immagine.png" width="145" height="126" alt="Immagine" /&gt;</code>

<p>Il risultato si puó apprezzare qua:</p>

<img src="/static/coding/web/html/program_CC0.png" width="145" height="126" alt="Immagine" />

<p style="font-size: 0.9rem;font-style: italic;">
  <a href="https://svgsilh.com/3f51b5/image/1970468.html">Immagine</a> 
  rilasciata con Licenza 
  <a href="https://creativecommons.org/licenses/cc0/1.0/?ref=ccsearch&atype=html">CC0 1.0</a>
  <a href="https://creativecommons.org/licenses/cc0/1.0/?ref=ccsearch&atype=html" target="_blank" rel="noopener noreferrer" style="display: inline-block">
  <img style="display: inline-block;height: 22px;" src="https://search.creativecommons.org/static/img/cc_icon.svg" alt="logo licenza cc" />
  <img style="height: 22px;display: inline-block;" src="https://search.creativecommons.org/static/img/cc-cc0_icon.svg" alt="logo licenza cc0" />
  </a>
</p>

<p>Ci possono essere casi in cui l'immagine non puó trovarsi su un file a parte e non puó essere scaricata da internet, perchè magari il dispositivo IoT è collegato ad una rete locale senza accesso ad internet, quindi l'immagine puó contenuta direttamente nel tag,  ma a patto che sia stata convertita in base 64 data-URI e che sia specificato il tipo con <code>data:image/png;base64,</code>, come nel seguente esempio:</p>

<code>&lt;img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUA AAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg=="  alt="Immagine" /&gt;</code>

<p>Il risultato dell'esempio è il seguente:</p>
<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAUAAAAFCAYAAACNbyblAAAAHElEQVQI12P4//8/w38GIAXDIBKE0DHxgljNBAAO9TXL0Y4OHwAAAABJRU5ErkJggg==" alt="Red dot" />

<p>Per la conversione dell'immagine in base64 data-URI si puó usare il servizio on-line <a href="https://websemantics.uk/tools/image-to-data-uri-converter/">https://websemantics.uk/tools/image-to-data-uri-converter/</a>.</p>

<p>Per permettere la selezione dell'immagine adatta allo schermo del dispositivo, invece, è necessario conoscere alcuni concetti.
Ogni dispositivo, a seconda della risoluzione dello schermo, ha una propria <strong>pixel density</strong>, ovvero un numero di pixel presenti su una linea di un pollice (PPI), descritta talvolta anche come punti presenti su una linea di un pollice (DPI). Piú la pixel density è alta, piú la qualitá dello schermo è alta.
Il browser, peró, utilizza una propria misura, detta <strong>pixel CSS</strong>, calcolata a partire dalla pixel density.</p>

<p>Il rapporto tra <strong>pixel density</strong> e <strong>pixel CSS</strong> è detto <strong>pixel-ratio</strong>, ed è un secondo valore da considerare, oltre alla larghezza dello schermo, per la selezione dell'immagine. </p>

<p>Su uno schermo di 1200px,  un'immagine di 1200px occupa: </p>

<ul>
  <li>l'intero schermo se la pixel ratio è 1x;</li>
  <li>metá schermo se la pixel ratio è 2x;</li>
  <li>un terzo dello schermo se la pixel ratio è 3x;</li>
  <li>e cosi via...</li>
</ul>

<p>Si tenga presente che ogni browser puó leggere a proprio modo larghezza e pixel ratio. Per valutare quelle del proprio schermo, si puó navigare con  browser diversi questo sito: <a href="https://www.mydevice.io/">www.mydevice.io</a>.</p>

<p>Quindi, data la stessa immagine salvata in risoluzioni diverse (per mostrarle su schermi con pixel ratio differenti), ad esempio "immagine1.png, immagine2.png ed immagine3.png", e dato uno schermo con pixel ratio di 1x, puó il browser selezionare l'immagine che piú si adatta ad occupare l'intera larghezza del dispositivo?</p>

<p>Non puó, perchè non conosce la larghezza dell'immagine "immagine1.png". Per conoscere la risoluzione di ogni immagine, dovrebbe scaricarle tutte dal server. Per evitare questo spreco di tempo e risorse, è necessario che sia lo sviluppatore ad indicare, per ogni immagine, la rispettiva risoluzione.</p>

<p>Per ora, l'unico parametro che viene considerato della risoluzione è la larghezza (in futuro forse anche l'altezza??), che viene indicata esplicitamente aggiungendo al valore la lettera <strong>w</strong> (che sta per "weight" ovvero "larghezza"). 
Quindi, per permettere al browser di scegliere l'immagine con la larghezza adatta allo spazio da riempire sullo schermo, il programmatore deve indicare la lista di immagini, con rispettive larghezze, nell'attributo <code>srcset</code>, come da seguente esempio:</p>

<code>srcset="immagine1.png 200w, immagine2.png 600w,
immagine3.png 1200w"</code>

<p>Indicate le immagini e le rispettive larghezze, ad esempio img1 di 200px, img2 di 600px e img3 di 1200px, dobbiamo associare queste immagini ai vari dispositivi.
Si tenga presente che, su uno schermo di 1200px di larghezza, non è detto si debba visualizzare un immagine di 1200px, perchè magari si ha una pagina con 6 colonne e quindi la larghezza adatta per ogni colonna è 1200px/6 = 200px. Caricando quindi un'immagine di 200px x 150px (invece che una da 1200px x 900px) si ha un risparmio di tempo (e dati trasmessi di rete) di 35 volte! Considerando che le colonne dell'esempio sono 6, il risparmio è considerevole.</p>

<p>Inoltre c'è da considerare la pixel ratio, quindi come indicare  l'associazione delle immagini al dispositivo? Per indicare il dispositivo, si usano le media query, che peró non saranno trattate in dettaglio ora, si rimanda ad una lezione successiva. Per indicare invece la dimensione che deve occupare l'immagine, si usano i descrittori <strong>vw</strong>, che descrive la percentuale di larghezza da occupare sullo schermo (in termini di pixel CSS), e <strong>vh</strong>, che descrive la percentuale di altezza da occupare sullo schermo (in termini di pixel CSS).</p>

<p>L'attributo <code>sizes</code> serve appunto a descrivere le associazioni tra schermo e larghezza desiderata per l'immagine, di seguito se ne fa un esempio d'uso:</p>

<code>sizes="(max-width: 500px) 100vw, (max-width: 1500px) 50vw, 25vm"</code>

<p>Il codice indicato descrive 3 associazioni: la prima indica che a schermi con risoluzione massima di 500 pixel, l'immagine deve essere presentata a schermo intero;
la seconda indica che a schermi con risoluzione massima di 1500 pixel, l'immagine deve essere presentata a metá schermo, nell'ultimo caso, con schermi piú grandi di 1500 (per esclusione), l'immagine deve essere presentata ad un quarto dello schermo.</p>

<p>Il browser, quindi,  conoscendo la grandezza del display e la pixel-ratio, conoscendo le dimensioni che deve occupare l'immagine per lo schermo utilizzato, descritte nel tag <code>sizes</code>, puó scegliere l'immagine appropriata tra le immagini (e le relative dimensioni) indicate nel tag <code>sources</code>. Se nessuna delle immagini viene selezionata, il browser di default visualizza l'immagine descritta dal tag <code>src</code>.</p>

<p>L'esempio completo è il seguente:</p>
    <code>&lt;img srcset="immagine1.png 200w, immagine2.png 600w, immagine3.png 1200w" sizes="(max-width: 500px) 100vw, (max-width: 1500px) 50vw, 25vm" src="immagine.png" alt="esempio tag immagine"  /&gt;</code>

 che genera l'immagine:
    <img srcset="immagine1.png 200w, immagine2.png 600w, immagine3.png 1200w" sizes="(max-width: 500px) 100vw, (max-width: 1500px) 50vw, 25vm" src="immagine.png" alt="esempio tag immagine" />

<p>Le immagini possono essere arricchite di <strong>mappe</strong>, cioè di aree cliccabili sovrapposte all'immagine. Le mappe sono descritte dal tag <code>map</code> che prevede l'attributo <code>name</code> come unico attributo di identificazione della mappa.</p>

<p>All'interno della mappa devono essere indicate tutte le aree dell'immagine da mappare. Ogni area viene descritta dal tag <code>area</code>, che prevede i seguenti attributi:<p>

<ul>
    <li><code>shape</code> per indicare la figura che sovrappone l'immagine, come un rettangolo (rect) o un cerchio (circ);</li>
    <li><code>coords</code> per indicare le coordinate e le dimensioni dell'area da mappare;</li>
    <li><code>href</code> per indicare l'URL che l'utente deve visitare quando clicca sull'area;</li>
    <li><code>alt</code> per indicare il testo alternativo;</li>
</ul>

<p>Un esempio di mappa è la seguente:</p>
<code>
    &lt;map name="planetmap"&gt;
       &lt;area shape="rect" coords="0,0,82,126" alt="Terra" title="Terra" href="https://it.wikipedia.org/wiki/Terra" /&gt;
    &lt;map/&gt;
</code>

<p>La mappa poi viene associata all'immagine indicando l'id della mappa nell'attributo <code>usemap</code> del tag <code>img</code>, come nel seguente esempio:</p>

<code>&lt;img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Terrestrial_Planets_Size_Comp_True_Color.png/320px-Terrestrial_Planets_Size_Comp_True_Color.png" width="145" height="126" alt="Planets" usemap="#planetmap" /&gt;</code>

<p>Cliccare su uno dei pianeti per collegarsi sulla pagina corrispondente al pianeta scelto.</p>

    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Terrestrial_Planets_Size_Comp_True_Color.png/320px-Terrestrial_Planets_Size_Comp_True_Color.png" width="145" height="126" alt="Planets" usemap="#planetmap" />

    <map name="planetmap">
        <area shape="rect" coords="0,0,82,126" alt="Terra" title="Terra" href="https://it.wikipedia.org/wiki/Terra" />
        <area shape="circle" coords="90,58,3" alt="Mercury" title="Mercury" href="https://it.wikipedia.org/wiki/Mercurio_(astronomia)" />
        <area shape="circle" coords="124,58,8" alt="Venus" title="Venus" href="https://it.m.wikipedia.org/wiki/Venere_(astronomia)" />
    </map>

<p>Le immagini possono essere caricate su richiesta utilizzando le tecniche di <strong>lazy loading</strong>, ovvero le immagini che si trovano in aree non visibili (l'utente deve scorrere la pagina o deve cliccare qualche area per renderle visibili sullo schermo) possono essere caricate in modalitá <strong>eager</strong>, cioè immediatamente, oppure in modalitá <strong>lazy</strong>, cioè solo quando l'utente scorre la pagina o rende visibile l'area e quindi arriva a "vedere" l'immagine.</p>

<p>Utilizzare il caricamento lazy per le immagini che si trovano sulle aree non visibili permette di ridurre i tempi iniziali di caricamento della pagina, rimandando il caricamento di questi dati in un secondo momento.</p>

<p>Per attivare il caricamento delle immagini in modalitá lazy (o eager), si utilizza l'attributo <code>loading</code> del tag <code>img</code>, che puó assumere il valore "eager" o "lazy", come nell'esempio seguente:

<code>&lt;img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Terrestrial_Planets_Size_Comp_True_Color.png/320px-Terrestrial_Planets_Size_Comp_True_Color.png" width="145" height="126" alt="Planets" loading="lazy" /&gt;</code>

<p>Ricapitolando quindi gli attributi del tag img, abbiamo:</p>
<ul>
    <li><code>src</code> per indicare l'URL dell'<strong>unica</strong> immagine da mostrare;</li>
    <li><code>width</code> per la larghezza dello spazio occupato in pagina;</li>
    <li><code>height</code> per l'altezza odello spazio occupato in pagina;</li>
    <li><code>srcset</code> per la lista di immagini da scegliere con relative larghezze;</li>
    <li><code>sizes</code> per la lista di associazioni tra risoluzione dei dispositivi e larghezza da occupare in pagina;</li>
    <li><code>loading</code> con valore "eager" per indicare che le immagini vanno lette immediatamente; con valore "lazy" per rimandare il caricamento a quando l'utente arriva a visualizzare il contenuto;</li>
    <li><code>usemap</code> per indicare l'id della mappa da sovrapporre all'immagine;</li>
</ul>