---
type: "p5js"
title: "04 - Interattività"
description: "Interazione con l'utente mediante mouse e tastiera"
date: 2020-09-17
publishdate: 2020-09-17
lastmod: 2020-09-17
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Interazione con l'utente mediante mouse e tastiera"
externalJS: ["https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.1.9/p5.js"]
---

# Interattività

L'utente può interagire con l'area da disegno attraverso tastiera, mouse e tutti i dispositivi che permettono di fornire un input al computer.

Il cursore del mouse è tipicamente usato per controllare la posizione o muovere in una posizione un personaggio o un oggetto sullo schermo. La tastiera permette un controllo in una modalità differente, dato che non ha un segnaposto sullo schermo, come il cursore del mouse.

Ad esempio, in un videogioco "sparatutto", con il mouse è possibile indicare con precisione dove sparare, a differenza della tastiera, che tipicamente è utilizzata per spostare il giocatore.

## Interazione con il mouse

La libreria p5.js memorizza nelle variabili ``mouseX`` e ``mouseY`` le coordinate x ed y del mouse, quando questo si trova nell'area da disegno.

Allo stesso modo, memorizza nella variabile ``mouseIsPressed`` il fatto che un (qualsiasi) pulsante del mouse sia stato cliccato o meno, per cui questa variabile può assumere valore ``true`` o ``false``.

Da prestare attenzione al fatto che questa variabile assume valore ``false`` appena il pulsante del mouse viene lasciato.

Nella variabile ``mouseButton`` viene memorizzato il pulsante cliccato, che può essere identificato da una delle seguenti costanti:

- ``LEFT``: indica che è stato cliccato il pulsante sinistro del mouse;
- ``RIGHT``: indica che è stato cliccato il pulsante destro del mouse;
- ``CENTER``: indica che è stato cliccato il pulsante centrale del mouse.

Il valore della variabile ``mouseButton`` rimane memorizzato anche dopo che il pulsante è stato cliccato e resta disponibile in memoria fino a quando un nuovo pulsante viene cliccato.

## Interazione con la tastiera

La libreria p5.js memorizza nelle variabili ``key`` e ``keyCode`` il tasto premuto sulla tastiera. Il valore  resta disponibile in memoria fino a quando un nuovo pulsante viene cliccato.

La differenza tra le due variabili è che la prima si usa per ottenere solo caratteri alfanumerici e di punteggiatura, la seconda variabile si usa per ottenere anche i tasti premuti che non appartengono alla prima categoria, ad esempio i tasti corrispondenti alle frecce, alla cancellazione, il tasto "invio", ecc..

La libreria p5.js cattura anche il fatto che un pulsante della tastiera sia stato cliccato o meno, e memorizza questa informazione nella variabile ``keyIsPressed``, che può assumere valore ``true`` o ``false``.

Da prestare attenzione al fatto che la variabile ``keyIsPressed`` assume valore ``false`` appena il pulsante premuto viene lasciato.

## Cursore del mouse

E' possibile nascondere o impostare una nuova icona per il cursore del mouse. Le icone fanno parte del sistema operativo e quindi appaiono diverse su macchine e sistemi differenti.

Per nascondere il cursore, si utilizza la funzione ``noCursor``.

Per visualizzare nuovamente l'icona o per impostare una nuova icona del mouse si utilizza la funzione ``cursor``, che prende come argomento opzionale la costante che indica la nuova icona da usare. Tra le costanti disponibili ci sono:

- ``ARROW``: indica l'icona a forma di freccia;
- ``CROSS``: indica l'icona a forma di croce;
- ``HAND``: indica l'icona a forma di mano;
- ``MOVE``: indica l'icona che indica di effettuare uno spostamento;
- ``TEXT``: indica l'icona a forma di cursore per l'inserimento testo;
- ``WAIT``: indica l'icona a forma di clessidra d'attesa.
