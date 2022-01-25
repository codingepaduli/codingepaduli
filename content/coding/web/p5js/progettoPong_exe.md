---
type: "p5js"
title: "p5.js Lez. 04.1 - Progetto Pong"
description: "Sviluppo di un videogioco in stile 'pong'"
date: 2020-09-22
publishdate: 2020-09-22
lastmod: 2020-09-22
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Sviluppo di un videogioco in stile 'pong'"
---

# Progetto Pong

Si sviluppi un videogioco in stile "pong", utilizzando la libreria grafica p5.js per il disegno degli oggetti necessari. I requisiti funzionali del gioco sono i seguenti:

1. **(A)** L'area da disegno è un rettangolo di dimensioni e colore a scelta dello studente, comunque adatte alla pagina web. **(B)** La pallina è un cerchio con coordinate iniziali x=50 ed y=50 e con diametro e colore iniziali a scelta dello studente. **(C)** La racchetta è un rettangolo con coordinate iniziali x=5 ed y=30, e con altezza larghezza a scelta dello studente.
2. Il giocatore può muovere la racchetta tramite mouse, ma solo lungo l'asse verticale.
3. La racchetta non deve oltrepassare il bordo superiore o inferiore dell'area da disegno.
4. La pallina si sposta su entrambi gli assi X ed Y di 10 punti per volta.
5. **(A)** La pallina, arrivata al limite del bordo inferiore o superiore (y=0), inverte la direzione di spostamento sull'asse y. **(B)** Quando, invece, arriva al limite del bordo destro, inverte la direzione di spostamento sull'asse x. **(C)** Quando la racchetta è a contatto con la pallina, quest'ultima assume direzione positiva lungo l'asse x.
6. Ogni qualvolta la pallina tocca la racchetta, la velocità della pallina incrementa.
7. Se la pallina tocca il bordo sinistro, il giocatore perde.

Di seguito, un'immagine del gioco da realizzare.

![p5.js - progetto pong](/static/coding/web/p5js/progettoPong.png "p5.js - progetto pong")

<!-- markdownlint-disable MD009 MD036 -->

 |              |     |     |     |     |     |     |
---       | --- | --- | --- | --- | --- | --- | --- | ---
Esercizio |  1  |  2  |  3  |  4  |  5  |  6  |  7  | Totale Punti
Max punti |  2  |  1  |  2  |  1  |  2  |  1  |  1  | 10
Punti     |     |     |     |     |     |     |     |

**Cognome ______________ Nome ______________ Classe __________ Data __________**

<!-- markdownlint-enable MD009 MD036 -->
