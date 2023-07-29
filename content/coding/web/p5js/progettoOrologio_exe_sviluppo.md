---
type: "p5js"
title: 'p5.js Lez. 04.2 - Fasi di sviluppo del progetto "orologio analogico"'
description: 'Fasi di sviluppo del progetto "orologio analogico"'
date: 2023-07-19
publishdate: 2023-07-19
lastmod: 2023-07-19
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: 'Fasi di sviluppo del progetto "orologio analogico"'
weight: 8668
---

# Fasi di sviluppo del progetto "orologio analogico"

Si sviluppi un orologio analogico utilizzando la libreria grafica ``p5.js`` per il disegno degli oggetti necessari. Le fasi da seguire sono le seguenti:

Fase 1: inserire nella funzione ``setup()`` l'impostazione d'uso degli angoli sessagesimali:

```javascript
function setup() {
    createCanvas(...);
    angleMode(DEGREES);
}
```

Fase 2: Disegnare il quadrante dell'orologio ed i numeri delle ore e dei minuti sul quadrante.

Fase 3: dichiarare le variabili che contengano le ore, i minuti ed i secondi ed inizializzarle a zero; nella funzione ``draw`` assegnare il valore delle ore, minuti e secondi alle variabili corrispondenti e poi visualizzarle a schermo.

```javascript
h = hour();
m = minute();
s = second();
```

Fase 4: dichiarare tre variabili ``hGradi``, ``mGradi`` e ``sGradi`` che rappresentino la corrispondenza in gradi sessagesimali di un'ora, di un minuto e di un secondo. Per effettuare ciò è necessario ricordare che le lancette partono dalle ore ``12`` mentre i gradi si misurano dall'angolo ``0°`` che si trova quando la lancetta si posa sul numero ``3`` del quadrante. Per creare la corrispondenza tra le due misure è necessario sottrarre a tutte e tre le variabili il valore di ``90°``.

Fase 5: dichiarare tre variabili ``rh``, ``rm`` e ``rs``, che rappresentano la lunghezza della lancetta delle ore, dei minuti e dei secondi. Per ognuna scegliere un valore tale che ``rh < rm < rs``.

Fase 6: disegnare la lancetta delle ore che ha il punto di origine nel centro del quadrante ``x, y`` ed il punto di fine in posizione:

```javascript
pXFineLancettaOre = x + rh * cos(hGradi)
pYFineLancettaOre = y + rh * sin(hGradi)
```

Fase 7: disegnare la lancetta dei minuti e dei secondi seguendo lo stesso ragionamento fatto per disegnare quella delle ore.

![p5.js - progetto orologio analogico](/static/coding/web/p5js/progettoOrologio.png "p5.js - progetto orologio analogico")
