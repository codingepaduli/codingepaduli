---
type: "p5js"
title: "p5.js Lez. 02.1 - Esercizi di grafica 2D"
description: "Esercizi di grafica 2D"
date: 2020-09-12
publishdate: 2020-09-12
lastmod: 2020-09-12
spellcheck: 2020-12-11
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Esercizi di grafica 2D"
weight: 8860
---

# Esercizi di grafica 2D

## Questionario

La funzione ``createCanvas(a, b)`` serve a creare:

1. l'area da disegno di larghezza ed altezza indicate rispettivamente dai parametri ``a`` e ``b``;
2. l'area da disegno di altezza e larghezza indicate rispettivamente dai parametri ``a`` e ``b``;
3. una pagina web di altezza e larghezza indicate rispettivamente dai parametri ``a`` e ``b``;
4. un sistema di coordinate di altezza e larghezza indicate rispettivamente dai parametri ``a`` e ``b``;

La funzione ``line`` serve a disegnare una linea nell'area da disegno. Questa funzione prevede:

1. un solo parametro;
2. due parametri;
3. tre parametri;
4. quattro parametri;

La funzione ``circle`` serve a disegnare un cerchio nell'area da disegno. Questa funzione prevede:

1. un solo parametro indicante il diametro del cerchio;
2. due parametri indicanti larghezza ed altezza del cerchio;
3. tre parametri indicanti il punto in cui disegnare il cerchio ed il raggio del cerchio;
4. quattro parametri indicanti il punto in cui disegnare il cerchio, il raggio ed il diametro del cerchio;

La funzione ``rect`` serve a disegnare un rettangolo nell'area da disegno. Questa funzione prevede:

1. un solo parametro indicante il punto in cui disegnare il rettangolo;
2. due parametri indicanti larghezza ed altezza del rettangolo;
3. tre parametri indicanti il punto in cui disegnare il rettangolo e la dimensione del rettangolo;
4. quattro parametri indicanti il punto in cui disegnare il rettangolo, larghezza ed altezza del rettangolo;

La funzione ``triangle`` serve a disegnare un triangolo nell'area da disegno. Questa funzione prevede:

1. tre parametri indicanti i punti in cui disegnare i vertici del rettangolo;
2. quattro parametri indicanti il punto in cui disegnare il rettangolo, la base e l'altezza del rettangolo;
3. cinque parametri indicanti i punti in cui disegnare i vertici del rettangolo, la base e l'altezza del rettangolo;
4. sei parametri indicanti i punti in cui disegnare i vertici del rettangolo;

## Calcolo delle coordinate

Dati i punti indicati nella figura in calce ed un'area da disegno delle dimensioni di 1000 punti per 1000 punti, calcolare le coordinate dei punti A, B, C, ..., P, Q ed R indicati nella figura. Indicare i punti di partenza e di arrivo delle linee indicate nella figura in calce.

![p5.js - Calcolo delle coordinate del tris](/static/coding/web/p5js/graphics-primitives_exe_tris.png "p5.js - Calcolo delle coordinate del tris")

## Disegno di una stella a 6 punte

Utilizzando le funzioni grafiche conosciute, disegnare una stella a sei punte utilizzando due triangoli iscritti nell'area da disegno (ovvero con i tre punti posizionati sui bordi dell'area da disegno). Calcolare le coordinate dei punti indicati in figura.

![p5.js - Esercizio di disegno di una stella a sei punte](/static/coding/web/p5js/graphics-primitives_exe_star.png "p5.js - Disegno di una stella a sei punte")

## Descrizione primitive grafiche

Per le funzioni di seguito indicate, descrivere la firma ed il compito della funzione. Per ogni  parametro formale appartenente alla firma, indicare per cosa viene utilizzato il parametro, il tipo e l' obbligatorietà. Fare infine un esempio d'uso della funzione ed indicare i parametri attuali. Esempio:

**Funzione point** - firma point(x, y) - parametri formali:

- x: la coordinata X del punto, di tipo numerica ed obbligatoria;
- y: la coordinata X del punto, di tipo numerica ed obbligatoria;

Esempio d'uso: point(50, 150), parametri attuali x=50, y=150;

**Funzione createCanvas** - firma createCanvas(sizeX, sizeY) - parametri formali:

- sizeX: larghezza dell'area da disegno, di tipo numerica ed obbligatoria;
- sizeY: altezza dell'area da disegno, di tipo numerica ed obbligatoria;

Esempio d'uso: createCanvas(150, 150), parametri attuali sizeX=150, sizeY=150.

Elenco funzioni da descrivere:

- createCanvas;
- point;
- line;
- square;
- rect;
- circle;
- triangle;
- quad;
- ellipse;
- arc.

## Disegno di un campo di calcio

Utilizzando le funzioni grafiche conosciute, disegnare un campo di calcio grande quanto tutta l'area da disegno e con margine dai bordi di 20 punti;

![p5.js - Esercizio di disegno di un campo di calcio](/static/coding/web/p5js/graphics-primitives_exe_soccer.png "p5.js - Disegno di un campo di calcio")

## Disegno della rosa dei venti

Utilizzando le funzioni grafiche conosciute e, le variabili ``width`` ed ``height`` messe a disposizione dalla libreria p5.js, disegnare la rosa dei venti, composta da:

- Un quadrato con una distanza di 40 punti da tutti i bordi dell'area da disegno;
- Un cerchio inscritto nel quadrato.
- Le due diagonali del quadrato;
- Il disegno del diametro del cerchio sia in orizzontale che in verticale.

![p5.js - Esercizio di disegno della rosa dei venti](/static/coding/web/p5js/graphics-primitives_exe_rosa_venti.png "p5.js - Disegno della rosa dei venti")

## Esercizi sugli angoli

Data una circonferenza di diametro a scelta dello studente, utilizzando la funzione ``arc``, disegnare gli archi di circonferenza aventi le seguenti ampiezze: 30, 45, 60, 90, 180, 270 e 360 gradi. Sotto ogni arco, aggiungere un testo indicante l'ampiezza dell'arco.
Dato che la funzione ``arc`` disegna gli archi misurando gli angoli in senso orario, disegnare gli archi di circonferenza della stessa ampiezza indicata in precedenza, simulando però che gli archi siano disegnati misurando gli angoli in senso antiorario. Anche per questo punto, sotto ogni arco deve essere aggiunto un testo indicante l'ampiezza dell'arco.

![p5.js - Esercizio sugli angoli](/static/coding/web/p5js/graphics-primitives_exe_angoli.png "p5.js - Esercizio sugli angoli")
