---
type: "dab-coding"
title: "DAB e coding"
description: "Esercizi sui diagrammi a blocchi e sul coding"
date: 2023-07-23
publishdate: 2023-07-23
lastmod: 2023-07-23
categories: ["coding", "dab-coding"]
keywords: ["coding", "dab-coding"]
draft: true
toc: false
summary: "Esercizi sui diagrammi a blocchi e sul coding"
weight: 12020
---

# DAB e coding

## Traccia

Analizzare il problema descritto in calce e quindi realizzare e consegnare:

1. il diagramma a blocchi (file di flowgorithm con estensione ".fprg");
2. l'immagine vettoriale del diagramma a blocchi (file con estensione ".svg");;
3. l'immagine in formato PNG del diagramma a blocchi;
4. l'immagine della finestra delle variabili;
5. l'immagine della finestra di esecuzione;
6. la codifica nel linguaggio di programmazione (file con estensione ".c").

L'esercitazione deve terminare 15 minuti prima del termine delle ore a disposizione; Ogni file consegnato deve iniziare con il proprio cognome (non il nome) seguito dalla data in formato ``aaaa-mm-gg`` (usando il carattere "trattino" e non la barra) e poi dalla descrizione del file e relativa estensione, ad esempio "2022-03-01-Rossi-finestra variabili.png".

Al termine dell'esercitazione, indicare in un commento ogni punto che è stato rispettato, come nel seguente esempio:

```plaintext
punto 1 - rispettato;
punto 2 - rispettato;
punto 3 - rispettato;
punto 4 - rispettato;
punto 5 - rispettato;
punto 6 - rispettato;
```

Prima di iniziare il lavoro, smartphone e smartwatch devono essere lasciati sulla cattedra o nello zaino nella zona comune.

L'esercitazione sarà annullata per:

- chi viene sorpreso in possesso di smartphone e/o smartwatch, anche se in tasca o sulla scrivania;
- chi viene sorpreso ad utilizzare le chat online o a inviarsi la soluzione via email;
- chi viene richiamato più di una volta a parlare con i propri compagni;
- chi viola le regole di laboratorio o le regole di comportamento condivise.

## Equazione di secondo grado

Realizzare un programma che permetta di risolvere un equazione di secondo grado ``ax^2 + bx + c = 0`` che ha ``delta = b b - 4ac``.

A partire dai coefficienti ``a``, ``b`` e ``c`` calcolare il ``delta`` e visualizzarlo in output. Inoltre:

- se ``delta > 0`` allora scrivere in output ``"L'equazione ammette due soluzioni reali e distinte"``;
- se ``delta = 0`` allora scrivere in output ``"L'equazione ammette due soluzioni reali e coincidenti"``;
- se ``delta < 0`` allora scrivere in output ``"L'equazione ammette due soluzioni immaginarie"``.

Sia nel caso del delta maggiore di zero, sia nel caso di delta uguale a zero, calcolare le soluzioni:

- ``x1 = (-b -Sqrt(delta))/(2*a)``;
- ``x2 = (-b +Sqrt(delta))/(2*a)``;

File da consegnare:

- [Cognome-2023-07-23 DAB equazioni2Grado.fprg](/static/coding/dab-coding/equazioni2Grado.fprg);
- [Cognome-2023-07-23 Immagine DAB equazioni2Grado.svg](/static/coding/dab-coding/equazioni2Grado.svg);
- [Cognome-2023-07-23 Immagine DAB equazioni2Grado.png](/static/coding/dab-coding/equazioni2Grado.png);
- [Cognome-2023-07-23 Immagine finestra variabili equazioni2Grado.png](/static/coding/dab-coding/equazioni2Grado-variabili.png);
- [Cognome-2023-07-23 Immagine finestra esecuzione equazioni2Grado.png](/static/coding/dab-coding/equazioni2Grado-esecuzione.png);
- [Cognome-2023-07-23 sorgenti equazioni2Grado.cpp](/static/coding/dab-coding/equazioni2Grado.cpp);

## Selezione operazione

A partire da 2 numeri e dal tipo operazione ``T``, se ``T = 1`` determinare la somma dei 2 numeri altrimenti se ``T = 2`` determinare la differenza dei 2 numeri altrimenti se ``T = 3`` determinare il prodotto dei 2 numeri altrimenti se ``T = 4`` determinare la divisione dei 2 numeri.

## Distanza tra due punti

Calcolare la distanza tra due punti A di coordinate (x1, y1) e B di
 coordinate (x2, y2), utilizzando il teorema di Pitagora.

File da consegnare:

- [Cognome-2023-07-23 sorgenti distanza2punti.cpp](/static/coding/dab-coding/distanza2punti.cpp);

## Maggiore del limite

Progettare un programma che prenda in input 3 numeri. Per ogni numero verifichi se è maggiore di 400 ed in caso positivo lo reinizializzi a zero, altrimenti lo incrementi di 10;

Al termine visualizzi i numeri.

## Media settimanale delle temperature

Progettare un programma che prenda in input le temperature giornaliere per l'intera settimana e ne calcoli la media; Se la media è inferiore ad 8,
visualizzare il messaggio indicante che la settimana è stata fredda, altrimenti se la media è superiore a 24 visualizzare il messaggio indicante che la settimana è stata calda, altrimenti visualizzare il messaggio che la media settimanale è nella norma;

## Media dei voti di informatica

Progettare un programma che prenda in input il voto scritto, orale e pratico di informatica del primo quadrimestre e ne calcoli la media; prenda in input poi il voto scritto, orale e pratico di informatica del secondo quadrimestre e ne calcoli la media;

Se la media del primo quadrimestre è inferiore a quella del secondo quadrimestre, visualizzi un messaggio che la media è in calo, altrimenti se la media è uguale visualizzi un messaggio che la media è uguale altrimenti visualizzi un messaggio che la media è in aumento.

## Data valida

Progettare un programma che permetta all'utente di inserire tre numeri per giorno, mese ed anno e di verificare se essi corrispondono effettivamente ad una data valida. L'output deve essere un messaggio indicante "la data è valida" oppure "la data è invalida".

Verificare le date per il mese di Febbraio (giorni 30 e 31 non sono validi), verificare che il giorno 31 per i mesi pari non sia valido.
