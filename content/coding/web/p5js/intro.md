---
type: "p5js"
title: "p5.js Lez. 01 - Introduzione alla libreria grafica p5.js"
description: "Introduzione alla libreria grafica p5.js"
date: 2020-09-05
publishdate: 2020-09-05
lastmod: 2020-09-05
spellcheck: 2021-01-14
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Introduzione alla libreria grafica p5.js"
weight: 9040

references:
    -   title: "p5.js"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://p5js.org/"
        description: "libreria di rendering grafico"
    -   title: "p5.js - Sito GitHub"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://github.com/processing/p5.js/"
        description: "libreria di rendering grafico - Sito GitHub"
    -   title: "q5.js"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://q5js.org/"
        description: "libreria di rendering grafico compatibile con p5.js"
    -   title: "q5.js - Sito GitHub"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://github.com/q5js/q5.js"
        description: "libreria di rendering grafico compatibile con p5.js - Sito GitHub"
    -   title: "p5.vscode"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://github.com/antiboredom/p5.vscode"
        description: "p5.vscode helps you create p5.js projects in Visual Studio Code. It also includes autocompletion, a simple tool to browse and install third-party p5 libraries, and the Live Server extension"
    -   title: "p5.js v2.0.0"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://github.com/processing/p5.js/releases/tag/v2.0.0-beta.1"
        description: "p5.js Cambiamenti versione 2.0.0 - Sito GitHub"
    -   title: "p5.js v2.0.0"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://github.com/processing/p5.js/issues/7488"
        description: "p5.js versione 2.0.0 update: Beta, Timeline, and Compatibility Addons - Sito GitHub"
    -   title: "p5.js-svg"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://github.com/zenozeng/p5.js-svg"
        description: "The main goal of p5.SVG is to provide a SVG runtime for p5.js, so that we can draw using p5's powerful API in <svg> tag, save things to svg file and manipulating existing SVG file without rasterization"
---

# Processing e p5.js

[Processing](https://processing.org/ "Sito web di processing") non è un linguaggio o un ambiente di sviluppo software, ma è un approccio orientato alle arti per apprendere, insegnare e realizzare lavori con il coding, in un contesto creativo e multimediale. I progetti sono supportati dalla [Processing Foundation](https://processingfoundation.org "Sito web della Processing Foundation"), una comunità interessata alla creazione artistica di contenuti mediante tecnologie web.

Questi progetti comprendono numerose estensioni e strumenti per la gestione audio, per la gestione grafica in 3 dimensioni, per la gestione della geo-localizzazione, delle mappe, della webcam, per l'applicazione di algoritmi di intelligenza artificiale e per la comunicazione con diversi dispositivi, come Arduino (e quindi basati su micro-controllore) o RaspBerry. Attualmente i progetti principali sono:

- [p5.js](https://p5js.org "Sito web di p5.js") è un progetto open-source focalizzato al coding in JavaScript in ambiente web.
- [OpenProcessing](https://openprocessing.org/ "Sito web di OpenProcessing") è un progetto open-source focalizzato al coding in JavaScript in ambiente web.
- [Processing IDE](https://processing.org/ "Sito web di processing") l'ambiente di sviluppo per realizzare progetti in Java, Python, Android, Wiring (per Arduino e migliaia di altri micro-controllori) e p5.js.

Questo manuale si focalizza sullo sviluppo di progetti in JavaScript, utilizzando uno dei tre ambienti sopra indicati;

## Ambiente di sviluppo p5js.org

Il punto di partenza, per iniziare velocemente ad esplorare le potenzialità della libreria p5.js, è sicuramente l'editor presente sul sito web [https://editor.p5js.org](https://editor.p5js.org "Editor online di p5.js"), che si presenta con la seguente interfaccia grafica:

![p5.js - Editor online](/static/coding/web/p5js/intro-p5-js-editor.png "p5.js - Editor online")

L'interfaccia grafica presenta i tipici componenti di un ambiente di sviluppo:

- la barra dei menù, con a sinistra i classici menu per salvare il progetto, accedere alla guida, mentre a destra troviamo i pulsanti per effettuare il login o la registrazione;
- la barra dei pulsanti, contenente i pulsanti per avviare e fermare il proprio lavoro, la casella di scelta per aggiornare automaticamente l'area di lavoro mentre si scrive il codice, la casella di testo nella quale inserire il nome del progetto ed, infine, il pulsante delle impostazioni;
- l'area di progetto, contenente i <span lang="en">file</span> che compongono il progetto;
- l'area del codice, per la modifica del codice relativo al <span lang="en">file</span> selezionato nell'area di progetto;
- l'area di anteprima, per visualizzare il lavoro realizzato;
- la console per visualizzare i messaggi di informazione, di avviso e di errore.

Effettuando il login, utilizzando un servizio esterno tra quelli proposti oppure procedendo alla registrazione, è possibile gestire i propri progetti, le proprie collezioni ed utilizzare altre funzionalità non consentite all'utente non registrato. La barra dei menù, in alto a destra, riporta il nome utente e le diverse aree a cui l'utente può accedere. Il menù <span lang="en">File</span>, appena si salva il progetto, si arricchisce di nuove voci che permettono di duplicare il progetto, condividerlo o aggiungerlo ad una collezione.

![p5.js - Editor online](/static/coding/web/p5js/intro-p5-js-editor-logged-in.png "p5.js - Editor online con i menù visualizzati dopo il login")

Nell'area personale è possibile gestire i propri progetti e le proprie collezioni. Il menù contestuale ad ogni progetto permette di gestire le varie azioni sul progetto, come da immagine seguente:

![p5.js - Editor online](/static/coding/web/p5js/intro-p5-js-editor-logged-in-projects.png "p5.js - Editor online - finestra di dialogo per la condivisione progetto")

## Ambiente di sviluppo openprocessing.org

L'ambiente di sviluppo di openprocessing si presenta con la seguente interfaccia grafica:

![openprocessing.org - Home page](/static/coding/web/p5js/intro-openprocessing.png "openprocessing.org - Home page")

Cliccando sulla voce "Crea Sketch" nel menu proposto si passa all'editor online che si presenta con la seguente interfaccia grafica:

![openprocessing.org - Editor online](/static/coding/web/p5js/intro-openprocessing-editor.png "openprocessing.org - Editor online")

L'interfaccia grafica presenta i tipici componenti di un ambiente di sviluppo:

- la barra dei pulsanti, contenente i pulsanti per visualizzare l'area di esecuzione del proprio lavoro e per visualizzare l'area del codice, più il pulsante per salvare il proprio lavoro;
- la barra con le schede dei <span lang="en">file</span>, contenente i <span lang="en">file</span> che compongono il progetto, il pulsante per impostare la modalità di visualizzazione dell'area di esecuzione e dell'area del codice ed il pulsante per le impostazioni di configurazione del progetto;
- l'area del codice, per la modifica del codice relativo al <span lang="en">file</span> selezionato nella barra delle schede dei <span lang="en">file</span>;
- l'area di esecuzione del lavoro realizzato, che è visualizzabile quando si clicca il pulsante di "play" presente nella barra dei pulsanti;
- la console per visualizzare i messaggi di informazione, di avviso e di errore.

Il pulsante per le impostazioni di configurazione del progetto permette di visualizzare l'area di configurazione':

![openprocessing.org - Configurazione editor](/static/coding/web/p5js/intro-openprocessing-config-editor.png "openprocessing.org - Configurazione editor")

L'area di configurazione presenta:

- La versione di processing da utilizzare, al momento la 1.7;
- Il tipo di progetto (se uno sketch di '`p5.js`', un progetto web con i <span lang="en">file</span> HTML, CSS e JavaScript, oppure se utilizzare i vecchi progetti di processing che sono oramai in disuso);
- La protezione dai cicli infiniti (per evitare che l'ambiente si blocchi in caso di ciclo infinito);
- La configurazione delle caratteristiche dell'editor, come la dimensione del carattere, la modalità di visualizzazione dell'area di esecuzione e dell'area del codice e così via.

Una volta effettuata la registrazione ed effettuato l'accesso al sito, dall'editor è possibile salvare i propri lavori cliccando sull'apposito pulsante. I dati da inserire sono di chiara interpretazione, dal nome alla descrizione all'immagine di anteprima da mostrare (per sceglierne una è necessario cliccare sull'immagine). La schermata di salvataggio è la seguente:

![openprocessing.org - Utente loggato - salvataggio sketch](/static/coding/web/p5js/intro-openprocessing-save.png "openprocessing.org - Utente loggato - salvataggio sketch")

I progetti salvati possono essere visualizzati nella pagina dell'utente, come nella schermata di seguito:

![openprocessing.org - Utente loggato - lista sketch](/static/coding/web/p5js/intro-openprocessing-logged-list.png "openprocessing.org - Utente loggato - lista sketch")

## Ambiente di sviluppo Processing IDE

L'ambiente di sviluppo Processing IDE deve essere scaricato ed installato nel sistema. All'avvio è mostrata la seguente schermata:

![Processing IDE](/static/coding/web/p5js/intro-processing.png "Processing IDE")

L'interfaccia grafica presenta i tipici componenti di un ambiente di sviluppo:

- la barra dei menù, con i vari menù contestuali;
- la barra dei pulsanti, contenente i pulsanti per eseguire e stoppare il proprio lavoro, il pulsante di debug ed il pulsante per scegliere il linguaggio di programmazione da utilizzare. Come si nota, il linguaggio Java è la scelta predefinita;
- la barra con le schede dei <span lang="en">file</span>, contenente i <span lang="en">file</span> che compongono il progetto;
- l'area del codice, per la modifica del codice relativo al <span lang="en">file</span> selezionato nella barra delle schede dei <span lang="en">file</span>;
- l'area di esecuzione del lavoro realizzato, che è visualizzabile quando si clicca il pulsante di "play" presente nella barra dei pulsanti;
- la console per visualizzare i messaggi di informazione, di avviso e di errore.

Per abilitare lo sviluppo di progetti con ``p5.js`` è necessario cliccare sul pulsante per scegliere il linguaggio di programmazione e poi scegliere la voce per la gestione dei linguaggi.

![Processing IDE - Menù linguaggi](/static/coding/web/p5js/intro-processing-modes-menu.png "Processing IDE - Menù linguaggi")

Viene visualizzato l'elenco di linguaggi che si possono aggiungere, cliccando sul tasto di installazione.

![Processing IDE - Elenco linguaggi](/static/coding/web/p5js/intro-processing-modes-list.png "Processing IDE - Elenco linguaggi")

Una volta installato un linguaggio, questo compare nel menù dei linguaggi.

### Funzionalità audio in Processing IDE

Un progetto web con p5.js nell'ambiente Processing IDE non include tutte le funzionalità che quindi devono essere aggiunte manualmente. Le funzionalità audio sono una di queste, l'utente deve aggiungerle navigando nel menù "Sketch", passando per il sotto-menù "Importa librerie" e quindi cliccando sulla voce "p5 sound" come indicato nell'immagine seguente:

![Processing IDE - Includere la libreria dei suoni](/static/coding/web/p5js/intro-processing-sound-import-library.png "Processing IDE - Includere la libreria dei suoni")

A questo punto è necessario aggiornare la pagina web navigando nel menù "p5.js" e quindi cliccando sulla voce "Recreate index", come nell'immagine seguente:

![Processing IDE - Ricrea la pagina web](/static/coding/web/p5js/intro-processing-sound-recreate-index.png "Processing IDE - Ricrea la pagina web")

A questo punto è necessario verificare che la libreria sia stata effettivamente importata, verificando che nella pagina web sia presente la libreria ``p5.sound.js``, come nell'immagine seguente:

![Processing IDE - Libreria importata](/static/coding/web/p5js/intro-processing-sound-imported.png "Processing IDE - Libreria importata")

## Struttura di un progetto web con p5.js

Un progetto web con p5.js è composto dai seguenti <span lang="en">file</span>:

- Il <span lang="en">file</span> ``index.html`` è la pagina web (scritta in linguaggio HTML);
- Il <span lang="en">file</span> ``p5.js`` è la libreria che permette l'esecuzione dei progetti;
- Il <span lang="en">file</span> ``p5.sound.js`` è la libreria che permette la riproduzione e la gestione dei suoni;
- Il <span lang="en">file</span> ``style.css`` contiene gli stili della pagina web, come i colori, la dimensione degli oggetti, ecc..
- Il <span lang="en">file</span> ``sketch.js`` che rappresenta il progetto realizzato dall'utente.

Dato che il progetto viene mostrato in una pagina web, è la pagina web ``index.html`` a dover contenere i riferimenti a tutti gli altri <span lang="en">file</span>. Questi riferimenti possono essere di tre tipi:

- **Riferimenti assoluti**: E' l'approccio è utilizzato negli ambienti web di openprocessing e di p5.js. I <span lang="en">file</span> ``p5.js``, ``p5.sound.js`` sono presenti su un sito internet, quindi la pagina web ``index.html`` li individua attraverso un indirizzo completo, come nel seguente esempio:

```html
<script src="https://cdn.jsdelivr.net/npm/p5@1.7.0/lib/p5.js"></script>
<script src="https://cdn.jsdelivr.net/npm/p5@1.7.0/lib/addons/p5.sound.js"></script>
```

- **Riferimenti relativi**: E' l'approccio utilizzato sia da Processing IDE, sia quando si lavora sul proprio computer senza accesso ad internet. I <span lang="en">file</span> ``p5.js``, ``p5.sound.js`` devono essere salvati nella cartella del proprio progetto (o in una sotto-cartella), quindi la pagina web ``index.html`` li individua attraverso un indirizzo relativo. I <span lang="en">file</span> ``sketch.js`` e ``style.css`` sono sempre individuati con indirizzo relativo, come nel seguente esempio:

```html
<script src="p5.js"></script>
<script src="p5.sound.js"></script>
<script src="sketch.js"></script>

<link rel="stylesheet" type="text/css" href="style.css">
```

- **Codice in pagina**: Gli stili grafici (contenuti nel <span lang="en">file</span> ``style.css``) ed il <span lang="en">file</span> di progetto (contenuti nel <span lang="en">file</span> ``sketch.js``) possono essere inclusi direttamente nella pagina, quindi questi <span lang="en">file</span> non sono presenti nella cartella di progetto perché sono scritti direttamente nella pagina web, come nel seguente esempio:

```html
<style>
  html, body { margin: 0; padding: 0; }
  canvas { display: block; }
</style>

<script>
  function setup() {
    createCanvas(400, 400);
  }

  function draw() {
    background(220);
    circle(100, 150, 50);
  }
</script>
```

### Progetto in una cartella in ambiente locale

Nel caso sia necessario, è possibile creare un progetto web in una nuova cartella (da creare sul proprio computer) e lavorare senza nessun ambiente di sviluppo. Per far ciò è necessario;

1. scaricare le librerie ``p5.js`` e ``p5.sound.js`` e gli stili grafici ``style.css`` da salvare nella cartella;
2. creare il <span lang="en">file</span> di progetto ``sketch.js`` con il codice da scrivere;

    ```javascript
    function setup() {
      createCanvas(400, 400);
    }

    function draw() {
      background(220);
      circle(100, 150, 50);
    }
    ```

3. creare una nuova pagina web ``index.html`` con il contenuto seguente:

  ```html
  <!DOCTYPE html>
  <html lang="it">
    <head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Sketch</title>

      <!-- Riferimenti -->
      <script src="p5.js"></script>
      <script src="p5.sound.js"></script>
      <link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
      <script src="sketch.js"></script>
    </body>
  </html>
  ```

Il contenuto della cartella è il seguente:

![Progetto in una cartella](/static/coding/web/p5js/intro-project-folder.png "Progetto in una cartella")

### Progetto in un unico <span lang="en">file</span> HTML

E' possibile creare un unico <span lang="en">file</span> HTML (da creare sul proprio computer) e lavorare senza nessun ambiente di sviluppo, indicando un riferimento assoluto alle librerie ``p5.js`` e ``p5.sound.js`` ed inglobando gli stili grafici ed il codice di progetto come codice in pagina, come nella pagina web seguente:

```html
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sketch</title>

    <!-- Riferimenti -->
    <script src="https://cdn.jsdelivr.net/npm/p5@1.7.0/lib/p5.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/p5@1.7.0/lib/addons/p5.sound.js"></script>
    <style>
      html, body { margin: 0; padding: 0; }
      canvas { display: block; }
    </style>
  </head>
  <body>
    <!-- Progetto p5.js -->
    <script>
      function setup() {
        createCanvas(400, 400);
      }

      function draw() {
        background(220);
        circle(100, 150, 50);
      }
    </script>
  </body>
</html>
```

### Struttura del programma

Sia che si lavori con una singola pagina web, sia che si utilizzi l'editor online, sia che si organizzi il progetto in più <span lang="en">file</span> separati, nel codice devono sempre essere dichiarati i due blocchi principali ``setup`` e ``draw``.

Le istruzioni contenute nel blocco ``setup()`` sono eseguite una sola volta e servono ad impostare gli strumenti e le condizioni iniziali.

Le istruzioni contenute nel blocco ``draw()`` sono eseguite ciclicamente e servono a ridisegnare continuamente l'area di lavoro.

Come si può notare dagli esempi precedenti, sia il blocco ``setup()`` sia il blocco ``draw()`` sono delimitati dalle parentesi graffe ``{`` e ``}``, che indicano l'inizio e la fine del blocco.

All'interno del blocco vanno le istruzioni per disegnare. In particolare, è nel blocco ``setup()`` che si invoca la funzione ``createCanvas()`` necessaria alla creazione dell'area da disegno, poiché l'area da disegno deve essere creata una volta sola.

## API

Per poter utilizzare correttamente la libreria p5.js, è necessario conoscere l'interfaccia esposta dalla libreria stessa.

Il termine **interfaccia**, nelle discipline tecniche, indica l'area (la "faccia") esposta da un sistema, al fine di potervi interagire. Un esempio sono le interfacce grafiche di Microsoft Windows, che permettono di interagire con i calcolatori, oppure le interfacce vocali di iPhone ed Android, con "Siri" ed "OK Google", che permettono di interagire con gli smartphone.

Nello sviluppo di applicazioni, le interfacce esposte da librerie e linguaggi di programmazione prendono il nome di **Application Programming Interface** (API). Le API espongono strutture, funzioni, costanti e tanti altri elementi che il programmatore può usare per realizzare la propria applicazione.

La documentazione delle API descrive cosa rappresenta e come utilizzare ogni singolo oggetto esposto, come ad esempio una costante o una funzione.

La libreria p5.js espone le proprie API, in particolare funzioni e costanti, e le documenta accuratamente. La documentazione è consultabile all'indirizzo [https://p5js.org/reference/](https://p5js.org/reference/ "Documentazione di p5.js").

La documentazione è organizzata per sezioni ed è disponibile anche un piccolo motore di ricerca per trovare uno specifico elemento, come si può vedere dall'immagine seguente:

![p5.js - API](/static/coding/web/p5js/intro-api-references-2024.png "p5.js - API")

<!-- Rimossa dalla documentazione 

Nella tabella seguente è riportata la descrizione delle varie categorie:

Area | Descrizione
--- | ---
Color           | Gestione colori di contorno, di riempimento, di sfondo
Constants       | Costanti disponibili
DOM             | Interazione con gli elementi della pagina web
Data            | Gestione dei dati
Environment     | Informazioni sull'ambiente di esecuzione
Events          | Gestione eventi della tastiera, del mouse e del touch-screen
Foundation      | Basi di JavaScript
IO              | Gestione Input / Output
Image           | Gestione immagini
Lights, Camera  | Gestione luci, camera, materiali, ombre
Math            | Funzioni matematiche
Rendering       | Informazioni sul processo di disegno (rendering)
Shape           | Funzioni per il disegno di forme 2D, 3D e curve
Structure       | Informazioni sul ciclo di esecuzione
Transform       | Trasformazioni matematiche nel piano (2D) e nello spazio (3D)
Typography      | Caratteri, stili e formattazione testo

Ogni categoria mostra le costanti e le funzioni disponibili, con un link alla documentazione specifica.

-->

### Documentazione delle costanti

Le **costanti**, nell'ambito informatico come nell'ambito matematico, sono dei valori che non variano nel tempo, ed ai quali è associato un nome, come ad esempio la costante fisica **c** che definisce la velocità della luce nel vuoto pari a 299792458 m/s. Per conoscere il nome, il compito e la descrizione di una costante è necessario consultare la documentazione, come da immagine seguente:

![p5.js - API](/static/coding/web/p5js/intro-api-references-constants-2024.png "p5.js - API - Constants")

Ogni costante è documentata indicando uno o più esempi d'uso, il nome, la descrizione ed il valore.

Un esempio di documentazione delle costanti è quello della documentazione della costante ``PI``. Nella descrizione si legge che questa costante rappresenta la costante matematica **pi greco**, che definisce il rapporto tra la lunghezza della circonferenza e quella del suo diametro. Il nome di questa costante è ``PI`` ed il valore associato è 3.14159265358979323846...

Nella documentazione sono definite anche le seguenti costanti:

- ``TWO_PI``, che rappresenta il doppio del valore della costante ``PI``, con valore associato 6.28318530717958647693...
- ``HALF_PI``, che rappresenta la metà del valore della costante ``PI``, con valore associato 1.57079632679489661923...
- ``QUARTER_PI``, che rappresenta un quarto del valore della costante ``PI``, con valore associato 0.7853982...

### Documentazione delle funzioni

Le **funzioni** in ambito informatico sono delle istruzioni particolari che identificano un frammento di codice che svolge uno specifico compito, come il disegno di un cerchio o la creazione dell'area da disegno. Una caratteristica peculiare delle funzioni è che permettono allo sviluppatore di riutilizzare frammenti di codice scritti da altri programmatori.

Una funzione è definita da un **nome**, come ad esempio la funzione logaritmo, che nelle formule matematiche viene definita dal simbolo ``log``, oppure la funzione coseno, che nelle formule matematiche viene definita dal simbolo ``cos``.

Le funzioni possono prevedere dei **parametri** necessari alla realizzazione del compito. Ad esempio, per creare l'area da disegno abbiamo bisogno di due parametri, la larghezza e l'altezza dell'area da creare. Per disegnare un cerchio abbiamo bisogno di tre parametri, le coordinate x ed y del centro ed il raggio del cerchio.

Alcuni parametri possono essere obbligatori, altri facoltativi, e tipicamente sono elencati prima quelli obbligatori e poi, tra parentesi quadre, quelli facoltativi.

Per conoscere il nome, il compito ed i parametri obbligatori o facoltativi di una funzione, è necessario consultare la documentazione.

I parametri indicati nella documentazione sono detti **parametri formali** e, come si vedrà nel capitolo relativo alla creazione di funzioni, sono definiti dallo sviluppatore autore della funzione.

Il nome della funzione insieme alla lista dei parametri formali riportata tra parentesi tonde formano la **firma della funzione**.

La documentazione di ogni funzione riporta:

- uno o più esempi d'uso;
- la descrizione del compito svolto;
- la sintassi d'uso, ovvero la firma della funzione. Ogni parametro formale, obbligatorio o facoltativo, è ulteriormente chiarito con l'indicazione del tipo e della descrizione.

Un esempio di documentazione di una funzione è quello della documentazione della funzione ``createCanvas``. Nella documentazione è descritto che questa funzione ha il compito di creare l'area da disegno nella quale poi disegnare. La sintassi, ovvero la firma, è la seguente:

```plaintext
Syntax: createCanvas(w, h)
```

I parametri formali sono ``w`` ed ``h`` e sono entrambi obbligatori, dato che non sono riportati tra parentesi quadre. La documentazione dei parametri riporta:

```plaintext
Parameters:
  w  Number: width of the canvas
  h  Number: height of the canvas
```

Quindi il parametro formale ``w`` è un numero e rappresenta la larghezza dell'area da disegno. Il parametro formale ``h`` è un numero e rappresenta l'altezza dell'area da disegno.

## Sistema di coordinate

Il sistema di coordinate **cartesiane**, tipicamente usato da librerie di grafica computerizzata 2D, è caratterizzato dagli assi X ed Y che si intersecano nell'angolo in alto a sinistra dell'area da disegno. In tale estremità si trova, quindi, l'origine degli assi, rappresentata dal punto di coordinate (0,0).

La particolarità di questo sistema di coordinate è l'asse Y invertito, cioè i valori positivi sono in basso ed i negativi in alto. Solo i punti che hanno entrambe le coordinate (x, y) con valore positivo saranno disegnati nell'area da disegno.

Di seguito si mostrano le differenze tra il classico sistema cartesiano e la variante utilizzata in p5.js:

![p5.js - Differenza tra i due sistemi di coordinate](/static/coding/web/p5js/intro-axes-in-math-and-p5js.png "p5.js - Differenza tra i due sistemi di coordinate")

### Misurazione angoli

In ambito matematico, gli angoli sono tipicamente espressi mediante due differenti unità di misura: il **grado d'arco** (detto anche grado sessagesimale) ed il **radiante**, che fa parte del **sistema internazionale di unità di misura**.

Un grado d'arco è la misura dell'angolo che si ha in corrispondenza di un arco di circonferenza che misura 1/360 della circonferenza di un cerchio.

Un radiante è la misura dell'angolo che si ha in corrispondenza di un arco di circonferenza di lunghezza pari al raggio.

Una caratteristica importante da considerare nella misurazione degli angoli è che, nel sistema di coordinate utilizzato, l'asse Y è invertito e quindi gli angoli sono misurati seguendo un **senso orario**.

Per facilitare la comprensione, possiamo fare un'analogia con il quadrante di un orologio, sul quale utilizziamo la lancetta delle ore come riferimento e la lancetta dei minuti per misurare l'angolo.

Ponendo inizialmente sul numero tre entrambe le lancette (quindi a 3 ore e 15 minuti) definiamo un primo angolo, di grandezza zero (sia in gradi che in radianti).

Man mano che la lancetta dei minuti ruota in **senso orario**, la dimensione dell'angolo aumenta. Alle ore **3.30** corrisponde la misura di **novanta gradi** (e non alle ore **3.00** come ci aspetterebbe). Un angolo di **quarantacinque gradi** corrisponde alle ore **3.22** circa, un angolo di **centottanta gradi d'arco** corrisponde alle ore **3.45** e così via.

![p5.js - Angoli rappresentati su orologio](/static/coding/web/p5js/intro-angle-on-clock-clockwise.png "p5.js - Angoli rappresentati su orologio")

Per completezza, riportiamo anche le immagini degli orologi con le misurazioni degli angoli prese utilizzando il senso **antiorario**, in modo da avere chiara la differenza.

![p5.js - Angoli rappresentati su orologio](/static/coding/web/p5js/intro-angle-on-clock-counterclockwise.png "p5.js - Angoli rappresentati su orologio")

## Invocare le funzioni

In precedenza abbiamo detto che una funzione identifica un frammento di codice che svolge uno specifico compito, generalmente descritto nella documentazione. Una funzione ha una firma formata dal nome e, tra parentesi tonde, dai parametri formali.

Tecnicamente si dice che si **invoca** una funzione quando il programmatore la utilizza per svolgere un determinato compito (o una sua parte).
Piuttosto che scrivere un nuovo frammento di codice per eseguire il compito, invoca la funzione delegando a questa il compito da svolgere.

Per invocare una funzione esistente, il programmatore verifica sulla documentazione la firma della funzione. Se nella firma non sono presenti parametri formali, la funzione può essere invocata semplicemente utilizzando la firma (il nome seguito da parentesi tonde):

```javascript
funzione()
```

Se invece nella firma della funzione sono presenti parametri formali, allora ad ogni parametro formale si deve sostituire un valore. I valori assegnati prendono il nome di **parametri attuali**.

In questo caso, per invocare una funzione, bisogna semplicemente scrivere il nome seguito da parentesi tonda aperta, la lista di parametri attuali, e la parentesi chiusa.

```javascript
funzione(p1, p2, ...)
```

Ad esempio, volendo creare un'area da disegno di larghezza 600 ed altezza 400, il primo passo consiste nel verificare sulla documentazione la firma della funzione:

```plaintext
Syntax: createCanvas(w, h)

Parameters:
  w  Number: width of the canvas
  h  Number: height of the canvas
```

A questo punto, sostituiamo al parametro formale ``w`` (che indica la larghezza dell'area da disegno) il valore ``600`` ed al parametro formale ``h`` (che indica l'altezza dell'area da disegno) il valore ``400``, invocando la funzione nel seguente modo:

```javascript
createCanvas(600, 400);
```

Nello stesso esempio, per creare un cerchio con centro alle coordinate (100, 150) e con diametro 50, verifichiamo sulla documentazione la firma della funzione:

```plaintext
Syntax: circle(x, y, diameter)

Parameters:
  x       Number: x-coordinate of the centre of the circle.
  y       Number: y-coordinate of the centre of the circle.
  diameter  Number: diameter of the circle.
```

Sostituiamo al parametro formale ``x`` (che indica la coordinata x del centro del cerchio) il valore ``100``, al parametro formale ``y`` (che indica la coordinata y del centro del cerchio) il valore ``150`` ed al parametro formale ``diameter`` il valore ``50``, quindi invochiamo la funzione nel seguente modo:

```javascript
circle(100, 150, 50);
```

Queste istruzioni devono essere inserite o nel blocco ``setup`` oppure nel blocco ``draw``. Ad esempio:

```javascript
function setup() {
  createCanvas(400, 400);
  circle(100,150, 50);
}

function draw() {

}
```

Il risultato è il seguente:

![p5.js - Primo esempio](/static/coding/web/p5js/intro-first-exercise.png "p5.js - Primo esempio")

Alcune operazioni, invece, devono essere effettuate una sola volta, come ad esempio la creazione dell'area da disegno, per cui è **errato** invocare la funzione ``createCanvas()`` all'interno del blocco ``draw()``.

```javascript
function draw() {
  // ERRORE
  createCanvas(400, 400);
}
```
