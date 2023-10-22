---
type: "p5js"
title: 'p5.js Lez. 05.1 - Progetto "parco zoologico"'
description: 'Requisiti del progetto "parco zoologico"'
date: 2023-04-20
publishdate: 2023-04-20
lastmod: 2023-04-20
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: 'Requisiti del progetto "parco zoologico"'
weight: 8658
---

# Progetto "parco zoologico"

## Requisiti funzionali

Si sviluppi il progetto "parco zoologico" utilizzando la libreria grafica ``p5.js`` e la libreria dei suoni ``p5.sound.js`` per il disegno e la riproduzione degli oggetti necessari. I requisiti funzionali del progetto sono i seguenti:

1. L'area da disegno deve avere una dimensione impostata a proprio piacimento, ma comunque adatta alla pagina web;
2. Prima dell'avvio, nella funzione ``preload()`` devono essere caricati in memoria i suoni e le immagini da utilizzare;
3. Devono essere visualizzati almeno 16 animali differenti, disposti in maniera non sovrapposta secondo le proprie preferenze;
4. Quando l'utente clicca su un animale, deve essere visualizzato il nome e riprodotto il verso dell'animale;
5. Se è in corso la riproduzione del verso di un animale, non deve essere possibile riprodurne un'altro.

Di seguito, un'immagine del gioco da realizzare.

![p5.js - progetto parco zoologico](/static/coding/web/p5js/progettoParcoZoologico.png "p5.js - progetto parco zoologico")

## Fasi di realizzazione

Le fasi di realizzazione da seguire per sviluppare il progetto sono le seguenti:

**Fase 1:** inserire la funzione ``preload()`` necessaria al caricamento delle risorse (immagini e suoni), come di seguito:

```javascript
function preload() {
  soundFormats('mp3', 'wav');
}
```

**Fase 2:** caricare immagini e suoni in memoria e visualizzare le immagini nell’area da disegno, come nell’immagine in calce.

**Fase 3:** dichiarare una variabile che contenga il nome dell’animale, assegnare il valore iniziale “scegli” e visualizzarla nell’area del disegno sotto le figure degli animali, come nell’immagine in calce. Dichiarare una seconda variabile per memorizzare il verso dell’animale scelto.

**Fase 4:** quando l’utente seleziona immagine di un animale, assegnare alla variabile dichiarata in fase 3 il nome dell’animale.

**Fase 5:** sempre quando l’utente seleziona l’immagine di un animale, assegnare alla variabile dichiarata in fase 3 il verso dell’animale per poi riprodurlo.

**Fase 6:** sempre quando l’utente seleziona un animale, se è in corso di riproduzione il verso di un animale precedentemente selezionato, allora bisogna stopparlo prima di riprodurre il nuovo verso.

## Criteri di valutazione

<!-- markdownlint-disable MD009 MD036 -->

 |              |     |     |     |     | 
---       | --- | --- | --- | --- | --- | ---
Esercizio |  1  |  2  |  3  |  4  |  5  | Totale Punti
Max punti |  2  |  2  |  2  |  2  |  2  | 
Punti     |     |     |     |     |     | 

Cognome ______________
Nome ______________
Classe __________
Data __________

<!-- markdownlint-enable MD009 MD036 -->
