---
type: "p5js"
title: "p5.js Lez. 04.7 - Progetto Acchiappapalline"
description: "Sviluppo di un videogioco in stile 'acchiappapalline'"
date: 2022-05-22
publishdate: 2022-05-22
lastmod: 2022-05-22
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Sviluppo di un videogioco in stile 'acchiappapalline'"
---

# Progetto Acchiappapalline

Si sviluppi un videogioco in stile "acchiappapalline", utilizzando la libreria grafica p5.js per il disegno degli oggetti necessari. I requisiti funzionali del gioco sono i seguenti:

1. Il rettangolo di gioco deve avere una dimensione adatta alla pagina web, deve contenere le palline che cadono e la racchetta per prenderle; I colori della racchetta, delle palline e dello sfondo sono a scelta dello studente. Una serie di 20 palline devono essere posizionate casualmente nell'area superiore del rettangolo di gioco (o anche più in alto, in modo che non siano visibili all'avvio del gioco). La racchetta deve essere posizionata poco distante dal bordo inferiore dell'area da disegno.
2. All'avvio del gioco, le palline iniziano a muoversi verticalmente verso il basso.
3. Il giocatore controlla la racchetta attraverso il mouse, la può muovere solo orizzontalmente. I bordi della racchetta non possono uscire dall'area di gioco.
4. Quando la posizione verticale di una pallina supera la posizione verticale della racchetta, allora la pallina è da considerarsi persa, quindi si toglie un punto al giocatore e la pallina viene riposizionata casualmente nell'area superiore del rettangolo di gioco (o anche più in alto), in modo tale che possa cadere nuovamente.
5. Quando la posizione della pallina e la posizione della racchetta si sovrappongono, allora la pallina è da considerarsi recuperata, quindi si aggiunge un punto al giocatore e la pallina viene riposizionata casualmente nell'area superiore del rettangolo di gioco (o anche più in alto), in modo tale che possa cadere nuovamente.
6. Si può scegliere di continuare il gioco all'infinito, di aumentare la velocità di movimento delle palline in base al punteggio, di terminare il gioco dopo un certo numero di palline perse e così via, secondo la propria fantasia.

Di seguito, un'immagine del gioco da realizzare.

![p5.js - progetto acchiappapalline](/static/coding/web/p5js/colors_and_styles_exe_acchiappapalline_01.png "p5.js - progetto acchiappapalline")

<!-- markdownlint-disable MD009 MD036 -->

 |              |     |     |     |     |     |
---       | --- | --- | --- | --- | --- | --- | ---
Esercizio |  1  |  2  |  3  |  4  |  5  |  6  | Totale Punti
Max punti |  1  |  1  |  2  |  2  |  2  |  2  |
Punti     |     |     |     |     |     |     |

**Cognome ______________ Nome ______________ Classe __________ Data __________**

<!-- markdownlint-enable MD009 MD036 -->
