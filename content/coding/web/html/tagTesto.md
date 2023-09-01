---
type: "html"
title: "HTML Lez. 03 - Etichette principali"
description: "HTML Lez. 03 - Etichette principali per titoli, formattazione carattere, liste, tabelle, collegamenti, immagini"
date: 2019-07-18
publishdate: 2019-07-18
lastmod: 2023-08-31
spellcheck: 2020-12-11
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 03 - Etichette principali per titoli, formattazione carattere, liste, tabelle, collegamenti, immagini"
weight: 9790
---

# Formattazione carattere, liste e tabelle

Tra le numerose etichette del linguaggio HTML, le più comuni sono quelle che descrivono titoli, formattazione carattere, liste, tabelle, collegamenti ed immagini.

## Titoli

Esistono 7 livelli di titoli, che servono a dividere il documento in più capitoli e sotto-capitoli. Per un uso efficace dei titoli si consiglia una suddivisione del documento fino al terzo o quarto livello. La creazione di titoli dal primo al settimo livello avviene con le  rispettive etichette ``h1``, ``h2``, ``h3``, ``h4``, ``h5``, ``h6`` ed ``h7``,

Un titolo di primo livello è generato dall'etichetta ``h1``, che ha il simbolo di apertura ``<h1>`` ed il simbolo di chiusura ``</h1>``.

Un titolo di secondo livello è generato dall'etichetta ``h2``, che ha il simbolo di apertura ``<h2>`` ed il simbolo di chiusura ``</h2>``.

In maniera similare, un titolo di terzo livello è generato dall'etichetta ``h3``, che ha il simbolo di apertura ``<h3>`` ed il simbolo di chiusura ``</h3>``, e così via per gli altri livelli.

Di seguito si riporta un esempio di codice per generare i titoli dei primi tre livelli:

```html
<h1> Esempio di titolo di primo livello </h1>
<h2> Esempio di titolo di secondo livello </h2>
<h3> Esempio di titolo di terzo livello </h3>
```

Questi titoli vengono poi visualizzati come di seguito:

![Esempio di titoli](/static/coding/web/html/tagTesto-title-examples.png)

## Formattazione carattere

Il paragrafo è generato dall'etichetta ``p`` che ha il simbolo di apertura ``<p>``
ed il simbolo di chiusura ``</p>``;

<!-- markdownlint-disable MD033 -->

L'etichetta ``del`` genera un testo cancellato come ad esempio questo testo
<del>cancellato</del> generato dal seguente codice:
``<del>cancellato</del>``;

L'etichetta ``ins`` genera un testo sottolineato come ad esempio questo testo
<ins>sottolineato</ins> generato dal seguente codice:
``<ins>sottolineato</ins>``;

L'etichetta ``sup`` genera un testo in apice come ad esempio questo testo
<sup>in apice</sup> generato dal seguente codice:
``<sup>in apice</sup>``;

L'etichetta ``sub`` genera un testo in pedice come ad esempio questo testo
<sub>in pedice</sub> generato dal seguente codice:
``<sub>in pedice</sub>``;

L'etichetta ``strong`` genera un testo in grassetto, come ad esempio questo
testo **in grassetto** generato dal seguente codice:
``<strong>in grassetto</strong>``;

L'etichetta ``em`` genera un testo in corsivo, come ad esempio questo testo *in corsivo* generato dal seguente codice:
``<em>in corsivo</em>``;

L'etichetta ``mark`` genera un testo evidenziato, come ad esempio questo testo
<mark>evidenziato</mark> generato dal seguente codice:
``<mark>evidenziato</mark>``;

L'etichetta ``abbr`` è usata per visualizzarne il significato di un acronimo
quando il mouse ci si ferma sopra. Questa etichetta ha l'attributo:

- ``title`` che indicare il testo da visualizzare quando il mouse si ferma sull'acronimo;

Un esempio di acronimo, generato dal codice ``<abbr title="HyperText Markup Language">HTML</abbr>``, è il seguente: <abbr title="HyperText Markup Language">HTML</abbr>.

L'etichetta ``hr`` genera una semplice linea orizzontale. Ad eccezione della regola generale, non prevede un etichetta di chiusura. E' sufficiente utilizzare ``<hr>``per generare una linea orizzontale come la seguente:

<hr>

Alcune etichette obsolete di formattazione del testo sono ancora utilizzate, andrebbero sostituite o da nuove etichette o dalle proprietà CSS:

- ``acronym``: obsoleta, visualizzava gli acronimi, è stata sostituita dall'etichetta ``abbr``;
- ``strike``: obsoleta, visualizzava un testo cancellato, è stata sostituita dall'etichetta ``del``;
- ``<center>`` obsoleta, visualizzava un testo centrato, è stata sostituita dalle proprietà CSS ``text-align: center;``;
- ``u``: obsoleta, visualizzava un testo sottolineato, è stata sostituita  dalla proprietà CSS ``text-decoration: underline;``;
- ``b`` obsoleta, visualizzava il carattere grassetto, è stata sostituita dalla proprietà CSS ``font-weight: bold;``;
- ``i`` obsoleta, visualizzava il carattere corsivo, è stata sostituita dalla proprietà CSS ``font-style: italic;``;
- ``big`` obsoleta, visualizzava il carattere con dimensione maggiore, è stata sostituita dalla proprietà CSS ``font-size: larger;``;
- ``small`` obsoleta, visualizzava il carattere con dimensione minore, è stata sostituita dalla proprietà CSS ``font-style: smaller;``;
- ``<font face="Arial" size="2" color="red">`` obsoleta, visualizzava carattere, dimensione e colore, è stata sostituita dalle proprietà CSS ``font-family: Arial;``, ``font-size: small;``, ``color: red;``;

## Combinazioni innestate per la formattazione

Le etichette possono essere inserite (innestate) l'una dentro
l'altra per creare le formattazioni di testo desiderate.

Ad esempio, per generare un testo grassetto, evidenziato e sottolineato, come
<strong><mark><ins>questo testo</ins></mark></strong> si usa il codice:

```html
<strong>
    <mark>
        <ins>questo testo</ins>
    </mark>
</strong>
```

Se si vuole che tutto il testo sia grassetto ed evidenziato, ma solo una parte del testo sia sottolineata, come
<strong><mark>questo <ins>testo</ins></mark></strong> si usa il codice:

```html
<strong>
    <mark>
      questo
      <ins>testo</ins>
    </mark>
</strong>
```

## Liste puntate o numerate

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

## Definizioni e liste di definizioni

Per indicare un termine del quale si vuole dare una definizione, si usa l'etichetta **dfn**, come nel seguente esempio:

```html
<dfn>WWW</dfn> sta per "World wide web.
```

Quando si vuole creare una lista di definizioni si usano le etichette ``dl``, ``dt`` e ``dd``, come nel seguente esempio:

```html
<dl>
    <dt>Firefox</dt>
    <dd>A free, open source, cross-platform, graphical web browser.</dd>
</dl>
```

La lista viene visualizzata di seguito:

<dl>
    <dt>Firefox</dt>
    <dd>A free, open source, cross-platform, graphical web browser.</dd>
</dl>

## Tabelle

L'etichetta ``table`` indica l'inizio e la fine di una tabella.

Una tabella può contenere le righe, racchiuse dall'etichetta ``tr`` (in inglese "table row"), ed, opzionalmente, una descrizione del contenuto, indicato nell'etichetta ``caption``.

Tutte le righe contengono delle celle. Se queste celle sono di intestazione (in inglese "table header") devono essere racchiuse dalle etichette ``th``, se invece contengono i dati devono essere racchiuse dalle etichette ``td`` (in inglese "table data").

Ad esempio, una tabella di 3 righe e 2 colonne viene generata dal seguente codice:

```html
<table>
    <caption>Tabella prodotti</caption>
    <tr>
        <th>Prodotto</th>
        <th>Costo</th>
    </tr>
    <tr>
        <td>Smartphone</td>
        <td>$100</td>
    </tr>
    <tr>
        <td>Auricolari</td>
        <td>$50</td>
    </tr>
</table>
```

La tabella viene visualizzata di seguito:

<table>
    <caption>Tabella prodotti</caption>
    <tr>
        <th>Prodotto</th>
        <th>Costo</th>
    </tr>
    <tr>
        <td>Smartphone</td>
        <td>$100</td>
    </tr>
    <tr>
        <td>Auricolari</td>
        <td>$50</td>
    </tr>
</table>

Come si può notare, le celle di intestazione ("prodotto" e "costo") sono i grassetto e centrate, a differenza delle celle che contengono i dati. Inoltre manca uno stile grafico, in particolare i bordi che delimitano le celle.

I bordi si possono applicare alla tabella inserendoli sulle etichette delle righe e delle colonne, inserendo in ciascuna etichette l'attributo ``style="border: 5px solid green;"``.

Un esempio di tabella con i bordi è il seguente:

```html
<table>
    <caption>Tabella prodotti</caption>
    <tr style="border: 5px solid green;">
        <th style="border: 5px solid green;">Prodotto</th>
        <th>Costo</th>
    </tr>
    <tr style="border: 5px solid green;">
        <td style="border: 5px solid green;">Smartphone</td>
        <td>$100</td>
    </tr>
    <tr style="border: 5px solid green;">
        <td style="border: 5px solid green;">Auricolari</td>
        <td>$50</td>
    </tr>
</table>
```

I bordi della tabella sono visualizzati di seguito:

<table>
    <caption>Tabella prodotti</caption>
    <tr style="border: 5px solid green;">
        <th style="border: 5px solid green;">Prodotto</th>
        <th>Costo</th>
    </tr>
    <tr style="border: 5px solid green;">
        <td style="border: 5px solid green;">Smartphone</td>
        <td>$100</td>
    </tr>
    <tr style="border: 5px solid green;">
        <td style="border: 5px solid green;">Auricolari</td>
        <td>$50</td>
    </tr>
</table>

Una tabella può avere dati che si espandono su più righe o colonne. Per realizzare ciò, le etichette delle celle ``th`` e ``td`` hanno gli attributi:

- ``colspan`` permette ad una cella di espandersi su più colonne;
- ``rowspan`` permette ad una cella di espandersi su più righe.

Volendo riportare un esempio di codice che preveda l'espansione delle celle su più righe o colonne, possiamo creare una tabella di 3 righe e 2 colonne, in cui l'ultima riga si espande su entrambe le colonne, mentre la prima cella in alto a sinistra occupa due righe:

```html
<table>
    <caption>Tabella con stile</caption>
    <tr style="border: 5px solid green;">
        <th rowspan="2">Cella espansa su 2 righe grazie all'attributo rowspan="2" </th>
        <td>34£</td>
    </tr>
    <tr style="border: 5px solid green;">
        <!−− Cella mancante perché occupata dalla cella che si è espansa −−>
        <td>$100</td>
    </tr>
    <tr style="border: 5px solid green;">
        <th colspan="2">Cella espansa su 2 colonne, grazie all'attributo colspan="2"</th>
        <!−− Cella mancante perché occupata dalla cella che si è espansa −−>
    </tr>
</table>
```

La tabella viene visualizzata di seguito:

<table>
    <caption>Tabella con stile</caption>
    <tr style="border: 5px solid green;">
        <th rowspan="2" style="border: 5px solid green;">
            Cella espansa su 2 righe grazie all'attributo <code>rowspan="2"</code>
        </th>
        <td>34£</td>
    </tr>
    <tr style="border: 5px solid green;">
        <!-- Cella mancante perché occupata dalla cella che si è espansa -->
        <td>$100</td>
    </tr>
    <tr style="border: 5px solid green;">
        <th colspan="2">Cella espansa su 2 colonne, grazie all'attributo <code>colspan="2"</code> </th>
        <!-- Cella mancante perché occupata dalla cella che si è espansa -->
    </tr>
</table>

<!-- markdownlint-enable MD033 -->

## Collegamenti

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

## Immagini (gestione basilare)

Per mostrare un'immagine nella pagina web si utilizza l'etichetta ``img`` che prevede i seguenti attributi:

- ``src`` indica l'URL dell'immagine;
- ``width`` indica la larghezza dell'immagine;
- ``height`` indica l'altezza dell'immagine;
- ``alt`` indica il testo alternativo da utilizzare nel caso non sia possibile individuare o caricare l'immagine;

Il codice di esempio è il seguente:

```html
<img src="/static/immagine.png" width="145" height="126" alt="Immagine" />
```

Il risultato è il seguente:

![Immagine](/static/coding/web/html/program_CC0.png "immagine")

[Immagine](https://svgsilh.com/3f51b5/image/1970468.html "logo") rilasciata con
Licenza
[CC0 1.0](https://creativecommons.org/licenses/cc0/1.0/?ref=ccsearch&atype=html "Logo licenza CC0")

Il caricamento di un'immagine dal server e la visualizzazione nella pagina web è un'operazione molto onerosa, dato che un'immagine, soprattutto se di grandi dimensioni ed in alta risoluzione, può avere una dimensione di centinaia di kilobytes, se non addirittura migliaia.

Se si considera che in una pagina web ci possono essere decine di immagini, caricarle tutte dal server può rallentare di molto la visualizzazione completa della pagina web.

Non tutte le immagini sono visibili immediatamente all'utente, alcune immagini nel mezzo o nel fondo del documento sono visibili solo quando l'utente scorre la pagina, altre sono visibili solo quando l'utente clicca in qualche area, come i menù a tendina o laterali. Rimandare il caricamento di queste immagini in un secondo momento permette di ridurre i tempi iniziali di visualizzazione della pagina web.

Per ogni immagine si può indicare la tecnica di caricamento da utilizzare:

- **eager**, cioè immediatamente;
- **lazy loading** (caricamento "pigro"), cioè solo quando l'immagine viene visualizzata sullo schermo;

Per indicare la tecnica di caricamento di un'immagine si utilizza l'attributo `loading` che puó assumere il valore ``eager`` o ``lazy``, come nell'esempio seguente:

```html
<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Terrestrial_Planets_Size_Comp_True_Color.png/320px-Terrestrial_Planets_Size_Comp_True_Color.png"
    width="145" height="126" alt="Planets" loading="lazy" />`
```

La visualizzazione delle immagini è molto più complicata di quanto illustrato, dato che è necessario adattare le immagini ai dispositivi sui quali visualizzarle e bilanciare la qualità delle immagini con la velocità di collegamento. Questi dettagli saranno approfonditi successivamente.
