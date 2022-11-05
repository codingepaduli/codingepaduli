---
type: "p5js"
title: "p5.js Lez. 04 - Suoni ed immagini"
description: "Suoni ed immagini"
date: 2020-09-11
publishdate: 2020-09-11
lastmod: 2020-09-11
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Suoni ed immagini"
customJS: ["/static/js/p5-1.2.0-min.js", "/static/js/p5.sound-1.2.0-min.js"]
weight: 8680
---

# Suoni ed immagini

Il cervello umano interpreta come **suono** la variazione di pressione dell'aria generata da un corpo in oscillazione e percepita attraverso l'orecchio.

In un programma, suoni ed immagini sono gestiti come risorse esterne salvate sotto forma di file. Quando il programma viene eseguito, queste risorse devono essere caricate in memoria.

In questa fase, si può incorrere in alcune problematiche, ad esempio le risorse possono essere non accessibili (perché spostate o cancellate) oppure è necessario un certo intervallo di tempo affinché siano trasmesse attraverso la rete (che può essere lenta o temporaneamente non disponibile).

Per questo motivo, la fase di caricamento delle risorse viene eseguita prima delle fasi di avvio del programma, in modo da gestire eventuali problemi mostrando dei messaggi di errore all'utente.

In ambiente ``p5.js`` la fase di caricamento delle risorse è gestita dalla ``preload``, che viene eseguita prima delle funzioni ``setup``e ``draw``.

La gestione dei suoni non è inclusa nella libreria ``p5.js``, ma fa parte della libreria esterna ``p5.sound.js``. Per includere entrambe le librerie nella pagina web, sono necessarie le seguenti istruzioni:

```html
<script src="https://cdn.jsdelivr.net/npm/p5@1.3.1/lib/p5.js"></script>
<script src="https://cdn.jsdelivr.net/npm/p5@1.3.1/lib/addons/p5.sound.js"></script>
```

## Caricamento di un'immagine

Per caricare in memoria un'immagine dobbiamo specificare il percorso ed il formato dell'immagine. Il percorso può essere assoluto o relativo. I formati validi sono ``JPG`` e ``PNG``.

La funzione progettata per caricare un'immagine è ``loadImage``, la cui firma è la seguente:

```plaintext
Syntax: loadImage(path)

Parameters:
    path     String: Path of the image to be loaded
```

Il parametro formale ``path`` è obbligatorio e rappresenta il percorso dell'immagine.

Per caricare in memoria l'immagine ``image.png``, sostituiamo al parametro formale ``path`` (che indica il percorso) il valore ``image.png``.

```javascript
img = loadImage('image.png');
```

## Caricamento di file audio

Per caricare in memoria un file audio dobbiamo specificare il percorso ed il formato del file audio. Il percorso può essere assoluto o relativo. I formati validi sono ``WAV``, ``MP3``, ``OGG`` e ``M4A/AAC``.

La funzione progettata per caricare un file audio è ``loadSound``, la cui firma è la seguente:

```plaintext
Syntax: loadSound(path)

Parameters:
    path     String: Path to the sound file
```

Il parametro formale ``path`` è obbligatorio e rappresenta il percorso del file audio.

Per caricare in memoria il file audio ``beatbox.mp3``, sostituiamo al parametro formale ``path`` (che indica il percorso) il valore ``beatbox.mp3``.

```javascript
sound = loadSound('beatbox.mp3');
```

## Esempio caricamento risorse

Di seguito un esempio di caricamento delle risorse:

```javascript
let sound;
let img;
function preload() {
    sound = loadSound('assets/beatbox.mp3');
    img = loadImage('assets/image.png');
}
```

## Visualizzare un'immagine

Un'immagine viene visualizzata tipicamente in un'area rettangolare. Si può scegliere di creare l'area rettangolare con le stesse dimensioni dell'immagine o di specificare le dimensioni dell'area rettangolare nella quale disegnare l'immagine, ingrandendo o restringendo l'immagine di conseguenza.

La funzione progettata per visualizzare l'immagine è ``image``, la cui firma è la seguente:

```plaintext
Syntax: image(img, x, y, [width], [height])

Parameters:
    img    Image: the image to display
    x      Number: the x-coordinate of the top-left corner of the image
    y      Number: the y-coordinate of the top-left corner of the image
    width  Number: the width to draw the image (Optional)
    height Number: the height to draw the image (Optional)
```

Il parametro formale ``img`` è obbligatorio e rappresenta la variabile nella quale è stata caricata l'immagine. I parametri formali ``x`` ed ``y`` sono le coordinate dell'angolo in alto a sinistra nel quale iniziare a disegnare l'area rettangolare dell'immagine. I parametri formali ``width`` ed ``height`` sono facoltativi, in quanto indicati tra parentesi quadre, ed indicano le dimensioni dell'area rettangolare nella quale disegnare l'immagine, ingrandendola o riducendola.

Per creare un'area rettangolare con vertice in alto a sinistra nel punto (80, 140), sostituiamo al parametro formale ``img`` la variabile che contiene l'immagine caricata in memoria, sostituiamo al parametro formale ``x`` (che indica la coordinata x del vertice in alto a sinistra) il valore ``80``, al parametro formale ``y`` (che indica la coordinata y del vertice in alto a sinistra) il valore ``140``, al parametro formale ``width`` (che indica la base) il valore ``80`` ed al parametro formale ``height`` (che indica l'altezza) il valore ``20``, quindi invochiamo la funzione nel seguente modo:

```javascript
image(img, 80, 140, 80, 20);
```

Nel caso si voglia visualizzare solo una parte dell'immagine, questa funzione ci permette di ritagliarla. Ci permette anche di aggiungere uno spiazzamento rispetto al quale disegnare l'immagine nell'area rettangolare. Per la descrizione di queste funzionalità più avanzate si rimanda alla documentazione ufficiale.

## Salvare in un file l'immagine disegnata nell'area da disegno

L'immagine disegnata nell'area da disegno può essere salvata in un file.

La funzione progettata per salvare l'immagine è ``saveCanvas``, la cui firma è la seguente:

```plaintext
Syntax: saveCanvas(nomeFile, estensione)

Parameters:
    filename   String: the filename
    ext        String: the extension
```

Il parametro formale ``filename`` rappresenta il nome del file nel quale salvare l'immagine presente nel canvas. Il parametro formale ``extension`` rappresenta l'estensione del file, le uniche estensioni valide sono ``"png"`` oppure ``"jpg"``.

Per salvare nel file ``immagine.jpg`` l'immagine presente nell'area da disegno, sostituiamo al parametro formale ``filename`` (che indica il nome) il valore ``immagine`` ed al parametro formale ``ext`` (che indica l'estensione del file) il valore ``jpg``.

```javascript
saveCanvas('immagine', 'jpg');
```

## Gestione file audio come oggetti

I file audio sono trattati come oggetti, quindi per poterli gestire è necessario accennare alcuni concetti di programmazione ad oggetti. In particolare, un oggetto è dotato di metodi, che sono funzioni invocabili attraverso una sintassi detta "dot notation", leggermente differente da quella utilizzata fino ad ora.

Per invocare un metodo, la sintassi da utilizzare prevede di indicare prima l'oggetto audio, poi inserire il carattere "punto" (in inglese "dot", da cui il nome "dot notation"), e poi scrivere la funzione con i parametri attuali.

Nelle successive descrizioni delle operazioni applicabili su un file audio, si supporrà di aver caricato in memoria il file audio, tramite la funzione ``loadSound`` descritta in precedenza, e di aver salvato l'oggetto nella variabile di nome ``sound``.

### Riproduzione singola di un file audio

Partendo dalla variabile ``sound``, che rappresenta l'oggetto audio caricato in memoria come descritto in precedenza, per riprodurre una sola volta il file audio si utilizza il metodo ``play``, la cui firma è la seguente:

```plaintext
Syntax: play()
```

Il metodo non prevede parametri. Per riprodurre il file audio, si può invocare il metodo ``play`` sull'oggetto ``sound`` come nell'esempio seguente:

```javascript
sound.play();
```

### Riproduzione continua un file audio

Partendo dalla variabile ``sound``, che rappresenta l'oggetto audio caricato in memoria come descritto in precedenza, per riprodurre in continuazione il file audio si utilizza il metodo ``loop``, la cui firma è la seguente:

```plaintext
Syntax: loop()
```

Il metodo non prevede parametri. Per riprodurre continuamente il file audio, si può invocare il metodo ``loop`` sull'oggetto ``sound`` come nell'esempio seguente:

```javascript
sound.loop();
```

### Impostazione del volume di riproduzione

Partendo dalla variabile ``sound``, che rappresenta l'oggetto audio caricato in memoria come descritto in precedenza, per impostare il volume di riproduzione si utilizza il metodo ``setVolume``, la cui firma è la seguente:

```plaintext
setVolume(volume)

Parameters:
    volume    Number: Volume (amplitude) between 0.0 and 1.0
```

Il parametro formale è ``volume``, che rappresenta il volume di riproduzione del file ed è rappresentato da un numero compreso tra ``0`` (muto) e ``1`` (massimo volume),

Per impostare al massimo volume la riproduzione del file audio, si può invocare il metodo ``setVolume`` sull'oggetto ``sound``, sostituiamo al parametro formale ``volume`` (che indica il volume di riproduzione) il valore ``1`` (il volume massimo), come nell'esempio seguente:

```javascript
sound.setVolume(1); // MUTE
```

### Fermare la riproduzione un file audio

Partendo dalla variabile ``sound``, che rappresenta l'oggetto audio caricato in memoria come descritto in precedenza, per fermare la riproduzione di un file audio si utilizza il metodo ``stop``, la cui firma è la seguente:

```plaintext
Syntax: stop()
```

Il metodo non prevede parametri. Per fermare la riproduzione del file audio, si può invocare il metodo ``stop`` sull'oggetto ``sound`` come nell'esempio seguente:

```javascript
sound.stop();
```

### Mettere in pausa la riproduzione un file audio

Partendo dalla variabile ``sound``, che rappresenta l'oggetto audio caricato in memoria come descritto in precedenza, per mettere in pausa la riproduzione di un file audio si utilizza il metodo ``pause``, la cui firma è la seguente:

```plaintext
Syntax: pause()
```

Il metodo non prevede parametri. Per fermare la riproduzione del file audio, si può invocare il metodo ``pause`` sull'oggetto ``sound`` come nell'esempio seguente:

```javascript
sound.pause();
```

### Verificare se il file audio è in corso di riproduzione singola

Partendo dalla variabile ``sound``, che rappresenta l'oggetto audio caricato in memoria come descritto in precedenza, per verificare se un file è in corso di riproduzione singola si utilizza il metodo ``isPlaying``, la cui firma è la seguente:

```plaintext
Syntax: isPlaying()

Returns
    Boolean: true if an audio file is playing, false if not (i.e. paused or stopped).
```

Il metodo non prevede parametri, ma restituisce un valore booleano che assume valore ``true`` se il file è in corso di riproduzione e valore ``false`` in caso contrario. Questo valore può essere salvato in una variabile.

Per verificare se il file audio è in corso di riproduzione singola, si può invocare il metodo ``isPlaying`` sull'oggetto ``sound`` come nell'esempio seguente:

```javascript
let playing = sound.isPlaying();
```

### Verificare se il file audio è in corso di riproduzione continua

Partendo dalla variabile ``sound``, che rappresenta l'oggetto audio caricato in memoria come descritto in precedenza, per verificare se il file audio è in corso di riproduzione continua si utilizza il metodo ``isLooping``, la cui firma è la seguente:

```plaintext
Syntax: isLooping()

Returns
    Boolean: true if an audio file is looping, false if not (i.e. paused or stopped).
```

Il metodo non prevede parametri, ma restituisce un valore booleano che assume valore ``true`` se il file è in corso di riproduzione continua e valore ``false`` in caso contrario. Questo valore può essere salvato in una variabile.

Per verificare se il file audio è in corso di riproduzione continua, si può invocare il metodo ``isLooping`` sull'oggetto ``sound`` come nell'esempio seguente:

```javascript
let looping = sound.isLooping();
```

### Verificare se il file audio è in pausa

Partendo dalla variabile ``sound``, che rappresenta l'oggetto audio caricato in memoria come descritto in precedenza, per verificare se il file audio è in pausa si utilizza il metodo ``isPaused``, la cui firma è la seguente:

```plaintext
Syntax: isPaused()

Returns
    Boolean: true if an audio file is paused, false if not.
```

Il metodo non prevede parametri, ma restituisce un valore booleano che assume valore ``true`` se il file è in pausa e valore ``false`` in caso contrario. Questo valore può essere salvato in una variabile.

Per verificare se il file audio è in pausa, si può invocare il metodo ``isPaused`` sull'oggetto ``sound`` come nell'esempio seguente:

```javascript
let paused = sound.isPaused();
```

### Ottenere la durata del file audio

Partendo dalla variabile ``sound``, che rappresenta l'oggetto audio caricato in memoria come descritto in precedenza, per ottenere la durata di un file audio si utilizza il metodo ``duration``, la cui firma è la seguente:

```plaintext
Syntax: duration()

Returns
    Number: The duration of the soundFile in seconds.
```

Il metodo non prevede parametri, ma restituisce un valore numerico che indica la durata in secondi del file audio. Questo valore può essere salvato in una variabile.

Per ottenere la durata del file audio, si può invocare il metodo ``duration`` sull'oggetto ``sound`` come nell'esempio seguente:

```javascript
let duration = sound.duration();
```

### Ottenere il tempo corrente di riproduzione del file audio

Partendo dalla variabile ``sound``, che rappresenta l'oggetto audio caricato in memoria come descritto in precedenza, per ottenere il tempo corrente di riproduzione di un file audio si utilizza il metodo ``currentTime``, la cui firma è la seguente:

```plaintext
Syntax: currentTime()

Returns
    Number: The currentTime of the soundFile in seconds.
```

Il metodo non prevede parametri, ma restituisce un valore numerico che indica il tempo corrente di riproduzione del file audio ed è espresso in secondi. Questo valore può essere salvato in una variabile.

Per ottenere il tempo corrente di riproduzione del file audio, si può invocare il metodo ``currentTime`` sull'oggetto ``sound`` come nell'esempio seguente:

```javascript
let duration = sound.currentTime();
```

<!-- TODO  aggiungere descrizione dei metodi
    channels()
    sampleRate()
-->
