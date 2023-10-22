---
type: "p5js"
title: 'p5.js Lez. 04.1 - Progetto "orologio analogico"'
description: 'Requisiti del progetto "orologio analogico"'
date: 2022-07-20
publishdate: 2022-07-20
lastmod: 2022-07-20
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: 'Requisiti del progetto "orologio analogico"'
weight: 8670
---

# Progetto "orologio analogico"

## Requisiti funzionali

Si sviluppi il progetto "orologio analogico", utilizzando la libreria grafica ``p5.js`` e la libreria dei suoni ``p5.sound.js`` per il disegno e la riproduzione degli oggetti necessari. I requisiti funzionali del progetto sono i seguenti:

1. Il rettangolo di gioco deve avere una dimensione adatta alla pagina web; I colori e gli stili sono a scelta dello studente;
2. Realizzare il quadrante dell'orologio con la forma desiderata; Disegnare i numeri delle ore e dei minuti sul quadrante;
3. Utilizzando l'orario di sistema, disegnare ore, minuti e secondi sotto il quadrante dell'orologio;
4. Utilizzando le funzioni trigonometriche appropriate e le dovute proporzioni, realizzare le lancette dell'orologio (che partono dal centro del quadrante);
5. Utilizzare commenti, nomi di variabili appropriati e comprensibili, l'indentazione opportuna.

Di seguito, un'immagine del progetto da realizzare.

![p5.js - progetto orologio analogico](/static/coding/web/p5js/progettoOrologio.png "p5.js - progetto orologio analogico")

## Fasi di realizzazione

Le fasi di realizzazione da seguire per sviluppare il progetto sono le seguenti:

**Fase 1:** inserire nella funzione ``setup()`` l'impostazione d'uso degli angoli sessagesimali:

```javascript
function setup() {
    createCanvas(...);
    angleMode(DEGREES);
}
```

**Fase 2:** Disegnare il quadrante dell'orologio ed i numeri delle ore e dei minuti sul quadrante;

**Fase 3:** dichiarare le variabili che contengano le ore, i minuti ed i secondi ed inizializzarle a zero; nella funzione ``draw()`` assegnare il valore delle ore, minuti e secondi alle variabili corrispondenti, come di seguito indicato:

```javascript
h = hour();
m = minute();
s = second();
```

Visualizzare nell'area da disegno l'orario (il contenuto delle variabili);

**Fase 4:** E' necessario calcolare di quanti gradi deve essere spostata la lancetta delle ore quando si passa da un'ora alla successiva, tenendo presente che la circonferenza è di 360 gradi e sul quadrante dell'orologio sono presenti 12 ore. Il calcolo può essere salvato in una nuova variabile ``gradiDeltaOre`` da dichiarare. Un calcolo simile deve essere fatto per i minuti ed i secondi, per cui saranno necessarie anche le variabili ``gradiDeltaMinuti`` e ``gradiDeltaSecondi``;

![p5.js - rapporto ore - proporzione](/static/coding/web/p5js/progettoOrologio-proporzione.png "p5.js - rapporto ore - proporzione")

Calcolato lo spostamento in gradi per ogni ora, è necessario calcolare lo spostamento per il numero di ore indicato dal sistema (e già memorizzato nella variabile ``h``). A ``3`` ore corrisponde uno spostamento di tre volte il valore di ``gradiDeltaOre``, a 5 ore corrisponde uno spostamento di cinque volte il valore di ``gradiDeltaOre`` e cosi via. Un calcolo simile deve essere fatto per i minuti ed i secondi. Sarà quindi necessario dichiarare le variabili ``hGradi``, ``mGradi`` e ``sGradi`` per memorizzare questo calcolo.

![p5.js - rapporto ore - spostamento](/static/coding/web/p5js/progettoOrologio-spostamento.png "p5.js - rapporto ore - spostamento")

E' necessario infine ricordare che le lancette partono dalle ore ``12`` e procedono in senso orario, mentre gli angoli in ``p5.js`` si misurano prendendo come riferimento l'angolo ``0°`` (che si trova quando la lancetta si posa sul numero ``3`` del quadrante) ed effettuando una rotazione in senso orario. Per creare la corrispondenza tra le ore e gli angoli, è necessario effettuare una correzione di un angolo retto, sottraendo alle variabili ``hGradi``, ``mGradi`` e ``sGradi`` il valore di ``90°`` (come a dire la lancetta delle ``3`` si riporta indietro di ``90°`` e quindi si trova sulle ore ``12`` e da questa lancetta si inizia a misurare l'angolo);

**Fase 5:** dichiarare tre variabili ``rh``, ``rm`` e ``rs``, che rappresentano la lunghezza della lancetta delle ore, dei minuti e dei secondi. Per ognuna scegliere un valore tale che ``rh < rm < rs``;

**Fase 6:** disegnare la lancetta delle ore che ha il punto di origine nel centro del quadrante ``x, y`` ed il punto di fine in posizione:

```javascript
pXFineLancettaOre = x + rh * cos(hGradi)
pYFineLancettaOre = y + rh * sin(hGradi)
```

**Fase 7:** disegnare la lancetta dei minuti e dei secondi seguendo lo stesso ragionamento fatto per disegnare quella delle ore.

## Criteri di valutazione

<!-- markdownlint-disable MD009 MD036 -->

 |              |     |     |     |     |
---       | --- | --- | --- | --- | --- | ---
Esercizio |  1  |  2  |  3  |  4  |  5  | Totale Punti
Max punti |  1  |  1  |  2  |  5  |  1  |
Punti     |     |     |     |     |     |

Cognome ______________
Nome ______________
Classe __________
Data __________

<!-- markdownlint-enable MD009 MD036 -->
