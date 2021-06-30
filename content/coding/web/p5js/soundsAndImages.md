---
type: "p5js"
title: "p5.js Lez. 02 - Suoni ed immagini"
description: "Suoni ed immagini"
date: 2020-09-11
publishdate: 2020-09-11
lastmod: 2020-09-11
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: true
toc: false
summary: "Suoni ed immagini"
customJS: ["/static/js/p5-1.2.0-min.js", "/static/js/p5.sound-1.2.0-min.js"]
---

# Suoni ed immagini

Il cervello umano interpreta come **suono** la variazione di pressione dell'aria generata da un corpo in oscillazione e percepita attraverso l'orecchio.

In un programma, suoni ed immagini sono gestiti come risorse esterne salvate sotto forma di file ed accessibili attraverso un percorso assoluto o relativo. Quando un programma viene eseguito, queste risorse devono essere caricate in memoria, ma in questa fase si può incorrere in alcune problematiche, ad esempio le risorse possono essere non accessibili (perché spostate o cancellate) oppure è necessario un certo intervallo di tempo affinché siano trasmesse attraverso la rete (che può essere lenta o temporaneamente non disponibile).

La gestione dei suoni non è inclusa nella libreria p5.js, ma fa parte di una libreria esterna, che deve essere inclusa nella pagina con le seguenti istruzioni:

```html
<script src="https://cdnjs.cloudflare.com/ajax/libs/p5.js/1.2.0/addons/p5.sound.min.js"></script>
```

La libreria ``p5.sound.js`` gestisce la fase di caricamento delle risorse prima delle altre fasi. Le risorse da caricare vanno incluse nella funzione ``preload``, che viene eseguita prima delle funzioni ``setup``e ``draw``.

La funzione ``loadImage`` è utilizzata per caricare un'immagine e prende come argomento il percorso dell'immagine. I formati validi sono ``JPG`` e ``PNG``.

La funzione ``loadSound`` è utilizzata per caricare un file audio e prende come argomento il percorso del file. La compatibilità dei diversi formati dipende fortemente dal browser, generalmente sono validi i formati ``mp3``, ``ogg``, ``wav`` e ``m4a/aac``,

Di seguito un esempio di caricamento delle risorse:

```javascript
let sound;
let img;
function preload() {
    sound = loadSound('assets/beatbox.mp3');
    img = loadImage('assets/image.png');
}
```

## Gestione immagini

### Visualizzare un'immagine

Per poter visualizzare un'immagine in una determinata posizione dell'area da disegno si usa la funzione ``image(img, x, y);``, passando come argomenti l'immagine e le coordinate x ed y.

```javascript
image(img, 100, 100);
```

### Salvare in un file l'immagine disegnata nell'area da disegno

Per poter salvare l'immagine disegnata nell'area da disegno si usa la funzione ``saveCanvas(nomeFile, estensione);``, passando come argomenti il nome del file e l'estensione desiderata.

```javascript
saveCanvas('immagine', 'jpg');
```

## Gestione file audio

I file audio sono trattati come oggetti sui quali è possibile invocare dei metodi.

Nel seguito, si supporrà di aver caricato in memoria il file audio, tramite la funzione ``loadSound`` descritta in precedenza, e di aver salvato questo oggetto in una variabile di nome ``sound``.

### Riproduzione singola di un file audio

Partendo dall'oggetto ``sound`` descritto in precedenza, per riprodurre una sola volta il file audio si utilizza il metodo ``play``, che non prevede argomenti, come nell'esempio seguente:

```javascript
sound.play();
```

### Riproduzione continua un file audio

Partendo dall'oggetto ``sound`` descritto in precedenza, per riprodurre in continuazione il file audio si utilizza il metodo ``loop``, che non prevede argomenti, come nell'esempio seguente:

```javascript
sound.loop();
```

### Impostazione del volume di riproduzione

Per impostare il volume di riproduzione si utilizza il metodo ``setVolume``, che prevede come argomento un numero compreso tra ``0`` (muto) e ``1`` (massimo volume), come nell'esempio seguente:

```javascript
setVolume(0); // MUTE
```

### Fermare la riproduzione un file audio

Partendo dall'oggetto ``sound`` descritto in precedenza, per fermare la riproduzione di un file audio si utilizza il metodo ``stop``, che non prevede argomenti, come nell'esempio seguente:

```javascript
sound.stop();
```

### Mettere in pausa la riproduzione un file audio

Partendo dall'oggetto ``sound`` descritto in precedenza, per mettere in pausa la riproduzione di un file audio si utilizza il metodo ``pause``, che non prevede argomenti, come nell'esempio seguente:

```javascript
sound.pause();
```

### Verificare lo stato di riproduzione di un file audio

Nel corso dell'esecuzione di un programma è possibile verificare se un file audio è in corso di riproduzione (singola o continua) oppure è in pausa.

Partendo dall'oggetto ``sound`` descritto in precedenza, per verificare se un file è in corso di riproduzione singola si utilizza il metodo ``isPlaying``, che non prevede argomenti, come nell'esempio seguente:

```javascript
let playing = sound.isPlaying();
```

Per verificare se un file è in corso di riproduzione continua si utilizza il metodo ``isLooping``, che non prevede argomenti, come nell'esempio seguente:

```javascript
let looping = sound.isLooping();
```

Per verificare se un file è in corso di riproduzione continua si utilizza il metodo ``isPaused``, che non prevede argomenti, come nell'esempio seguente:

```javascript
let paused = sound.isPaused();
```

<!-- TODO  aggiungere descrizione dei metodi
    duration()
    currentTime()
    channels()
    sampleRate()
-->
