---
type: "dab-coding"
title: "DAB e coding"
description: "Esercizi sui diagrammi a blocchi e sul coding"
date: 2023-07-23
publishdate: 2023-07-23
lastmod: 2024-11-16
categories: ["coding", "dab-coding"]
keywords: ["coding", "dab-coding"]
draft: false
toc: false
summary: "Esercizi sui diagrammi a blocchi e sul coding"
weight: 12020
---

# DAB e coding

## Regole generali

Analizzare il problema descritto in calce e quindi realizzare e consegnare:

1. il diagramma a blocchi (file di flowgorithm con estensione "``.fprg``");
2. l'immagine vettoriale del diagramma a blocchi (file con estensione "``.svg``");
3. l'immagine del diagramma a blocchi in formato bitmap (file con estensione "``.bmp``");
4. l'immagine della finestra delle variabili (file con estensione "``.png``);
5. l'immagine della finestra di esecuzione (file con estensione "``.png``);
6. la codifica nel linguaggio di programmazione (file con estensione "``.c``" o "``.cpp``").

Ogni nome di file deve iniziare con il proprio ``cognome`` (non il nome) seguito dalla data (in formato ``aaaa-mm-gg``, usando il carattere "trattino" ``-``, e non la barra, per separare i campi), dalla descrizione del file e dalla relativa estensione, ad esempio "``Rossi 2022-03-01 finestra variabili.png``".

Se espressamente indicato, la consegna deve avvenire in un unico pacchetto compresso (file in formato "``.zip``"), con nome del file che rispetta sempre la regola indicata in precedenza (``cognome`` seguito dalla data in formato ``aaaa-mm-gg``, dalla descrizione e dall'estensione "``.zip``").

L'esercitazione deve terminare 15 minuti prima del termine delle ore a disposizione; Prima di iniziare il lavoro, smartphone e smartwatch devono essere lasciati sulla cattedra o nello zaino nella zona comune.

L'esercitazione sarà annullata per:

- chi viene sorpreso in possesso di smartphone e/o smartwatch, anche se in tasca o sulla scrivania;
- chi viene sorpreso ad utilizzare le chat online o a inviarsi la soluzione via email;
- chi viene richiamato più di una volta a parlare con i propri compagni;
- chi viola le regole di laboratorio o le regole di comportamento condivise con l'insegnante.

Superato la scadenza temporale impostata, la piattaforma impedisce la consegna di ulteriori lavori. E' compito dello studente organizzarsi per consegnare nel tempo previsto.

Per ogni problema assegnato sarà valutata la correttezza della consegna e la qualità del codice prodotto, in particolare sarà valutato:

- se tutti i file sono stati consegnati;
- se il nome e l'estensione di ogni file consegnato sono corretti;
- se l'eventuale file compresso contiene tutti i file ed il nome è corretto;
- se nel DAB e nel codice sono presenti i commenti;
- se nel primo commento sono indicati autore, data, traccia, input ed output.
- se il codice consegnato compila ed esegue correttamente il programma.

## Equazione di secondo grado

Realizzare un programma che permetta di risolvere un equazione di secondo grado ``ax^2 + bx + c = 0`` che ha ``delta = b b - 4ac``.

A partire dai coefficienti ``a``, ``b`` e ``c`` calcolare il ``delta`` e visualizzarlo in output. Inoltre:

- se ``delta > 0`` allora scrivere in output ``"L'equazione ammette due soluzioni reali e distinte"``;
- se ``delta = 0`` allora scrivere in output ``"L'equazione ammette due soluzioni reali e coincidenti"``;
- se ``delta < 0`` allora scrivere in output ``"L'equazione ammette due soluzioni immaginarie"``.

Sia nel caso del delta maggiore di zero, sia nel caso di delta uguale a zero, calcolare le soluzioni:

- ``x1 = (-b -Sqrt(delta))/(2*a)``;
- ``x2 = (-b +Sqrt(delta))/(2*a)``;

## Calcolatrice

Realizzare un programma che permetta di creare una semplice calcolatrice che svolge un operazione ``T`` su 2 numeri.

A partire dai due numeri, svolgere l'operazione richiesta secondo questo schema:

- se ``T = 1`` calcolare e visualizzare la somma dei 2 numeri;
- se ``T = 2`` calcolare e visualizzare la differenza dei 2 numeri;
- se ``T = 3`` calcolare e visualizzare il prodotto dei 2 numeri;
- se ``T = 4`` calcolare e visualizzare la divisione dei 2 numeri.

### Variante con funzioni

Realizzare la calcolatrice indicata precedentemente, con le seguenti varianti:

- la variabile ``operazione`` deve essere di tipo ``char``;
- le operazioni devono essere realizzate creando le funzioni seguenti:

  1. calcolatrice(num1, num2, operazione);
  2. somma(num1, num2);
  3. sottrazione(num1, num2);
  4. moltiplicazione(num1, num2);
  5. divisione(num1, num2).

## Distanza tra due punti

Realizzare un programma che permetta di calcolare la distanza tra due punti, ``A`` di coordinate (x1, y1) e ``B`` di coordinate (x2, y2), utilizzando il teorema di Pitagora.

## Calcolo dell'area e del perimetro delle figure geometriche indicate

Realizzare un programma che, a partire da un numero ``D`` inserito dall'utente, permetta di calcolare:

- perimetro ed area del quadrato di lato D;
- circonferenza ed area del cerchio di raggio D;
- perimetro ed area del triangolo equilatero di lato D, utilizzando la formula di calcolo dell'area ``SQRT(3/4) * D * D``.

## Maggiore del limite

Realizzare un programma che permetta di inserire 3 numeri e reinizializzare a zero quelli maggiori di 400 e di incrementare di 10 quelli minori o uguali a 400.

Al termine visualizzare i numeri risultanti.

## Media settimanale delle temperature

Progettare un programma che prenda in input le temperature giornaliere per l'intera settimana e ne calcoli la media; Se la media è inferiore ad 8,
visualizzare il messaggio indicante che la settimana è stata fredda, altrimenti se la media è superiore a 24 visualizzare il messaggio indicante che la settimana è stata calda, altrimenti visualizzare il messaggio che la media settimanale è nella norma;

## Media dei voti di informatica

Progettare un programma che prenda in input il voto scritto, orale e pratico di informatica del primo quadrimestre e ne calcoli la media; prenda in input poi il voto scritto, orale e pratico di informatica del secondo quadrimestre e ne calcoli la media;

Se la media del primo quadrimestre è inferiore a quella del secondo quadrimestre, visualizzi un messaggio che la media è in calo, altrimenti se la media è uguale visualizzi un messaggio che la media è uguale altrimenti visualizzi un messaggio che la media è in aumento.

## Data valida

Progettare un programma che permetta all'utente di inserire tre numeri per giorno, mese ed anno e di verificare se essi corrispondono effettivamente ad una data valida. L'output deve essere un messaggio indicante "la data è valida" oppure "la data è invalida".

Traccia extra: Verificare le date per il mese di Febbraio (giorni 30 e 31 non sono validi), verificare che il giorno 31 per i mesi pari non sia valido.

Traccia extra - extra: Verificare che la data sia valida in caso di anno bisestile;

## Ordine crescente o decrescente 2 numeri

Realizzare un programma che permetta di visualizzare in ordine crescente o decrescente i due 2 numeri inseriti dall'utente.

Svolgere l'operazione richiesta secondo questo schema:

- se il tipo di ordinamento ``TO`` è uguale a ``C``, allora  visualizzare i 2 numeri con ordine crescente;
- se il tipo di ordinamento ``TO`` è uguale a ``D``, allora  visualizzare i 2 numeri con ordine decrescente.

## Numero massimo tra 3 numeri

Realizzare un programma che permetta di visualizzare il massimo tra i 3 numeri inseriti dall'utente.

Svolgere l'operazione richiesta secondo questo schema:

- assegnare ad una variabile il valore massimo tra i primi due numeri;
- assegnare ad una seconda variabile "massimo" il valore massimo tra il terzo numero e la variabile precedentemente utilizzata;
- visualizzare la seconda variabile "massimo".

## Prezzo totale tolto lo sconto e la tassa di lusso

Chiedere all'utente di inserire il prezzo di un articolo e la percentuale di sconto da applicare. Calcola il prezzo finale dell'articolo applicando la percentuale di sconto e, se il prezzo totale supera i 10.000 dollari, applica una tassa pari alla radice quadrata del prezzo.
