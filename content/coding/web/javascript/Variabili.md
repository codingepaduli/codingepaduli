---
type: "javascript"
title: "JavaScript Lez. 03 - Costanti, variabili e tipi di dato"
description: "Dichiarazione di costanti e variabili per i vari tipi di dato"
date: 2020-04-04
publishdate: 2020-04-04
lastmod: 2020-04-04
spellcheck: 2020-12-11
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "Dichiarazione di costanti e variabili per i vari tipi di dato"
weight: 8960
---

# Costanti e variabili

Le costanti e le variabili sono aree di memoria in cui vengono memorizzate le informazioni di un programma in esecuzione, come immagini, suoni, frasi o valori numerici.

Come si può intuire dal nome, le variabili contengo informazioni che possono essere modificate durante l'esecuzione del programma, mentre le costanti contengono informazioni non modificabili.

Le costanti e le variabili hanno le seguenti caratteristiche:

- sono identificate da un nome;
- sono associate ad un certo tipo di dato, come ad esempio dati numerici interi o decimali, dati booleani (vero o falso), dati alfanumerici (frasi);
- possono avere assegnato un valore iniziale;

La creazione di una costante o di una variabile di un programma avviene utilizzando un'istruzione di **dichiarazione**, che **alloca** in memoria la costante o la variabile e le associa un nome ed un tipo di dato.

Per assegnare un valore iniziale ad una variabile o ad una costante si utilizza l'operazione di **inizializzazione**.

## Sintassi

La **dichiarazione delle variabili** avviene utilizzando la parola chiave ``let`` seguita dai nomi delle variabili separati da virgola. L'istruzione di dichiarazione termina con il carattere "punto e virgola" ``;``. Un esempio di dichiarazione è il seguente:

```javascript
let x, y, diametro;
```

L'inizializzazione delle variabili avviene utilizzando l'operatore di assegnazione ``=`` seguito dal valore iniziale, come nel seguente esempio:

```javascript
let x = 20;
let y = 100;
let diametro = 50;
```

La **dichiarazione delle costanti** avviene utilizzando la parola chiave  ``const`` seguita dal nome della costante, dall'operatore di assegnazione ``=`` e dal valore iniziale. L'istruzione di dichiarazione termina con il carattere "punto e virgola" ``;``. Un esempio di dichiarazione di costanti è la seguente:

```javascript
const X = 10;
const VALORE_Y = 20;
```

### Sintassi dei nomi

I nomi che possono identificare una variabile o una costante devono rispettare le seguenti regole:

- il nome non può iniziare con un carattere numerico;
- il nome non può contenere spazi;
- il nome può essere composto solo da caratteri alfanumerici e qualche carattere di punteggiatura come il trattino basso, non altri caratteri;
- ogni nome identifica una sola area di memoria, quindi non può essere utilizzato per una seconda variabile o costante;
- il nome non può essere uguale alle parole utilizzate dal linguaggio di programmazione;

Un esempio di nomi di variabili che rispettano le regole indicate sono ``a``, ``b``, ``valore1``, ``valore2`` e ``coloreDelQuadrato``.

Ecco invece alcuni nomi che non rispettano le regole indicate:

- ``1a`` e ``2valore`` non validi perché iniziano con un numero;
- ``a 1`` e ``secondo valore`` non validi perché contengono spazi;
- ``variabile-1`` e ``variabile%5`` non validi perché contengono caratteri non ammessi, come il trattino ``-`` e la percentuale ``%``;
- ``const`` perché è una parola chiave del linguaggio di programmazione (serve a dichiarare le costanti).

### Regole stilistiche dei nomi

Per i nomi delle variabili esiste una regola stilistica che consiglia di utilizzare solo caratteri alfanumerici e di scriverli con **carattere a cammello** (in inglese "camelCase"), ovvero tutte le parole che compongono il nome vengono unite (togliendo gli spazi), trasformando tutte le loro iniziali, tranne la prima, in maiuscolo. Ad esempio, per il calcolo della "media punti delle partite effettuate" si può dichiarare una variabile con nome ``mediaPuntiDellePartiteEffettuate``.

Anche per i nomi delle costanti esiste una regola stilistica che consiglia di scriverle trasformando tutti i **caratteri in maiuscolo** e trasformando gli spazi in "trattino basso" (in inglese "underscore"). Ad esempio, per il valore "pi greco mezzi" si può dichiarare una costante con nome ``PI_GRECO_MEZZI``.

## Tipi di dato e sintassi

Costanti e variabili sono associate ad un tipo di dato che può essere **primitivo** o **complesso**.

A variabili e costanti associate ad un tipo primitivo è possibile associare un solo valore, mentre a quelle associate ad un tipo complesso è possibile associare liste di valori, oggetti e altre entità più complesse.

La gestione del tipo di dato fa una forte differenza nei linguaggi di programmazione.

Il linguaggio di programmazione si dice tipizzato **dinamicamente** se ad una variabile è possibile assegnare un valore di un certo tipo di dato e, successivamente, un valore di un tipo di dato differente.

Il linguaggio di programmazione si dice tipizzato **staticamente** se ad una variabile è possibile assegnare valori esclusivamente di un certo tipo di dato. Se si tenta di assegnare successivamente un valore di un tipo di dato differente, viene generato un errore.

### Tipo booleano

Le variabili possono avere assegnato un valore logico, detto Booleano, che può essere ``true`` oppure ``false``.

Il termine Booleano deriva dal matematico George Boole, che descrisse in forma algebrica la logica delle proposizioni.

Un esempio di dichiarazione di variabili a cui viene associato un tipo booleano è il seguente:

```javascript
let trueVariable = true;
let falseVariable = false;
```

### Tipo numerico

Le variabili possono avere assegnato un valore numerico, e quindi il tipo associato sarà numerico. Queste variabili possono avere un valore intero o decimale. Un esempio di dichiarazione di variabili a cui viene associato un tipo numerico è il seguente:

```javascript
let naturalNumber = 10;
let realNumber = 10.5;
```

Il valore intero può essere rappresentato in decimale, esadecimale e binario.

La rappresentazione decimale del valore da assegnare avviene nella forma classica, come nel seguente esempio:

```javascript
let naturalNumber = 10;
```

La rappresentazione esadecimale si esprime anteponendo al valore da assegnare alla variabile il simbolo ``0x``, come nel seguente esempio:

```javascript
let naturalNumberHexadecimal = 0xFF;
```

La rappresentazione binaria si esprime anteponendo al valore da assegnare alla variabile il simbolo ``0b``, come nel seguente esempio:

```javascript
let naturalNumberBinary = 0b010111;
```

Il valore intero o decimale può essere espresso in [notazione scientifica](https://it.wikipedia.org/wiki/Notazione_scientifica "Link a Wikipedia sulla notazione scientifica"), nella classica forma **mantissa**, simbolo ``e`` (indicante l'esponenziale) ed **esponente**, come nel seguente esempio:

```javascript
let realNumberExponentiation = 0.1E100;
```

Tra i valori numerici esistono dei casi particolari:

- `NaN` valore utilizzato per indicare un risultato che [Non è un Numero](https://it.wikipedia.org/wiki/NaN "Link a Wikipedia su Not A Number") (dall'inglese Not a Number). Questo valore è assegnato quando si tentano operazioni del tipo "radice quadrata di meno uno", che non ha risultato nell'insieme dei numeri reali;
- ``Infinity`` utilizzato per indicare un valore infinito. Può essere specificato l'infinito positivo ``+Infinity`` o anche negativo ``-Infinity``.

```javascript
let positiveInfinity = +Infinity;
let negativeInfinity = -Infinity;
```

### Tipo stringa

Le variabili possono avere assegnata una sequenza di caratteri e quindi il tipo associato sarà "stringa". La sequenza di caratteri deve essere racchiusa tra singoli apici ``'`` o doppi apici ``"``.

Un esempio di dichiarazione di variabile a cui viene associato un tipo stringa è il seguente:

```javascript
let stringVariable = 'Una stringa';
let stringVariable2 = 'Seconda stringa';
```

Per definire una sequenza di caratteri che occupi più righe, si può racchiudere tra apici inversi `` ` ``, come nel seguente esempio:

```javascript
let stringVariable = `Una
stringa`;
```

Questo tipo di definizione è utilizzato anche per concatenare variabili o il risultato di un'espressione all'interno della stringa. Le variabili e le espressioni devono essere racchiuse tra simboli ``${`` e ``}``, come nel seguente esempio:

```javascript
let num1 = 9;
let num2 = 18;
let messaggio = `La somma dei
numeri ${num1} e ${num2}
vale ${num1 + num2}.`;
```

L'esempio precedente produce il seguente output (su più righe):

```output
La somma dei
numeri 9 e 18
vale 27.
```

## Tipi complessi

### Tipo oggetto

Un oggetto in ambito informatico è un dato complesso che risiede in memoria ed ha più proprietà ed anche dei metodi. Tipicamente la creazione di un oggetto è effettuata attraverso la parola chiave ``new``.

L'operazione di inserimento di un oggetto in memoria è detta **allocazione**, quindi tecnicamente un oggetto è **allocato** in memoria.

Un esempio di oggetto può essere una persona, che contiene proprietà quali nome, cognome, data di nascita, ecc..

```javascript
let persona = {
    firstname: "John",
    lastname: "Doe",
    id: 5566
};
```

### Tipi oggetto wrapper

E' possibile creare una versione ad oggetti (detta "wrapper") dei tipi primitivi di dato, siano essi numerici, stringhe o booleani:

```javascript
var naturalNumberObj = new Number(10);
let realNumberObj = new Number(10.5);
let toBeOrNotToBeObj = new Boolean(true);
var vectorObj = new String("one");
```

Come si nota, la parola chiave ``new`` viene utilizzata per creare degli oggetti.

### Tipo null

Il valore ``null`` è un valore speciale che si utilizza per indicare un oggetto non ancora allocato in memoria.

Un esempio di dichiarazione di variabile di tipo oggetto non ancora allocato in memoria è il seguente:

```javascript
let persona = null;
```

### Tipo undefined

Il valore ``undefined`` è un valore speciale che si utilizza per indicare una variabile il cui valore non è ancora definito.

Un esempio di dichiarazione di variabile con valore ancora non definito è il seguente:

```javascript
let variabileIndefinita;
let variabileIndefinita2 = undefined;
```

### Operatore di assegnazione

L'operatore di assegnazione è utilizzata per impostare il valore di una variabile, copiandolo nella relativa locazione di memoria. E' rappresentato dal simbolo ``=`` ed ha una regola di sintassi precisa:

- a **sinistra** dell'operatore deve essere presente **una variabile già dichiarata**;
- a **destra** dell'operatore deve essere presente un valore o un'espressione matematica (senza variabili o con variabili già dichiarate).

Un esempio di assegnazione è il seguente:

```javascript
let y = 5;
```

In questo esempio, a sinistra troviamo la variabile ``y``, a destra troviamo il valore ``5`` che sarà copiato nella locazione di memoria della variabile.

Un secondo esempio di assegnazione è il seguente:

```javascript
let x = 5 * (6 + y);
```

In questo esempio, a sinistra troviamo la variabile ``x``, a destra troviamo l'espressione ``5 * (6 + y)`` in cui è presente la variabile ``x``, alla quale è stato assegnato il valore ``5`` nell'esempio precedente. L'espressione ha quindi risultato ``55`` che sarà copiato nella locazione di memoria della variabile ``x``.

L'operatore di assegnazione, rappresentato dal simbolo ``=``, non deve essere confuso con l'operatore di uguaglianza, che nei linguaggi di programmazione è rappresentato dal simbolo ``==``, questi due concetti sono distinti ed indicano al calcolatore di effettuare due azioni differenti:

- il primo indica al calcolatore di copiare nella locazione di memoria della variabile il valore assegnato, come nel caso dell'assegnazione ``x = 5``;
- il secondo è utilizzato per verificare che due espressioni siano uguali, come nel caso dell'espressione ``x + 3 == y - 2``.

In ambito matematico non vi è questa distinzione, il simbolo ``=`` è usato sia come assegnazione che come uguaglianza. L'espressione ``x = 5`` indica al tempo stesso che i due valori sono uguali e che la variabile ``x`` assume valore ``5``.

## Operatori basilari

Una volta dichiarata una variabile, è possibile inizializzarne il valore iniziale e, successivamente, modificarne il valore utilizzando l'operatore di assegnazione ``=``. Ad esempio:

```javascript
let x = 3;
x = 5;
x = 7;
```

L'operatore di somma ``+`` permette di sommare i valori numerici e/o i valori delle variabili. Ad esempio:

```javascript
alert(5 + 7);
let x = 3;
x = 5 + 7;
x = x + 2;
```

L'operatore di sottrazione ``-`` permette di sottrarre i valori numerici e/o i valori delle variabili. Ad esempio:

```javascript
alert(7 - 5);
let x = 3;
let y = 7 - x - 2;
y = y - 1;
```

L'operatore di moltiplicazione ``*`` permette di moltiplicare i valori numerici e/o i valori delle variabili. Ad esempio:

```javascript
alert(7 * 5);
let x = 3;
x = 7 * 2;
x = x * x * 2;
```

L'operatore di divisione ``/`` permette di dividere i valori numerici e/o i valori delle variabili. Ad esempio:

```javascript
alert(8 / 4);
let x = 4;
x = 8 / 2;
x = x / 2;
```

L'operatore di concatenazione ``+`` permette di concatenare due stringhe. E' molto utilizzato per creare messaggi, unendo frasi e variabili. Ad esempio, per realizzare un messaggio che mostra il calcolo del perimetro del quadrato si utilizza il seguente codice:

```javascript
let base = 2;
let altezza = 4;
let perimetro = base * altezza;
alert("perimetro = base * altezza = " + base + " * " + altezza + " = " + perimetro);
```

In questo caso il messaggio è unito alle variabili ``base`` ed ``altezza`` ed infine alla variabile ``perimetro``, formando la stringa risultate:

```plaintext
perimetro = base * altezza = 2 * 4 = 8
```

## Parola chiave ``typeof`` per l'identificazione del tipo di dato

E' possibile identificare il tipo di una variabile utilizzando la parola chiave ``typeof``.

Supponendo di aver dichiarato le seguenti variabili:

```javascript
'use strict'

// variabili primitive
let naturalNumber = 10;
let realNumber = 10.5;
let toBeOrNotToBe = true;
let word = "paragraph";
var undefinedThing = undefined;
let thing = null;

// variabili wrapper
var naturalNumberObj = new Number(10);
let realNumberObj = new Number(10.5);
let toBeOrNotToBeObj = new Boolean(true);
let wordObj = new String("paragraph");
```

Il codice necessario ad individuare i tipi di dato delle variabili dichiarate è il seguente:

- ``typeof naturalNumber;``     // restituisce ``number``
- ``typeof realNumber;``        // restituisce ``number``
- ``typeof toBeOrNotToBe;``     // restituisce ``boolean``
- ``typeof word;``              // restituisce ``string``
- ``typeof undefinedThing;``    // restituisce ``undefined``
- ``typeof thing;``             // restituisce ``object``
- ``typeof naturalNumberObj;``  // restituisce ``object``
- ``typeof realNumberObj;``     // restituisce ``object``
- ``typeof toBeOrNotToBeObj;``  // restituisce ``object``
- ``typeof wordObj;``           // restituisce ``object``

Come si può notare, sia la variabile oggetto, sia le variabili con valore ``null``, sia la variabile sia tutte le variabili "wrapper" sono di tipo oggetto.

Una precisazione però è da fare sulla variabile inizializzata a ``null``: la specifica di ECMAScript prevede che, nonostante la variabile sia da considerare come tipo "null", l'operazione ``typeof null`` restituisca ``object``.

## Istruzioni di input

In programmazione, le funzioni di input sono quelle funzioni che permettono ad un programma di ricevere dati dall'esterno. Le funzioni di input permettono all'utente di inserire in input i dati che il programma utilizza per effettuare calcoli.

### Istruzione di input ``prompt``

La funzione JavaScript progettata per inserire in input un valore è ``prompt``, la cui firma è la seguente:

```plaintext
Syntax: prompt(msg)

Parameters:
    msg    String: message to show

Return:
    the input value
```

Il parametro ``msg`` è un messaggio alfanumerico da visualizzare all'utente, per cui deve essere inserito tra doppi apici.

Il valore inserito dall'utente può essere memorizzato all'interno di una variabile.

Un esempio d'uso della funzione, che in questo caso memorizza l'input dell'utente nella variabile ``x`` (da dichiarare), è il seguente:

```javascript
let x = prompt("inserisci un valore");
```

### Input di un numero intero

L'input dell'utente può essere una qualsiasi sequenza di caratteri alfanumerici. Quando si necessita di un input numerico intero allora lo si deve **convertire** al formato intero con la funzione ``parseInt``, che ha la seguente sintassi:

```plaintext
Syntax: parseInt(str)

Parameters:
  str    String: the string to convert to integer type

Return:
  Number: the converted number
```

Il parametro ``str`` rappresenta la stringa da convertire in numero.

Il valore convertito può essere memorizzato all'interno di una variabile.

Un esempio di input numerico intero, che viene memorizzato nella variabile ``x`` (da dichiarare), è il seguente:

```javascript
let x = prompt("inserisci un numero");
x = parseInt(x);
```

L'istruzione effettua la conversione delle cifre fino al primo carattere non numerico. Nel caso non esista nessun valore numerico, restituisce il valore ``NaN`` (Non è un Numero).

```javascript
parseInt("123.45");   // restituisce 123
parseInt("123.45KG"); // restituisce 123
parseInt("aaaa");     // restituisce NaN
parseInt("0.1e6");    // restituisce 0, il punto non è numerico
```

L'istruzione presenta due caratteristiche importanti, permette le rappresentazioni in ottale, ovvero quelle che iniziano con ``0x``, e permette di convertire in una base differente da quella decimale, se specificata. Ad esempio:

```javascript
parseInt("0x77");     // restituisce 119 (= 7*16 + 7)
parseInt("ZR", 36);   // restituisce 1289 (= 35*36 + 29)
```

### Input di un numero decimale

Quando si necessita di un input numerico decimale allora si deve convertire l'input dell'utente al formato decimale con la funzione ``parseFloat``, che ha la seguente sintassi:

```plaintext
Syntax: parseFloat(str)

Parameters:
  str    String: the string to convert to float type

Return:
  Number: the converted number
```

Il parametro ``str`` rappresenta la stringa da convertire in numero.

Il valore convertito può essere memorizzato all'interno di una variabile.

Un esempio di input numerico decimale, che viene memorizzato nella variabile ``x`` (da dichiarare), è il seguente:

```javascript
let x = prompt("inserisci un numero");
x = parseFloat(x);
```

L'istruzione effettua la conversione tenendo sia conto del carattere di separazione dei decimali (il punto o la virgola), sia il formato esponenziale. Nel caso il valore da convertire non è un valore numerico, restituisce il valore ``NaN`` (Non è un Numero). Ad esempio:

```javascript
parseFloat(".3");    // restituisce 0.3
parseFloat("0.1e6"); // restituisce 100000
parseFloat("eee");   // restituisce NaN
```

## Tecnica della variabile contatore

La **tecnica della variabile contatore** è un modello molto utilizzato nella scrittura degli algoritmi e consiste nell'utilizzare una variabile per contare il numero di volte in cui è eseguita una determinata azione o avviene un determinato evento.

Per implementare questa tecnica è necessario:

1. dichiarare una variabile numerica contatore;
2. inizializzarla al valore numerico da cui far partire il contatore (generalmente zero o uno);
3. Ogni volta che viene eseguita l'azione o si verifica l'evento, la variabile contatore deve essere incrementata di uno.

Di questa tecnica esiste la variante dell'incremento anticipato, in cui il contatore viene incrementato di 1 **prima** che venga eseguita l'azione o che si verifichi l'evento.

### Esempio di conteggio del numero di valori inseriti

Di seguito, un esempio completo d'applicazione della variabile contatore per contare il numero di valori inseriti dall'utente.

```javascript
// dichiaro la variabile contatore
let contatore;

// inizializzo la variabile contatore
contatore = 0;

// ogni volta che l'utente inserisce un numero,
// incremento la variabile contatore
let x1 = prompt("Inserisci il primo numero");
contatore = contatore + 1;

let x2 = prompt("Inserisci il secondo numero");
contatore = contatore + 1;

let x3 = prompt("Inserisci il terzo numero");
contatore = contatore + 1;

let x4 = prompt("Inserisci il quarto numero");
contatore = contatore + 1;
```

### Esempio di conteggio pre-incrementato del numero di valori inseriti

Di seguito, un esempio completo d'applicazione della variabile contatore con incremento anticipato per numerare i valori inseriti.

```javascript
// dichiaro la variabile contatore
let contatore;

// inizializzo la variabile contatore
contatore = 0;

// incremento la variabile contatore
// prima che l'utente inserisca il numero,
contatore = contatore + 1;
let x1 = prompt("Inserisci il primo numero");

contatore = contatore + 1;
let x2 = prompt("Inserisci il secondo numero");

contatore = contatore + 1;
let x3 = prompt("Inserisci il terzo numero");

contatore = contatore + 1;
let x4 = prompt("Inserisci il quarto numero");
```

## Tecnica della variabile accumulatore

La **tecnica della variabile accumulatore** consiste nell'utilizzare una variabile nella quale accumulare il valore di una serie di dati, man mano che questi si presentano, in modo da poter utilizzare il valore totale alla fine.

Per implementare questa tecnica è necessario:

1. dichiarare una variabile numerica accumulatore;
2. inizializzarla al valore numerico opportuno (generalmente zero o uno);
3. Ogni volta che si presenta un dato, lo si somma o sottrae al valore presente nell'accumulatore.

### Esempio di somma di 4 numeri

Di seguito, un esempio completo d'applicazione della variabile accumulatore per sommare i numeri inseriti dall'utente.

```javascript
// dichiaro la variabile accumulatore
let accumulatore;
let num1, num2, num3, num4;

// inizializzo la variabile accumulatore
accumulatore = 0;

// ogni volta che viene generato un numero casuale
// lo accumulo nella variabile accumulatore
num1 = prompt("Inserisci il primo numero");
num1 = parseInt(num1);
accumulatore = accumulatore + num1;

num2 = prompt("Inserisci il secondo numero");
num2 = parseInt(num2);
accumulatore = accumulatore + num2;

num3 = prompt("Inserisci il terzo numero");
num3 = parseInt(num3);
accumulatore = accumulatore + num3;

num4 = prompt("Inserisci il quarto numero");
num4 = parseInt(num4);
accumulatore = accumulatore + num4;

alert("Il valore totale è ");
alert(accumulatore);
```

## Uso della console JavaScript

Uno strumento che aiuta moltissimo nello sviluppo di codice JavaScript è la console del browser.

Fa parte degli strumenti di sviluppo ed appare quando si preme il tasto "F12" o quando si clicca con il seconda tasto del mouse sulla pagina web e si sceglie la voce "Ispeziona". Sul browser Safari, la console fa parte del menu di sviluppo ("Develop Menu") e deve essere abilitata nelle impostazioni del browser per poterla poi attivare con la combinazione di tasti ``Cmd+Opt+C``.

![Console del browser](/static/coding/web/javascript/javascript-console.png "Console del browser")

La console visualizza, in fase di esecuzione, eventuali errori generati, in modo che il programmatore possa correggerli. Inoltre, visualizza i messaggi informativi, di avviso e di errore che il programmatore inserisce negli script per avere in output il valore di variabili, di oggetti, il tempo di esecuzione e così via.

### Messaggi informativi, di avviso e di errore

Nella console è possibile scrivere messaggi informativi, di avviso e di errore attraverso le istruzioni ``console.info()``, ``console.warn()`` e ``console.error()``, che prendono come parametro il messaggio da mostrare.

```javascript
console.info("informazione");
console.warn("allarme");
console.error("errore");

let x = 10;
console.info(x);
```

### Sostituzione dei segnaposto

Nei messaggi da mostrare nella console è possibile utilizzare una formattazione personalizzata, specificandola attraverso dei segnaposto che sono molto simili a quelli utilizzati nei linguaggi _c/c++_ e _Java_.

I segnaposto sono i seguenti:

- ``%s``: Segnaposto di una stringa;
- ``%d`` oppure ``%i``: Segnaposto di un numero intero;
- ``%f``: Segnaposto di un numero decimale;
- ``%o``: Segnaposto di un oggetto o di un elemento HTML;
- ``%c``: Segnaposto di uno stile CSS.

Nei messaggi da mostrare nella console, ad ogni segnaposto deve essere associato un parametro, come nell'esempio seguente, nel quale sono presenti quattro segnaposto e quattro parametri.

```javascript
console.info("%s ha %i anni, è alto %f metri ed è amico di %s", "Alan", 7, 1.15, "Mike");
```

Ad ogni segnaposto presente nel messaggio sarà sostituito il parametro corrispondente, a patto che sia compatibile con il segnaposto utilizzato. Al segnaposto di un numero non può essere associato un parametro di tipo stringa, ma deve essere associato un parametro di tipo numerico.

Nell'esempio precedente, al primo segnaposto ``%s`` viene sostituito il parametro ``"Alan"``, al secondo segnaposto ``%i`` viene sostituito il parametro ``7``, al terzo segnaposto ``%f`` viene sostituito il parametro ``1.15``, al quarto segnaposto viene sostituito il parametro ``"Mike"``, mostrando in console il messaggio "Alan ha 7 anni, è alto 1.15 metri ed è amico di Mike".

Come si può notare, il primo argomento della funzione è il messaggio da mostrare, seguito poi dalla lista di parametri da sostituire ai segnaposto (uno per ogni segnaposto).

La formattazione con stile CSS ha un effetto visivo molto efficace:

```javascript
console.warn( "%cThis is actually %cvery interesting", "color: blue; font-size: 55px; background-color: yellow;", "font-size: 55px; background-color: blue; color: yellow" );
```

Permette di mostrare in console tutti gli effetti grafici realizzabili attraverso CSS, inclusa la presentazione di immagini:

```javascript
console.error( "%cThis is an image", "color: blue; font-size: 55px; background-image: url(https://source.unsplash.com/random/1200x800)");
```

La formattazione di un oggetto HTML permette di scrivere nella console il codice HTML passato come parametro:

```javascript
console.info( "This is the image code: ", "<img src='https://source.unsplash.com/random/1200x800'>");
```

Il codice HTML puó anche essere recuperato dalla pagina web utilizzando le apposite funzioni JavaScript, come nel seguente esempio.

```javascript
console.error( "This is the image code: ", document.querySelector('#id'));
```

### Raggruppare messaggi

E' possibile creare gruppi di messaggi, utilizzando le istruzioni ``console.group()`` e ``console.groupEnd()``:

```javascript
console.group("gruppo di informazioni");
console.info("informazione 1");
console.info("informazione 2");
console.warn("allarme 1");
console.groupEnd();
```

Se si preferisce raggrupparli, facendo si che il gruppo sia mostrato chiuso, si può usare in alternativa le istruzioni ``console.groupCollapsed()`` e ``console.groupEnd()``.

### Dati in tabella

La scrittura di una tabella nella console, attraverso l'istruzione ``console.table()``, è particolarmente utile poiché permette di visualizzare array e matrici in un formato molto comprensibile:

```javascript
let vettore = ['uno', 'due', 'tre'];
console.table(vettore);
```

È possibile selezionare le proprietà da visualizzare, filtrandole:

```javascript
let p1 = { nome: "Tyrone", cognome: "Jones"}
let p2 = { nome: "Janet", cognome: "Smith"}
let p3 = { nome: "Maria", cognome: "Cruz"}
let vettore = [p1, p2, p3];
console.table(vettore, ["nome"]);
```

### Tempo di esecuzione

Utilissima pure la scrittura in console del tempo di esecuzione intercorso tra due punti dello script, indicati dalle istruzioni ``console.time()`` e ``console.timeEnd()``:

```javascript
console.time("tempo impiegato:");

// istruzioni
// console.warn("allarme 1");

console.timeEnd("tempo impiegato:");
```

In output sarà mostrato il tempo impiegato nell'esecuzione delle istruzioni, ad esempio "tempo impiegato: 12.014 ms".

### Struttura di un oggetto

Per stampare la struttura di un oggetto si usa l'utilissima istruzione ``console.dir()``, come nel seguente esempio:

```javascript
let obj = {nome: "Pippo", cognome: "Pluto"};
console.dir(obj);
```

Un esempio completo della console contenente l'output di tutte le istruzioni viste è il seguente:

![Console - output di tutte le istruzioni](/static/coding/web/javascript/javascript-console-primi-script.png "Console - output di tutte le istruzioni")

### Alias e selezione oggetti

Nella console è possibile utilizzare due alias per velocizzare la selezione degli elementi:

- ``$('selettoreCSS')`` sta ad indicare ``document.querySelector('selettoreCSS')``;
- ``$$('selettoreCSS')`` sta ad indicare ``document.querySelectorAll('selettoreCSS')``;

Il testo ``'selettoreCSS'`` sta ad indicare un selettore CSS, per maggiori informazioni si rimanda alla lezione sull'argomento.

I metodi della console permettono di selezionare uno specifico elemento oppure tutti gli elementi che hanno determinate caratteristiche e di mostrarle in un elenco. Ad esempio, per visualizzare tutti i collegamenti:

```javascript
console.table($$('a'), ['href']);
```

Come secondo esempio visualizziamo tutte le immagini presenti nella pagina ed il corrispondente testo alternativo:

```javascript
console.table($$('img'), ['src', 'alt']);
```

Se si vuole visualizzare una specifica immagine con identificativo ``img1`` ed il corrispondente testo alternativo:

```javascript
console.table($('#img1'), ['src', 'alt']);
```
