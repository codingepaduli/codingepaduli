---
type: "p5js"
title: "p5.js Lez. 04 - Variabili"
description: "Usare le variabili per creare animazioni e memorizzare lo stato"
date: 2023-05-02
publishdate: 2023-05-02
lastmod: 2023-05-02
spellcheck: 2023-05-02
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Usare le variabili per creare animazioni e memorizzare lo stato"
weight: 8680
---

# Variabili

Le variabili sono spazi di memoria in cui vengono memorizzate delle informazioni. Hanno un nome ed un tipo associato.

In processing sono tipicamente utilizzate per memorizzare immagini, suoni, frasi o valori numerici, come le coordinate ed il diametro di un cerchio o il colore di un rettangolo.

L'istruzione che il programmatore utilizza in un programma per creare una variabile è l'istruzione di **dichiarazione di variabile**, che assegna un nome ed un tipo di dato alla variabile e la **alloca** in memoria.

La dichiarazione avviene con la parola chiave ``let`` seguita dai nomi delle variabili separate da virgola. Un esempio è il seguente:

```javascript
let x, y, d;
```

E' possibile assegnare un valore iniziale alle variabili utilizzando l’operatore di assegnazione ``=`` seguito dal valore.

```javascript
let x = 20;
let y = 100;
let d = 50;
```

Quando in una variabile si vuole memorizzare una frase, è necessario che questa sia racchiusa tra doppi apici.

```javascript
let frase = "Hello";
let nome = "John";
```

In processing le variabili sono dichiarate ad inizio del programma. Di seguito un esempio completo:

```javascript
let x = 100;
let y = 150;
let d = 50;
let frase = "Hello world!";

function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(220);
  circle(x, y, d);
  text(frase, 10, 10);
}
```

## Istruzione di input ``prompt``

In programmazione le funzioni di input sono quelle funzioni che permettono ad un programma di ricevere dati dall'esterno. Le funzioni di input permettono all'utente di inserire in input i dati che il programma utilizza per effettuare calcoli.

La funzione progettata allo scopo è ``prompt``, la cui firma è la seguente:

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
x = prompt("inserisci un valore");
```

Dato che questa funzione blocca il programma in attesa di un input dell'utente, deve essere utilizzata nella funzione ``setup``, come nel seguente esempio:

```javascript
let x = 100;
let y = 150;
let d;
let frase;

function setup() {
  createCanvas(400, 400);
  d = prompt("inserisci il diametro");
  frase = prompt("inserisci una frase");
}

function draw() {
  background(220);
  circle(x, y, d);
  text(frase, 100, 30);
}
```

### Input di un numero intero

L'input dell'utente può essere una qualsiasi sequenza di caratteri alfanumerici. Quando si necessita di un input numerico intero allora lo si deve convertire al formato intero con la funzione ``parseInt``, che ha la seguente sintassi:

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
x = prompt("inserisci un numero");
x = parseInt(x);
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
x = prompt("inserisci un numero");
x = parseFloat(x);
```

## Istruzione di output ``text``

In programmazione le funzioni di output sono quelle funzioni che producono un risultato visibile all'utente o al sistema in cui viene eseguito il programma. Le funzioni di output determinano cosa viene stampato a schermo, mostrato su un'interfaccia utente o salvato in un file.

La funzione ``text`` è un esempio di funzione di output, infatti è utilizzata per visualizzare testo o variabili in output nell'area da disegno, inserendo come primo parametro della funzione la variabile da mostrare e specificando come successivi parametri le coordinate in cui si desidera visualizzare il testo.

Ad esempio, se si vuole visualizzare il valore della variabile ``j`` nell'area da disegno, si può utilizzare la seguente istruzione:

```javascript
text(j, 10, 50);
```

In questo caso, il primo parametro attuale è la variabile ``j``, i successivi parametri attuali sono le coordinate ``10`` e ``50``.

## Assegnazione di un valore casuale

E' possibile assegnare ad una variabile un numero pseudo-casuale compreso in un certo range numerico. Per generare numeri casuali all'interno di un range specifico, bisogna utilizzare la funzione ``random()``, che ha la seguente sintassi:

```plaintext
Syntax: random([min], [max])

Parameters:
  min    Number: the lower bound (inclusive) (Optional)
  max    Number: the upper bound (exclusive) (Optional)

Return:
  Number: the random number
```

Il parametro ``min`` rappresenta il valore minimo da generare (incluso), il parametro ``max`` rappresenta il valore massimo da generare (escluso).

Il valore generato dalla funzione può essere memorizzato all'interno di una variabile.

Un esempio d'uso della funzione che genera un valore casuale, memorizzato nella variabile ``x`` (da dichiarare), è il seguente:

```javascript
x = random(10, 20);
```

In questo caso, alla variabile ``x`` viene assegnato un numero casuale compreso tra ``10,0000`` (incluso) e ``19,9999`` (il valore ``20`` è escluso).

## Calcolo della distanza tra due punti

Il calcolo della distanza tra due punti del piano è un'operazione fondamentale per verificare se due figure collidono.

Il teorema di Pitagora permette una visualizzazione grafica molto intuitiva della formula utilizzata per calcolare la distanza tra due punti (x1, y1) ed (x2, y2). Sul famoso triangolo rettangolo, la base è calcolata dalla differenza tra le ascisse dei due punti, quindi (x2-x1), mentre l'altezza è calcolata come differenza tra le ordinate dei due punti, quindi (y2-y1). L'ipotenusa è quindi calcolata con la nota formula: "radice quadrata della somma tra il quadrato della base e il quadrato dell'altezza".

![p5.js - Distanza tra due punti](/static/coding/web/p5js/distanzaPunti.png "p5.js - Distanza tra due punti")

La funzione ``dist`` calcola la distanza tra due punti, ha la seguente sintassi:

```plaintext
Syntax: dist(x1, y1, x2, y2)

Parameters:
  x1    Number: x-coordinate of the first point
  y1    Number: y-coordinate of the first point
  x2    Number: x-coordinate of the second point
  y2    Number: y-coordinate of the second point

Return:
  Number: the distance
```

I parametri ``x1`` e ``y1`` rappresentano le coordinate x ed y del primo punto, i parametri ``x1`` e ``y1`` rappresentano le coordinate x ed y del secondo punto.

La distanza calcolata dalla funzione può essere memorizzata all'interno di una variabile.

Un esempio d'uso della funzione che calcola la distanza, memorizzata nella variabile ``distance`` (da dichiarare), è il seguente:

```javascript
distance = dist(100, 300, 500, 100);
```

## Variabili dello stato del mouse

L'input del mouse è gestito in maniera completamente trasparente per il programmatore. Lo stato del dispositivo, rappresentato dalle coordinate X ed Y del cursore e dall'ultimo pulsante del mouse cliccato, è memorizzato nelle variabili ``mouseX``, ``mouseY`` e ``mouseButton``. Queste variabili sono dichiarate automaticamente, quindi non necessitano di una dichiarazione da parte del programmatore, e sono continuamente aggiornate ad ogni ridisegno dell'area.

Allo stesso modo, nella variabile ``mouseIsPressed`` è automaticamente memorizzato il fatto che un (qualsiasi) pulsante del mouse sia stato cliccato o meno, per cui questa variabile può assumere valore ``true`` o ``false``. Si deve prestare particolare attenzione a questa variabile, dato che al click assume valore ``true``, ma appena il click termina, assume immediatamente valore ``false``.

Per quanto riguarda la variabile ``mouseButton``, l'ultimo pulsante cliccato può essere identificato da una delle seguenti costanti:

- ``LEFT``: indica che l'ultimo pulsante cliccato è il pulsante sinistro del mouse;
- ``RIGHT``: indica che l'ultimo pulsante cliccato è il pulsante destro del mouse;
- ``CENTER``: indica che l'ultimo pulsante cliccato è il pulsante centrale del mouse.

## Gestire il click del mouse

Il click del mouse è un evento tipicamente utilizzato per interagire con l'utente. Si può utilizzare per selezionare un'opzione da un menu, per rendere un gioco interattivo o creare un'esperienza interattiva.

In Processing quando viene rilevato il click, viene invocata la funzione ``mousePressed`` (e quindi viene eseguito il codice presente all'interno), sempre che questa funzione sia stata definita dall'utente.

Un utilizzo classico della funzione è memorizzare le coordinate X ed Y a cui è avvenuto il click del mouse. Per memorizzare queste due coordinate è necessario dichiarare due variabili che chiameremo ``clickX`` e ``clickY`` e che inizializzeremo per comodità al valore ``0``.

Inoltre è necessario ricordare che le coordinate del mouse sono continuamente memorizzate nelle variabili ``mouseX`` e ``mouseY`` e che non è necessario dichiararle.

Al click del mouse quindi andremo a salvare nelle variabili ``clickX`` e ``clickY`` i valori delle variabili ``mouseX`` e ``mouseY``.

Di seguito un esempio completo in cui vengono visualizzate le coordinate dell'ultimo click del mouse.

```javascript
let clickX = 0;
let clickY = 0;

function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(220);
  text(clickX, 100, 30);
  text(clickY, 100, 50);
}

function mousePressed() {
  clickX = mouseX;
  clickY = mouseY;
}
```

## Variabili dello stato della tastiera

L'input della tastiera è gestito in maniera completamente trasparente per il programmatore. Lo stato del dispositivo, rappresentato dal tasto premuto e dal codice ASCII del tasto premuto, è memorizzato nelle variabili ``key`` e ``keyCode``. Queste variabili sono dichiarate automaticamente, quindi non necessitano di una dichiarazione da parte del programmatore, ed il relativo valore resta disponibile in memoria fino a quando un nuovo pulsante viene cliccato.

La differenza tra le due variabili è che la prima si usa per ottenere solo caratteri alfanumerici e di punteggiatura, la seconda variabile si usa per ottenere il codice del tasto, e non si limita ai caratteri alfanumerici e di punteggiatura, ma comprende tutti i tasti, ad esempio il tasto "invio", il tasto di cancellazione, i tasti corrispondenti alle frecce, e tutti gli altri.

Sempre in maniera trasparente al programmatore, nella variabile ``keyIsPressed`` è automaticamente memorizzato il fatto che un (qualsiasi) tasto sia stato cliccato o meno, per cui questa variabile può assumere valore ``true`` o ``false``. Si deve prestare particolare attenzione a questa variabile, dato che alla pressione di un tasto, assume valore ``true`` ma, appena il tasto premuto viene lasciato, assume immediatamente valore ``false``.

## Variabili dello stato dello schermo

Quando il programmatore definisce le dimensioni dell'area da disegno, utilizzando la funzione ``createCanvas``, la larghezza e l'altezza dell'area da disegno vengono memorizzate automaticamente nelle rispettive variabili ``width`` ed ``height``.

Le dimensioni della larghezza e dell'altezza della finestra corrente sono invece memorizzate nelle variabili ``windowWidth`` e ``windowHeight``.

Queste variabili sono dichiarate automaticamente, quindi non necessitano di una dichiarazione da parte del programmatore, e possono essere utilizzate per adattare i contenuti alla grandezza dello schermo, che può variare da dispositivo a dispositivo.

Dato che l'utente può ruotare lo schermo con tablet e smartphone, la variabile ``deviceOrientation`` indica se lo schermo è orientato in orizzontale o verticale.

## Animazioni

Le animazioni sono basate principalmente sul cambiamento dello stato di uno o più oggetti grafici. Il continuo ridisegnare l'area da disegno, gestito dalla libreria grafica, unito alla possibilità di modificare lo stato dei vari oggetti grafici, come la posizione ed il colore, permette lo sviluppo di animazioni con una semplicità notevole.

Per realizzare il movimento di una figura basta spostare, nel corso del tempo, la posizione della figura e la si vedrà muovere. Per realizzare un passaggio dal giorno alla notte basta cambiare, nel corso del tempo, il colore del cielo da azzurro a blu notte e si vedrà calare la notte.

Per poter effettuare un cambiamento di stato di un oggetto, è necessario memorizzare lo stato dell'oggetto in una variabile. Se un oggetto deve muoversi solo sull'asse X, è necessario memorizzare in una variabile la posizione X dell'oggetto stesso. Se, invece, l'oggetto deve muoversi su entrambi gli assi X ed Y, è necessario memorizzare in una variabile la posizione X, in una seconda variabile la posizione Y. Se è il colore che deve cambiare, le componenti del colore devono essere memorizzate ognuna in una variabile (nel modello RGB la quantità di rosso deve essere memorizzata in una variabile, la quantità di verde in una seconda variabile ed, infine, la quantità di blu in una terza variabile).

Una volta memorizzato lo stato dell'oggetto in una o più variabili, si può realizzare il movimento cambiando il valore di queste variabili.

### Esempio di movimento di un cerchio

Partiamo dal disegno di un cerchio, realizzato attraverso il codice seguente:

```javascript
circle(100, 150, 50);
```

Per far muovere il cerchio verso destra (quindi lungo l'asse X), è necessario memorizzare in una variabile, che chiameremo ``x``, la posizione iniziale della coordinata X del cerchio.

La dichiarazione della variabile può avvenire prima delle due funzioni ``setup`` e ``draw``, mediante la classica dichiarazione:

```javascript
let x = 100;
```

Per realizzare il movimento del cerchio verso destra, è necessario incrementare il valore della variabile ``x`` ad ogni operazione di ridisegno dell'area di lavoro. Ricordando che l'aggiornamento dell'area di lavoro avviene nella funzione ``draw``, allora si intuisce facilmente che sia il disegno del cerchio, sia l'operazione di incremento della variabile ``x`` devono essere inserite all'interno di questa funzione.

```javascript
circle(x, 150, 50);
x = x+1;
```

L'esempio completo è di seguito riportato:

```javascript
let x = 100;

function setup() {
  createCanvas(400, 400);
}

function draw() {
  background(220);
  circle(x, 150, 50);
  x = x + 1;
}
```

E' interessante notare che se l'istruzione di incremento ``x = x + 1`` la si pone nella funzione ``setup`` invece che nella funzione ``draw``, questo incremento viene eseguito una sola volta, quindi il cerchio resta immobile.

Altra cosa interessante da notare, è che se si cancella l'istruzione per disegnare lo sfondo (``background``), allora la vecchia posizione del cerchio non sarà "pulita" e nell'area da disegno rimarrà una "scia" dovuta a tutte le precedenti posizioni occupate dal cerchio, come nella seguente immagine;

![p5.js - Esempio dell'animazione senza il disegno dello sfondo](/static/coding/web/p5js/interactivity01.png "p5.js - Esempio dell'animazione senza il disegno dello sfondo")

### Esempio di movimento del cerchio con il mouse

Partiamo dal disegno di un cerchio, realizzato attraverso il codice seguente:

```javascript
circle(100, 150, 50);
```

Per poter muovere il cerchio attraverso il mouse (quindi lungo l'asse X ed Y), è necessario memorizzare in una variabile, che chiameremo ``x``, la posizione della coordinata X del cerchio ed in una seconda variabile, che chiameremo ``y``, la posizione della coordinata Y del cerchio. Dato che non sappiamo ancora la posizione del mouse, possiamo inizializzare le due variabili con il valore zero, mediante la classica dichiarazione:

```javascript
let x = 0;
let y = 0;
```

Per poter muovere il cerchio attraverso il mouse, è necessario assegnare alla variabile ``x`` la posizione X del mouse, che è memorizzata a sua volta nella variabile mouseX; Allo stesso modo, è necessario assegnare alla variabile ``y`` la posizione Y del mouse, che è memorizzata nella variabile mouseY;

```javascript
x = mouseX;
y = mouseY;
circle(x, y, 50);
```

L'esempio completo è di seguito riportato:

```javascript
let x = 0;
let y = 0;

function setup() {
  createCanvas(400, 400);
}

function draw() {
    x = mouseX;
    y = mouseY;
    circle(x, y, 50);
}
```

L'utente può quindi spostare il cerchio utilizzando il mouse, come nella seguente immagine:

![p5.js - Esempio di spostamento del cerchio utilizzando il mouse](/static/coding/web/p5js/interactivity02.png "p5.js - Esempio di spostamento del cerchio utilizzando il mouse")

## Tecnica della variabile contatore

La **tecnica della variabile contatore** è un modello molto utilizzato nella scrittura degli algoritmi e consiste nell'utilizzare una variabile per contare il numero di volte in cui è eseguita una determinata azione o avviene un determinato evento.

Per implementare questa tecnica è necessario:

1. dichiarare una variabile numerica contatore;
2. inizializzarla al valore numerico da cui far partire il contatore (generalmente zero o uno);
3. Ogni volta che viene eseguita l'azione o si verifica l'evento, la variabile contatore deve essere incrementata di uno.

Di questa tecnica esiste la variante dell'incremento anticipato, in cui il contatore viene incrementato di 1 **prima** che venga eseguita l'azione o che si verifichi l'evento.

### Esempio di conteggio delle figure

Di seguito, un esempio completo d'applicazione della variabile contatore per numerare i cerchi disegnati.

```javascript
// dichiaro la variabile contatore
let contatore;

function setup() {
    createCanvas(400, 400);
}

function draw() {
    background(220);

    // inizializzo la variabile contatore
    contatore = 0;

    // ogni volta che disegno un cerchio
    // incremento la variabile contatore
    circle(100, 150, 50);
    text(contatore, 100, 150)
    contatore = contatore + 1;

    circle(150, 150, 50);
    text(contatore, 150, 150)
    contatore = contatore + 1;

    circle(200, 150, 50);
    text(contatore, 200, 150)
    contatore = contatore + 1;

    circle(250, 150, 50);
    text(contatore, 250, 150)
    contatore = contatore + 1;
}
```

![p5.js - Esempio di applicazione della variabile contatore](/static/coding/web/p5js/variables_counter_post.png "p5.js - Esempio di applicazione della variabile contatore")

### Esempio di conteggio pre-incrementato delle figure

Di seguito, un esempio completo d'applicazione della variabile contatore con incremento anticipato per numerare i cerchi disegnati.

```javascript
// dichiaro la variabile contatore
let contatore;

function setup() {
    createCanvas(400, 400);
}

function draw() {
    background(220);

    // inizializzo la variabile contatore
    contatore = 0;

    // incremento la variabile contatore
    // prima di disegnare i cerchi
    contatore = contatore + 1;
    circle(100, 150, 50);
    text(contatore, 100, 150);

    contatore = contatore + 1;
    circle(150, 150, 50);
    text(contatore, 150, 150);

    contatore = contatore + 1;
    circle(200, 150, 50);
    text(contatore, 200, 150);

    contatore = contatore + 1;
    circle(250, 150, 50);
    text(contatore, 250, 150);
}
```

![p5.js - Esempio di applicazione della variabile contatore](/static/coding/web/p5js/variables_counter_pre.png "p5.js - Esempio di applicazione della variabile contatore")

### Esempio del conteggio dei click del mouse

Di seguito, un esempio completo d'applicazione della variabile contatore  per contare il numero di click del mouse.

```javascript
let clickX, clickY;

// Dichiaro ed inizializzo 
// la variabile contatore
let contatore = 0;

function setup() {
    createCanvas(400, 400);
}

function draw() {
    background(220);

    textSize(20);
    text(clickX, 100, 30);
    text(clickY, 100, 50);
    text(contatore, 100, 70);
}

// gestisco il click del mouse
function mousePressed() {
    clickX = mouseX;
    clickY = mouseY;

    // ad ogni click, incremento il contatore
    contatore = contatore + 1;
}
```

In questo esempio si rileva il click del mouse e ad ogni click si incrementa il conteggio. Si ricorda che, come spiegato nei paragrafi precedenti, al click del mouse vengono eseguite le istruzioni presenti all'interno della funzione ``mousePressed``.

Per poter contare il numero di click è quindi necessario che l'incremento del contatore sia inserito all'interno di questa funzione.

![p5.js - Esempio di applicazione della variabile contatore](/static/coding/web/p5js/variables_counter_click.png "p5.js - Esempio di applicazione della variabile contatore")

## Tecnica della variabile accumulatore

La **tecnica della variabile accumulatore** consiste nell'utilizzare una variabile nella quale accumulare il valore di una serie di dati, man mano che questi si presentano, in modo da poter utilizzare il valore totale alla fine.

Per implementare questa tecnica è necessario:

1. dichiarare una variabile numerica accumulatore;
2. inizializzarla al valore numerico opportuno (generalmente zero o uno);
3. Ogni volta che si presenta un dato, lo si somma o sottrae al valore presente nell'accumulatore.

### Esempio di somma di 4 numeri casuali

Di seguito, un esempio completo d'applicazione della variabile accumulatore per sommare i numeri generati casualmente dal computer.

```javascript
// dichiaro la variabile accumulatore
let accumulatore;
let num1, num2, num3, num4;

function setup() {
    createCanvas(400, 400);

    // inizializzo la variabile accumulatore
    accumulatore = 0;

    // ogni volta che viene generato un numero casuale
    // lo accumulo nella variabile accumulatore
    num1 = random(10, 20);
    accumulatore = accumulatore + num1;
    
    num2 = random(10, 20);
    accumulatore = accumulatore + num2;
    
    num3 = random(10, 20);
    accumulatore = accumulatore + num3;
    
    num4 = random(10, 20);
    accumulatore = accumulatore + num4;
}

function draw() {
    background(220);

    textSize(32);
    text(accumulatore, 10, 100);
}
```

In questo esempio, le istruzioni per la generazione dei numeri casuali sono inserite nella funzione ``setup`` in modo tale da essere eseguite una volta sola. Ogni volta che un numero casuale viene generato, viene sommato nella variabile accumulatore.

![p5.js - Esempio di applicazione della variabile accumulatore](/static/coding/web/p5js/variables_accumulator_random.png "p5.js - Esempio di applicazione della variabile accumulatore")

### Esempio di somma di 4 numeri in input

Di seguito, un esempio completo d'applicazione della variabile accumulatore per sommare i numeri inseriti dall'utente.

```javascript
// dichiaro la variabile accumulatore
let accumulatore;
let num1, num2, num3, num4;

function setup() {
    createCanvas(400, 400);

    // inizializzo la variabile accumulatore
    accumulatore = 0;

    // ogni volta che l'utente inserisce un input
    // lo si converte in numerico decimale
    // e accumulato nella variabile accumulatore
    num1 = prompt("Inserisci un valore:");
    num1 = parseFloat(num1);
    accumulatore = accumulatore + num1;
    
    num2 = prompt("Inserisci un valore:");
    num2 = parseFloat(num2);
    accumulatore = accumulatore + num2;
    
    num3 = prompt("Inserisci un valore:");
    num3 = parseFloat(num3);
    accumulatore = accumulatore + num3;
    
    num4 = prompt("Inserisci un valore:");
    num4 = parseFloat(num4);
    accumulatore = accumulatore + num4;
}

function draw() {
    background(220);

    textSize(32);
    text(accumulatore, 10, 100);
}
```

In questo esempio, le istruzioni per l'input dell'utente (dato che sono bloccanti) sono inserite nella funzione ``setup`` in modo tale da essere eseguite una volta sola. Ogni volta che l'utente inserisce un valore, viene sommato nella variabile accumulatore.

![p5.js - Esempio di applicazione della variabile accumulatore](/static/coding/web/p5js/variables_accumulator_prompt.png "p5.js - Esempio di applicazione della variabile accumulatore")
