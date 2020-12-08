---
type: "javascript"
title: "02 - Primi script"
description: "Introduzione alle prime istruzioni di JavaScript"
date: 2020-04-03
publishdate: 2020-04-03
lastmod: 2020-04-03
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "Introduzione alle prime istruzioni di JavaScript"
---

# Script

Gli **script** sono programmi scritti in linguaggio JavaScript che vengono inclusi in una pagina web ed eseguiti sul browser dell'utente che visita la pagina.

Essendo JavaScript un linguaggio interpretato, gli script non sono sottoposti al processo di compilazione prima dell'inclusione in una pagina web. Questo comporta la possibilità della presenza di errori nel codice.

Come per gli altri linguaggi di programmazione, il codice sorgente è fatto di **istruzioni**. Per istruzioni si intendono **comandi** impartiti ad un **esecutore**. Nel caso di JavaScript, l'esecutore dei comandi è il browser, e, nello specifico, **l'interprete** (un componente software interno al browser).

Le istruzioni di un programma JavaScript sono eseguite dall'**interprete** man mano che la pagina web viene "letta" dal browser, quindi l'ordine in cui il codice JavaScript è scritto nella pagina web è di primaria importanza. Nel caso sia presente un errore nel codice, in fase di esecuzione l'errore viene ignorato, quando possibile, oppure, in caso contrario, l'esecuzione termina appena si tenta di eseguire l'istruzione' errata (le istruzioni successive non sono eseguite, bloccando l'elaborazione in corso).

In JavaScript sono presenti due modalità di esecuzione degli script:

- **sloppy**: una modalità che permette che alcuni errori non vengano segnalati, ma ignorati silenziosamente, portando a malfunzionamenti non semplici da individuare; Questa modalità è quella applicata in maniera predefinita;
- **strict**: una modalità che segnala tutti gli errori e che rende più rigida e chiara l'esecuzione degli script. Per attivarla, è necessario inserire, all'inizio di ogni script e di ogni funzione, la seguente istruzione:

```javascript
"use strict";
```

Come per la scrittura di pagine web, anche per la stesura di programmi JavaScript si consiglia di configurare correttamente il proprio editor di testo o il proprio strumento di sviluppo, oppure, di utilizzare soluzioni a più ampio raggio come
<!-- TODO: impostare il link a wikipedia -->
[EditorConfig](/coding/tools/editorconfig/ "Link ad EditorConfig su wikipedia"),
in modo da poter condividere le impostazioni di codifica (e di scrittura dei documenti di testo) con l'intero gruppo di lavoro o nell'intera azienda.

Ancor di più, si consiglia l'uso di strumenti per la verifica del codice sorgente, in modo da individuare e correggere eventuali errori non rilevati dal programmatore.

## Primi script, sintassi ed esecuzione

### Messaggi all'utente con ``alert()``

L'istruzione più conosciuta di JavaScript è ``alert()``, che permette di mostrare un messaggio all'utente, come nell'esempio di seguito:

```javascript
"use strict";

alert("Hello World!!");
```

### Uso del punto e virgola

Il **punto e virgola** viene utilizzato per identificare la fine di un’istruzione, per cui ogni istruzione deve terminare con un carattere ``;``.

Non tutto il codice è composto da istruzioni, esistono blocchi e strutture che non sono considerate istruzioni e, quindi, non prevedono la terminazione con il carattere di fine istruzione ``;``.

Si ponga quindi attenzione all'inserimento di questo carattere.

Nell'esempio precedente si nota che il carattere di fine istruzione è presente sia al termine dell'istruzione ``"use strict"``, sia al termine dell'istruzione ``alert("Hello World!!")``

### Commenti

I commenti sono delle note, delle spiegazioni che il programmatore inserisce per descrivere e documentare parti di codice. In fase di esecuzione, i commenti sono completamente ignorati.

JavaScript permette di commentare il codice su una sola riga utilizzando il simbolo ``//`` seguito dal commento, mentre i commenti su più righe includono i commenti tra i caratteri ``/*`` e ``*/``.

Un esempio di script che fa uso di commenti è il seguente:

```javascript

'use strict';

// commento su una rigida

/*
  commento su
  più righe
*/
alert("Hello World!!");
```

### Inserimento di uno script in pagina web

Per inserire uno script in una pagina web esistono diverse possibilità:

- inserire uno script **inline** ovvero nei tag HTML che ne permettono la possibilità;
- inserire uno script direttamente nella pagina HTML, utilizzando il tag ``script``;
- inserire un collegamento ad un file JavaScript esterno, che ha tipicamente estensione ``.js``, utilizzando il tag ``script``;

#### Inserimento script inline

Per inserire uno script **inline**, lo si può allegare ai tag HTML, ove previsto dalle specifiche;

Si supponga, ad esempio, di voler associare al ``click`` su un pulsante, realizzato tramite l'etichetta ``button``, uno script (composto da una sola istruzione) ``alert('Script contenuto inline');``. Il codice risultante sarà il seguente:

```html
<input type="button" onclick="alert('Script contenuto inline');">
```

Si nota che nella stessa riga di codice è presente sia il codice ``HTML`` sia il codice ``javascript`` (inline).

#### Inserimento script nella pagina HTML

Puo essere inopportuno, per questioni di leggibilità del codice, e difficoltoso inserire script complessi in modalità **inline**. L'etichetta ``script`` è ideata proprio allo scopo di contenere codice JavaScript. Di seguito un esempio:

```javascript
<script>
  "use strict";

  // messaggio all'utente
  alert("script contenuto nella pagina web");
</script>
```

#### Inserimento script in un file esterno

Generalmente è consigliato separare il codice HTML dal codice JavaScript, per cui, rispetto alla pagina web, il codice JavaScript è contenuto in un file esterno, tipicamente con estensione ``.js``.  Per includere nella pagina web uno script contenuto in un file esterno, si utilizza il tag ``script``, specificando nell'attributo ``src`` il percorso o l'indirizzo del file esterno.

Di seguito un esempio di un primo file specificato mediante un percorso relativo ed un secondo file specificato mediante un percorso assoluto (un indirizzo web):

```javascript
<script src="file.js"></script>
<script src="www.google.com/javascript/file.js"></script>
```

I file esterni ovviamente conterranno gli script, come nel seguente esempio:

```javascript
"use strict";

alert("script contenuto in un file esterno");
```

### Console JavaScript

Uno strumento che aiuta moltissimo nello sviluppo di codice JavaScript è la console del browser, che fa parte degli strumenti di sviluppo e che appare quando si preme il tasto "F12" o quando si clicca con il seconda tasto del mouse sulla pagina web e si sceglie la voce "Ispeziona".

![Console del browser](/static/coding/web/javascript/javascript-console.png "Console del browser")

La console visualizza, in fase di esecuzione, eventuali errori generati, in modo che il programmatore possa correggerli. Inoltre, visualizza i messaggi informativi, di avviso e di errore che il programmatore inserisce negli script per avere in output il valore di variabili, di oggetti, il tempo di esecuzione e così via.

#### Messaggi informativi, di avviso e di errore

Nella console è possibile scrivere messaggi informativi, di avviso e di errore attraverso le istruzioni ``console.info()``, ``console.warn()`` e ``console.error()``, che prendono come parametro il messaggio da mostrare.

```javascript
console.info("informazione");
console.warn("allarme");
console.error("errore");
```

#### Raggruppare messaggi

E' possibile creare gruppi di messaggi, utilizzando le istruzioni ``console.group()`` e ``console.groupEnd()``:

```javascript
console.group("gruppo di informazioni");
console.info("informazione 1");
console.info("informazione 2");
console.warn("allarme 1");
console.groupEnd();
```

### Tabelle

La scrittura di una tabella nella console, attraverso l'istruzione ``console.table()``, è particolarmente utile poichè permette di visualizzare array e matrici in un formato molto comprensibile:

```javascript
let vettore = ['uno', 'due', 'tre'];
console.table(vettore);
```

### Tempo di esecuzione

Utilissima pure la scrittura in console del tempo di esecuzione intercorso tra due punti dello script, indicati dalle istruzioni ``console.time()`` e ``console.timeEnd()``:

```javascript
console.time("tempo impiegato:");

// istruzioni
// console.warn("allarme 1");

console.timeEnd("tempo impiegato:");
```

In output sarà mostrato il tempo impiegato nell'esecuzione delle istruzioni, ad esempio "tempo impiegato: 12.014 ms".

### Struttura di un oggetto

Per stampare la struttura di un oggetto si usa l'utilissima istruzione ``console.dir()``, come nel seguente esempio:

```javascript
let obj = {nome: "Pippo", cognome: "Pluto"};
console.dir(obj);
```

Un esempio completo della console contenente l'output di tutte le istruzioni viste è il seguente:

![Console - output di tutte le istruzioni](/static/coding/web/javascript/javascript-console-primi-script.png "Console - output di tutte le istruzioni")
