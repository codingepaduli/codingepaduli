---
type: "p5js"
title: 'p5.js Lez. 05.8 - Fasi di sviluppo del progetto "acchiappapalline"'
description: 'Fasi di sviluppo del progetto "acchiappapalline"'
date: 2023-07-14
publishdate: 2023-07-14
lastmod: 2023-07-14
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: 'Fasi di sviluppo del progetto "acchiappapalline"'
weight: 8644
---

# Fasi di sviluppo del progetto "acchiappapalline"

Si sviluppi il progetto "acchiappapalline", utilizzando la libreria grafica ``p5.js`` per il disegno degli oggetti necessari. Le fasi da seguire sono le seguenti:

Fase 1: dichiara le variabili ``x1``, ``y1`` e ``d1`` che rappresentano le coordinate della pallina ed il diametro, quindi disegna una pallina, come nel seguente esempio:

```javascript
circle(x1, y1, d1);
```

Fase 2: se la coordinata ``y1`` della pallina è maggiore di ``400``, allora imposta la coordinata ``y1`` al valore ``0`` altrimenti incrementala di ``10``. Verificare che la pallina si muova verso il basso e poi raggiunto il fondo ricompaia in alto.

Fase 3: disegna un rettangolo sulla parte inferiore dell'area da disegno e fa sì che si muova solo verso destra o verso sinistra con il mouse.

Fase 4: calcola la distanza ``d1`` della pallina con il rettangolo.

Fase 5: Se la pallina tocca il rettangolo, cioè se la distanza ``d1`` è minore del raggio della pallina, allora riporta la pallina su impostando ``y1`` al valore ``0`` ed assegna alla variabile ``x1`` un nuovo valore casuale (maggiore di ``0`` e inferiore alla larghezza dell'area da disegno) per far si che si sposti verso destra o sinistra;

Fase 6: Gestire il punteggio con questa regola: se l'utente "acchiappa" la pallina, allora guadagna un punto. Se la pallina esce dal bordo e viene riportata in alto allora l'utente perde un punto.

Fase 7: Aggiungere altre palline ripetendo le fasi da 1 a 6.
Di seguito, un'immagine del gioco da realizzare.

![p5.js - progetto acchiappapalline](/static/coding/web/p5js/colors_and_styles_exe_acchiappapalline_01.png "p5.js - progetto acchiappapalline")
