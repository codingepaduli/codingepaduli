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
customJS: ["/static/js/p5-1.2.0-min.js"]
---

# Esercizi di grafica 2D

## Questionario

La libreria p5.js utilizza un sistema di coordinate cartesiano con l'origine degli assi posizionata:

1. al centro dell'area da disegno;
2. nell'angolo in alto a sinistra dell'area da disegno;
3. nell'angolo in basso a destra dell'area da disegno;
4. nell'angolo in basso a sinistra dell'area da disegno;

Il sistema di coordinate cartesiano utilizzato dalla libreria p5.js ha gli assi X ed Y direzionati rispettivamente:

1. da sinistra verso destra e dal basso verso l'alto;
2. da sinistra verso destra e dall'alto verso il basso;
3. da destra verso sinistra e dal basso verso l'alto;
4. da destra verso sinistra e dal basso verso l'alto;

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

1. un solo parametro indicante il punto in cui disegnare il cerchio;
2. due parametri indicanti il punto in cui disegnare il cerchio;
3. tre parametri indicanti il punto in cui disegnare il cerchio ed il raggio ed il diametro del cerchio;
4. quattro parametri indicanti il punto in cui disegnare il cerchio, il raggio ed il diametro del cerchio;

La funzione ``rect`` serve a disegnare un rettangolo nell'area da disegno. Questa funzione prevede:

1. un solo parametro indicante il punto in cui disegnare il rettangolo;
2. due parametri indicanti il punto in cui disegnare il rettangolo;
3. tre parametri indicanti il punto in cui disegnare il rettangolo e dimensione del rettangolo;
4. quattro parametri indicanti il punto in cui disegnare il rettangolo, larghezza ed altezza del rettangolo;

## Esercizi sugli angoli

Data una circonferenza di diametro a scelta dello studente, utilizzando la funzione ``arc``, disegnare gli archi di circonferenza aventi le seguenti ampiezze: 30, 45, 60, 90, 180, 270 e 360 gradi. Sotto ogni arco, aggiungere un testo indicante l'ampiezza dell'arco.
Dato che la funzione ``arc`` disegna gli archi misurando gli angoli in senso orario, disegnare gli archi di circonferenza della stessa ampiezza indicata in precedenza, simulando però che gli archi siano disegnati misurando gli angoli in senso antiorario. Anche per questo punto, sotto ogni arco deve essere aggiunto un testo indicante l'ampiezza dell'arco.

![p5.js - Esercizio sugli angoli](/static/coding/web/p5js/basics_angoli.png "p5.js - Esercizio sugli angoli")

## Disegno di un campo di calcio

Utilizzando le funzioni grafiche conosciute e, soprattutto, le variabili ``width`` ed ``height`` messe a disposizione dalla libreria p5.js, disegnare un campo di calcio grande quanto tutta l'area da disegno e con margine dai bordi di 20 punti;

![p5.js - Esercizio di disegno di un campo di calcio](/static/coding/web/p5js/basics_soccer.png "p5.js - Disegno di un campo di calcio ")
