---
type: "css"
title: "I selettori CSS "
description: "I selettori CSS"
date: 2024-01-18
publishdate: 2024-01-18
lastmod: 2024-01-18
categories: ["coding", "web", "CSS"]
keywords: ["coding", "web", "CSS"]
draft: false
toc: false
summary: "I selettori CSS"
---

# I selettori CSS

I selettori CSS servono a selezionare le etichette della pagina web alle quali vanno applicate le proprietà grafiche (descritte nel precedente capitolo).

Il **selettore universale** ``*`` permette di selezionare tutte le etichette della pagina web. Ad esempio, per applicare il colore blu a tutte le etichette si può usare la seguente regola CSS:

```css
* {
  color: #0000FF;
}
```

Le etichette sono tipicamente composte dal nome e da una lista di attributi. Tra questi attributi ce ne sono due che ci permettono di identificare in maniera più specifica le etichette:

- ``id``: l'identificativo univoco;
- ``class``: l'insieme a cui appartiene

Ad esempio, tre paragrafi ed un collegamento, ognuno con un proprio identificativo, due paragrafi appartenenti allo stesso insieme ``insieme1``, un terzo paragrafo ed il collegamento appartenenti ad un insieme differente ``insieme3``, sono realizzati dal seguente codice HTML:

```html
<p id="paragrafo1" class="insieme1">Questo il primo paragrafo.</p>
<p id="paragrafo2" class="insieme1">Questo il secondo paragrafo.</p>
<p id="paragrafo2" class="insieme3">Questo il terzo paragrafo.</p>
<a id="link" class="insieme3" href="www.google.it">collegamento</a>
```

Questo esempio di codice HTML sarà utilizzato nel corso di questi paragrafi successivi per mostrare quali elementi saranno selezionati con i selettori CSS descritti, per cui si consiglia di annotarlo o di aggiungere un segnalibro.

Il **selettore per etichetta** permette di selezionare tutte le etichette con lo stesso nome. Ad esempio, per selezionare tutte le etichette di paragrafo viste nell'esempio HTML precedente si può utilizzare il seguente codice CSS:

```css
p {
  color: #0000FF;
}
```

Il **selettore per classe** permette di selezionare tutte le etichette che appartengono allo stesso insieme. La sintassi di questo selettore prevede il carattere "punto" ``.`` seguito dal nome dell'insieme. Ad esempio, considerato l'esempio HTML precedente, per selezionare l'etichetta di paragrafo e l'etichetta di collegamento appartenenti all'insieme ``insieme3`` si può utilizzare il seguente codice CSS:

```css
.insieme1 {
  color: #0000FF;
}
```

Il **selettore per identificativo** permette di selezionare la singola etichetta individuata da un certo identificativo. La sintassi di questo selettore prevede il carattere "cancelletto" ``#`` seguito dall'identificativo. Ad esempio, considerato l'esempio HTML precedente, per selezionare il paragrafo individuato dall'identificativo ``paragrafo1`` si può utilizzare il seguente codice CSS:

```css
#paragrafo1 {
  color: #0000FF;
}
```

Il **selettore per attributo** permette di selezionare le etichette che possiedono l'attributo indicato. Dato che gli attributi hanno **una chiave associata ad un valore**, è possibile specificare le etichette che possiedono l'attributo con il valore indicato. La sintassi di questo selettore prevede le seguenti opzioni:

- la sintassi ``[attributo]``, ovvero composta dalle "parentesi quadre" contenenti il nome dell'attributo, permette di selezionare le etichette che possiedono l'attributo indicato;
- la sintassi ``[attributo='valore']``, ovvero composta dalle "parentesi quadre" contenenti l'associazione "attributo=valore", permette di selezionare le etichette che possiedono l'attributo con valore specificato;
- la sintassi ``[attributo^='valore']``, ovvero composta dalle "parentesi quadre" contenenti il nome dell'attributo associato al valore attraverso i caratteri ``^=``, permette di selezionare le etichette che possiedono l'attributo che **inizia** con il valore specificato;
- la sintassi ``[attributo$='valore']``, ovvero composta dalle "parentesi quadre" contenenti il nome dell'attributo associato al valore attraverso i caratteri ``$=``, permette di selezionare le etichette che possiedono l'attributo che **finisce** con il valore specificato;
- la sintassi ``[attributo*='valore']``, ovvero composta dalle "parentesi quadre" contenenti il nome dell'attributo associato al valore attraverso i caratteri ``*=``, permette di selezionare le etichette che possiedono l'attributo che **contiene** il valore specificato;

Ad esempio, considerato l'esempio HTML visto in precedenza:

- per selezionare il collegamento che ha l'attributo ``href``, si può utilizzare il seguente codice CSS:

```css
a[href] {
  color: #0000FF;
}
```

- per selezionare il collegamento che ha l'attributo ``href`` con valore ``www.google.it``, si può utilizzare il seguente codice CSS:

```css
a[href='www.google.it'] {
  color: #0000FF;
}
```

- per selezionare il collegamento che ha l'attributo ``href`` con valore che inizia con``www.go``, si può utilizzare il seguente codice CSS:

```css
a[href^='www.go'] {
  color: #0000FF;
}
```

- per selezionare il collegamento che ha l'attributo ``href`` con valore che finisce con``.it``, si può utilizzare il seguente codice CSS:

```css
a[href$='.it'] {
  color: #0000FF;
}
```

È possibile combinare i selettori per nome, per classe, per identificativo e per attributo in un'unica espressione, la cui sintassi è ``nome[val=attr]#identificativo.classe``. Le quattro componenti non sono obbligatorie, quindi possono essere omesse.

Omettendo l'identificativo e l'attributo, la sintassi diventa ``nome.classe``. Questa espressione permette di selezionare tutte le etichette con il nome indicato ed appartenenti ad un certo insieme. Ad esempio, per identificare tutti i collegamenti appartenenti all'insieme ``film`` si utilizza il selettore seguente:

```css
a.film {
  color: #0000FF;
}
```

Omettendo la classe e l'attributo, la sintassi diventa ``nome#identificativo``. Dato che la regola HTML prevede che l'identificativo sia univoco, questa espressione è identica all'espressione ``#identificativo`` e quindi permette di selezionare la singola etichetta con (il nome e) l'identificativo indicato. Ad esempio, per identificare il paragrafo con identificativo ``paragrafo1`` si utilizza il selettore seguente:

```css
p#paragrafo1 {
  color: #0000FF;
}
```

Omettendo il nome dell'etichetta e l'attributo, la sintassi diventa ``#identificativo.classe``. Dato che la regola HTML prevede che l'identificativo sia univoco, questa espressione è identica all'espressione ``#identificativo`` e quindi permette di selezionare la singola etichetta con (l'insieme e) l'identificativo indicato. Ad esempio, per identificare l'etichetta appartenente all'insieme ``insieme3`` e con identificativo ``paragrafo1`` si utilizza il selettore seguente:

```css
#paragrafo1.insieme3 {
  color: #0000FF;
}
```

Omettendo l'attributo, allora l'espressione ``nome#identificativo.classe`` è identica all'espressione ``#identificativo`` e quindi permette di selezionare la singola etichetta con (l'insieme, il nome e) l'identificativo indicato. Ad esempio, per identificare l'etichetta appartenente all'insieme ``insieme3`` e con identificativo ``paragrafo1`` si utilizza il selettore seguente:

```css
p#paragrafo1.insieme3 {
  color: #0000FF;
}
```

## Selettori gerarchici

La pagina web è interpretabile come un modello ad albero, detto **modello DOM**, in cui le etichette contengono al loro interno altre etichette. Il modello ad albero è una relazione gerarchica. I ruoli delle etichette nel modello DOM sono i seguenti:

- L'etichetta ``html`` è detta **radice**, poiché contiene tutte le altre etichette e non esiste un etichetta che la contiene;
- Le etichette che non contengono altre etichette sono dette **foglie**;
- Le etichette che contengono altre etichette, ad eccezione della radice, sono dette **nodi**;
- Un'etichetta che contiene direttamente un'altra etichetta è detta **padre** (o genitore), mentre l'etichetta contenuta è detta **figlia**;
- Le etichette adiacenti, cioè che sono direttamente contenute dalla stessa etichetta sono dette etichette **sorelle** (si trovano sullo stesso livello dell'albero DOM);

Consideriamo ad esempio la pagina HTML seguente:

```html
<!doctype html>
<html lang="it">
  <body>
    <!-- contenuti della pagina html -->
    <h1>Titolo pagina web</h1>
    <p>paragrafo della pagina web.</p>
  </body>
</html>
```

In questa pagina web, la **radice** è l'etichetta ``html`` ed è anche **padre** dell'etichetta ``body``.
L'etichetta **body** è figlia dell'etichetta radice ``html`` ed è padre delle etichette ``h1`` e ``p``, perché le contiene.
Le **foglie** sono le etichette ``h1`` e ``p``, perché non contengono altre etichette. Queste due etichette sono anche **sorelle**, perché si trovano nello stesso livello.
Potremmo dire anche che l'etichetta ``html`` e l'etichetta ``h1`` sono parenti, perché la prima contiene la seconda, non direttamente ma nei livelli successivi.

Una rappresentazione ad albero, nella quale sono chiari i livelli, è la seguente:

```plaintext
html
└── body
    ├── h1
    └── p
```

In questa rappresentazione gerarchica, è possibile utilizzare i selettori gerarchici per selezionare le etichette in base alle relazioni che intercorrono.

I **selettori CSS gerarchici** permettono di selezionare gli elementi a partire dalla relazione gerarchica evidenziata nel modello DOM.

Il selettore gerarchico ``A > B`` è utilizzato per selezionare le etichette B che sono **figlie** di (quindi è contenuta direttamente in) un etichetta A.

Il selettore gerarchico ``A B`` è utilizzato per selezionare le etichette B che sono contenute indirettamente (quindi in qualsiasi livello, anche in relazione padre-figlio) in un etichetta A.

Il selettore gerarchico ``A:has(B)`` è utilizzato per selezionare le etichette A che hanno come figlio almeno un'etichetta B.

Il selettore gerarchico ``A ~ B`` è utilizzato per selezionare le etichette B che sono **sorelle dell'etichetta A** e che **in pagina si trovano scritte prima dell'etichetta A**;

Il selettore gerarchico ``A + B`` (etichette B dopo l'etichetta A) è utilizzato per selezionare le etichette B che sono **sorelle dell'etichetta A** e che **in pagina si trovano scritte dopo l'etichetta A**;

## Selettori posizionali

I **selettori posizionali** permettono di selezionare gli elementi in base alla posizione. Sono utilizzati in genere con le liste, le tabelle per selezionare il primo elemento, l'ultimo, gli elementi pari o dispari, l'elemento che si trova in una determinata posizione "N" o tutti gli elementi prima o dopo la posizione "N", nulla vieta di utilizzare questi selettori ad una sezione della pagina o all'intera pagina.

Il selettore posizionale ``:first-child`` permette di selezionare il primo elemento. Ad esempio, per selezionare il primo elemento di una lista indicata dall'identificativo ``lista`` si utilizza il selettore seguente:

```css
#lista li:first-child {
  color: #0000FF;
}
```

Il selettore posizionale ``:last-child`` permette di selezionare l'ultimo elemento. Ad esempio, per selezionare l'ultimo elemento di una lista indicata dall'identificativo ``lista`` si utilizza il selettore seguente:

```css
#lista li:last-child {
  color: #0000FF;
}
```

Il selettore posizionale ``:only-child`` permette di selezionare le etichette che sono "figlia unica", ovvero non hanno sorelle. Ad esempio, per selezionare le liste che hanno un solo elemento si utilizza il selettore seguente:

```css
ul:only-child {
  color: #0000FF;
}
```

Il selettore posizionale ``nth-child(Xn+Y)`` permette di selezionare le etichette che si trovano in posizione indicata dalla formula racchiusa tra parentesi, in cui ``X`` è il passo e ``Y`` lo spiazzamento. Ad esempio, ``li:nth-child(3n+1)`` seleziona le etichette partendo dalla prima (lo spiazzamento ``Y`` ha valore ``1``) e che si susseguono di tre in tre (il passo ``X`` ha valore ``3``), quindi la prima, la quarta, la settima, la decima e cosi via.... Questo selettore ha molte casistiche, ad esempio:

- per selezionare gli elementi pari si può utilizzare ``nth-child(2n)`` oppure la costante ``nth-child(even)``;
- per selezionare gli elementi pari si può utilizzare ``nth-child(2n+1)`` oppure la costante ``nth-child(odd)``;
- per selezionare uno specifico elemento, ad esempio in posizione ``5``, si può utilizzare ``nth-child(5)``;
- per selezionare tutti gli elementi in posizione maggiore o uguale ad ``n``, ad esempio ``6``, si può utilizzare ``nth-child(n+6)``;
- per selezionare tutti gli elementi in posizione minore o uguale ad ``n``, ad esempio ``6``, si può utilizzare un passo negativo ``X=-1``, quindi il selettore risultante è ``nth-child(-1n+6)``;

Facciamo un esempio di tre liste. Nella prima lista applichiamo il colore blu agli elementi in posizione minore di tre e agli elementi in posizione maggiore di sei, poi al primo e all'ultimo elemento sovrascriviamo il colore applicando il verde ed infine all'elemento in posizione cinque elemento applichiamo un testo più grande. Nella seconda lista applichiamo il colore blu agli elementi pari ed il verde sottolineato agli elementi in posizione dispari. Nell'ultima lista applichiamo evidenziamo e sottolineiamo l'unico elemento presente. Lo stile risultante è il seguente:

```html
<style>
#list1 li:nth-child(-1n+3), #list1 li:nth-child(1n+6) {
  color: blue;
}
#list1 li:first-child, #list1 li:last-child {
  color: green;
}
#list1 li:nth-child(5) {
  font-size: larger;
  font-weight: bold;
}
#list2 li:nth-child(2n) { /* even (pari) */
  color: blue;
}
#list2 li:nth-child(odd) { /* odd (dispari) */
  color: green;
  text-decoration: underline;
}
#list3 li:only-child {
  text-decoration: underline;
  background-color:yellow;
  padding:0.1em 0.2em;
}
</style>
```
<!-- markdownlint-disable MD033 -->

<table>
  <tr>
    <td>
      <ul id="list1">
        <li>11</li>
        <li>12</li>
        <li>13</li>
        <li>14</li>
        <li>15</li>
        <li>16</li>
        <li>17</li>
        <li>18</li>
        <li>19</li>
      </ul>
    </td>
    <td>
      <ul id="list2">
        <li>21</li>
        <li>22</li>
        <li>23</li>
        <li>24</li>
        <li>25</li>
        <li>26</li>
      </ul>
    </td>
    <td>
      <ul id="list3">
        <li>35</li>
      </ul>
    </td>
  </tr>
</table>

<style>
  #list1 li:nth-child(-1n+3), #list1 li:nth-child(1n+6) {
    color: blue;
  }
  #list1 li:first-child, #list1 li:last-child {
    color: green;
  }
  #list1 li:nth-child(5) {
    font-size: larger;
    font-weight: bold;
  }
  #list2 li:nth-child(2n) { /* even (pari) */
    color: blue;
  }
  #list2 li:nth-child(odd) { /* odd (dispari) */
    color: green;
    text-decoration: underline;
  }
  #list3 li:only-child {
    text-decoration: underline;
    background-color:yellow;
    padding:0.1em 0.2em;
  }
</style>

<!-- markdownlint-enable MD033 -->

## Selettori per pseudo-elementi

I **selettori CSS per pseudo-elementi** permettono di selezionare gli elementi che sono accomunati in una certa categoria, ad esempio tutti i titoli, tutti i campi di input o tutte le checkbox selezionate.

Una lista che elenca i principali pseudo-elementi con relativa descrizione è la seguente:

- ``:button``: Seleziona tutti i pulsanti (le etichette ``button`` e le etichette ``input`` con attributo ``type="submit"``, ``type="reset"`` e ``type="button"``)
- ``:input``: Seleziona tutti i campi dei form (le etichette ``input``, ``select``, ``textarea``, ``button``).
- ``:checked``: Seleziona tutte le checkbox or i radio selezionati;
- ``:disabled``: Seleziona tutti i campi dei form che sono disabilitati;
- ``:enabled``: Seleziona tutti i campi dei form che sono abilitati;
- ``:visible``: Seleziona gli elementi visibili;
- ``hidden``: Seleziona gli elementi nascosti;
- ``:header``: Seleziona gli elementi che sono titoli (le etichette da ``h1`` ad ``h6``);

<!-- 
:contains(foo) 	Seleziona solo gli elementi containing the text foo.
:not(filter) 	Negates the specified filter.
-->

lista completa di colori la si trova sulla pagina web di [Wikipedia - List of colors](https://en.wikipedia.org/wiki/List_of_colors_(alphabetical))

![Modello "box"](/static/coding/web/css/intro-modelloBoxCss.png "Modello box")
