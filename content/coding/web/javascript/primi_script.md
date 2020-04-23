---
type: "javascript"
title: "02 - Primi script"
description: "Primi script"
date: 2020-04-03
publishdate: 2020-04-03
lastmod: 2020-04-03
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "Primi script"
---

# Primi script

Per la scrittura di programmi in javascript si consiglia innanzitutto di configurare l'editor di testi per utilizzare caratteristiche generali quali la codifica di caratteri o il carattere di fine riga, magari usando strumenti come [EditorConfig](/coding/tools/editorconfig/).

Gli script vengono eseguiti man mano che la pagina web viene "letta" dal browser e mostrata all'utente. Quindi conta l'ordine in cui il codice è scritto nella pagina web.

L'istruzione più conosciuta di javascript è ``alert()``, che permette di mostrare un messaggio all'utente.

```javascript
alert("Hello World!!");
```

I prossimi esempi faranno uso di questa istruzione per illustrare l'inserimento degli script in pagina.

## Modalità di esecuzione strict e sloppy

Javascript utilizza due modalità di esecuzione degli script:
- **sloppy**: una modalità che permette che alcuni errori non vengano segnalati, ma ignorati silenziosamente, portando a malfunzionamenti non semplici da individuare; Questa modalità è quella applicata di default e talvolta;
- **strict**: una modalità che segnala alcuni errori non facilmente riscontrabili e che rende più rigida e chiara l'esecuzione degli script. Deve essere specificata all'inizio di ogni script e di ogni funzione dalla seguente stringa:

```javascript
"use strict";
```

## Commenti

Javascript permette di commentare il codice su una sola riga utilizzando il simbolo ``//`` seguito dal commento, mentre i commenti su più righe includono i commenti tra i caratteri ``/*`` e ``*/``.

Un esempio di commenti è il seguente:

```javascript

'use strict';

// commento su una rigida

/*
  commento su
  più righe
*/
```

## Inserimento script in pagina

Per inserire uno script in una pagina web esistono diverse possibilità:

- inserire uno script **inline** ovvero nei tag HTML che ne permettono la possibilità;
- inserire uno script direttamente nella pagina HTML, utilizzando il tag ``script``;
- inserire un collegamento ad un file javascript esterno, che ha tipicamente estensione ``.js``, utilizzando il tag ``script``;

### Inserimento script inline

Per inserire il tag **inline**, lo si può allegare ai tag HTML che lo prevedono; ad esempio al tag button:

```html
<input type="button" onclick="alert('Script contenuto inline');">  
```
Quando l'utente clicca sul pulsante, si attiva l'azione "onclick" e quindi si visualizza il messaggio.

### Inserimento script nella pagina HTML

Per inserire uno script direttamente nella pagina web, si usa il tag ``script`` per includere il codice. Di seguito un esempio:

```javascript
<script>
  "use strict";

  alert("script contenuto nella pagina web");
</script>
```

### Inserimento script in un file esterno

Per inserire un collegamento ad un file esterno, si inserisce il tag ``script`` con l'attributo ``src`` che contiene il collegamento al file javascript esterno. Di seguito un esempio:

```javascript
<script src="file.js"></script>
```

Il file esterno ovviamente conterrà tutte le istruzioni javascript, come nel seguente esempio

```javascript
"use strict";

alert("script contenuto in un file esterno");
```

## Console javascript

Lo strumento che più aiuta nello sviluppo di codice javascript è la console del browser, che appare quando si preme il tasto "F12" o quando si clicca con il seconda tasto del mouse sulla pagina web e si sceglie
la voce "Ispeziona".

![Browser's console](/static/coding/web/javascript/javascript-console.png)

### Informazioni, avvisi ed errori

Nella console è possibile scrivere informazioni, allarmi ed errori attraverso le istruzioni ``console.info()``, ``console.warn()`` e ``console.error()``, che prendono come parametro un messaggio da mostrare.

```javascript
console.info("informazione");
console.warn("allarme");
console.error("errore");
```
### Raggruppare messaggi

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

Utilissima pure la scrittura in console del tempo di esecuzione intercorso tra due punti dello script, indicati dalle istruzioni
``console.time()`` e ``console.timeEnd()``:

```javascript
console.time("tempo impiegato:");

// istruzioni

console.timeEnd("tempo impiegato:");
```

In output ci sarà la scritta "tempo impiegato: 12.014 ms".

Per stampare la struttura di un oggetto si usa l'utilissima istruzione
``console.dir()``, come nel seguente esempio

```javascript
let obj = {nome: "Pippo", cognome: "Pluto"};
console.dir(obj);
```

Un esempio completo della console contenente l'output di tutte le istruzioni viste è il seguente:

![Browser's console](/static/coding/web/javascript/javascript-console-primi-script.png)
