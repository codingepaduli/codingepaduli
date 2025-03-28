---
type: "mediapipe"
title: "AI e Teachable Machine"
description: "Introduzione all'intelligenza artificiale e a Teachable Machine"
date: 2022-03-28
publishdate: 2022-03-28
lastmod: 2022-03-28
categories: ["coding", "web", "ai"]
keywords: ["coding", "web", "ai"]
draft: false
toc: false
summary: "Introduzione all'intelligenza artificiale e a Teachable Machine"
weight: 9040
---

# AI e Teachable Machine

L'intelligenza artificiale è un ramo della computer science che si occupa di creare sistemi in grado di svolgere compiti che normalmente richiederebbero intelligenza umana. Questi compiti possono includere il riconoscimento vocale, la comprensione del linguaggio naturale, la visione artificiale e la presa di decisioni.

Possiamo dire che gli algoritmi di intelligenza artificiale simulano il comportamento umano.

[Teachable Machine](https://teachablemachine.withgoogle.com/ "Sito web di Teachable Machine") è un ambiente didattico per apprendere, insegnare e realizzare lavori con l'intelligenza artificiale, in un contesto creativo e multimediale.

In questo ambiente possiamo creare progetti che sfruttino il riconoscimento audio, video e della posa del corpo.

## Riconoscimento delle immagini

L'ambiente guida l'utente nella creazione delle categorie da riconoscere, per poi effettuare il training e visualizzare l'esito.

Nella parte sinistra dell'interfaccia, l'utente deve scegliere le categorie di immagini che il sistema di AI dovrà riconoscere e quindi caricare le immagini per ogni categoria.

Cliccando sul pulsante centrale di addestramento, viene effettuato il **training** del sistema di AI, un processo attraverso il quale il computer impara a riconoscere i vari modelli e a catalogarli come indicato dall'utente.

Di seguito una schermata d'esempio:

![Teachable Machine](/static/coding/web/mediapipe/teachableMachine.png)

Sulla destra dell'interfaccia si può verificare, attraverso la webcam oppure un'immagine caricata, che il sistema effettivamente abbia imparato a catalogare i modelli indicati in fase di training.

Ovviamente se il sistema di AI è stato addestrato su cani e gatti, non potra catalogare delfini o giraffe.

## Riconoscimento dell'audio

TODO

## Riconoscimento della posa

TODO

## Esportazione del modello

Nell'ambiente di Teachable Machine è possibile esportare il modello addestrato per utilizzarlo nello sviluppo dei propri programmi.

Per esportare un modello, bisogna cliccare sul pulsante "Esporta modello" e poi scegliere il linguaggio di programmazione tra quelli proposti e se utilizzarlo online o effettuare il download.

![Teachable Machine](/static/coding/web/mediapipe/teachableMachine-export-model.png)

Il progetto JavaScript consiste in 4 file, la pagina web ed i tre file del sistema di AI.

![Teachable Machine](/static/coding/web/mediapipe/teachableMachine-project.png)

Al momento in cui si scrive, le versioni delle librerie JavaScript sono errate, per poter far funzionare il progetto è necessario sostituirle indicando la versione:

```html
<script src="https://cdn.jsdelivr.net/npm/p5@1.2.0/lib/p5.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/p5@0.7.3/lib/addons/p5.dom.min.js"></script>
<script src="https://unpkg.com/ml5@0.12.2/dist/ml5.min.js"></script>
```

Ulteriore attenzione deve essere posta nell'indicare la cartella in cui si trovano i file di AI:

```javascript
let imageModelURL = './cartella/';  // FIX MODEL PATH

classifier = ml5.imageClassifier(imageModelURL + 'model.json');
```

Una volta effettuato ciò è necessario avviare un proprio server locale sul quale caricare il progetto (oppure caricarli su un vero e proprio server online) e verificare che il progetto funzioni correttamente.

Il progetto realizzato utilizza il sistema di AI nel seguente modo:

- la funzione ``classifier.classify(flippedVideo, gotResult);`` è invocata per il riconoscimento di un modello presente nell'immagine (il video frame corrente);
- la funzione ``gotResult(error, results)`` è invocata per restituire un errore o una serie di risultati, in particolare:
  1. ``results[0].label`` contiene la catalogazione del modello;
  2. ``results[0].confidence`` contiene l'accuratezza del riconoscimento (in percentuale).

Si può quindi personalizzare la logica del progetto in base alla classificazione ottenuta dal sistema di AI, ad esempio nella funzione ``draw`` si può aggiungere:

```javascript
if (label == 'Cani') {
  fill('red');
  circle(200, 200, 20);
}
if (label == 'Uccelli') {
  fill('green');
  rect(200, 200, 40, 20);
}
```

In allegato un archivio del progetto in formato compresso con estensione ``.zip``.

[Teachable Machine](/static/coding/web/mediapipe/teachableMachine-export-model.zip)