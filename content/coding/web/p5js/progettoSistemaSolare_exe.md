---
type: "p5js"
title: 'p5.js Lez. 04.2 - Progetto "Sistema Solare"'
description: 'Requisiti del progetto "Sistema Solare"'
date: 2023-08-02
publishdate: 2023-08-02
lastmod: 2023-08-02
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: 'Requisiti del progetto "Sistema Solare"'
weight: 8668
---

# Progetto "Sistema Solare"

## Requisiti funzionali

Si sviluppi il progetto "Sistema Solare", utilizzando la libreria grafica ``p5.js`` e la libreria dei suoni ``p5.sound.js`` per il disegno e la riproduzione degli oggetti necessari. I requisiti funzionali del progetto sono i seguenti:

1. L'area da disegno deve avere una dimensione adatta alla pagina web; I colori e gli stili sono a scelta dello studente; Il Sole deve essere posizionato al centro dell'area da disegno, coordinate e diametro devono essere memorizzati in opportune variabili;
2. Per il pianeta "Terra" dichiarare le opportune variabili per il nome, le coordinate, il diametro, la distanza dal Sole e l'angolo rispetto al Sole; L'angolo va inizializzato al valore zero;
3. In base all'angolo e alla distanza del pianeta, calcolare le coordinate (x, y) e quindi disegnare il pianeta;
4. Verificare che il pianeta sia visibile nell'area da disegno e che sia allineato orizzontalmente rispetto al Sole;
5. Incrementare l'angolo rispetto al Sole e verificare che il pianeta ruoti intorno al Sole;
6. Seguendo i passi dal 2 al 5, disegnare gli altri pianeti del Sistema Solare;
7. Seguendo i passi dal 2 al 5 e prendendo di riferimento il pianeta Terra anziché il Sole, disegnare la Luna e verificare che ruoti intorno alla Terra.

Di seguito, un'immagine del progetto da realizzare.

![p5.js - progetto Sistema Solare](/static/coding/web/p5js/progettoSistemaSolare.png "p5.js - progetto Sistema Solare")

## Fasi di realizzazione

Le fasi di realizzazione da seguire per sviluppare il progetto sono le seguenti:

**Fase 1:** inserire nella funzione ``setup()`` l'impostazione d'uso degli angoli sessagesimali:

```javascript
function setup() {
    createCanvas(...);
    angleMode(DEGREES);
}
```

**Fase 2:** Dichiarare le variabili per il Sole e disegnarlo utilizzando tali variabili; Dichiarare le variabili per il pianeta Terra;

**Fase 3:** Per calcolare le coordinate (x, y) del pianeta è necessario ricordare alcune nozioni di trigonometria; Dato che il pianeta ha un angolo ed una distanza rispetto al Sole, allora è necessario ricordare che le coordinate (x, y) sono espresse secondo queste formule:

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

**Fase 4:** Verificare che il pianeta sia visibile, altrimenti modificare la distanza, il diametro e verificare le coordinate appena calcolate (magari disegnandole con la funzione ``text``).

**Fase 5:** Incrementare l'angolo e verificare la rotazione del pianeta:

```javascript
angolo = angolo + ;
```

**Fase 6:** Seguendo le fasi dalla 2 alla 5, disegnare gli altri pianeti del Sistema Solare;

**Fase 7:** Seguendo le fasi dalla 2 alla 5, disegnare la Luna che ruota intorno alla Terra.

## Criteri di valutazione

<!-- markdownlint-disable MD009 MD036 -->

 |              |     |     |     |     |     |     |
---       | --- | --- | --- | --- | --- | --- | --- | ---
Esercizio |  1  |  2  |  3  |  4  |  5  |  6  |  7  | Totale Punti
Max punti |  1  |  1  |  2  |  1  |  2  | 1.5 | 1.5 |
Punti     |     |     |     |     |     |     |     |

Cognome ______________
Nome ______________
Classe __________
Data __________

<!-- markdownlint-enable MD009 MD036 -->
