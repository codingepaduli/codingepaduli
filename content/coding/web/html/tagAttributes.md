---
type: "html"
title: "HTML Lez. 04 - Etichette con attributi"
description: "HTML Lez. 04 - Etichette con attributi"
date: 2019-07-25
publishdate: 2019-07-25
lastmod: 2019-07-25
spellcheck: 2020-12-11
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 04 - Etichette che richiedono l'uso di attributi"
---

# Etichette con attributi

Le etichette possono avere una lista di **attributi** che forniscono informazioni aggiuntive all'etichetta.

Gli attributi devono essere aggiunti esclusivamente nelle etichette di apertura, non nelle etichette di chiusura, e devono essere separati l'uno dall'altro da uno spazio.

Ogni attributo è una coppia **nome='valore'**. La regola di scrittura indica il nome dell'attributo seguito da un carattere ``=`` e poi dal valore, che deve essere sempre racchiuso da apici singoli o doppi.

Riepilogando, la sintassi delle etichette con attributi è la seguente:

```html
<etichetta nome1="valore1" nome2="valore2" ... >
    contenuti etichetta
</etichetta>
```

Alcuni attributi sono comuni a tutte le etichette:

- l'attributo ``id`` identifica in maniera univoca l'etichetta, è anche utilizzato per collegamenti che fanno riferimento ad un preciso punto della pagina;
- l'attributo ``class`` serve ad indicare i gruppi di cui le etichette fanno parte. Un'etichetta può appartenere a più insiemi;
- l'attributo ``style`` indica lo stile grafico da applicare per l'etichetta, è rappresentato da un valore scritto in linguaggio CSS;

Un esempio di questi attributi è il seguente:

```html
<p id="paragrafo1" class="insieme1">paragrafo 1</p>
<p id="paragrafo2" class="insieme1">paragrafo 2</p>
<p id="paragrafo3" class="insieme1 citazione">paragrafo 3</p>
<p id="paragrafo4" class="citazione">paragrafo 4</p>
```

Dall'esempio si nota che ogni paragrafo ha un suo identificativo e che i primi tre paragrafi fanno parte dello stesso insieme (chiamato "
``insieme1``), dato che il valore dell'attributo ``class`` è presente in tutte e tre le etichette; Poi si nota che il terzo e il quarto paragrafo fanno parte di un secondo insieme (chiamato ``citazione``) e che solo la terza etichetta fa parte di entrambi gli insiemi. Per un approfondimento, si rimanda alle specifiche sui selettori CSS.

Non tutti gli attributi sono comuni a tutte le etichette, vi sono attributi specifici per una singola etichetta, per cui è possibile associarli solo ed esclusivamente a questa etichetta.

## Etichetta ``html`` e l'attributo ``lang``

L'etichetta ``html`` prevede l'attributo ``lang``, che serve ad indicare il "Codice di lingua IETF" della pagina web.

Il "Codice di lingua IETF" identifica come viene scritta e parlata la lingua in una determinata regione di uno stato. Ad esempio, la pagina web può essere scritta in "francese-belga", una varietà del francese parlato dai francofoni del Belgio, con differenze fonetiche. Oppure, può essere scritta in bielorusso con alfabeto cirillico, o ancora bielorusso con alfabeto latino. O anche, russo, scritto in alfabeto cirillico e parlato in Bielorussia. Il codice IETF è composto principalmente da tre parti, la prima obbligatoria, le rimanenti facoltative:

1. il codice del linguaggio, espresso secondo lo standard [ISO 639-1](https://it.wikipedia.org/wiki/ISO_639-1 "Link a Wikipedia per lo standard ISO 639-1");
2. il codice del nome della scrittura, espresso secondo lo standard [ISO 15924](https://en.wikipedia.org/wiki/ISO_15924 "Link a Wikipedia per lo standard ISO 15924");
3. il codice del paese, espresso secondo lo standard [ISO 3166](https://it.wikipedia.org/wiki/ISO_3166 "Link a Wikipedia per lo standard ISO 3166").

L'indicazione della lingua corretta aiuta gli strumenti di traduzione e quelli di lettura ad alta voce del testo nella corretta interpretazione del testo.

Le pagine web in italiano, non avendo particolari complicazioni di linguaggio, devono avere l'etichetta di apertura ``<html lang="it">``.

Possono esservi casi in cui un particolare contenuto è scritto in un linguaggio differente rispetto al resto della pagina web. In questi casi, l'attributo ``lang`` può essere usato per indicare il linguaggio utilizzato per lo specifico contenuto.

Di seguito visualizziamo un esempio in cui la pagina web è in italiano, ma un paragrafo è in spagnolo:

```html
<html lang="it">
    <head>…</head>
    <body>
        <p>Informazioni in italiano</p>
        <p lang="es">Información para hispanohablantes</p>
    </body>
</html>
```

Nell'esempio appena visto, l'indicazione aggiuntiva del paragrafo con lingua differente aiuta enormemente sia gli strumenti di traduzione, sia gli strumenti di lettura ad alta voce a leggere e tradurre correttamente il testo spagnolo.

## Etichetta di collegamento con attributi ``href`` e ``target``

L'etichetta ``a`` serve a creare un collegamento (in inglese "link") verso un
ipertesto (un'altra pagina web). Questa etichetta ha gli attributi:

- ``href``, che permette di indicare l'indirizzo dell'ipertesto da raggiungere;
- ``target``, che permette di indicare come aprire l'ipertesto, e può assumere solo i seguenti valori:
    1. ``_blank`` indica al browser di aprire l'ipertesto in una nuova scheda o finestra;
    2. ``_self`` indica al browser di aprire l'ipertesto nella stessa scheda o finestra.

Un esempio di collegamento è il seguente:

```html
<a href="www.google.it" target="_blank">collegamento a Google</a>
```

Da questo esempio, si evidenziano sia l'indirizzo web di "Google", che è un indirizzo **assoluto**, sia l'attributo ``target="_blank"`` che indica di aprire il sito web in una nuova scheda.

Un secondo esempio di collegamento è il seguente:

```html
<a href="pagina1.html" target="_self">collegamento a Google</a>
```

Da questo secondo esempio, si evidenzia sia l'attributo ``target="_self"`` che indica di aprire il sito web nella stessa scheda, sia l'indirizzo della pagina web ``pagina1.html``, che in questo caso è un indirizzo **relativo** al sito web sul quale sta navigando l'utente;

L'etichetta ``a`` può essere utilizzata per creare collegamenti ad un punto preciso del documento, inserendo nell'attributo ``href`` **l'identificativo** dello specifico punto preceduto dal carattere ``#``;

Ad esempio, supponiamo che nella parte finale del documento sia stato creato il sotto-capitolo con l'identificativo ``idTabella``, come nel codice seguente:

```html
<h2 id="idTabella">Sotto-capitolo sulle tabelle</h2>
```

Per creare, in cima al documento, un collegamento al sotto-capitolo che si trova in fondo alla pagina, l'indirizzo di collegamento deve iniziare con il carattere ``#`` seguito dall'identificativo di cui sopra, come nel codice seguente:

```html
<a href="#idTabella">Link al Sotto-capitolo sulle tabelle</a>
```

Questo tipo di collegamento non è limitato allo stesso documento, per cui è possibile anche creare un collegamento ad un punto preciso di una qualsiasi pagina web presente online, a patto che in questa pagina web siano presenti dei punti con un identificativo al quale collegarsi.

Ad esempio, per effettuare un collegamento al sotto-capitolo "Struttura di un documento HTML" della pagina web "HTML" ospitata su Wikipedia, supponendo che il sotto-capitolo sia identificato dalla voce univoca ``Struttura_di_un_documento_HTML``, allora per creare il collegamento si utilizza il codice seguente:

```html
<a href="https://it.wikipedia.org/wiki/HTML#Struttura_di_un_documento_HTML">
    Link al Sotto-capitolo "Struttura di un documento HTML"
</a>
```

Sempre trattando i collegamenti, state previste tipologie di indirizzi speciali per email e numeri di telefono che vengono gestite tramite collegamenti. Quando l'utente clicca su un collegamento con un indirizzo "speciale", il browser delega ad un'applicazione esterna il compito di inviare una email, di effettuare una chiamata telefonica e di inviare SMS verso il numero di telefono indicato.

In particolare, gli indirizzi speciali hanno un prefisso ben definito:

- ``mailto:`` è il prefisso che indica un indirizzo speciale per l'invio di una mail;
- ``tel:`` è il prefisso che indica un indirizzo speciale per effettuare una chiamata telefonica;
- ``sms`` è il prefisso che indica un indirizzo speciale per inviare un SMS.

Di seguito si riporta un esempio d'uso dei collegamenti verso queste tipologie di indirizzi:

```html
<a href="mailto:bianchi@email.com,rossi@email.com?cc=paolo@email.com&subject=Oggetto">
    Scrivi una mail
</a>
<a href="tel:+390001234567">Chiama</a>
<a href="sms:+390001234567">Invia un SMS</a>
```

## Etichette di lista con attributo ``type``

L'etichetta ``ol`` genera una lista numerata di elementi, analogamente l'etichetta ``ul`` genera una lista di elementi non ordinata. Gli elementi della lista devono essere contenuti nell'etichetta ``li``.

Ad esempio, il seguente codice genera la lista numerata (con numeri romani) di browser pessimi per la navigazione:

```html
<ol>
    <li>Internet Explorer</li>
    <li>Safari</li>
</ol>
```

Entrambe le liste prevedono lo stile di numerazione, descritto dall'attributo ``type`` (di recente sostituito dalla proprietà CSS ``list-style-type``) che può avere uno dei seguenti valori:

- ``1`` elementi della lista elencati con numeri latini;
- ``A`` oppure ``a`` elementi della lista elencati con lettere alfabetiche maiuscole o minuscole;
- ``I`` oppure ``i`` elementi della lista elencati con numeri romani in maiuscolo o minuscolo;
- ``disc`` elementi della lista elencati con dei cerchietti pieni;
- ``square`` elementi della lista elencati con dei quadrati pieni;
- ``circle`` elementi della lista elencati con dei cerchietti vuoti;

Ad esempio, il seguente codice genera la lista numerata (con numeri romani) di browser pessimi per la navigazione:

```html
<ol type="I">
    <li>Internet Explorer</li>
    <li>Safari</li>
</ol>
```

La lista viene visualizzata di seguito:

<ol type="I">
    <li>Internet Explorer</li>
    <li>Safari</li>
</ol>

Altro esempio, il seguente codice genera la lista non ordinata di browser ottimi per la navigazione:

```html
<ul type="disc">
    <li>Firefox</li>
    <li>Chrome</li>
    <li>Edge (Microsoft)</li>
</ul>
```

La lista viene visualizzata di seguito:

<ul type="disc">
    <li>Firefox</li>
    <li>Chrome</li>
    <li>Edge (Microsoft)</li>
</ul>

## Etichetta di lista di definizione

Per creare una lista di definizione si usano le etichette ``dl``, ``dt`` e ``dd``, come nel seguente esempio:

```html
<dl>
    <dt>Firefox</dt>
    <dd>A free, open source, cross-platform, graphical web browser.</dd>
</dl>
```

## Etichette di tabella con attributi ``colspan`` e ``rowspan``

L'etichetta ``table`` indica l'inizio e la fine di una tabella.

Una tabella può contenere le righe, racchiuse dall'etichetta ``tr`` (in inglese "table row"), ed, opzionalmente, una descrizione del contenuto, indicato nell'etichetta ``caption``.

Tutte le righe contengono delle celle. Le celle delle prime righe e/o colonne di una tabella possono essere di intestazione (in inglese "table header"), e quindi devono essere racchiuse dalle etichette ``th``, mentre le celle successive contengono i dati, e quindi devono essere racchiusi dalle etichette ``td`` (in inglese "table data").

Le etichette delle celle ``th`` e ``td`` hanno gli attributi:

- ``colspan`` permette ad una cella di espandersi su più colonne;
- ``rowspan`` permette ad una cella di espandersi su più righe.

Ad esempio, una tabella di 3 righe e 2 colonne viene generata dal seguente codice:

```html
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
```

La tabella viene visualizzata di seguito:

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

Volendo riportare un esempio di codice che preveda l'espansione delle celle su più righe o colonne, possiamo creare una tabella di 3 righe e 2 colonne, in cui l'ultima riga si espande su entrambe le colonne, mentre la prima cella in alto a sinistra occupa due righe:

```html
<table style="border: 5px solid green;">
    <caption>Tabella con stile</caption>
    <tr>
        <th rowspan="2">Cella espansa su 2 righe grazie all'attributo rowspan="2" </th>
        <td>34£</td>
    </tr>
    <tr>
        <!−− Cella mancante perché occupata dalla cella che si è espansa −−>
        <td>$100</td>
    </tr>
    <tr>
        <th colspan="2">Cella espansa su 2 colonne, grazie all'attributo colspan="2"</th>
        <!−− Cella mancante perché occupata dalla cella che si è espansa −−>
    </tr>
</table>
```

La tabella viene visualizzata di seguito:

<table style="border: 5px solid green;">
    <caption>Tabella con stile</caption>
    <tr>
        <th rowspan="2">Cella espansa su 2 righe grazie all'attributo <code>rowspan="2"</code></th>
        <td>34£</td>
    </tr>
    <tr>
        <!-- Cella mancante perché occupata dalla cella che si è espansa -->
        <td>$100</td>
    </tr>
    <tr>
        <th colspan="2">Cella espansa su 2 colonne, grazie all'attributo <code>colspan="2"</code> </th>
        <!-- Cella mancante perché occupata dalla cella che si è espansa -->
    </tr>
</table>
