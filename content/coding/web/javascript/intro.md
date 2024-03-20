---
type: "javascript"
title: "JavaScript Lez. 01 - JavaScript"
description: "JavaScript"
date: 2020-04-01
publishdate: 2020-04-01
lastmod: 2020-04-01
spellcheck: 2020-12-11
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "JavaScript"

references:
    -   title: "HTML.it"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.html.it/guide/guida-javascript-di-base/"
        description: "Corso JavaScript in italiano"
    -   title: "it.wikibooks.org"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://it.m.wikibooks.org/wiki/JavaScript"
        description: "Corso JavaScript in italiano su wikibooks"
    -   title: "JavaScript.info"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://javascript.info/"
        description: "The modern Javascript tutorial (in inglese)"
    -   title: "JavaScript.christmas"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://javascript.christmas/"
        description: "JavaScript features (in inglese)"
    -   title: "practicejs.com"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://practicejs.com/"
        description: "Some JavaScript coding exercises (in inglese)"
    -   title: "freecodecamp.org"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/basic-javascript/"
        description: "Algorithms and data structures (in inglese)"
    -   title: "w3schools.com"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.w3schools.com/js/default.asp"
        description: "JavaScript lessons (in inglese)"
    -   title: "compatibilità ECMAScript"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://kangax.github.io/compat-table/es6/"
        description: "Tabella di compatibilità delle funzionalità ECMAScript supportate dai singoli browser è mantenuta al link"
    -   title: "Verifica specifiche ECMAScript implementate"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://caniuse.com/"
        description: "Sito per verificare se una specifica ECMAScript (ad es. WebGL o WebStorage0) è implementata completamente o parzialmente dai vari browser"
---

# JavaScript

## Introduzione al linguaggio

JavaScript è un linguaggio di programmazione sviluppato inizialmente nel 1995 dalla Netscape Communications allo scopo di rendere dinamiche le pagine web visualizzabili attraverso il proprio browser Netscape. Il nome iniziale era LiveScript, proprio ad indicare che rendeva le pagine web "vive", poi il successo di un altro linguaggio di programmazione, Java, portò a cambiare il nome in JavaScript, poiché si voleva cavalcare a livello commerciale il successo di Java. A parte l'assonanza nel nome, i due linguaggi non condividono nessuna relazione, solo qualche similitudine nella sintassi che era ereditata dal linguaggio **C**.

I programmi scritti in JavaScript furono chiamati semplicemente **script** ed erano contenuti direttamente nella pagina web.

Il successo di JavaScript portò anche gli altri browser a creare delle proprie varianti, quali JScript, ActionScript, ecc... Tutte queste varianti, in origine incompatibili, sono poi state indirizzate verso delle specifiche comuni, standardizzate con il nome di **ECMAScript**.

Oggi, le specifiche ECMAScript sono in evoluzione, avanzando dalla versione ECMAScript 6 (ES6) del 2015 alla ES10 del 2019 e si arricchiranno ancora di nuove funzionalità. Le specifiche sono pubblicate sul sito
[https://www.ecma-international.org/ecma-262](https://www.ecma-international.org/ecma-262 "Sito web delle specifiche ECMAScript").

Ogni browser sviluppa la propria implementazione di ECMAScript, e sia
[Mozilla](http://www.mozilla.org/js/language/ "Mozilla - implementazione ECMAScript"),
sia Chrome, sia Safari, per citare i browser più conosciuti, garantiscono nel tempo il pieno supporto alle nuove specifiche.

JavaScript è un linguaggio debolmente tipizzato nato come procedurale, e che con il tempo ha inglobato sia caratteristiche dei linguaggi funzionali sia la possibilità di creare classi ed oggetti, anche se non supporta completamente la programmazione ad oggetti. L'enorme espansione del web, accessibile anche da smartphone e dispositivi IoT, hanno diffuso notevolmente il linguaggio, che è diventato un valido linguaggio anche per applicazioni lato server. Restano purtroppo i limiti dovuti alla mancanza di una tipizzazione forte ed al mancato supporto alla OOP (Object Oriented Programming).

Per ovviare a queste mancanze, sono nati linguaggi come TypeScript, che estendono le specifiche di ECMAScript per aggiungere sia la tipizzazione forte sia la programmazione ad oggetti. Questi linguaggi permettono la scrittura di programmi che, una volta compilati, generano codice JavaScript da includere nelle pagine web.

Inoltre, sono nati molti framework che rendono l'elaborazione delle informazioni disponibili sul client un compito molto semplice e che permettono un dialogo **asincrono** con il server, cioè si permette agli script in esecuzione di inviare e ricevere dati dal server senza bloccare le elaborazioni in corso e, soprattutto, senza interrompere l'attività dell'utente nella pagina.

Infine, è nato lo standard WebAssembly, che definisce un formato binario eseguibile dal browser. Utilizzando questa tecnologia, programmi scritti in altri linguaggi di programmazione (tra cui **c**, **c++**, **rust**, ecc...) possono essere compilati in formato binario WebAssembly per essere inclusi ed eseguiti in una pagina web.

Data la continua diffusione dei servizi basati su web, la conoscenza in ambito lavorativo di JavaScript e delle tecnologie collegate è fortemente richiesta.

## Script

Gli **script** sono programmi scritti in linguaggio JavaScript che vengono inclusi in una pagina web ed eseguiti sul browser dell'utente che visita la pagina.

Essendo JavaScript un linguaggio interpretato, gli script non sono sottoposti al processo di compilazione prima dell'inclusione in una pagina web. Questo comporta la possibilità della presenza di errori nel codice.

Come per gli altri linguaggi di programmazione, il codice sorgente è fatto di **istruzioni**. Per istruzioni si intendono **comandi** impartiti ad un **esecutore**. Nel caso di JavaScript, l'esecutore dei comandi è il browser, e, nello specifico, **l'interprete** (un componente software interno al browser).

Le istruzioni di un programma JavaScript sono eseguite da un programma chiamato **interprete** man mano che la pagina web viene "letta" dal browser, quindi l'ordine in cui il codice JavaScript è scritto nella pagina web è di primaria importanza. Nel caso sia presente un errore nel codice, in fase di esecuzione l'errore viene ignorato, quando possibile, oppure, in caso contrario, l'esecuzione termina appena si tenta di eseguire l'istruzione errata (le istruzioni successive non sono eseguite, bloccando l'elaborazione in corso).

In JavaScript sono presenti due modalità di esecuzione degli script:

- **sloppy**: una modalità che permette che alcuni errori non vengano segnalati, ma ignorati silenziosamente, portando a malfunzionamenti non semplici da individuare; Questa modalità è quella applicata in maniera predefinita;
- **strict**: una modalità che segnala tutti gli errori e che rende più rigida e chiara l'esecuzione degli script. Per attivarla, è necessario inserire, all'inizio di ogni script e di ogni funzione, la seguente istruzione:

```javascript
"use strict";
```

Come per la scrittura di pagine web, anche per la stesura di programmi JavaScript si consiglia di configurare correttamente il proprio editor di testo o il proprio strumento di sviluppo, oppure, di utilizzare soluzioni a più ampio raggio come
[EditorConfig](/tools/editorconfig/ "Link ad EditorConfig su Wikipedia") <!-- TODO: impostare il link a Wikipedia -->,
in modo da poter condividere le impostazioni di codifica (e di scrittura dei documenti di testo) con l'intero gruppo di lavoro o nell'intera azienda.

Ancor di più, si consiglia l'uso di strumenti per la verifica del codice sorgente, in modo da individuare e correggere eventuali errori non rilevati dal programmatore.

### Istruzione ``alert()`` per messaggi all'utente

L'istruzione più conosciuta di JavaScript è ``alert()``, che permette di mostrare un messaggio all'utente, come nell'esempio di seguito:

```javascript
"use strict";

alert("Hello World!!");
```

Come si può notare, il messaggio "Hello World!!" è racchiuso tra doppi apici. Sono poi presenti delle parentesi tonde che racchiudono il tutto.

### Sintassi - regola del punto e virgola

Il **punto e virgola** viene utilizzato per identificare la fine di un’istruzione, per cui ogni istruzione deve terminare con un carattere ``;``.

Non tutto il codice è composto da istruzioni, esistono blocchi e strutture che non sono considerate istruzioni e, quindi, non prevedono la terminazione con il carattere di fine istruzione ``;``.

Si ponga quindi attenzione all'inserimento di questo carattere.

Nell'esempio precedente si nota che il carattere di fine istruzione è presente sia al termine dell'istruzione ``"use strict"``, sia al termine dell'istruzione ``alert("Hello World!!")``

### Commenti

I commenti sono delle note, delle spiegazioni che il programmatore inserisce per descrivere e documentare parti di codice. In fase di esecuzione, i commenti sono completamente ignorati.

In JavaScript, come nella maggioranza dei linguaggi di programmazione, è possibile inserire due tipi di commenti:

- i commenti che occupano una sola riga, si inseriscono dopo la sequenza di caratteri ``//``. È importante porre attenzione a non inserire spazi tra i due caratteri ``/``. Una volta inserita questa sequenza, fino alla fine della riga i caratteri presenti nella riga saranno parte del commento.
- i commenti che occupano più righe, si inseriscono tra le sequenze di caratteri ``/*`` e ``*/``. È importante porre attenzione a non inserire spazi tra le sequenze di caratteri indicati. Una volta inserita la sequenza di inizio commento ``/*``, tutti i caratteri seguenti, anche sulle righe successive, saranno parte del commento, per cui è obbligatorio chiudere il commento inserendo la sequenza di fine commento ``*/``.

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

## Struttura di una pagina web con script

JavaScript è un linguaggio nato per rendere dinamiche le pagine web. Questo significa che gli script sono legati alla pagina web. Esistono tre differenti tipi di legami che permettono ad uno script di interagire con la pagina web:

- uno script può essere **inline**, ovvero inserito in una delle etichette HTML che lo permettono;
- uno script può essere contenuto nella pagina HTML, definito nell'etichetta ``script``;
- uno script può essere collegato come file JavaScript esterno, indicando il collegamento nell'etichetta ``script``;

### Script inline

Per inserire uno script **inline**, lo si può allegare nelle etichette HTML, ove previsto dalle specifiche;

Si supponga, ad esempio, di voler associare al ``click`` su un pulsante, realizzato tramite l'etichetta ``button``, uno script (composto da una sola istruzione) ``alert('Script contenuto inline');``. Il codice risultante sarà il seguente:

```html
<button onclick="alert('Script contenuto inline');">Clicca</button>
```

Si nota che nella stessa riga di codice è presente sia il codice HTML sia il codice JavaScript (inline).

### Script nella pagina HTML

Può essere difficoltoso e inopportuno, per questioni di leggibilità del codice, inserire script complessi in modalità **inline**. L'etichetta ``script`` è ideata proprio allo scopo di contenere codice JavaScript. Di seguito un esempio:

```javascript
<script>
  "use strict";

  // messaggio all'utente
  alert("script contenuto nella pagina web");
</script>
```

### Script in file esterno

Generalmente è consigliato separare il codice HTML dal codice JavaScript, per cui, rispetto alla pagina web, il codice JavaScript è contenuto in un file esterno, tipicamente con estensione ``.js``.  Per includere nella pagina web uno script contenuto in un file esterno, si utilizza l'etichetta ``script``, specificando nell'attributo ``src`` il percorso o l'indirizzo del file esterno. È possibile indicare due tipi di riferimenti:

- **Riferimenti assoluti**: La pagina web individua i file JavaScript utilizzando un percorso completo, indicando il sito web, il percorso ed il file. Un esempio è il seguente:

```html
<script src="https://sitoweb.com/libs/script.js"></script>
<script src="https://sitoweb.com/libs/altroScript.js"></script>
```

- **Riferimenti relativi**: La pagina web individua i file JavaScript utilizzando un percorso relativo alla posizione della pagina stessa. Un esempio è il seguente:

```html
<script src="script.js"></script>
<script src="./libs/altroScript.js"></script>
```

I file esterni ovviamente conterranno gli script, come nel seguente esempio:

```javascript
"use strict";

alert("script contenuto in un file esterno");
```

### Progetto in una cartella locale

È possibile creare un semplice progetto locale in una cartella.

![JavaScript - Progetto locale](/static/coding/web/javascript/javascript-progetto.png "JavaScript - Progetto locale")

La pagina web contiene i riferimenti agli script:

```html
<!DOCTYPE html>
<html lang="it">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Script</title>

    <!-- Riferimenti agli script -->
    <script src="script.js"></script>
    <script src="altroScript.js"></script>
  </head>
  <body>
    <h1>Progetto JavaScript</h1>
  </body>
</html>
```

## Deno - uno strumento per lo sviluppo

[Deno](https://deno.com/) è un ambiente di esecuzione per JavaScript, TypeScript, and WebAssembly che permette la compilazione, ovvero la creazione di programmi eseguibili a partire dai file sorgenti. Oltre alla compilazione, permette il controllo della qualità del codice, segnalando pratiche scorrette o potenziali errori, permette la generazione della documentazione a partire dai file sorgenti, permette la formattazione del codice secondo le linee guida consigliate ed adottate dalla comunità di sviluppo.

La compilazione di uno script ``script.js`` (attenzione all'estensione ``.js``) in un programma eseguibile chiamato ``programma.exe`` avviene eseguendo il comando:

```bash
deno compile --output programma.exe script.js
```

L'output del programma è il seguente:

```plaintext
Compile file:///home/user/script.js to programma.exe
```

Per utilizzare alcune funzionalità è necessario specificare in fase di compilazione i permessi da richiedere, in particolare:

- ``--allow-read`` permette la lettura del file-system;
- ``--allow-write`` permette la scrittura sul file-system;
- ``--allow-net`` permette l'accesso alla rete;
- ``--allow-env`` permette l'accesso alle informazioni d'ambiente;
- ``--allow-sys`` permette l'accesso alle informazioni del sistema operativo;

Il comando per compilare uno script specificando la lista di permessi sopra indicata diventa quindi il seguente:

```bash
deno compile --allow-read --allow-write --allow-net --allow-sys --allow-env --output programma.exe script.js
```

La formattazione di uno script ``script.js`` (attenzione all'estensione ``.js``) secondo le linee guida consigliate ed adottate dalla comunità di sviluppo avviene eseguendo il comando:

```bash
deno fmt script.js
```

Il controllo della qualità del codice e la segnalazione di pratiche scorrette e potenziali errori presenti di uno script ``script.js`` (attenzione all'estensione ``.js``) avviene eseguendo il comando:

```bash
deno lint script.js
```

Questo strumento segnala eventuali errori e pratiche scorrette, specificando cosa deve essere corretto, il file in cui deve avvenire la correzione ed indicativamente (cioè non precisamente) la riga e la colonna del file. Ad esempio, i seguenti messaggi segnalano un primo errore alla riga 1, colonna 4 ed un secondo errore alla riga 5, colonna 6:

```plaintext
`var` keyword is not allowed
at file:///home/user/hello.js:1:4

`a` is never used
at file:///home/user/hello.js:5:6
```

La generazione della documentazione in formato HTML a partire da uno script ``script.js`` (attenzione all'estensione ``.js``) avviene eseguendo il comando:

```bash
deno doc --html --name="Il mio programma" script.js
```

Questo comando genera una cartella ``docs`` contenente il file HTML ``index.html`` che è l'indice della documentazione generata.
