---
type: "p5js"
title: 'p5.js Lez. 05.3 - Progetto "acchiappapalline"'
description: 'Requisiti del progetto "acchiappapalline"'
date: 2022-05-22
publishdate: 2022-05-22
lastmod: 2022-05-22
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: 'Requisiti del progetto "acchiappapalline"'
weight: 8654
---

# Progetto "acchiappapalline"

## Requisiti funzionali

Si sviluppi il progetto "acchiappapalline", utilizzando la libreria grafica ``p5.js`` e la libreria dei suoni ``p5.sound.js`` per il disegno e la riproduzione degli oggetti necessari. I requisiti funzionali del progetto sono i seguenti:

1. Il rettangolo di gioco deve avere una dimensione adatta alla pagina web, deve contenere le palline che cadono e la racchetta per prenderle; I colori della racchetta, delle palline e dello sfondo sono a scelta dello studente. Una serie di 20 palline devono essere posizionate casualmente nell'area superiore del rettangolo di gioco (o anche più in alto, in modo che non siano visibili all'avvio del gioco). La racchetta deve essere posizionata poco distante dal bordo inferiore dell'area da disegno;
2. All'avvio del gioco, le palline iniziano a muoversi verticalmente verso il basso;
3. Il giocatore controlla la racchetta attraverso il mouse, la può muovere solo orizzontalmente. I bordi della racchetta non possono uscire dall'area di gioco;
4. Quando la posizione verticale di una pallina supera la posizione verticale della racchetta, allora la pallina è da considerarsi persa, quindi si toglie un punto al giocatore e la pallina viene riposizionata casualmente nell'area superiore del rettangolo di gioco (o anche più in alto), in modo tale che possa cadere nuovamente;
5. Quando la posizione della pallina e la posizione della racchetta si sovrappongono, allora la pallina è da considerarsi recuperata, quindi si aggiunge un punto al giocatore e la pallina viene riposizionata casualmente nell'area superiore del rettangolo di gioco (o anche più in alto), in modo tale che possa cadere nuovamente;
6. Si può scegliere di continuare il gioco all'infinito, di aumentare la velocità di movimento delle palline in base al punteggio, di terminare il gioco dopo un certo numero di palline perse e così via, secondo la propria fantasia.

Di seguito, un'immagine del gioco da realizzare.

![p5.js - progetto acchiappapalline](/static/coding/web/p5js/colors_and_styles_exe_acchiappapalline_01.png "p5.js - progetto acchiappapalline")

## Fasi di realizzazione

Le fasi di realizzazione da seguire per sviluppare il progetto sono le seguenti:

**Fase 1:** dichiara le variabili ``x1``, ``y1`` e ``d1`` che rappresentano le coordinate della pallina ed il diametro, quindi disegna una pallina, come nel seguente esempio:

```javascript
circle(x1, y1, d1);
```

**Fase 2:** se la coordinata ``y1`` della pallina è maggiore di ``400``, allora imposta la coordinata ``y1`` al valore ``0`` altrimenti incrementala di ``10``. Verificare che la pallina si muova verso il basso e poi raggiunto il fondo ricompaia in alto;

**Fase 3:** disegna un rettangolo sulla parte inferiore dell'area da disegno e fa sì che si muova solo verso destra o verso sinistra con il mouse;

**Fase 4:** calcola la distanza ``d1`` della pallina con il rettangolo;

**Fase 5:** Se la pallina tocca il rettangolo, cioè se la distanza ``d1`` è minore del raggio della pallina, allora riporta la pallina su impostando ``y1`` al valore ``0`` ed assegna alla variabile ``x1`` un nuovo valore casuale (maggiore di ``0`` e inferiore alla larghezza dell'area da disegno) per far si che si sposti verso destra o sinistra;

**Fase 6:** Gestire il punteggio con questa regola: se l'utente "acchiappa" la pallina, allora guadagna un punto. Se la pallina esce dal bordo e viene riportata in alto allora l'utente perde un punto;

**Fase 7:** Aggiungere altre palline ripetendo le fasi da 1 a 6.

## Criteri di valutazione

<!-- markdownlint-disable MD009 MD036 -->

 |              |     |     |     |     |     |
---       | --- | --- | --- | --- | --- | --- | ---
Esercizio |  1  |  2  |  3  |  4  |  5  |  6  | Totale Punti
Max punti |  1  |  1  |  2  |  2  |  2  |  2  |
Punti     |     |     |     |     |     |     |

Cognome ______________
Nome ______________
Classe __________
Data __________

<!-- markdownlint-enable MD009 MD036 -->
