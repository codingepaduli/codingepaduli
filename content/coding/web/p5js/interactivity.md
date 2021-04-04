---
type: "p5js"
title: "04 - Interattività ed animazioni"
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
customJS: ["/static/js/p5-1.2.0-min.js", "/static/coding/web/p5js/interactivity01.js"]
---

# Interattività ed animazioni

L'utente può interagire con l'area da disegno utilizzando i classici dispositivi di input, come tastiera, mouse e webcam. L'output è inviato allo schermo ed ai dispositivi audio. E' anche possibile comunicare con dispositivi esterni, quali il micro-controllore Arduino o la scheda integrata Raspberry.

Alcune funzionalità. ad esempio la gestione delle dimensioni dello schermo, della frequenza di disegno o della rotazione dello schermo, sono implementate dalla libreria stessa, mentre altre funzionalità, come la gestione dei suoni o la comunicazione con dispositivi esterni, sono demandate ad opportune librerie esterne che estendono le funzionalità di base.

Il continuo ridisegnare l'area da disegno, gestito dalla libreria grafica, unito alla possibilità di modificare lo stato dei vari oggetti grafici, come la posizione ed il colore, permette lo sviluppo di animazioni con una semplicità notevole.

L'unione delle caratteristiche precedentemente elencate permette al programmatore di poter sfruttare tutta la propria creatività e fantasia per realizzare applicazioni multimediali ed interattive con una notevole semplicità.

Di seguito vengono descritte le principali funzionalità di base che permettono di gestire lo stato e interagire con i principali dispositivi, rimandando alla documentazione ufficiale gli approfondimenti dei concetti avanzati.

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

Per realizzare il movimento del cerchio verso destra, è necessario incrementare il valore della variabile ``x`` ad ogni operazione di ridisegno dell'area di lavoro. Ricordando che tutte le istruzioni contenute nella funzione ``draw`` sono eseguite ciclicamente e servono a ridisegnare continuamente l'area di lavoro, allora si intuisce facilmente che sia il disegno del cerchio, sia l'operazione di incremento della variabile ``x`` devono essere inserite nella funzione draw.

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

<div id="example02"></div>

## Interazione con il mouse

L'input del mouse è gestito automaticamente dalla libreria p5.js, la quale, in maniera completamente trasparente al programmatore, memorizza nelle variabili ``mouseX`` e ``mouseY`` le coordinate X ed Y del mouse, quando questo si trova nell'area da disegno, e nella variabile ``mouseButton`` l'ultimo pulsante cliccato, che può essere identificato da una delle seguenti costanti:

- ``LEFT``: indica che l'ultimo pulsante cliccato è il pulsante sinistro del mouse;
- ``RIGHT``: indica che l'ultimo pulsante cliccato è il pulsante destro del mouse;
- ``CENTER``: indica che l'ultimo pulsante cliccato è il pulsante centrale del mouse.

Allo stesso modo, nella variabile ``mouseIsPressed`` è automaticamente memorizzato il fatto che un (qualsiasi) pulsante del mouse sia stato cliccato o meno, per cui questa variabile può assumere valore ``true`` o ``false``.

Si deve prestare particolare attenzione a questa variabile, dato che al click assume valore ``true``, ma appena il click termina, assume immediatamente valore ``false``.

### Cursore del mouse

E' possibile nascondere o impostare una nuova icona per il cursore del mouse. Le icone fanno parte del sistema operativo e quindi appaiono diverse su macchine e sistemi differenti.

Per nascondere il cursore, si utilizza la funzione ``noCursor``.

Per visualizzare nuovamente l'icona o per impostare una nuova icona del mouse si utilizza la funzione ``cursor``, che prende come argomento opzionale la costante che indica la nuova icona da usare. Tra le costanti disponibili ci sono:

- ``ARROW``: indica l'icona a forma di freccia;
- ``CROSS``: indica l'icona a forma di croce;
- ``HAND``: indica l'icona a forma di mano;
- ``MOVE``: indica l'icona che indica di effettuare uno spostamento;
- ``TEXT``: indica l'icona a forma di cursore per l'inserimento testo;
- ``WAIT``: indica l'icona a forma di clessidra d'attesa.

## Interazione con la tastiera

La libreria p5.js memorizza nelle variabili ``key`` e ``keyCode`` il tasto premuto sulla tastiera. Il valore resta disponibile in memoria fino a quando un nuovo pulsante viene cliccato.

La differenza tra le due variabili è che la prima si usa per ottenere solo caratteri alfanumerici e di punteggiatura, la seconda variabile si usa per ottenere il codice del tasto, e non si limita ai caratteri alfanumerici e di punteggiatura, ma anche i tasti corrispondenti alle frecce, alla cancellazione, al tasto "invio", ecc..

La libreria p5.js cattura anche il fatto che un pulsante della tastiera sia stato cliccato o meno, e memorizza questa informazione nella variabile ``keyIsPressed``, che può assumere valore ``true`` o ``false``.

Da prestare attenzione al fatto che la variabile ``keyIsPressed``, alla pressione di un tasto, assume valore ``true`` ma, appena il tasto premuto viene lasciato, assume immediatamente valore ``false``.

## Gestione aggiornamento area da disegno

L'area da disegno viene ridisegnata con una frequenza misurata in fotogrammi (frame) per secondo (nota ai video-gamer con la sigla "fps"); Una frequenza elevata permette una visione più fluida dell'animazione generata o del filmato riprodotto.

Si può utilizzare la funzione ``frameRate()`` per ottenere la frequenza utilizzata. La funzione permette anche di impostare la frequenza desiderata passandola come argomento (opzionale). Ad esempio, per impostare la frequenza a 60fps, si utilizza:

```javascript
frameRate(60);
```

La variabile ``frameCount`` messa a disposizione dalla libreria è un contatore nel quale viene salvato il numero di fotogrammi disegnati dall'inizio dell'animazione.

Anche la variabile ``deltaTime`` è messa a disposizione dalla libreria. Questa variabile contiene la differenza in millisecondi del tempo trascorso tra l'inizio del fotogramma precedente e l'inizio del fotogramma corrente.

## Gestione dimensioni e rotazione schermo

La grandezza dello schermo può variare da dispositivo a dispositivo. Inoltre con tablet e smartphone, l'utente può ruotare lo schermo.

La variabile ``deviceOrientation`` indica se lo schermo è orientato in orizzontale o verticale;

Le variabili ``windowWidth`` e ``windowHeight`` indicano rispettivamente larghezza ed altezza della finestra corrente.
