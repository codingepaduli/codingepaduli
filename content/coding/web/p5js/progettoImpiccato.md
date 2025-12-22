---
type: "p5js"
title: 'p5.js Lez. 07.9 - Progetto "Impiccato"'
description: 'Requisiti del progetto "Impiccato"'
date: 2023-11-19
publishdate: 2023-11-19
lastmod: 2023-11-19
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: 'Requisiti del progetto "Impiccato"'
weight: 8506
---

# Progetto "L'impiccato"

## Requisiti funzionali

Si sviluppi il progetto "L'impiccato", utilizzando la libreria grafica ``p5.js`` e la libreria dei suoni ``p5.sound.js`` per il disegno e la riproduzione degli oggetti necessari. I requisiti funzionali del progetto sono i seguenti:

1. L'area da disegno deve avere una dimensione impostata a proprio piacimento, ma comunque adatta alla pagina web; All'avvio del gioco deve essere mostrato un menù, con stili e colori a scelta dello studente. Il menù deve essere sempre accessibile all'utente quando questi preme il tasto ">". Al termine del gioco, deve essere visualizzata una classifica con i punteggi migliori. La classifica deve essere sempre accessibile all'utente quando questi preme il tasto ".". L'utente inizia a giocare premendo il tasto '-';
2. Quando l'utente preme il tasto '-' per iniziare a giocare, deve essere visualizzata la prima scena della ghigliottina e devono essere visualizzati i trattini che nascondono le singole lettere della parola da indovinare;
3. L'utente sceglie le lettere premendo un tasto (i tasti vanno dalla "a" alla "z") che viene visualizzato nell'area da disegno;
4. Il programma verifica se la lettera è presente, visualizzandola al posto del trattino, o se manca, visualizzando quindi la ghigliottina con un elemento in più;
5. Il gioco termina con una sconfitta quando l'utente supera il numero di tentativi impostato; termina con una vittoria quando l'utente indovina tutte le lettere e non supera il numero di tentativi impostato;
6. Ad ogni tentativo dell'utente si deve riprodurre un suono di successo o fallimento, se l'utente vince si deve riprodurre un suono di vittoria, se l'utente perde, si deve riprodurre un suono di sconfitta;

![p5.js - progetto impiccato](/static/coding/web/p5js/progettoImpiccato_fasi.png "p5.js - progetto impiccato")

## Fasi di realizzazione

Le fasi di realizzazione da seguire per sviluppare il progetto sono le seguenti:

**Fase 1:** Dichiara la variabile ``tasto`` e inizializzala al valore vuoto ``''``; Dichiara la funzione ``keyPressed()`` per gestire la scelta dell'utente ed al suo interno memorizza nella variabile ``tasto`` il tasto premuto dall'utente (che è nella variabile di p5js ``key``);

```javascript
function keyPressed() {
  tasto = key;
}
```

Dichiara le funzioni ``menu()``, ``classifica()`` e ``gioco()`` ed in ogni funzione inserisci un semplice testo da visualizzare.

Nella funzione ``draw()`` gestisci le varie scene da visualizzare (tasto '-' per il gioco, il tasto '.' per la classifica, tasto '>' per il menu, tasti dalla 'a' alla 'z' per indovinare una lettera, e quindi da associare al gioco):

```javascript
function draw() {-
  background(220);
  
  text(`Tasto premuto: ${tasto}`, 20, 20);

  if (tasto == '>') {
    menu();
  }
  if (tasto == '.') {
    classifica();
  }
  if (tasto == '-') {
    gioco();
  }
  if (tasto >= 'a' && tasto <= 'z') {
    gioco()
  }
}
```

**Fase 2:**

Implementa le funzioni menu e classifica ispirandoti all'immagine precedente. Inserisci colori e stili a tuo piacere.

**Fase 3:**

Inserisci una variabile ``tentativi`` ed inizializzala ad un valore a tuo piacere;

Modifica quindi la funzione ``gioco()`` in modo tale che se l'utente sceglie una lettera, allora il numero di tentativi si riduce e la variabile ``tasto`` si assegna il valore ``-`` (in modo da visualizzare sempre la fase di gioco);

```javascript
function gioco() {
  text("gioco", 320, 20)
  
  if (tasto >= 'a' && tasto <= 'z') {
    tentativi = tentativi - 1;
  }
  
  tasto = '-';
}
```

**Fase 4:**

Modifica la funzione ``gioco``, mostrando la ghigliottina adatta al numero di tentativi effettuato dall'utente. Dichiara le funzioni ``ghigliottina1()``, ``ghigliottina2()`` e ``ghigliottina3()`` ecc.. scegliendo colori e stili a proprio piacere.

```javascript
function gioco() {
  text("gioco", 320, 20)
  
  if (tasto >= 'a' && tasto <= 'z') {
    tentativi = tentativi - 1;
  }
  
  if (tentativi == 1) {
    ghigliottina1();
  }
  if (tentativi == 2) {
    ghigliottina2();
  }
  if (tentativi == 3) {
    ghigliottina3();
  }
  ...
  
  tasto = '-';
}
```

Dichiara la variabile ``parola`` che rappresenta la parola da indovinare e completa la logica del gioco come spiegato dal proprio docente.

**Fase 5:** Inserire i suoni per i tentativi a buon fine, i tentativi errati, la vittoria (per la parola indovinata) e la sconfitta (per aver terminato il numero di tentativi a disposizione). Il risultato deve essere simile al seguente:

![p5.js - progetto impiccato](/static/coding/web/p5js/progettoImpiccato_gioco.png "p5.js - progetto impiccato")

## Criteri di valutazione

<!-- markdownlint-disable MD009 MD036 -->

 |              |     |     |     |     |     |
---       | --- | --- | --- | --- | --- | --- | ---
Esercizio |  1  |  2  |  3  |  4  |  5  |  6  | Totale Punti
Max punti |  1  |  1  |  2  |  2  |  2  |  2  |
Punti     |     |     |     |     |     |     |

Cognome ______________
Nome ______________
Classe __________
Data __________

<!-- markdownlint-enable MD009 MD036 -->
