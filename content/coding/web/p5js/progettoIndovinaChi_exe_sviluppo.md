---
type: "p5js"
title: "p5.js Lez. 05.3 - Fasi di sviluppo del gioco Indovina Chi"
description: "Fasi di sviluppo del gioco Indovina Chi"
date: 2023-05-15
publishdate: 2023-05-15
lastmod: 2023-05-15
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: true
toc: false
summary: "Fasi di sviluppo del gioco Indovina Chi"
weight: 8620
---

# Fasi di sviluppo del gioco Indovina Chi

**Primo step:** caricare immagini e suoni in memoria e visualizzare le immagini nell'area da disegno, come nell'immagine in calce.

**Secondo step:** Nella funzione ``setup`` creare un array di canzoni (l'array deve contenere tutte le variabili delle canzoni). Ad esempio:

```javascript
sceltaSuoni = [SuonoGue, SuonoLazza, SuonoEmis,
    SuonoNoyz, SuonoSalmo, SuonoLilTjay,
    SuonoLilBaby, SuonoMarracash, SuonoFuture, 
    SuonoErnia, SuonoKidYugi, SuonoCapo, 
    SuonoShiva, SuonoDrake, SuonoDonToliver];
```

All'avvio del programma deve essere scelta una canzone casuale utilizzando la funzione ``random`` e passando come parametro l'array di canzoni, come nel seguente esempio:

```javascript
suonoRandom = random(sceltaSuoni);
```

Infine, la canzone casuale scelta dal computer deve essere **riprodotta**.

**Terzo step:** Quando l'utente seleziona un cantante cliccandoci su, deve essere salvata in una variabile ``suonoScelto`` la canzone associata al cantante selezionato.

**Quarto step:** Sempre al click del mouse, se la canzone casuale scelta dal computer e la canzone scelta dall'utente (salvata nella variabile ``suonoScelto``) sono uguali, allora il punteggio aumenta di 1.

**Quinto step:** Sempre al click del mouse:

- la canzone casuale viene stoppata;
- si sceglie una nuova canzone casuale (come al punto 2);
- si riproduce la nuova canzone casuale;
- si annulla la scelta del cantante (``suonoScelto = null;``).

![p5.js - gioco indovina chi](/static/coding/web/p5js/progettoIndovinaChi.png "p5.js - gioco indovina chi")
