---
type: "p5js"
title: "p5.js Lez. 05.2 - Gioco Indovina Chi"
description: "Sviluppo del gioco Indovina Chi"
date: 2023-05-15
publishdate: 2023-05-15
lastmod: 2023-05-15
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Sviluppo del gioco Indovina Chi"
weight: 8640
---

# Gioco Indovina Chi

Si sviluppi il gioco "Indovina Chi" utilizzando la libreria grafica ``p5.js`` e la libreria dei suoni ``p5.sound.js`` per il disegno e la riproduzione degli oggetti necessari. I requisiti funzionali del progetto sono i seguenti:

1. L'area da disegno deve avere una dimensione impostata a proprio piacimento, ma comunque adatta alla pagina web;
2. Prima dell'avvio del gioco, nella funzione ``preload()`` devono essere caricati in memoria le immagini di almeno 8 cantanti differenti ed una canzone per ogni cantante;
3. All'avvio del gioco, devono essere visualizzati tutti i cantanti e deve essere riprodotta una canzone scelta casualmente tra quelle disponibili;
4. L'utente deve indovinare a chi appartiene la canzone cliccando sull'immagine del cantante corrispondente; Se indovina il cantante viene visualizzato un messaggio di vittoria;
5. Punti aggiuntivi:

    1. Aggiungere il punteggio, che all'avvio del gioco è pari a zero;
    2. Quando l'utente indovina il cantante guadagna un punto, in caso contrario lo perde;
    3. Quando l'utente indovina il cantante, la canzone in riproduzione deve essere stoppata e deve essere scelta un'altra canzone da riprodurre.

Di seguito, un'immagine di un gioco simile, in cui bisogna indovinare lo strumento a partire dal suono che genera.

![p5.js - gioco indovina chi](/static/coding/web/p5js/progettoIndovinaChi.png "p5.js - gioco indovina chi")

<!-- markdownlint-disable MD009 MD036 -->

 |              |     |     |     |     |     |     | 
---       | --- | --- | --- | --- | --- | --- | --- | ---
Esercizio |  1  |  2  |  3  |  4  |  5  |  6  |  7  | Totale Punti
Max punti |  1  |  1  |  2  |  2  |  1  |  2  |  2  | 
Punti     |     |     |     |     |     |     |     | 

**Cognome ______________ Nome ______________ Classe __________ Data __________**

<!-- markdownlint-enable MD009 MD036 -->
