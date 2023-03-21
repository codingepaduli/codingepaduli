---
type: "p5play"
title: "p5play Lez. 01 - Introduzione al motore di gioco p5play"
description: "Introduzione al motore di gioco p5play"
date: 2023-03-21
publishdate: 2023-03-21
lastmod: 2023-03-21
categories: ["coding", "web", "p5play"]
keywords: ["coding", "web", "p5play"]
draft: true
toc: false
summary: "Introduzione al motore di gioco p5play"
weight: 1040
---

# P5.play

P5.play è un motore di giochi 2D.

Usa la libreria **p5.js** per il rendering delle scene grafiche e **plank** come motore di fisica per tener traccia delle posizioni, delle velocità e delle forze applicate sugli oggetti e per rilevare le collisioni tra oggetti.

Questo progetto, supportato dalla Processing Foundation, introduce gli utenti alla programmazione di videogiochi ed al paradigma ad oggetti.

La struttura basilare del programma rimane quasi la stessa, con l'unica differenza di utilizzare un oggetto Canvas per indicare l'area del disegno.

# TODO

L'inclusione di un progetto p5.play in una pagina web richiede l'inclusione nel header della pagina delle seguenti librerie:

# TODO

## Oggetti principali

Nel mondo dei videogiochi si riferisce alla parola **Sprite** per indicare qualsiasi personaggio, cosa o oggetto si muove sopra lo sfondo.

Nei videogiochi come Mario Bros, Sonic, Arknoid i vari livelli sono composti dai mattoncini da rompere o su cui saltare. Questi mattoncini prendono il nome di **tiles**, dall'inglese "piastrelle", e possono essere creati a partire da una rappresetazione testuale (anche di più righe). Ogni carattere di questo testo sarà poi trasformato in una mattonella o monetina o elemento del videogioco.

La parola **world**, dall'inglese "mondo" rappresenta tutti gli oggetti sui quali il motore fisico calcola gli spostamenti, le collisioni e sui quali applica la forza di gravità per ogni frame da disegnare. Questo calcolo avviene anche per gli oggetti fuori dallo schermo, a patto che la loro posizione nel piano non superi un certo limite. Quando un qualsiasi oggetto supera questo limite, avviene l'operazione di **cull**, dall'inglese "abbattimento selettivo", con la quale si mette l'oggetto in uno stato di riposo e considerato "fuori" dal mondo escluso dai calcoli del motore fisico.

<!-- Todo Concetti di programmazione a oggetti ? -->

