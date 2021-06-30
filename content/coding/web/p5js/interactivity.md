---
type: "p5js"
title: "p5.js Lez. 04 - Interattività ed animazioni"
description: "Interazione con l'utente attraverso le periferiche di input ed output ed animazioni realizzate usando le variabili"
date: 2020-09-17
publishdate: 2020-09-17
lastmod: 2020-09-17
spellcheck: 2020-12-11
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Interazione con l'utente attraverso le periferiche di input ed output ed animazioni realizzate usando le variabili"
customJS: ["/static/js/p5-1.2.0-min.js", "/static/coding/web/p5js/interactivity02.js"]
---

# Interattività ed animazioni

L'utente può interagire con l'area da disegno utilizzando i classici dispositivi di input, come tastiera, mouse e webcam. L'output è inviato allo schermo ed ai dispositivi audio. E' anche possibile comunicare con dispositivi esterni, quali il micro-controllore Arduino o la scheda integrata Raspberry.

Alcune funzionalità. ad esempio la gestione delle dimensioni dello schermo, della frequenza di disegno o della rotazione dello schermo, sono implementate dalla libreria stessa, mentre altre funzionalità, come la gestione dei suoni o la comunicazione con dispositivi esterni, sono demandate ad opportune librerie esterne che estendono le funzionalità di base.

Il continuo ridisegnare l'area da disegno, gestito dalla libreria grafica, unito alla possibilità di modificare lo stato dei vari oggetti grafici, come la posizione ed il colore, permette lo sviluppo di animazioni con una semplicità notevole.

L'unione delle caratteristiche precedentemente elencate permette al programmatore di poter sfruttare tutta la propria creatività e fantasia per realizzare applicazioni multimediali ed interattive con una notevole semplicità.

Di seguito vengono descritte le principali funzionalità di base che permettono di gestire lo stato e interagire con i principali dispositivi, rimandando alla documentazione ufficiale gli approfondimenti dei concetti avanzati.

## Aggiornamento area da disegno

Quando il programmatore definisce le dimensioni dell'area da disegno, utilizzando la funzione ``createCanvas``, la larghezza e l'altezza dell'area da disegno vengono memorizzate automaticamente nelle rispettive variabili ``width`` ed ``height``. Queste variabili sono dichiarate automaticamente, quindi non necessitano di una dichiarazione da parte del programmatore, e sono continuamente aggiornate ad ogni cambiamento delle dimensioni dell'area.

L'area da disegno viene ridisegnata con una frequenza misurata in fotogrammi per secondo (in inglese frame per second), il cui acronimo è noto ai video-giocatori con la sigla "fps"); Una frequenza elevata permette una visione più fluida dell'animazione generata o del filmato riprodotto, ma richiede una maggiore potenza di elaborazione.

Il primo fotogramma dell'area da disegno è disegnato eseguendo le istruzioni contenute nella funzione ``setup``, che è eseguita una sola volta. Le istruzioni contenute nella funzione ``draw`` sono eseguite ciclicamente per generare i fotogrammi successivi, in modo da ridisegnare continuamente l'area di lavoro. Per ottenere la frequenza di ridisegno, si può utilizzare la funzione ``frameRate()``, come nel seguente esempio:

```javascript
let freq = frameRate();
```

La stessa funzione permette anche di impostare la frequenza desiderata, indicandola come argomento (opzionale). Ad esempio, per impostare la frequenza a 60fps, si utilizza:

```javascript
frameRate(60);
```

La libreria grafica dichiara automaticamente due variabili che forniscono informazioni sullo stato di aggiornamento dell'area da disegno:

- la variabile ``frameCount`` è un contatore nel quale viene salvato il numero di fotogrammi disegnati dall'inizio dell'animazione;
- la variabile ``deltaTime`` contiene la differenza in millisecondi del tempo trascorso tra l'inizio del fotogramma precedente e l'inizio del fotogramma corrente.

## Animazioni

Le animazioni sono basate principalmente sul cambiamento dello stato di uno o più oggetti grafici.

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

In ambiente web è visualizzabile quest'ultimo esempio di animazione.

<div id="interactivity01"></div>

## Interazione con il mouse

L'input del mouse è gestito in maniera completamente trasparente per il programmatore. Lo stato del dispositivo, rappresentato dalle coordinate X ed Y del cursore e dall'ultimo pulsante del mouse cliccato, è memorizzato nelle variabili ``mouseX``, ``mouseY`` e ``mouseButton``. Queste variabili sono dichiarate automaticamente, quindi non necessitano di una dichiarazione da parte del programmatore, e sono continuamente aggiornate ad ogni ridisegno dell'area.

Allo stesso modo, nella variabile ``mouseIsPressed`` è automaticamente memorizzato il fatto che un (qualsiasi) pulsante del mouse sia stato cliccato o meno, per cui questa variabile può assumere valore ``true`` o ``false``. Si deve prestare particolare attenzione a questa variabile, dato che al click assume valore ``true``, ma appena il click termina, assume immediatamente valore ``false``.

Per quanto riguarda la variabile ``mouseButton``, l'ultimo pulsante cliccato può essere identificato da una delle seguenti costanti:

- ``LEFT``: indica che l'ultimo pulsante cliccato è il pulsante sinistro del mouse;
- ``RIGHT``: indica che l'ultimo pulsante cliccato è il pulsante destro del mouse;
- ``CENTER``: indica che l'ultimo pulsante cliccato è il pulsante centrale del mouse.

### Esempio di spostamento del cerchio utilizzando il mouse

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

In ambiente web è visualizzabile quest'ultimo esempio di animazione.

<div id="interactivity02"></div>

### Spostamento con il mouse di più figure unite

Quando si intende disegnare più figure per poterle poi spostare contemporaneamente con il mouse, è necessario partire da un punto di riferimento (``x``, ``y``) dal quale disegnarle. La posizione di ogni figura deve essere calcolata partendo da questo punto di riferimento e sommando uno spiazzamento per collocarla correttamente.

Partiamo ad esempio dal simbolo dell'infinito, una figura composta da due cerchi:

```javascript
circle(100, 100, 100);
circle(200, 100, 100);
```

Se si vuole spostare entrambi i cerchi partendo dal punto centrale del primo cerchio, allora il punto di riferimento sarà (``x``, ``y``) = (100, 100); A partire da questo punto, entrambi i cerchi devono essere disegnati con uno spiazzamento. Le coordinate del primo cerchio sono esattamente quelle del punto di riferimento, quindi lo spiazzamento lo si può considerare pari a zero su entrambi gli assi. Le coordinate del secondo cerchio, invece, devono essere calcolate a partire dal punto di riferimento, quindi alla coordinata x=100 deve essere aggiunto uno spiazzamento di altri 100 punti. Il codice risultante sarà il seguente:

```javascript
circle(100 + 0, 100 + 0, 100);
circle(100 + 100, 100 + 0, 100);
```

Per poter spostare questa figura con il mouse, si deve sostituire al punto di riferimento (``x``, ``y``) = (100, 100) le coordinate del mouse, quindi sarà (``x``, ``y``) = (mouseX, mouseY):

```javascript
circle(mouseX + 0, mouseY + 0, 100);
circle(mouseX + 100, mouseY + 0, 100);
```

Se si vuole spostare queste figure partendo dal punto di unione (``x``, ``y``) = (150, 100), allora il primo cerchio avrà uno spiazzamento sull'asse X di -50 punti, mentre il secondo avrà uno spiazzamento di +50 punti.

```javascript
circle(mouseX - 50, mouseY + 0, 100);
circle(mouseX + 50, mouseY + 0, 100);
```

Se si vuole spostare queste figure partendo dal punto centrale del secondo cerchio (``x``, ``y``) = (200, 100), allora il primo cerchio avrà uno spiazzamento sull'asse X di -100 punti, mentre il secondo avrà uno spiazzamento pari a zero.

```javascript
circle(mouseX - 100, mouseY + 0, 100);
circle(mouseX + 0, mouseY + 0, 100);
```

## Calcolo della distanza tra due punti

Il calcolo della distanza tra due punti del piano è un'operazione fondamentale per verificare se due figure collidono.

Il teorema di Pitagora permette una visualizzazione grafica molto intuitiva della formula utilizzata per calcolare la distanza tra due punti (x1, y1) ed (x2, y2). Sul famoso triangolo rettangolo, la base è calcolata dalla differenza tra le ascisse dei due punti, quindi (x2-x1), mentre l'altezza è calcolata come differenza tra le ordinate dei due punti, quindi (y2-y1). L'ipotenusa è quindi calcolata con la nota formula: "radice quadrata della somma tra il quadrato della base e il quadrato dell'altezza".

![p5.js - Distanza tra due punti](/static/coding/web/p5js/distanzaPunti.png "p5.js - Distanza tra due punti")

I tre passi per implementare la formula sono quindi i seguenti:

```javascript
let differenzaAscisse = x2 - x1;
let differenzaOrdinate = y2 - y1;
let distanza = Math.sqrt( differenzaAscisse^2 + differenzaOrdinate^2);
```

Un'osservazione importante è che se due punti si trovano sulla stessa ascissa, allora la differenza tra le ascisse è pari a zero e il calcolo della distanza si riduce alla radice quadrata del quadrato della differenza delle ordinate. Ma le operazioni di calcolo del quadrato e della radice quadrata sono l'una l'inverso dell'altra, per cui si annullano a vicenda e, quindi, la distanza sarà semplicemente la differenza tra le ordinate espressa in valore assoluto:

```javascript
let differenzaOrdinate = y2 - y1;
let distanza = Math.sqrt(differenzaOrdinate^2);
```

## Interazione con la tastiera

L'input della tastiera è gestito in maniera completamente trasparente per il programmatore. Lo stato del dispositivo, rappresentato tasto premuto e dal codice ASCII del tasto premuto, è memorizzato nelle variabili ``key`` e ``keyCode``. Queste variabili sono dichiarate automaticamente, quindi non necessitano di una dichiarazione da parte del programmatore, ed il relativo valore resta disponibile in memoria fino a quando un nuovo pulsante viene cliccato.

La differenza tra le due variabili è che la prima si usa per ottenere solo caratteri alfanumerici e di punteggiatura, la seconda variabile si usa per ottenere il codice del tasto, e non si limita ai caratteri alfanumerici e di punteggiatura, ma comprende tutti i tasti, ad esempio il tasto "invio", il tasto di cancellazione, i tasti corrispondenti alle frecce, e tutti gli altri.

Sempre in maniera trasparente al programmatore, nella variabile ``keyIsPressed`` è automaticamente memorizzato il fatto che un (qualsiasi) tasto sia stato cliccato o meno, per cui questa variabile può assumere valore ``true`` o ``false``. Si deve prestare particolare attenzione a questa variabile, dato che alla pressione di un tasto, assume valore ``true`` ma, appena il tasto premuto viene lasciato, assume immediatamente valore ``false``.
