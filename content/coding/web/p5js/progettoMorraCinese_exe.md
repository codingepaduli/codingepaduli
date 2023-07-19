---
type: "p5js"
title: "p5.js Lez. 05.5 - Gioco Morra Cinese"
description: "Sviluppo del gioco Morra Cinese (sasso carta forbici)"
date: 2023-07-17
publishdate: 2023-07-17
lastmod: 2023-07-17
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Sviluppo del gioco Morra Cinese (sasso carta forbici)"
weight: 8610
---

# Gioco Morra Cinese

Si sviluppi il gioco "Morra Cinese" utilizzando la libreria grafica ``p5.js`` e la libreria dei suoni ``p5.sound.js`` per il disegno e la riproduzione degli oggetti necessari. I requisiti funzionali del progetto sono i seguenti:

1. L'area da disegno deve avere una dimensione impostata a proprio piacimento, ma comunque adatta alla pagina web;
2. Prima dell'avvio del gioco, nella funzione ``preload()`` devono essere caricati in memoria le immagini di sasso, carta e forbici che l'utente ed il computer devono mostrare;
3. All'avvio del gioco, devono essere visualizzate le immagini di sasso, carta e forbici ed un messaggio che indichi all'utente di scegliere cosa giocare;
4. L'utente deve cliccare sull'immagine corrispondente per scegliere tra sasso, carta e forbici. Al click le altre immagini (non cliccate) scompaiono;
5. Sempre al click, il computer sceglie tra sasso, carta e forbici, visualizzando un'immagine;
6. Mostrare un messaggio di vittoria, pareggio, o sconfitta per l'utente a seconda dei casi di gioco;
7. Punti aggiuntivi:

    1. Aggiungere il punteggio per utente e computer, che all'avvio del gioco è pari a zero;
    2. Quando l'utente vince guadagna un punto, in caso contrario lo perde;
    3. Quando viene mostrato il messaggio di vittoria, pareggio, o sconfitta per l'utente, si attende ancora un click e quindi si ricomincia dal punto 3;

<!-- TODO aggiungi immagine di indovina chi  

![p5.js - gioco indovina chi](/static/coding/web/p5js/progettoIndovinaChi.png "p5.js - gioco indovina chi")

-->

<!-- markdownlint-disable MD009 MD036 -->

 |              |     |     |     |     |     |     | 
---       | --- | --- | --- | --- | --- | --- | --- | ---
Esercizio |  1  |  2  |  3  |  4  |  5  |  6  |  7  | Totale Punti
Max punti |  1  |  1  |  2  |  2  |  1  |  2  |  2  | 
Punti     |     |     |     |     |     |     |     | 

**Cognome ______________ Nome ______________ Classe __________ Data __________**

<!-- markdownlint-enable MD009 MD036 -->
