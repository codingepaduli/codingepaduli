---
type: "html"
title: "HTML Lez. 04 - Etichette con attributi"
description: "HTML Lez. 04 - Etichette con attributi"
date: 2019-07-25
publishdate: 2019-07-25
lastmod: 2019-07-25
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 04 - Etichette con attributi - Spiegazione dei tag che fanno uso di attributi"
---

# Etichette con attributi

I tag possono avere degli **attributi** che servono ad aggiungere
informazioni al tag. Alcuni attributi sono comuni a tutti i tag, ad
esempio gli attributi ``id`` (che identifica in maniera univoca il tag) e
``style`` (che indica lo stile grafico del tag), mentre altri attributi
sono specifici del singolo tag.

Gli attributi sono aggiunti solo nei simboli di apertura di un tag, non
nei simboli di chiusura, e hanno la forma **nome='valore'**. Il valore
deve essere sempre racchiuso da apici singoli o doppi.

Di seguito, elenchiamo altri tag dell'HTML che utilizzano gli attributi.

Il tag ``a`` serve a creare un collegamento (in inglese "link") verso un
ipertesto (un'altra pagina web). Questo tag ha gli attributi:

- ``href``, che permette di indicare l'indirizzo dell'ipertesto da
  raggiungere;
- ``target``, che permette di indicare come aprire l'ipertesto, e può
  assumere solo i seguenti valori: ``_blank``, per aprire l'ipertesto in
  una nuova pagina, e ``_self``, per aprire l'ipertesto nella stessa
  pagina.

Un esempio di collegamento è questo [collegamento alla home](/ "collegamento alla home"),
generato dal codice ``<a href="/" target="_blank">collegamento alla
home</a>`` in cui si evidenzia sia l'indirizzo dell'ipertesto "/", cioè
la home page, sia l'attributo ``target="_blank"``, cioè l'indicazione di
aprire la home page in una nuova scheda del browser.

Il tag ``ol`` genera una lista numerata di elementi, analogamente il tag
``ul`` genera una lista di elementi non ordinata. Entrambi i tag prevedono
che ogni elemento della lista deve essere contenuto nel tag ``li``.
Entrambi i tag di lista hanno l'attributo ``type`` (di recente sostituito
dalla proprietà CSS list-style-type) che può avere uno dei seguenti
valori:

- ``1`` elementi della lista elencati con numeri latini;
- ``A`` oppure ``a`` elementi della lista elencati con lettere alfabetiche
  maiuscole o minuscole;
- ``I`` oppure ``i`` elementi della lista elencati con numeri romani in
  maiuscolo o minuscolo;
- ``disc`` elementi della lista elencati con dei cerchietti pieni;
- ``square`` elementi della lista elencati con dei quadrati pieni;
- ``circle`` elementi della lista elencati con dei cerchietti vuoti;

Ad esempio, il seguente codice genera la lista numerata (con numeri
romani) di browser pessimi per la navigazione:

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

Altro esempio, il seguente codice genera la lista non ordinata di
browser ottimi per la navigazione:

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

Il tag ``table`` genera una tabella, e può contenere una descrizione del
contenuto generata dal tag ``caption``. Il tag di tabella deve contenere i
tag ``tr``, che generano le righe della tabella. Ogni tag ``tr`` deve
contenere all'interno delle celle che formano le colonne. Le celle
possono essere di intestazione, e sono generate dai tag ``th``, oppure di
dati, e sono generate dai tag ``td``.

I tag delle celle ``th`` e ``td`` hanno gli attributi:

- ``colspan``, che permette ad una cella di espandersi su più colonne;
- ``rowspan``, che permette ad una cella di espandersi su più righe.

Ad esempio, una tabella di 3 righe e 2 colonne viene generata dal
seguente codice:

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

Volendo riportare un esempio di codice che preveda l'espansione delle
celle su piu righe o colonne, possiamo creare una tabella di 3 righe e 2
colonne, in cui l'ultima riga si espande su entrambe le colonne, mentre
la prima cella in alto a sinistra occupa due righe:

```html
<table style="border: 5px solid green;">
  <caption>Tabella con stile</caption>
  <tr>
    <th rowspan="2">Cella espansa su 2 righe grazie all'attributo rowspan="2" </th>
    <td>34£</td>
  </tr>
  <tr>
    <!−− Cella mancante perchè occupata dalla cella che si è espansa −−>
    <td>$100</td>
  </tr>
  <tr>
    <th colspan="2">Cella espansa su 2 colonne, grazie all'attributo colspan="2"</th>
    <!−− Cella mancante perchè occupata dalla cella che si è espansa −−>
  </tr>
</table>
```

La lista viene visualizzata di seguito:

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
