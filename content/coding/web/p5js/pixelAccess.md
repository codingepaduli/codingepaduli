---
type: "p5js"
title: "05 - Accesso ai pixel di un'immagine"
description: "Accesso ai pixel di un'immagine con la libreria grafica p5.js"
date: 2020-09-26
publishdate: 2020-09-26
lastmod: 2020-09-26
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Accesso ai pixel di un'immagine con la libreria grafica p5.js"
customJS: ["/static/js/p5-1.2.0-min.js", "/static/coding/web/p5js/pixelAccess.js"]
---

# Accesso ai pixel di un'immagine

Di seguito, l'esempio funzionante in ambiente web dell'accesso ai pixel dell'immagine caricata nel canvas.

Si ricorda che per motivi di sicurezza, è necessario dare il permesso al browser di accedere ai dati del canvas, altrimenti tutti i pixel restituiranno colore RGB=(255, 255, 255);

Per leggere l'immagine si fa uso della funzione ``loadImage``, come di seguito riportato:

```javascript
img = loadImage('https://live.staticflickr.com/2838/9541969423_9c513ed6a1_b.jpg');
```

Si fa uso della variabile ``drawingContext`` di p5.js, che effettua quel che in JavaScript corrisponde a ``canvas.getContext('2d');`` e che permette l'accesso diretto ai dati del canvas, come di seguito riportato:

```javascript
canvas = createCanvas(800, 700).parent('pixelAccess');
ctx = canvas.drawingContext;
```

Infine, si fa uso della funzione ``ctx.getImageData`` per accedere al singolo pixel (gli ultimi due argomenti indicano un'area di 1 pixel per 1 pixel):

```javascript
pixel = ctx.getImageData(mouseX, mouseY, 1, 1).data;
```

A questo punto si può accedere ai colori del pixel, ricordando che sono codificati in formato RGB, quindi in prima posizione si trova il rosso, in seconda il verde ed in terza il blu:

```javascript
let red = pixel[0];
let green = pixel[1];
let blue = pixel[2];
let alpha = pixel[3] / 255;
```

Di seguito, l'implementazione dell'applicazione per l'accesso ai pixel di un'immagine.

<div id="pixelAccess"></div>
