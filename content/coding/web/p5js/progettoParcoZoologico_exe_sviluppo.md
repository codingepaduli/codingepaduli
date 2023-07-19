---
type: "p5js"
title: 'p5.js Lez. 05.2 - Fasi di sviluppo del progetto "parco zoologico"'
description: 'Fasi di sviluppo del progetto "parco zoologico"'
date: 2023-07-19
publishdate: 2023-07-19
lastmod: 2023-07-19
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: 'Fasi di sviluppo del progetto "parco zoologico"'
weight: 8656
---

# Fasi di sviluppo del progetto "parco zoologico"

Si sviluppi un gioco simile al “sapientino”, con tema un parco zoologico, utilizzando la libreria grafica ``p5.js`` per il disegno degli oggetti necessari. Le fasi da seguire sono le seguenti:

Fase 1: inserire la funzione ``preload()`` necessaria al caricamento delle risorse (immagini e suoni), come di seguito:

```javascript
function preload() {
  soundFormats('mp3', 'wav');
}
```

Fase 2: caricare immagini e suoni in memoria e visualizzare le immagini nell’area da disegno, come nell’immagine in calce.

Fase 3: dichiarare una variabile che contenga il nome dell’animale, assegnare il valore iniziale “scegli” e visualizzarla nell’area del disegno sotto le figure degli animali, come nell’immagine in calce. Dichiarare una seconda variabile per memorizzare il verso dell’animale scelto.

Fase 4: quando l’utente seleziona immagine di un animale, assegnare alla variabile dichiarata in fase 3 il nome dell’animale.

Fase 5: sempre quando l’utente seleziona l’immagine di un animale, assegnare alla variabile dichiarata in fase 3 il verso dell’animale per poi riprodurlo.

Fase 6: sempre quando l’utente seleziona un animale, se è in corso di riproduzione il verso di un animale precedentemente selezionato, allora bisogna stopparlo prima di riprodurre il nuovo verso.

![p5.js - gioco indovina chi](/static/coding/web/p5js/progettoIndovinaChi.png "p5.js - gioco indovina chi")
