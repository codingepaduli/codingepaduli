---
type: "html"
title: "HTML Lez. 09 - Altre etichette"
description: "HTML Lez. 09 - Altre etichette"
date: 2019-08-29
publishdate: 2019-08-29
lastmod: 2019-08-29
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: true
toc: false
summary: "HTML Lez. 09 - Altre etichette"
---

# Altre etichette

Sono numerose le etichette HTML utili a descrivere i contenuti di una pagina web. Di seguito elenchiamo le etichette  che non sono state descritte nei capitoli precedenti, ma che possono risultare utili in più di una situazione e che possono aggiungere preziose informazioni per i motori di ricerca e per i lettori audio.

## Etichetta per i contatti

In molti casi è necessario visualizzare le informazioni di contatto di una persona o di un organizzazione, come un indirizzo (stradale), un numero di telefono, un sito web, una email, un nome su un social e così via.

Tutte queste informazioni possono essere racchiuse nell'etichetta **address**, come nel seguente esempio:

```html
<address>
    <p>Pubblicato da: <a href="https://me/">Me</a></p>

    <p>Email: <a href="mailto:me@mail.me"> me@mail.me</a></p>

    <p>Tel: <a href="tel:+39123456">+39123456</a></p>
</address>
```

## Etichetta per data e ora

Per indicare una data e/o un'ora, è possibile utilizzare l'etichetta **time**, come di seguito:

```html
<time datetime="2021-01-25">
    25 Gennaio 2021
</time>
<time datetime="2001-05-15T19:00">
    15 Maggio 2001 - ore 19.00
</time>
```

Il formato in cui scrivere i dati deve essere ``YYYY-MM-DD``T``hh:mm:ss.KKK``, con il seguente significato:

- ``YYYY``: Anno;
- ``MM``: Mese;
- ``GG``: Giorno;
- T: è un carattere di separazione, deve essere inserito per separare la data dall'ora;
- ``hh``: Ora;
- ``mm``: Minuti;
- ``ss``: Secondi;
- ``kkk``: Millisecondi.

Alcuni campi possono essere omessi, per maggiori informazioni si rimanda alle specifiche del W3C.

## Etichetta per le variabili matematiche

Le variabili matematiche possono essere indicate dall'etichetta **var**, come di seguito:

```html
<var>i</var> * <var>i</var> = -1
```

## Etichette per le definizioni

Per indicare un termine del quale si vuole dare una definizione, si usa l'etichetta **dfn**, come nel seguente esempio:

```html
<dfn>WWW</dfn> sta per "World wide web.
```

## Etichette per l'input e l'output di un programma

Quando si vuole indicare l'input di un software, si usa l'etichetta **kbd** (dall'inglese "keyboard input").

Allo stesso modo, quando si vuole indicare l'output di un software, si usa l'etichetta **samp** (dall'inglese "sample output element").

Nel seguente esempio verrà mostrato l'uso di entrambe le etichette:

```html
<samp>Keyboard not found. Press F1 to continue</samp>
<kbd>F</kbd>
<samp>Invalid key. Press F1 to continue</samp>
<kbd>F1</kbd>
```

## Etichette di progresso

Quando si vuole visualizzare graficamente lo stato di avanzamento di un'attività o la quantità attuale in un determinato intervallo, si usano le etichette **progress** e **meter**. La prima etichetta è pensata per una visualizzazione in percentuale (quindi da zero a cento), la seconda permette di personalizzare l'intervallo.

L'etichetta ``progress`` prevede i seguenti attributi:

- ``max``: indica il valore massimo, non piú in centesimi, ma magari in millesimi;
- ``value`` indica il valore attuale, ad esempio 75% oppure 75 millesimi;

```html
<progress value="75" max="100">75 %</progress>
```

L'etichetta **meter** permette di personalizzare l'intervallo, utilizzando gli attributi:

- ``min`` valore minimo da visualizzare;
- ``max`` valore massimo da visualizzare;
- ``low`` valore minimo consigliato;
- ``high`` valore massimo consigliato;
- ``value`` valore attuale, da mostrare sulla barra di progresso;
- ``optimum`` valore ottimale.

Vale la seguente relazione:

min <= low <= high <= max

```html
<meter low="18" high="30" value="24"> Esame superato.</meter>
```

Gli attributi ``low`` e ``high`` permettono di dividere l'intervallo definito da [``min``, ``max``] in tre intervalli differenti: [``min``, ``low``], [``low``, ``high``] ed [``high``, ``max``].

Il valore ``optimum`` sta semplicemente ad indicare quale intervallo è quello gradito.

Il browser adatta lo stile grafico del componente basandosi sul valore ``value`` da mostrare e sul valore ``optimum`` gradito.

Se il valore da mostrare ``value`` si trova nello stesso intervallo del valore gradito ``optimum``, allora il componente viene visualizzato in verde. Se invece i due valori si trovano in due intervalli adiacenti, il componente viene visualizzato in giallo, altrimenti in rosso.

<meter min="12" low="18" high="30" max="35" value="32" optimum="16"> Esame superato.</meter>

<meter min="12" low="18" high="30" max="35" value="32" optimum="24"> Esame superato.</meter>

<meter min="12" low="18" high="30" max="35" value="32" optimum="34"> Esame superato.</meter>
