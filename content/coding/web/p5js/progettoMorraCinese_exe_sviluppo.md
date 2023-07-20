---
type: "p5js"
title: 'p5.js Lez. 05.5 - Fasi di sviluppo del progetto "morra cinese"'
description: 'Fasi di sviluppo del progetto "morra cinese" (sasso carta forbici)'
date: 2023-07-19
publishdate: 2023-07-19
lastmod: 2023-07-19
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: 'Fasi di sviluppo del progetto "morra cinese" (sasso carta forbici)'
weight: 8650
---

# Fasi di sviluppo del progetto "morra cinese"

Si sviluppi il gioco della morra cinese, chiamato anche "sasso-carta-forbici", utilizzando la libreria grafica ``p5.js`` per il disegno degli oggetti necessari. Le fasi da seguire sono le seguenti:

Fase 1: inserire la funzione ``preload()`` necessaria al caricamento delle risorse (immagini e suoni), come di seguito:

```javascript
function preload() {
  soundFormats('mp3', 'wav');
}
```

Fase 2: caricare immagini e suoni in memoria e visualizzare le immagini nell'area da disegno, come nell'immagine in calce. Ad esempio, si dichiarino le tre variabili e si carichino in memoria le immagini:

Fase 3: Dichiarare le tre costanti ed un array che le contenga tutte, come di seguito indicato:

```javascript
let SASSO = 1; 
let CARTA = 2; 
let FORBICI = 3;

let scelta = [SASSO, CARTA, FORBICI];
```

Dichiarare per l'utente una variabile che memorizzi la scelta effettuata (tra SASSO, CARTA e FORBICI) ed inizializzarla a ``0``, poi dichiarare una seconda variabile che memorizzi l'immagine associata alla scelta effettuata (senza inizializzare la variabile);

Anche per il computer dichiarare una variabile che memorizzi la scelta effettuata (scelta casuale tra SASSO, CARTA e FORBICI) ed inizializzarla a ``0``, poi dichiarare una seconda variabile che memorizzi l'immagine associata alla scelta effettuata (senza inizializzare la variabile);

Fase 4: quando l’utente seleziona immagine, assegnare alla variabile che memorizza la scelta utente la costante corrispondente (tra SASSO, CARTA e FORBICI). Ad esempio, quando l'utente sceglie ``SASSO``, se la variabile è ``sceltaUtente``, allora bisogna assegnare a tale variabile la costante ``SASSO``.

```javascript
sceltaUtente = SASSO;
```

Fase 5: quando l’utente seleziona immagine, assegnare l'immagine alla variabile che memorizza l'immagine scelta dall'utente. Ad esempio, se la variabile è ``imgSceltaUtente`` e la variabile che contiene l'immagine del sasso è ``imgRock``, allora bisogna assegnare alla prima variabile il valore della seconda.

```javascript
imgSceltaUtente = imgRock;
```

Fase 6: Quando l'utente ha effettuato una scelta (ovvero quando la variabile corrispondente ha un valore diverso da zero), allora visualizza l'immagine scelta dall'utente.

Fase 7: quando l’utente seleziona immagine, è necessario generare il tiro del computer in maniera casuale, utilizzando la funzione ``random`` e passando come parametro l'array di costanti creato in precedenza, come nel seguente esempio:

```javascript
tiroComputer = random(scelta);
```

Fase 8: come per la fase 5, a seconda della scelta casuale del computer, assegnare l'immagine corrispondente alla variabile che memorizza l'immagine scelta dal computer. Ad esempio, se la scelta casuale del computer è ``SASSO``, ipotizzando che la variabile è ``imgSceltaPC`` e che la variabile che contiene l'immagine del sasso è ``imgRock``, allora bisogna assegnare alla prima variabile il valore della seconda.

```javascript
imgSceltaPC = imgRock;
```

Fase 9: Visualizza l'immagine scelta dall'utente (solo quando la variabile della scelta del computer ha un valore diverso da zero).

Fase 10: a seconda del tiro dell'utente e del tiro il computer, visualizzare un messaggio che indichi la vittoria il pareggio o la sconfitta dell'utente.

![p5.js - gioco morra cinese](/static/coding/web/p5js/progettoMorraCinese.png "p5.js - gioco morra cinese")
