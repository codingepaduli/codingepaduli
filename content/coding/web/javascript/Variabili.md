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

- `Nan` valore utilizzato per indicare un risultato che [Non è un Numero](https://it.wikipedia.org/wiki/NaN "Link a Wikipedia su Not A Number") (dall'inglese Not a Number). Questo valore è assegnato quando si tentano operazioni del tipo "radice quadrata di meno uno", che non ha risultato nell'insieme dei numeri reali;
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
