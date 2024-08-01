---
type: "html"
title: "HTML Lez. 06 - Sistemi numerici"
description: "HTML Lez. 06 - Sistemi numerici"
date: 2024-07-23
publishdate: 2024-07-23
lastmod: 2024-07-23
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 06 - Sistemi numerici"
weight: 9490

references:
    -   title: "Unicode - Egyptian Hieroglyphs"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://unicode-table.com/en/blocks/egyptian-hieroglyphs/"
        description: "Unicode - Egyptian Hieroglyphs"
    -   title: "Proto-cuneiform script"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://en.wikipedia.org/wiki/Proto-cuneiform"
        description: "scrittura Proto cuneiforme"
    -   title: "Unicode - Cuneiform Numbers and Punctuation"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.unicode.org/charts/PDF/U12400.pdf"
        description: "Unicode - Egyptian Hieroglyphs"
    -   title: "A descriptive grammar of Sumerian"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.unicode.org/charts/PDF/U12400.pdf"
        description: "Leiden University - Jagersma Bram Doctoral Thesis - A descriptive grammar of Sumerian"
---

# Sistemi numerici

La necessita di contare nasce probabilmente tra il Paleolitico e il Neolitico con l'esigenza di ripartire il cibo o di contare i capi di bestiame. La parola "contare" ha etimologia latina e deriva dalla parola calcŭlus, che significa "pietruzza", indica proprio l'azione di contare con le pietre.

Di conseguenza i sistemi numerici nascono con l'esigenza di tenere traccia dei beni posseduti o scambiati.

## Sistemi numerici additivi

I primi metodi di conteggio erano basati sulla comparazione, il numero di beni ed il numero di sassolini (o di pietre d'argilla) dovevano corrispondere. Il singolo sassolino aveva il valore di un unità ed il numero complessivo di sassolini indicava il numero di merci o di beni scambiati o posseduti.

Sulle tavolette d'argilla sumere ritrovate erano raffigurati sia il bene, come una pecora o una pianta, sia un numero di segni pari alla quantità del bene, ad esempio cinque sassolini ad indicare cinque pecore o cinque piante.

L'esigenza di contare numeri alti portò all'uso di elementi diversi che nel conteggio rappresentavano quantità differenti, una pietra più grande delle altre poteva avere il significato di 10 capi di bestiame o 10 beni coinvolti nello scambio. Questa differente quantità indicata dai vari elementi fu ovviamente poi riportata anche sulle tavolette d'argilla e nelle scrittura basate su ideogrammi, in cui il simbolo per indicare l'unità si differenziava dal simbolo che indicava le cinquine, che a loro volta si differenziavano dai simboli che indicavano le decine, le centinaia e le migliaia.

Questo sistema per indicare le quantità era molto pratico e di facile utilizzo, man mano che si contavano i beni venivano aggiunte le pietre (grandi o piccole) nei contenitori o i segni sulle tavolette d'argilla o sui papiri, addizionando alla quantità precedentemente contata la nuova quantità. Dovendo scambiare una dozzina di pecore, queste venivano contate, per 10 pecore si disegnava una pietra grande, le 2 pecore rimanenti erano contate singolarmente ed indicate con due pietre piccole. Da notare che se si indicava prima una sola pecora con una pietra piccola, poi la decina di pecore con la pietra grande e poi l'ultima pecora con la pietra piccola, la quantità espressa era sempre una dozzina. Rappresentate su una tavoletta d'argilla o su un papiro, i segni "pietra piccola, pietra grande, pietra piccola" oppure i segni "pietra grande, pietra piccola, pietra piccola" indicavano la stessa quantità, non faceva distinzione l'ordine.

Questo sistema di conteggio abbastanza elementare è stato sviluppato da diverse civiltà, ogni civiltà attribuiva una determinata quantità ad un determinato simbolo, portando alla nascita del concetto di cifra numerica.

Una **cifra numerica** è un simbolo (o un segno) utilizzato per rappresentare un valore all’interno di un sistema di numerazione. Differenti civiltà hanno sviluppato differenti sistemi numerici con differenti cifre numeriche. Nel nostro sistema numerico decimale, le cifre da 0 a 9 sono i segni fondamentali, nel sistema numerico romano le cifre numeriche erano le lettere I, V, X, L, C, D ed M, ognuna indicante una determinata quantità.

Un **numero** è un modo di esprimere una quantità utilizzando una sequenza di cifre numeriche, ad esempio:

- 1034 nel sistema numerico decimale è rappresentato dalle cifre numeriche 1, 0, 3 e 4;
- DCL nel sistema numerico romano è rappresentato dalle cifre numeriche D, C ed L.

Un **sistema di numerazione** è un modo di esprimere e rappresentare i numeri attraverso le cifre numeriche.

Un sistema numerico **additivo** è un sistema numerico nel quale non importa l'ordine con cui sono scritte le cifre numeriche, ogni cifra (simbolo) esprime una determinata quantità ed è addizionando le quantità espresse da tutte le cifre (tutti i simboli) ad indicare la quantità complessiva. La quantità espressa è la stessa, indipendentemente dall'ordine in cui si trovavano i simboli.

Lo svantaggio di questi sistemi numerici additivi è che lo svolgimento delle operazioni matematiche come la moltiplicazione o la divisione non è immediato, ma è abbastanza lungo e macchinoso.

### Il sistema numerico additivo sumero

La scrittura proto-cuneiforme è un sistema di scrittura nato in mesopotamia che poi si è evoluto nella scrittura cuneiforme.

Si tratta di un sistema numerico con base mista, sia base dieci che base sei.

Le cifre del sistema numerico sumero in scrittura proto-cuneiforme sono le seguenti:

![proto](https://upload.wikimedia.org/wikipedia/commons/1/1d/Proto-cuneiform_sexagesimal_type_Sa.svg)

<!-- TODO wait Unicode accepts Proto-cuneiform script and replace signs -->

Con la scrittura cuneiforme si utilizzano simboli a forma di cuneo, tipicamente impressi su tavole di argilla con lo "stilus" (lo stilo), uno strumento appuntito realizzato in canna o legno.

Il sistema numerico, con la scrittura cuneiforme, si evolve rappresentando le quantità come di seguito:

| Simbolo     | Valore     | Descrizione     |
|-------------|------------|-----------------|
| &#x12079;   | 1          | Chiodo          |
| &#x1230B;   | 10         | Punzone         |
| &#x12415;   | 60         | Ges             |
| &#x1241E;   | 600        | Totalità        |
| &#x1212D;   | 3600       | Grande Totalità |
| &#x1242C;   | 36000      | Grande Totalità |
| &#x12131;   | 216000     | Grande Totalità |

<!--  &#x12132;    36000 * 36000 ?  -->

I numeri sumeri sono rappresentati come successione delle cifre sopra indicate. Da notare come non esisteva un simbolo per rappresentare lo zero.

### Il sistema numerico additivo egizio

Il sistema numerico Egizio è un sistema numerico additivo, la posizione di una cifra all'interno del numero non conta, una cifra ha sempre lo stesso valore ovunque sia posizionata.

Le cifre del sistema numerico egizio sono le seguenti:

| Simbolo     | Valore     | Descrizione     |
|-------------|------------|-----------------|
| &#x133FA;   | 1          | Bastone         |
| &#x13386;   | 10         | Arco            |
| &#x13362;   | 100        | Corda, vortice  |
| &#x131BC;   | 1.000      | Ninfea, loto    |
| &#x130AD;   | 10.000     | Dito            |
| &#x13190;   | 100.000    | Uccello         |
| &#x13068;   | 1.000.000  | Un dio          |

I numeri egizi sono rappresentati come successione delle cifre sopra indicate. Da notare come non esisteva un simbolo per rappresentare lo zero.

La quantità 126 nel sistema numerico egizio è indicata dal numero &#x13362; &#x13387; &#x133FF;, rappresentato come una successione composta da:

- la cifra &#x13362; indicante un centinaio;
- due cifre &#x13386; indicanti una decina;
- sei cifre &#x133FA; indicanti l'unità.

Sommate le quantità indicate da ogni cifra, si ottiene che il numero rappresenta la quantità 126.

La quantità 23295 nel sistema numerico egizio è indicata dal numero &#x130AE; &#x131BE; &#x13363; &#x1338E; &#x133FE;, rappresentato come una successione composta da:

- due cifre &#x130AE; indicanti diecimila;
- tre cifre &#x131BE; indicanti mille;
- due cifre &#x13363; indicanti un centinaio;
- nove cifre &#x1338E; indicanti una decina;
- cinque cifre &#x133FE; indicanti l'unità.

Sommate le quantità indicate da ogni cifra, si ottiene che il numero rappresenta la quantità 23295.

La quantità 3.220.005 è indicata dal numero &#x13068; &#x13068; &#x13068; &#x13190; &#x13190; &#x130AE; &#x133FE;, che è rappresentato come una successione composta da:

- tre cifre &#x13068; indicanti un milione;
- due cifre &#x13190; indicanti centomila;
- due cifre &#x130AE; indicanti diecimila;
- nessuna cifra indicante mille;
- nessuna cifra indicante un centinaio;
- nessuna cifra indicante una decina;
- cinque cifre &#x133FE; indicanti l'unità.

Sommate le quantità indicate da ogni cifra, si ottiene che il numero rappresenta la quantità 3.220.005.

### Il sistema numerico additivo romano

Il sistema numerico romano è un sistema numerico additivo, la posizione di una cifra all'interno del numero non conta, una cifra ha sempre lo stesso valore ovunque sia posizionata.

| Simbolo | Valore | Descrizione |
|---------|--------|-------------|
| I       | 1      | Uno         |
| V       | 5      | Cinque      |
| X       | 10     | Dieci       |
| L       | 50     | Cinquanta   |
| C       | 100    | Cento       |
| D       | 500    | Cinquecento |
| M       | 1000   | Mille       |

I numeri romani sono rappresentati come successione delle cifre sopra indicate. Da notare come non esisteva un simbolo per rappresentare lo zero.

Una regola di composizione dei numeri romana indicava che i simboli I, X, C e M possono essere ripetuti al massimo tre volte, mentre i simboli V, L e D possono essere presenti solo una volta.

La quantità 126 nel sistema numerico romano è indicata dal numero CXXVI, rappresentato come una successione composta da:

- la cifra C indicante un centinaio;
- due cifre X indicanti le decine;
- la cifra V indicante una cinquina;
- la cifra I indicante un'unità;

Sommate le quantità indicate da ogni cifra, si ottiene che il numero rappresenta la quantità 126.

La quantità 3585 nel sistema numerico romano è indicata dal numero MMMDLXXXV, rappresentato come una successione composta da:

- tre cifre M indicante le migliaia;
- una cifra D indicante cinquecento;
- una cifra L indicante cinquanta;
- tre cifre X indicanti le decine;
- una cifra V indicante una cinquina;

Sommate le quantità indicate da ogni cifra, si ottiene che il numero rappresenta la quantità 3585.

Una regola particolare del sistema romano è la regola "sottrattiva": una cifra seguita da un'altra con valore superiore denota una quantità data dalla differenza tra le due. Solo I, X e C possono essere usate in senso sottrattivo.

Alcuni esempi di questa regola sottrattiva sono:

- 4 = IV;
- 9 = IX;
- 40 = XL;
- 90 = XC;
- 400 = CD;
- 900 = CM.

Nel sistema numerico romano, il numero 954 viene rappresentato come CMLIV, rappresentato come una successione composta da:

- le cifre CM indicanti, secondo il principio sottrattivo, un migliaio meno un centinaio, cioè novecento;
- una cifra L indicante cinquanta;
- le cifre IV indicanti, secondo il principio sottrattivo, una cinquina meno un'unità, cioè quattro;

Sommate le quantità indicate dalle cifre indicate, si ottiene che il numero rappresenta la quantità 954.

Il numero 2494 viene rappresentato come MMCDXCIV, rappresentato come una successione composta da:

- le cifre MM indicanti le migliaia;
- le cifre CD indicanti, secondo il principio sottrattivo, cinquecento meno cento, cioè quattrocento;
- una cifra XC indicanti, secondo il principio sottrattivo,  cento meno dieci, cioè novanta;
- le cifre IV indicanti, secondo il principio sottrattivo, una cinquina meno un'unità, cioè quattro;

Sommate le quantità indicate dalle cifre indicate, si ottiene che il numero rappresenta la quantità 2494.

## Sistemi numerici posizionali

I sistemi numerici posizionali nacquero già nella civiltà babilonese, ma furono dimenticati per poi essere reinventati in quella cinese che li diffuse nelle altre civiltà asiatiche. Furono poi gli indiani a creare l'odierno sistema numerico che oggi conosciamo, introducendo il concetto innovativo di zero numerico.

In un sistema numerico **posizionale** la posizione di ogni cifra numerica nella rappresentazione del numero è importante perché modifica la quantità espressa dalla cifra stessa, attribuendo un peso maggiore o minore a seconda della posizione.

Per convenzione le posizioni delle cifre numeriche sono indicate da sinistra verso destra e contate a partire dalla posizione zero. Ad esempio, nel nostro sistema numerico decimale le cifre del numero 21035 hanno le seguenti posizioni:

| 4 | 3 | 2 | 1 | 0 | posizione |
|---|---|---|---|---|-----------|
| 2 | 1 | 0 | 3 | 5 | cifra     |

Ogni cifra occupa una posizione all'interno del numero.

La quantità espressa da ogni posizione è la seguente:

| 4         | 3         | 2         | 1         | 0         | posizione |
|-----------|-----------|-----------|-----------|-----------|-----------|
| 2         | 1         | 0         | 3         | 5         | cifra     |
| 2 * 10^4^ | 1 * 10^3^ | 0 * 10^2^ | 3 * 10^1^ | 5 * 10^0^ | quantità  |

Come si può notare, la quantità espressa dalla cifra 3 non è tre, ma è tremila poiché la posizione ha il ruolo di modificare la quantità espressa.

### Sistema numerico posizionale babilonese

Il sistema numerico posizionale babilonese è stato in parte ereditato dai sumeri e dalla scrittura cuneiforme ed è stato sviluppato ulteriormente con idee innovative per l'epoca.

Si trattava di un sistema numerico che poggiava le basi su un secondo sistema numerico, un sistema additivo che permetteva di contare fino a cinquantanove. Le cifre utilizzate per rappresentare i cinquantanove numeri sono le seguenti:

| Simbolo     | Valore     | Descrizione      |
|-------------|------------|------------------|
| &#x12470;   | 1          | chiodo verticale |
| &#x1230B;   | 10         | un punzone       |

Da notare come non esisteva un simbolo per rappresentare lo zero (solo verso il finire della loro società ne fu adottato uno) e che i due segni sono gli stessi della scrittura cuneiforme dei sumeri, combinati solo fino al valore cinquantanove.

Il numero 5 era espresso da cinque cifre numeriche rappresentanti l'unità, quindi cinque chiodi verticali disegnati in linea o sovrapposti:

5 = &#x12470;&#x12470;&#x12470;&#x12470;&#x12470; = &#x1240A;

Il numero 9 era espresso da nove cifre numeriche rappresentanti l'unità, quindi nove chiodi verticali disegnati in linea o sovrapposti:

9 = &#x12470;&#x12470;&#x12470;&#x12470;&#x12470;&#x12470;&#x12470;&#x12470;&#x12470; = &#x12446;

Il numero 21 era espresso da una cifra numerica rappresentante l'unità e da due cifre numeriche rappresentanti le decine, quindi due punzoni e un chiodo. Essendo questa rappresentazione additiva, non importava la posizione dei simboli:

21 = &#x12399;&#x12470; = &#x12470;&#x12399;

Il numero 57 era espresso da cinque cifre numeriche rappresentanti le decine e sette cifre numeriche rappresentanti le unità, quindi cinque punzoni e sette chiodi disegnati sovrapposti o in linea:

57 = &#x1230B;&#x1230B;&#x1230B;&#x1230B;&#x1230B; &#x12470;&#x12470;&#x12470;&#x12470; &#x12470;&#x12470;&#x12470; = &#x12410;&#x12442;

Dal numero sessanta in poi si utilizzava un sistema posizionale le cui le cifre sono rappresentate con il sistema additivo appena citato, ma nel quale la quantità espressa dalla cifra era modificata a seconda della posizione della cifra stessa.

Il numero 61 veniva espresso con le cifre dell'uno e dell'uno, questa volta l'ordine di posizione da sinistra a destra era importante perché modificava la quantità espressa dalla cifra numerica.

| 1         | 0         | posizione |
|-----------|-----------|-----------|
| &#x12470; | &#x12470; | cifra     |

La quantità espressa da ogni posizione è la seguente:

| 1         | 0         | posizione |
|-----------|-----------|-----------|
| 1         | 1         | cifra     |
| 1 * 60^1^ | 1 * 60^0^ | quantità  |

&#x12470;&#x12470; = 1 * 60^1^ + 1 * 60^0^ = 60 + 1 = 61

Il numero 71 veniva espresso con le cifre dell'uno e dell'undici, in ordine di posizione da sinistra a destra.

| 1         | 0                  | posizione |
|-----------|--------------------|-----------|
| &#x12470; | &#x1230B;&#x12470; | cifra     |

La quantità espressa da ogni posizione è la seguente:

| 1         | 0          | posizione |
|-----------|------------|-----------|
| 1         | 11         | cifra     |
| 1 * 60^1^ | 11 * 60^0^ | quantità  |

&#x12470; &#x1230B;&#x12470; = 1 &#x22C5; 60^1^ + 11 &#x22C5; 60^0^ = 60 + 11 = 71

La rappresentazione può sembrare errata a prima vista, ma questo sistema numerico permette con una sola cifra numerica di contare fino a sessanta, con due cifre numeriche di contare fino a 3600.

Il concetto alla base è quello dell'arrotolamento, se con una sola cifra numerica si può contare fino a cinquantanove, per contare dal sessanta in poi devo aggiungere una seconda cifra numerica.
