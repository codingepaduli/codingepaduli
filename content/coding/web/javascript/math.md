---
type: "javascript"
title: "JavaScript - Operatori ed operazioni matematiche"
description: "Descrizione degli standard, degli operatori e delle operazioni matematiche per il calcolo automatico, descrizione delle precedenze degli operatori nelle espressioni matematiche"
date: 2021-08-26
publishdate: 2021-08-26
lastmod: 2021-08-26
spellcheck: 2020-01-01
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: true
toc: false
summary: "Descrizione degli standard, degli operatori e delle operazioni matematiche per il calcolo automatico, descrizione delle precedenze degli operatori nelle espressioni matematiche"
customJS: ["/static/js/p5-1.2.0-min.js", "/static/coding/web/p5js/basics.js"]

references:
    -   title: "Algebra di Boole"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://it.m.wikipedia.org/wiki/Algebra_di_Boole"
        description: "Algebra di Boole"
    -   title: "Standard IEEE 754"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://it.m.wikipedia.org/wiki/IEEE_754"
        description: "Standard per l'aritmetica a virgola mobile in base binaria per i sistemi basati su microprocessore"
    -   title: "Floating Point Math"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://0.30000000000000004.com/"
        description: "Aritmetica a virgola mobile per i vari linguaggi di programmazione"
---

# JavaScript - Operatori ed espressioni matematiche

I moderni sistemi informatici sono notoriamente chiamati sistemi **digitali**, in quanto i numeri sono rappresentati utilizzando il sistema numerico binario, che fa uso di due soli simboli (0 e 1), e non il sistema numerico decimale, che ne utilizza dieci (da 0 a 9).

Questi sistemi computerizzati sono gestiti da un microprocessore dotato di diverse unità per l'esecuzione delle operazioni matematiche e logiche. Si tratta di più unità perché i microprocessori odierni sono multi-core, per cui, un dual-core ha il doppio, un quad-core ha il quadruplo, un exa-core ha il sestuplo delle unità rispetto ai microprocessori single-core di un tempo.

<!-- introdurre il concetto di core ?? -->

Un microprocessore contiene più **unità aritmetico logiche**, le quali svolgono operazioni aritmetiche (come la somma e la moltiplicazione) e logiche (come uguaglianza, congiunzione logica e negazione), esclusivamente sui numeri interi. Le regole che definiscono la rappresentazione dei numeri e le operazioni che si possono effettuare sui numeri interi sono definite dall'algebra di Boole e dal sistema numerico binario.

Un microprocessore contiene più **unità aritmetiche a virgola mobile**, le quali svolgono operazioni aritmetiche esclusivamente sui numeri decimali. Le regole che definiscono la rappresentazione e le operazioni relative ai numeri in virgola mobile sono descritte dallo standard IEEE 754 e successiva revisione IEEE 754r, che in particolare indicano:

- che i numeri in virgola mobile si rappresentano secondo la [notazione scientifica](https://it.m.wikipedia.org/wiki/Notazione_scientifica);
- la precisione dei numeri a 32 bit, a 64 bit e a 128 bit;
- i metodi di arrotondamento e perdita di precisione;
- le casistiche eccezionali relative alle operazioni matematiche non valide, come una divisione per zero o una radice quadrata di un numero negativo, che sono gestite restituendo il valore speciale NaN (Not a Number);
- le casistiche eccezionali relative alle operazioni matematiche con risultato "Infinito", come ad esempio il calcolo di un numero elevato a potenza o la divisione di un numero per zero, che restituisce più o meno infinito (come da specifiche IEEE 754).

Il programmatore può riferirsi alle regole ed agli standard sopra citati per comprendere i dettagli matematici alla base di alcuni risultati.

Ad esempio, il risultato di ``0.1 + 0.2`` non fa ``0.3`` come ci si potrebbe aspettare, ma fa ``0.30000000000000004``, e questo avviene con qualsiasi linguaggio di programmazione, dato che ``0.3`` non può essere rappresentato precisamente utilizzando il sistema binario.

## Espressioni matematiche

Le espressioni sono sequenze di operazioni da eseguire su più numeri o variabili. Le operazioni da eseguire sono indicate dagli operatori matematici. Ad esempio, l'espressione ``3 + 4 * 5`` indica la somma dei numeri ``3`` e ``4`` e la successiva moltiplicazione del risultato con il numero ``5``.

L'operazione di calcolo del risultato di un'espressione è detta **valutazione**, pertanto le espressioni sono **valutate** calcolando le operazioni da sinistra verso destra, applicando passo dopo passo gli operatori ai dati o alle variabili indicate.

Ad esempio, nell'espressione ``5 + 4 - 7`` si procede prima al calcolo della somma ``5 + 4``, che ha come risultato ``9``, e poi si prosegue al calcolo della differenza ``9 - 7``, che restituisce ``2``. Nel complesso, la valutazione dell'espressione menzionata ha come risultato ``2``.

Gli operatori più comuni sono applicati ad una coppia di valori, in genere dello stesso tipo. Ad esempio, la somma, il prodotto, la differenza sono operatori che si applicano ad una coppia di numeri.

Meno comuni sono gli operatori che si applicano ad un singolo valore, ad esempio la negazione.

Nel processo di valutazione di un'espressione matematica, è importante tener presente che alcuni operatori hanno la precedenza rispetto ad altri, come ad esempio la moltiplicazione che ha precedenza sulla sottrazione. Per questo motivo, nella valutazione delle espressioni matematiche, si procede prima con il calcolo delle operazioni che hanno maggiore precedenza, per poi continuare con il calcolo delle operazioni con precedenza minore. Quando tutte le precedenze sono state gestite,

Ad esempio, data l'espressione

``3 + 4 * 5 + 6``

la moltiplicazione tra i numeri ``4`` e ``5`` ha la precedenza, quindi viene calcolata per prima, restituendo valore ``20``.

L'espressione risultante è quindi

``3 + 20 + 6``

Dato che non ci sono altre precedenze da gestire, l'espressione viene valutata da sinistra verso destra, quindi prima viene fatta la somma tra ``3`` e ``20`` che restituisce il valore ``23`` e poi questo viene sommato a ``6``, restituendo il risultato ``29``. Per cui, la valutazione dell'espressione restituisce il risultato ``29``.

 E' possibile però modificare l'ordine delle operazioni da svolgere utilizzando le parentesi tonde ``(`` e ``)``.

 Ad esempio, data l'espressione

 ``((3 + 4) - 5) * 6``

 le parentesi tonde hanno la precedenza, per cui viene prima valutato il risultato della somma tra ``3`` e ``4``, restituendo ``7``. Vi è ancora una parentesi tonda che ha precedenza, quindi viene valutato il risultato della sottrazione tra ``7`` e ``5``, restituendo due. Quindi viene svolta la moltiplicazione tra ``2`` e ``6``, restituendo ``12``. Per cui, la valutazione dell'espressione restituisce il risultato ``12``.

Nonostante la gestione delle precedenze possa sembrare semplice, quando si valutano espressioni con un vasto numero di operatori differenti nella stessa espressione si può incorrere in errori di valutazione dato che le precedenze non sono scontate.

## Operatori aritmetici

Gli operatori aritmetici utilizzati per svolgere le operazioni di base sono i seguenti:

- ``+`` effettua la somma di due numeri;
- ``-`` calcola la differenza tra due numeri;
- ``*`` effettua la moltiplicazione di due numeri;
- ``/`` calcola la divisione tra due numeri;
- ``%`` calcola il resto della divisione tra due numeri.

In ambito informatico sono utilizzati anche gli operatori di incremento e decremento di una singola unità, e sono i seguenti:

- ``++`` incrementa il numero di una singola unità;
- ``--`` decrementa il numero di una singola unità.

Un esempio d'uso degli operatori aritmetici è il seguente:

```javascript
console.info(3 + 4);
console.info(3 - 4);
console.info(3 * 4);
console.info(3 / 4);
console.info(3 % 4);

let x1 = 3 + 4 * 5;
console.info(x1);
x1++;
console.info(x1);
x1--;
console.info(x1);
console.info(-x1);
alert(-x1);
```

## Operatori relazionali

Gli operatori relazionali, utilizzati per valutare le relazioni tra i numeri, come quelle di maggioranza o di uguaglianza, sono i seguenti:

- ``>`` relazione di maggioranza;
- ``<`` relazione di minoranza;
- ``==`` relazione di uguaglianza;
- ``>=`` relazione di maggioranza o uguaglianza;
- ``<=`` relazione di minoranza o uguaglianza;
- ``!=`` relazione di disuguaglianza.

A questi operatori, si aggiungono poi due operatori particolari, che confrontano anche i tipi di dato, oltre che i valori. Questi operatori sono comuni nei linguaggi debolmente tipizzati, come JavaScript, e sono:

- ``===`` relazione di uguaglianza stretta (valore e tipo di dato uguali);
- ``!==`` relazione di disuguaglianza stretta (valore o tipo di dato differenti).

Un esempio d'uso degli operatori relazionali è il seguente:

```javascript
console.info(3 < 4);
console.info(3 == 4);
console.info(3 > 4);
console.info(3 != 4);
console.info(4 >= 4);
console.info(4 <= 4);

let x2 = (3 <= 5);
console.info(x2);
alert(!x2);
```

## Operatori logici

Gli operatori logici permettono di lavorare con i valori di verità delle proposizioni logiche, ovvero con i valori **vero** o **falso**. Ad esempio la proposizione ``3 < 4`` ha il valore **vero**. Gli operatori logici permettono quindi di congiungere, disgiungere o negare proposizioni, e sono di seguito elencati:

- ``&&`` congiunzione logica AND;
- ``||`` disgiunzione logica OR;
- ``!`` negazione logica NOT.

Un esempio d'uso degli operatori logici è il seguente:

```javascript
console.info( (3 < 4) && (4 < 5) );
console.info( (3 < 4) || (4 > 5) );
console.info( ! (3 < 4) );

let x3 = (3 < 4) && (4 < 5)
console.info(x3);

x3 = (4 > 5) || true;
console.info(x3);
```

## Operatori binari

Gli operatori binari operano sulla rappresentazione binaria dei numeri e permettono le classiche operazioni disponibili nell'algebra di Boole.

- ``&`` operazione di and booleano tra due sequenze di bit;
- ``|`` operazione di or booleano tra due sequenze di bit;
- ``^`` operazione di xor booleano traue sequenze di bit;
- ``~`` operazione di not booleano su una sequenza di bit;
- ``<<`` shift sinistro di n posizioni;
- ``>>`` shift destro di n posizioni;
- ``>>>`` shift destro senza segno di n posizioni.

Un esempio d'uso degli operatori binari è il seguente:

```javascript
console.info(3 & 5);
console.info(3 | 5);
console.info(3 ^ 5);
console.info(3 ~ 5);
console.info(3 << 5);
console.info(3 >> 5);
console.info(3 >>> 5);

let x4 = 3 & 5;
console.info(x4);
```
