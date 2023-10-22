---
type: "p5js"
title: 'p5.js Lez. 05.2 - Progetto "morra cinese"'
description: 'Requisiti del progetto "morra cinese" (sasso carta forbici)'
date: 2023-07-17
publishdate: 2023-07-17
lastmod: 2023-07-17
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: 'Requisiti del progetto "morra cinese" (sasso carta forbici)'
weight: 8656
---

# Progetto "morra cinese"

## Requisiti funzionali

Si sviluppi il progetto "morra cinese" (sasso carta forbici) utilizzando la libreria grafica ``p5.js`` e la libreria dei suoni ``p5.sound.js`` per il disegno e la riproduzione degli oggetti necessari. I requisiti funzionali del progetto sono i seguenti:

1. L'area da disegno deve avere una dimensione impostata a proprio piacimento, ma comunque adatta alla pagina web;
2. Prima dell'avvio del gioco, nella funzione ``preload()`` devono essere caricati in memoria le immagini di sasso, carta e forbici che l'utente ed il computer devono mostrare;
3. All'avvio del gioco, devono essere visualizzate le immagini di sasso, carta e forbici in un'area laterale (sopra o sotto oppure a destra o sinistra) ed un messaggio che indichi all'utente di effettuare la sua scelta;
4. L'utente deve cliccare sull'immagine corrispondente per scegliere tra sasso, carta e forbici. Al click deve essere visualizzata l'immagine scelta dall'utente;
5. Sempre al click, il computer sceglie tra sasso, carta e forbici, visualizzando l'immagine corrispondente;
6. Sempre al click, mostrare un messaggio di vittoria, pareggio, o sconfitta per l'utente a seconda dei casi di gioco;
7. Punti aggiuntivi:

    1. Aggiungere il punteggio per utente e computer, che all'avvio del gioco è pari a zero;
    2. Quando l'utente vince guadagna un punto, in caso contrario lo perde.

Di seguito, un'immagine del progetto da realizzare.

![p5.js - gioco morra cinese](/static/coding/web/p5js/progettoMorraCinese.png "p5.js - gioco morra cinese")

## Fasi di realizzazione

Le fasi di realizzazione da seguire per sviluppare il progetto sono le seguenti:

**Fase 1:** inserire la funzione ``preload()`` necessaria al caricamento delle risorse (immagini e suoni), come di seguito:

```javascript
function preload() {
  soundFormats('mp3', 'wav');
}
```

**Fase 2:** caricare immagini e suoni in memoria e visualizzare le immagini nell'area da disegno, come nell'immagine in calce. Ad esempio, si dichiarino le tre variabili e si carichino in memoria le immagini:

**Fase 3:** Dichiarare le tre costanti ed un array che le contenga tutte, come di seguito indicato:

```javascript
let SASSO = 1;
let CARTA = 2;
let FORBICI = 3;

let scelta = [SASSO, CARTA, FORBICI];
```

Dichiarare per l'utente una variabile che memorizzi la scelta effettuata (tra SASSO, CARTA e FORBICI) ed inizializzarla a ``0``, poi dichiarare una seconda variabile che memorizzi l'immagine associata alla scelta effettuata (senza inizializzare la variabile);

Anche per il computer dichiarare una variabile che memorizzi la scelta effettuata (scelta casuale tra SASSO, CARTA e FORBICI) ed inizializzarla a ``0``, poi dichiarare una seconda variabile che memorizzi l'immagine associata alla scelta effettuata (senza inizializzare la variabile);

**Fase 4:** quando l’utente seleziona immagine, assegnare alla variabile che memorizza la scelta utente la costante corrispondente (tra SASSO, CARTA e FORBICI). Ad esempio, quando l'utente sceglie ``SASSO``, se la variabile è ``sceltaUtente``, allora bisogna assegnare a tale variabile la costante ``SASSO``.

```javascript
sceltaUtente = SASSO;
```

**Fase 5:** quando l’utente seleziona immagine, assegnare l'immagine alla variabile che memorizza l'immagine scelta dall'utente. Ad esempio, se la variabile è ``imgSceltaUtente`` e la variabile che contiene l'immagine del sasso è ``imgRock``, allora bisogna assegnare alla prima variabile il valore della seconda.

```javascript
imgSceltaUtente = imgRock;
```

**Fase 6:** Quando l'utente ha effettuato una scelta (ovvero quando la variabile corrispondente ha un valore diverso da zero), allora visualizza l'immagine scelta dall'utente.

**Fase 7:** quando l’utente seleziona immagine, è necessario generare il tiro del computer in maniera casuale, utilizzando la funzione ``random`` e passando come parametro l'array di costanti creato in precedenza, come nel seguente esempio:

```javascript
tiroComputer = random(scelta);
```

**Fase 8:** come per la fase 5, a seconda della scelta casuale del computer, assegnare l'immagine corrispondente alla variabile che memorizza l'immagine scelta dal computer. Ad esempio, se la scelta casuale del computer è ``SASSO``, ipotizzando che la variabile è ``imgSceltaPC`` e che la variabile che contiene l'immagine del sasso è ``imgRock``, allora bisogna assegnare alla prima variabile il valore della seconda.

```javascript
imgSceltaPC = imgRock;
```

**Fase 9:** Visualizza l'immagine scelta dall'utente (solo quando la variabile della scelta del computer ha un valore diverso da zero).

**Fase 10:** a seconda del tiro dell'utente e del tiro il computer, visualizzare un messaggio che indichi la vittoria il pareggio o la sconfitta dell'utente.

## Criteri di valutazione

<!-- markdownlint-disable MD009 MD036 -->

 |              |     |     |     |     |     |     | 
---       | --- | --- | --- | --- | --- | --- | --- | ---
Esercizio |  1  |  2  |  3  |  4  |  5  |  6  |  7  | Totale Punti
Max punti |  1  |  1  |  2  |  2  |  1  |  2  |  1  | 
Punti     |     |     |     |     |     |     |     | 

Cognome ______________
Nome ______________
Classe __________
Data __________

<!-- markdownlint-enable MD009 MD036 -->
