---
type: "p5js"
title: 'p5.js Lez. 05.4 - Progetto "complemento a 1"'
description: 'Requisiti del progetto "complemento a 1"'
date: 2022-07-20
publishdate: 2022-07-20
lastmod: 2022-07-20
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: 'Requisiti del progetto "complemento a 1"'
weight: 8652
---

# Progetto "complemento a 1"

## Requisiti funzionali

Si sviluppi il progetto "complemento a 1", utilizzando la libreria grafica ``p5.js`` e la libreria dei suoni ``p5.sound.js`` per il disegno e la riproduzione degli oggetti necessari. I requisiti funzionali del progetto sono i seguenti:

1. Il rettangolo di gioco deve avere una dimensione adatta alla pagina web; I colori e gli stili sono a scelta dello studente;
2. All'avvio del programma, l'utente deve poter inserire uno alla volta i valori di 8 bit;
3. Inseriti i valori degli 8 bit, questi vengono visualizzati partendo da sinistra con quello più significativo (MSB = Most significative bit) e procedendo verso destra per terminare con il meno significativo (LSB = Last significative bit) all'estremo destro;
4. Inseriti i valori degli 8 bit, per ogni bit viene calcolato il complemento ad uno;
5. Per ogni bit visualizzato, visualizzare sotto ogni bit il complemento ad uno calcolato;
6. Calcolare il valore decimale dei bit inseriti;
7. Calcolare il valore decimale dei bit in complemento ad 1.

Di seguito, un'immagine del progetto da realizzare.

![p5.js - progetto complemento a 1](/static/coding/web/p5js/progettoComplemento1.png "p5.js - progetto complemento a 1")

## Fasi di realizzazione

Le fasi di realizzazione da seguire per sviluppare il progetto sono le seguenti:

**Fase 1:** dichiara le variabili che devono contenere il valore degli otto bit e inizializzale tutte a zero. Allo stesso modo dichiara le variabili che devono contenere il valore di ogni operazione di complemento ad 1 su un bit ed inizializzale tutte a zero;

**Fase 2:** scrivere nell'area da disegno tutti i bit partendo da quello meno significativo e arrivando a quello più significativo;

**Fase 3:** scrivere nell'area da disegno tutte le variabili che contengono il risultato delle operazioni di complemento a uno (anche se non sono stati ancora calcolati);

**Fase 4:** nella funzione setup, per ogni bit calcolare il complemento a 1 e salvarlo nella variabile di complemento corrispondente;

**Fase 5:** convertire gli 8 bit è il corrispondente valore decimale;

**Fase 6:** convertire gli 8 bit che formano il complemento a 1 nel corrispondente valore decimale;

## Criteri di valutazione

<!-- markdownlint-disable MD009 MD036 -->

 |              |     |     |     |     |     |     |
---       | --- | --- | --- | --- | --- | --- | --- | ---
Esercizio |  1  |  2  |  3  |  4  |  5  |  6  |  7  | Totale Punti
Max punti |  1  |  1  |  1  |  1  |  2  |  2  |  2  |
Punti     |     |     |     |     |     |     |     |

Cognome ______________
Nome ______________
Classe __________
Data __________

<!-- markdownlint-enable MD009 MD036 -->
