---
type: "p5js"
title: "p5.js Lez. 05.4 - Gioco Memory"
description: "Sviluppo del gioco Memory"
date: 2023-04-20
publishdate: 2023-04-20
lastmod: 2023-04-20
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Sviluppo del gioco Memory"
weight: 8630
---

# Gioco Memory

Si sviluppi il gioco "Memory" utilizzando la libreria grafica ``p5.js`` e la libreria dei suoni ``p5.sound.js`` per il disegno e la riproduzione degli oggetti necessari. I requisiti funzionali del progetto sono i seguenti:

1. L'area da disegno deve avere una dimensione impostata a proprio piacimento, ma comunque adatta alla pagina web;
2. Prima dell'avvio, nella funzione ``preload()`` devono essere caricati in memoria i versi e le immagini di almeno 8 animali differenti;
3. All'avvio del gioco, devono essere visualizzate le immagini delle carte coperte e disposte in maniera non sovrapposta secondo le proprie preferenze;
4. Quando l'utente clicca su una carta coperta, deve essere visualizzata l'immagine nascosta e deve essere riprodotto il verso dell'animale; Quando l'utente clicca su una seconda carta coperta, deve essere visualizzata l'immagine nascosta e deve essere riprodotto il verso dell'animale;
5. Una volta che l'utente ha scelto due carte, se queste nascondono la stessa immagine, allora l'utente ha indovinato la coppia di carte e quindi non devono più essere visualizzate (scompaiono); Se invece le due carte sono differenti, allora restano visualizzate finché l'utente non tenta la scelta di una seconda coppia di carte;
6. Quando sulla scacchiera non ci sono più immagini, l'utente ha vinto. Se l'utente effettua troppi tentativi, ha perso. Il numero massimo di tentativi è a scelta del programmatore.

Di seguito, un'immagine del gioco da realizzare.

![p5.js - gioco memory](/static/coding/web/p5js/progettoMemory.png "p5.js - gioco memory")

<!-- markdownlint-disable MD009 MD036 -->

 |              |     |     |     |     |     | 
---       | --- | --- | --- | --- | --- | --- | ---
Esercizio |  1  |  2  |  3  |  4  |  5  |  6  | Totale Punti
Max punti |  1  |  2  |  2  |  1  |  2  |  2  | 
Punti     |     |     |     |     |     |     | 

**Cognome ______________ Nome ______________ Classe __________ Data __________**

<!-- markdownlint-enable MD009 MD036 -->
