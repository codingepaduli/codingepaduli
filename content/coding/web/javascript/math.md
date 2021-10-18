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
draft: false
toc: true
summary: "Descrizione degli standard, degli operatori e delle operazioni matematiche per il calcolo automatico, descrizione delle precedenze degli operatori nelle espressioni matematiche"
customJS: ["/static/coding/web/javascript/espressioniMatematiche.js"]

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
    -   title: "Libreria matematica Math"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math"
        description: "Firma e descrizione delle varie funzioni matematiche"
    -   title: "Libreria matematica Number"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number"
        description: "Firma e descrizione delle varie funzioni sui numeri"
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

Ad esempio, data l'espressione ``3 + 4 * 5 + 6``, la moltiplicazione tra i numeri ``4`` e ``5`` ha la precedenza, quindi viene calcolata per prima, restituendo valore ``20``.
A questo punto deve essere calcolata l'espressione ancora l'espressione ``3 + 20 + 6``, ma non ci sono altre precedenze da gestire, quindi sip procede a calcolare la somma dei tre numeri. Nel complesso, la valutazione dell'espressione restituisce il risultato ``29``.

Nonostante la gestione delle precedenze possa sembrare semplice, quando si valutano espressioni con un vasto numero di operatori differenti si può incorrere in errori di valutazione, proprio perchè non è scontato ricordare la precedenza dei vari operatori matematici.

L'ordine delle operazioni da svolgere può essere chiarito o modificato utilizzando le parentesi tonde ``(`` e ``)``. Queste hanno precedenza maggiore rispetto agli altri operatori, per cui si procede prima al calcolo del contenuto delle parentesi e poi della restante espressione. E' da notare che le parentesi possono essere annidate l'una dentro l'altra.

Ad esempio, data l'espressione ``((3 + 4) - 5) * 6``, le parentesi tonde hanno la precedenza, per cui viene prima valutato il risultato della somma tra ``3`` e ``4``, restituendo ``7``. Vi è ancora una parentesi tonda che ha precedenza, quindi viene valutato il risultato della sottrazione tra ``7`` e ``5``, restituendo ``2``. Quindi viene svolta la moltiplicazione tra ``2`` e ``6``, restituendo ``12``. Per cui, la valutazione dell'espressione restituisce il risultato ``12``.

### Assegnazione ed uguaglianza

Nelle espressioni matematiche il simbolo di uguaglianza ``=`` è usato anche come assegnazione. L'espressione ``x = 5`` indica al tempo stesso che i due valori sono uguali e che la variabile ``x`` assume valore ``5``.

Nei linguaggi di programmazione, questi due concetti sono distinti, in modo tale da permettere al calcolatore di effettuare due azioni differenti.

Tipicamente, il simbolo di uguaglianza è rappresentato dal simbolo ``==``, ed è utilizzato per verificare che due espressioni siano uguali, come nel caso dell'espressione ``x + 3 == y - 2``.

L'assegnazione è utilizzata per impostare il valore di una variabile, copiando nella relativa locazione di memoria il valore assegnato. In questo caso si parla di operatore di assegnazione, rappresentato dal simbolo ``=``, ed ha una regola di sintassi precisa:

- a sinistra dell'operatore deve essere presente una variabile già dichiarata;
- a destra dell'operatore deve essere presente un valore o un'espressione matematica.

Due esempi di assegnazione sono i seguenti:

```javascript
let y = 5;
let x = 5 * (6 + y);
console.info(y);
console.info(x);
```

Esistono molteplici operatori di assegnazione, che saranno trattati in dettaglio nei successivi paragrafi.

### Operatori aritmetici

Gli operatori aritmetici, utilizzati per svolgere le operazioni aritmetiche di base, sono i seguenti:

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
```

### Operatori relazionali

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
console.info(!x2);
```

### Operatori logici

Gli operatori logici permettono di lavorare con i valori di verità delle proposizioni logiche, ovvero con i valori **vero** o **falso**. Ad esempio la proposizione ``3 < 4`` ha il valore **vero**. Gli operatori logici permettono quindi di congiungere, disgiungere o negare proposizioni, e sono di seguito elencati:

- ``&&`` congiunzione logica AND;
- ``||`` disgiunzione logica OR;
- ``!`` negazione logica NOT.

Un esempio d'uso degli operatori logici è il seguente:

```javascript
console.info( (3 < 4) && (4 < 5) );
console.info( (3 < 4) || (4 > 5) );
console.info( !(3 < 4) );

let x3 = (3 < 4) && (4 < 5);
console.info(x3);

x3 = (4 > 5) || true;
console.info(x3);
```

### Operatori binari

Gli operatori binari operano sulla rappresentazione binaria dei numeri e permettono le classiche operazioni disponibili nell'algebra di Boole. Sono i seguenti:

- ``&`` operazione di and booleano tra due sequenze di bit;
- ``|`` operazione di or booleano tra due sequenze di bit;
- ``^`` operazione di xor booleano tra due sequenze di bit;
- ``~`` operazione di not booleano su una sequenza di bit;
- ``<<`` shift sinistro di n posizioni;
- ``>>`` shift destro di n posizioni;
- ``>>>`` shift destro senza segno di n posizioni.

Un esempio d'uso degli operatori binari è il seguente:

```javascript
console.info(3 & 5);
console.info(3 | 5);
console.info(3 ^ 5);
console.info(~ 5);
console.info(3 << 5);
console.info(3 >> 5);
console.info(3 >>> 5);

let x4 = 3 & 5;
console.info(x4);
```

### Operatori di assegnazione

Gli operatori di assegnazione si utilizzano per assegnare il valore o il risultato di un'espressione ad una variabile. L'elenco degli operatori di assegnazione è il seguente:

- ``=`` assegna il valore ad una variabile;
- ``+=`` somma il valore al valore della variabile e assegna il risultato alla variabile; stessa;
- ``-=`` sottrae il valore della variabile il valore indicato e assegna il risultato alla variabile stessa ;
- ``*=`` moltiplica il valore della variabile per il valore indicato e assegna il risultato alla variabile stessa;
- ``/=`` divide il valore della variabile per il valore indicato e assegna il risultato alla variabile stessa;
- ``%=`` calcola il resto della divisione tra il valore della variabile ed il valore indicato ed assegna il risultato alla variabile stessa;
- ``&=``effettua l'operazione di and booleano tra due sequenze di bit ed assegna il risultato alla variabile stessa;
- ``|=``effettua l'operazione di or booleano tra due sequenze di bit ed assegna il risultato alla variabile stessa;
- ``^=``effettua l'operazione di xor booleano tra due sequenze di bit ed assegna il risultato alla variabile stessa;
- ``<<=``effettua l'operazione di shift sinistro di n posizioni ed assegna il risultato alla variabile stessa;
- ``>>=``effettua l'operazione di shift destro di n posizioni ed assegna il risultato alla variabile stessa;
- ``>>>=``effettua l'operazione di shift destro senza segno di n posizioni ed assegna il risultato alla variabile stessa.

Un esempio d'uso degli operatori di assegnazione è il seguente:

```javascript
let x5 = 5;
x5 += 5;
x5 -= 5;
x5 *= 5;
x5 /= 5;
x5 %= 5;
x5 &= 5;
x5 |= 5;
x5 ^= 5;
x5 <<= 5;
x5 >>= 5;
x5 >>>= 5;
```

## Libreria matematica ``Math``

Ogni linguaggio di programmazione ha una libreria matematica che mette a disposizione del programmatore le funzioni che eseguono le operazioni matematiche piú comuni, come quelle logaritmiche, esponenziali, trigonometriche e di arrotondamento.

Non è necessario riportare alla mente tutti i concetti matematici alla base delle suddette funzioni, corso di questo capitolo sarà illustrato solo come utilizzarle, lasciando poi al programmatore lo studio e l'analisi del contesto in cui utilizzarle.

La libreria  **Math** mette a disposizione del programmatore le seguenti costanti:

Costante | Operazione | Valore
--- | --- | ---
``Math.E`` | Costante e di Eulero / Nepero | ``2.718281828459045``
``Math.PI`` | Costante di Archimede | ``3.141592653589793``
``Math.SQRT2`` | Valore della radice quadrata di 2 | ``1.4142135623730951``

La libreria **Math** fornisce numerosissime operazioni matematiche, per un elenco completo si rimanda alla documentazione, mentre nel corso di questo capitolo si tratteranno le funzioni più comuni.

### Funzioni di arrotondamento

L'arrotondamento è un'operazione ricorrente, puó avvenire per eccesso, per difetto, per troncamento. Per ogni tipo di arrotondamento  esiste un'apposita funzione che svolge questo compito.

L'**arrotondamento per eccesso** consiste nell'associare ad un numero reale ``x`` il numero intero successivo.

Come si può dedurre intuitivamente, l'arrotondamento per eccesso del numero ``2.13`` ha come risultato ``3``.

Meno intuitivo è l'arrotondamento per eccesso del numero ``-2.13``, dato che come risultato si ottiene ``-2``, e sulle prime può essere fonte di confusione.

La funzione progettata per eseguire tale operazione è ``ceil``, la cui firma è la seguente:

```plaintext
Syntax: Math.ceil(x)

Parameters:
    x    Number: the real value

Returns:
    Number: the integer value
```

Il parametro formale ``x`` rappresenta il numero da arrotondare.

Il valore restituito è il numero arrotondato. Può essere salvato in una variabile.

Per effettuare un arrotondamento per eccesso del numero 3.14, sostituiamo al parametro formale ``x`` il valore ``3.14``. Salviamo in una variabile ``i`` il risultato, invocando la funzione nel seguente modo:

```javascript
let i = Math.ceil(3.14);
```

L'**arrotondamento per difetto** consiste nell'associare ad un numero reale ``x`` al numero intero precedente.

Come si può dedurre intuitivamente, l'arrotondamento per difetto del numero ``2.13`` ha come risultato ``2``.

Meno intuitivo è l'arrotondamento per difetto del numero ``-2.13``, dato che come risultato si ottiene ``-3``, e sulle prime può essere fonte di confusione.

La funzione progettata per eseguire tale operazione è ``floor``, la cui firma è la seguente:

```plaintext
Syntax: Math.floor(x)

Parameters:
    x    Number: the real value

Returns:
    Number: the integer value
```

Il parametro formale ``x`` rappresenta il numero da arrotondare.

Il valore restituito è il numero arrotondato. Può essere salvato in una variabile.

Per effettuare un arrotondamento per difetto del numero 3.14, sostituiamo al parametro formale ``x`` il valore ``3.14``, ed opzionalmente salviamo in una variabile ``i`` il risultato, invocando la funzione nel seguente modo:

```javascript
let i = Math.floor(3.14);
```

L'**arrotondamento** classico consiste nell'associare ad un numero reale ``x`` il numero intero piú vicino, sia esso precedente o successivo.

Come si può dedurre intuitivamente, l'arrotondamento del numero ``2.13`` ha come risultato ``2``, mentre l'arrotondamento del numero ``2.63`` ha come risultato ``3``.

La situazione meno intuitiva si ha con il numero ``2.50``, che tipicamente si arrotonda a ``3``.

La funzione progettata per eseguire tale operazione è ``round``, la cui firma è la seguente:

```plaintext
Syntax: Math.round(x)

Parameters:
    x    Number: the real value

Returns:
    Number: the integer value
```

Il parametro formale ``x`` rappresenta il numero da arrotondare.

Il valore restituito è il numero arrotondato. Può essere salvato in una variabile.

Per effettuare un arrotondamento per eccesso del numero 3.14, sostituiamo al parametro formale ``x`` il valore ``3.14``, ed opzionalmente salviamo in una variabile ``i`` il risultato, invocando la funzione nel seguente modo:

```javascript
let i = Math.round(3.14);
```

L'**arrotondamento per troncamento** consiste nell'associare ad un numero reale ``x`` il numero intero che si ottiene togliendo tutte le cifre decimali.

Come ci si può aspettare, l'arrotondamento per troncamento del numero ``-2.13`` è ``-2``, quello del numero ``-2.83`` è ``-2``.

La funzione progettata per eseguire tale operazione è ``trunc``, la cui firma è la seguente:

```plaintext
Syntax: Math.trunc(x)

Parameters:
    x    Number: the real value

Returns:
    Number: the integer value
```

Il parametro formale ``x`` rappresenta il numero da arrotondare.

Il valore restituito è il numero arrotondato. Può essere salvato in una variabile.

Per effettuare un arrotondamento per troncamento del numero 3.14, sostituiamo al parametro formale ``x`` il valore ``3.14``, ed opzionalmente salviamo in una variabile ``i`` il risultato, invocando la funzione nel seguente modo:

```javascript
let i = Math.trunc(3.14);
```

### Funzioni per la generazione di un numero casuale

Spesso è necessario generare un numero casuale, per simulare tante casistiche reali, come il lancio di un dado.

Il numero casuale puó essere vincolato ad un determinato insieme, come nel caso del lancio del dado, in cui i valori accettabili vanno da un minimo di uno ad un massimo di sei ed includono solo numeri interi, oppure può essere libero.

<!-- TODO aggiungi casistiche -->

La funzione progettata per eseguire tale operazione è ``random``, la cui firma è la seguente:

```plaintext
Syntax: Math.random(x)

Returns:
    Number: A floating-point, pseudo-random number between 0 (inclusive) and 1 (exclusive).
```

Il valore restituito è un numero decimale casuale compreso tra zero (incluso) ed 1 (non incluso). Può essere salvato in una variabile.

Per ottenere un numero casuale, invochiamo la funzione, salvando opzionalmente in una variabile ``i`` il risultato, come nel seguente esempio:

```javascript
let i = Math.random();
```

#### Numero casuale con limite superiore

Spesso si desidera un numero decimale casuale ``x`` compreso tra zero (incluso) ed un valore massimo ``max`` (non incluso) definito dal programmatore o dall'utente.

La via piú semplice consiste nel moltiplicare il numero casuale ``x`` per il valore ``max``, come nel seguente esempio:

```javascript
let i = max * Math.random();
```

Ad esempio, se il massimo desiderato è 5 (escluso), allora si possono avere, tra i tanti numeri casuali, i seguenti scenari:

1. Il valore casuale ``x`` è ``0``, moltiplicato per ``5`` fa sempre ``0``;
2. Il valore casuale ``x`` è ``0.20``, moltiplicato per ``5`` fa ``1``;
3. Il valore casuale ``x`` è ``0.40``, moltiplicato per ``5`` fa ``2``;
4. Il valore casuale ``x`` è ``0.60``, moltiplicato per ``5`` fa ``3``;
5. Il valore casuale ``x`` è ``0.9999``, moltiplicato per ``5`` fa poco meno di ``5`` (che non è incluso nell'intervallo desiderato);

#### Numero casuale con limite inferiore e superiore

Puó capitare che si desideri un numero decimale casuale ``x`` compreso tra un valore minimo ``min`` (incluso) ed un valore massimo ``max`` (non incluso) definiti dal programmatore o dall'utente.

La via piú semplice consiste nel moltiplicare il numero casuale ``x`` per il valore ``max - min``, sommando poi il risultato al valore ``min`` come nel seguente esempio:

```javascript
let i = min + (max-min) * Math.random();
```

Ad esempio, se il minimo desiderato è 3 (incluso) ed il massimo desiderato è 10 (escluso), allora, considerata la differenza che è ``7``, si possono avere, tra i tanti numeri casuali, i seguenti scenari:

1. Il valore casuale ``x`` è ``0``, moltiplicato per ``7`` fa sempre ``0``, che sommato a 3 restituisce il valore ``3``;
2. Il valore casuale ``x`` è ``0.2``, moltiplicato per ``7`` fa ``1.4``, che sommato a 3 restituisce il valore ``4.4``;
3. Il valore casuale ``x`` è ``0.3``, moltiplicato per ``7`` fa ``2.1``, che sommato a 3 restituisce il valore ``5.1``;
4. Il valore casuale ``x`` è ``0.5``, moltiplicato per ``7`` fa ``3.5``, che sommato a 3 restituisce il valore ``6.5``;
5. Il valore casuale ``x`` è ``0.9999``, moltiplicato per ``7`` fa poco meno di ``7``, che sommato a 3 restituisce un valore poco minore di ``10``;

### Funzioni per il calcolo di potenze e radici

Non possono mancare le funzioni necessarie al calcolo di un numero elevato ad una certa potenza e quelle per il calcolo della radice quadrata o cubica di un numero.

La funzione progettata per calcolare la potenza di un numero è ``pow(x, y)``, la cui firma è la seguente:

```plaintext
Syntax: Math.pow(x, n)

Parameters:
    x    Number: the base value
    n    Number  the exponent

Returns:
    Number: x to the nth power
```

Il parametro formale ``x`` rappresenta la base della potenza.

Il parametro formale ``n`` rappresenta l'esponente della potenza.

Il valore restituito è x elevato all'ennesima potenza. Può essere salvato in una variabile.

Per calcolare il valore di 2 elevato alla 20-esima potenza, sostituiamo al parametro formale ``x`` il valore ``2``, al parametro formale ``n`` il valore ``20``, ed opzionalmente salviamo in una variabile ``i`` il risultato, invocando la funzione nel seguente modo:

```javascript
let i = Math.pow(2, 20);
```

La funzione progettata per calcolare la radice quadrata di un numero è ``sqrt(x)``, la cui firma è la seguente:

```plaintext
Syntax: Math.sqrt(x)

Parameters:
    x    Number: the value

Returns:
    Number: the square root of x
```

Il parametro formale ``x`` rappresenta il numero di cui calcolare la radice quadrata.

Il valore restituito è la radice quadrata del numero ``x``. Può essere salvato in una variabile.

Per calcolare la radice quadrata di 16, sostituiamo al parametro formale ``x`` il valore ``16``, ed opzionalmente salviamo in una variabile ``i`` il risultato, invocando la funzione nel seguente modo:

```javascript
let i = Math.sqrt(16);
```

La funzione progettata per calcolare la radice cubica di un numero è ``cbrt(x)``, la cui firma è la seguente:

```plaintext
Syntax: Math.cbrt(x)

Parameters:
    x    Number: the value

Returns:
    Number: the cube root of x
```

Il parametro formale ``x`` rappresenta il numero di cui calcolare la radice cubica.

Il valore restituito è la radice cubica del numero ``x``. Può essere salvato in una variabile.

Per calcolare la radice cubica di 16, sostituiamo al parametro formale ``x`` il valore ``16``, ed opzionalmente salviamo in una variabile ``i`` il risultato, invocando la funzione nel seguente modo:

```javascript
let i = Math.cbrt(16);
```

### Funzioni per il calcolo di esponenziali e logaritmi
