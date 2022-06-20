---
type: "p5js"
title: "p5.js Lez. 04.5 - Progetto Snake"
description: "Sviluppo di un videogioco in stile 'snake'"
date: 2022-05-20
publishdate: 2022-05-20
lastmod: 2022-05-20
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Sviluppo di un videogioco in stile 'snake'"
---

# Progetto Snake

Si sviluppi un videogioco in stile "snake", utilizzando la libreria grafica p5.js per il disegno degli oggetti necessari. I requisiti funzionali del gioco sono i seguenti:

1. Il rettangolo di gioco deve avere una dimensione adatta alla pagina web, deve contenere il serpente 'snake' ed una pallina corrispondente alla mela; Il serpente 'snake' deve essere costituito da una serie di palline, di cui la prima è detta "coda" e l'ultima è detta "testa". Ogni pallina deve essere tangente verticalmente o orizzontalmente alla successiva, tranne ovviamente la pallina in testa, che non ha una pallina successiva.
2. L'effetto movimento viene realizzato aggiungendo una pallina in testa e togliendone una dalla coda.
3. L'effetto "crescita" viene realizzato aggiungendo solo la pallina in testa e non togliendone nessuna dalla coda.
4. Il giocatore controlla la testa del serpente attraverso i tasti freccia "SU", "GIU", "DESTRA" e "SINISTRA". Alla pressione di uno di questi tasti, si realizza un movimento in direzione del tasto premuto.
5. Se la pallina in testa "tocca" la "mela", allora il serpente 'snake' cresce di una pallina.
6. Se la pallina in testa "tocca" una qualsiasi altra pallina facente parte del corpo dello snake, il giocatore perde.

Di seguito, un'immagine del gioco da realizzare.

![p5.js - progetto snake](/static/coding/web/p5js/colors_and_styles_exe_snake_01.png "p5.js - progetto snake")

<!-- markdownlint-disable MD009 MD036 -->

 |              |     |     |     |     |     | 
---       | --- | --- | --- | --- | --- | --- | ---
Esercizio |  1  |  2  |  3  |  4  |  5  |  6  | Totale Punti
Max punti |  2  |  1  |  2  |  1  |  2  |  2  | 
Punti     |     |     |     |     |     |     | 

**Cognome ______________ Nome ______________ Classe __________ Data __________**

<!-- markdownlint-enable MD009 MD036 -->
