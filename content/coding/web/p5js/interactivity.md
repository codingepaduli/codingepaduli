---
type: "p5js"
title: "04 - Interattività"
description: "Interazione utente"
date: 2020-09-17
publishdate: 2020-09-17
lastmod: 2020-09-17
spellcheck: 2020-12-11
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Interazione utente"
---

# Interattività

L'utente può interagire con l'area da disegno attraverso tastiera, mouse e tutti gli altri dispositivi di input. L'interazione con audio, webcam e dispositivi esterni, come il micro-controllore Arduino e la scheda Raspberry, sono garantiti da opportune estensioni che estendono le funzionalità di base.

Per il programmatore è estremamente semplice scrivere programmi che interagiscano con questi dispositivi di input ed output, ad esempio può programmare l'area da disegno perché si adatti alle dimensioni del display, alla frequenza di disegno, alla rotazione dello schermo ed al funzionamento a tutto schermo.

Di seguito vengono descritte le principali funzionalità di base che permettono di sviluppare l'interazione con l'utente, rimandando alla documentazione ufficiale gli approfondimenti dei concetti avanzati.

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
