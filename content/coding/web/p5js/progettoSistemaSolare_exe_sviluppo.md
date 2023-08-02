---
type: "p5js"
title: 'p5.js Lez. 04.5 - Fasi di sviluppo del progetto "Sistema Solare"'
description: 'Fasi di sviluppo del progetto "Sistema Solare"'
date: 2023-08-02
publishdate: 2023-08-02
lastmod: 2023-08-02
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: 'Fasi di sviluppo del progetto "Sistema Solare"'
weight: 8662
---

# Fasi di sviluppo del progetto "Sistema Solare"

Si sviluppi il progetto Sistema Solare utilizzando la libreria grafica ``p5.js`` per il disegno degli oggetti necessari. Le fasi da seguire sono le seguenti:

Fase 1: inserire nella funzione ``setup()`` l'impostazione d'uso degli angoli sessagesimali:

```javascript
function setup() {
    createCanvas(...);
    angleMode(DEGREES);
}
```

Fase 2: Dichiarare le variabili per il Sole e disegnarlo utilizzando tali variabili; Dichiarare le variabili per il pianeta Terra;

Fase 3: Per calcolare le coordinate (x, y) del pianeta è necessario ricordare alcune nozioni di trigonometria; Dato che il pianeta ha un angolo ed una distanza rispetto al Sole, allora è necessario ricordare che le coordinate (x, y) sono espresse secondo queste formule:

```javascript
x = distanza * cos(angolo);
y = distanza * sin(angolo);
```

Inoltre bisogna tener presente che queste formule valgono quando il riferimento è l'origine degli assi di coordinate (0, 0); Nel nostro caso, il riferimento è il Sole (attorno al quale ruota il pianeta) con coordinate (xSole, ySole), quindi è necessario esprimere le coordinate del pianeta relativamente a quelle del Sole:

```javascript
x = xSole + distanza * cos(angolo);
y = ySole + distanza * sin(angolo);
```

Procedere quindi a disegnare il pianeta Terra.

```javascript
circle(x, y, diametro)
```

Fase 4: Verificare che il pianeta sia visibile, altrimenti modificare la distanza, il diametro e verificare le coordinate appena calcolate (magari disegnandole con la funzione ``text``).

Fase 5: Incrementare l'angolo e verificare la rotazione del pianeta:

```javascript
angolo = angolo + ;
```

Fase 6: Seguendo le fasi dalla 2 alla 5, disegnare gli altri pianeti del Sistema Solare;

Fase 7: Seguendo le fasi dalla 2 alla 5, disegnare la Luna che ruota intorno alla Terra.

![p5.js - progetto Sistema Solare](/static/coding/web/p5js/progettoSistemaSolare.png "p5.js - progetto Sistema Solare")
