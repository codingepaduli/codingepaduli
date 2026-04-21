---
type: "tools"
title: "ffmpeg"
description: "ffmpeg"
date: 2026-04-17
publishdate: 2026-04-17
lastmod: 2026-04-17
spellcheck: 2026-04-17
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: false
toc: false
summary: "ffmpeg"
weight: 10270

references:
    -   title: "EditorConfig"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "/tools/editorconfig/"
        description: "Articolo per la configurazione di Editorconfig"
---

# FFmpeg

FFmpeg è uno software open‑source completo ed utilissimo per lavorare con file audio e video. FFmpeg è anche il nome del progetto.

## File multimediali

<!-- Inizio copia di immagini.md -->

Un'**immagine digitale** è una rappresentazione "visiva" (in realtà è numerica) delle informazioni di luminosità e colore su una griglia discreta di punti chiamati **pixel**.

Un **video digitale** è una sequenza di immagini digitali, dette **frame**.

Un **audio digitale** è una sequenza di valori nel tempo, detti **campioni** (samples).

Un'immagine digitale ha proprietà come:

- la **risoluzione**, ovvero la grandezza e l'altezza delle immagini riprodotte, la dimensione è espressa in pixel; Lo standard cinematografico DCI 4K è 4096×2160 pixel. Lo standard 4K Ultra HD (o UHD) è 3840×2160 pixel. Il Full HD (o "FHD" o "1K" o "1080p") è 1920×1080 pixel. Etichettare un dispositivo "4K" senza specificare altro genera solo confusione.
- lo **spazio di colori** indica quanti colori si possono rappresentare, attualmente lo si suddivide impropriamente in tre "canali" (RGB, HSB, LAB, LCH, si rimanda al capitolo sui colori per i dettagli) più un eventuale canale "alfa" per indicare la trasparenza dei singoli punti;
- la **profondità di colore**, determinano la brillantezza dei colori, la vivacità. Una profondità ridotta comporta poche sfumature (ad esempio poche sfumature dal rosa al rosso); Attualmente è indicato con "8bit" ad intendere 16 milioni di colori, oppure con "10bit" ad intendere un miliardo di colori differenti. Per approfondimento sugli spazi di colore e la profondità di colore si rimanda al capitolo sui colori.

Un video digitale ha proprietà come:

- la **risoluzione**, lo  **spazio di colori** e la **profondità di colore**, che derivano dai frame che lo compongono;
- il **numero di frame per secondo** indica la fluidità visiva; Per il cinema lo standard è 24 fps, nelle TV lo standard è 25 fps. Quando il video lo supporta, si può arrivare a 60 fps per dispositivi "Full HD" e proiezioni "DCI 4K" ed a 120 fps su dispositivi "4K UHD".

Un audio digitale ha proprietà come:

- la **frequenza di campionamento**, ovvero il numero di campioni riprodotti al secondo; Cinema e TV usano 48 kHz. Gli esseri umani percepiscono circa 20kHz.
- la **profondità del suono**, indica quando può essere ampio l'intervallo sonoro da riprodurre.
- il **numero di canali** indica quanti canali di riproduzione sono presenti.

Le configurazioni del numero di canali audio sono le seguenti:

- mono: un solo canale, lo stesso segnale è riprodotto su tutti gli speaker;
- stereo: due canali separati, il canale destro riprodotto sugli speaker a destra, quello sinistro riprodotto sugli speaker a sinistra;
- 5.1 (6 canali): sei canali separati per la configurazione "surround", ovvero uno per la riproduzione fronte-sinistra, uno fronte-destra, uno retro-sinistra, uno retro-destra, uno centrale e uno "subwoofer" (informalmente la cassa del "basso");
- 7.1 (8 canali): estende il "5.1" aggiungendo due canali per i diffusori posteriori (altoparlanti "surround" per suono avvolgente).

La **dimensione** del file (o del singolo flusso) dipende dalle proprietà sopra elencate. Supponiamo che ogni frame (immagine) è 5 megabyte. Con lo standard TV (25fps), per realizzare un secondo di trasmissione abbiamo bisogno di 25 frame, quindi moltiplicando 25 per 5 otteniamo 125 megabyte per un secondo. Se consideriamo un minuto, moltiplicando 125 megabyte per 60 secondi otteniamo 7,5 gigabyte. Un'ora di trasmissione comporta 450 gigabyte di spazio.

Se le immagini (i frame) fossero di 1 megabyte, un'ora di trasmissione comporterebbe 90 gigabyte di spazio, risparmieremmo spazio, ma perderemmo qualità (perché le immagini passano da 5Mb ad 1Mb).

### Formati ed estensioni dei file immagine

Il **formato** di un file immagine definisce la struttura interna con cui sono memorizzate le informazioni: spazio di colori, profondità, colori per ogni pixel dell'immagine, e metadati. Ad esempio lo spazio dei colori e la profondità possono indicare che l'immagine è monocromatica (bianco e nero) oppure in scala di grigi, mentre i metadati possono indicare l'autore, il dispositivo, il rapporto d'aspetto (4:3 oppure 16:9), la posizione GPS, ...

L'**estensione del file** ci suggerisce il formato di memorizzazione dell'immagine, ad esempio ``.jpeg``, ``.png``, ``.tiff``, ``.heif``, e cosi via...

L'uso commerciale di uno specifico formato oppure l’implementazione in software disponibili online e in dispositivi in commercio può richiedere il pagamento delle licenze collegate. La semplice creazione o riproduzione personale in genere non comporta nessun costo.

### Formati ed estensioni dei file audio e video

File audio e file video sono memorizzati in un **formato contenitore**. Il compito di un contenitore è memorizzare i flussi audio, i flussi video, i sottotitoli ed i metadati in un unico file in maniera standard in modo che i lettori audio (come i lettori mp3) ed i lettori video (come i lettori dvd) possano riprodurli.

Parliamo di più flussi perché un video può essere suddiviso in capitoli, oppure perché possiamo avere più file audio, uno per ogni lingua, o più sottotitoli, sempre uno per ogni lingua.

Inoltre il contenitore memorizza i metadati, come autore, regista, casa produttrice, anno, ecc... e memorizza gli indici per il posizionamento, ad esempio l'indice del trailer, del primo e del secondo tempo, oppure degli episodi o delle parti del video.

L'**estensione del file** ci suggerisce il formato contenitore utilizzato per memorizzazione i vari flussi, i sottotitoli, i metadati e gli indici presenti all'interno del file multimediale, ad esempio ``.mp3`` ``.mp4``, ``.mkv`` e ne esistono molte altre, ``.mov``, ``.avi``, `.mpeg` e così via. Queste estensioni di file non rappresentano un audio o un video, ma rappresentano il formato **contenitore** che contiene i flussi audio e video.

L'uso commerciale di uno specifico formato oppure l’implementazione in software disponibili online e in dispositivi in commercio può richiedere il pagamento delle licenze collegate. La semplice creazione o riproduzione personale in genere non comporta nessun costo.

I **muxer** si occupano di scrivere un flusso in un formato contenitore.

I **demuxer** si occupano di leggere un flusso contenuto in un formato contenitore.

L'operazione di **transmuxing** è l'operazione di convertire da un formato contenitore ad un altro formato contenitore, senza modificare i flussi audio e video presenti all'interno.

### Codec codificatori e decodificatori

I **formati di codifica** servono a memorizzare le proprietà ed i dati (i frame o i campioni) di ogni singolo flusso audio o video.

Il formato di codifica memorizza tutte le proprietà del flusso, come la risoluzione video o la profondità di colore o del suono oppure ancora la frequenza di campionamento audio o il numero di canali audio.

Il termine **codec** è l'unione delle abbreviazioni di codifica ("co") e decodifica ("dec") e rappresenta gli algoritmi che trasformano il video nel formato di codifica e, viceversa, dal formato di codifica ricompongono il video per la riproduzione di ogni frame.

I **codificatori** (encoder) sono algoritmi che trasformano l'audio e/o il video nel formato di codifica.

I **decodificatori** (decoder) sono algoritmi che dal formato di codifica ricompongono il video per la riproduzione di ogni frame.

L'operazione di **transcoding** è l'operazione di convertire un flusso audio/video da un formato di codifica ad un altro formato di codifica.

Il lavoro del codificatore consiste nel salvare quante più informazioni possibili cercando di ridurre il più possibile la dimensione del file, bilanciando quindi la qualità con la dimensione del flusso (e del file).

I trucchi che i codec (gli encoder) sfruttano per avere alta qualità in dimensione ridotta sono molteplici, tra quelli maggiormente utilizzati abbiamo:

- la maggior parte dei fotogrammi in un video sono abbastanza simili, contengono solo piccole differenze (è il concetto di movimento, piccole differenze che ci inducono a pensare che il soggetto si stia muovendo). Memorizzano il primo frame e poi solo le differenze successive si riduce la dimensione del flusso. Questo processo è ripetuto ogni tot frame;
- l'occhio umano è più sensibile ai cambiamenti di intensità della luce rispetto ai cambiamenti di colore, e quindi si salvano maggiori informazioni sull'intensità e meno informazioni sul colore;
- l'orecchio umano sente un intervallo frequenze limitato, tagliando via le frequenze che non possiamo percepire si riduce la dimensione del flusso.

Il processo di decodifica deve poi tenere presente tutte queste accortezze per poter ricostruire il flusso.

<!-- Fine copia di immagini.md -->

### Confronto tra formati su Wikipedia

Per una lista dei formati grafici disponibili, si rimanda alla pagina di Wikipedia [Image file format](https://en.wikipedia.org/wiki/Image_file_format).
Anche per un confronto tra i vari formati grafici, si rimanda alla pagina di Wikipedia [Comparison of graphics file formats](https://en.wikipedia.org/wiki/Comparison_of_graphics_file_formats).

Per una lista dei formati contenitori video disponibili si rimanda alla pagina di Wikipedia [Video file format](https://en.wikipedia.org/wiki/Video_file_format); Anche per un confronto tra i vari formati video, si rimanda alla pagina di Wikipedia [Comparison of video container formats](https://en.wikipedia.org/wiki/Comparison_of_video_container_formats).

Allo stesso modo, per una lista dei formati contenitori audio disponibili si rimanda alla pagina di Wikipedia [Audio file format](https://en.wikipedia.org/wiki/Audio_file_format); Anche per un confronto tra i vari formati audio, si rimanda alla pagina di Wikipedia [Comparison of video container formats](https://en.wikipedia.org/wiki/Comparison_of_audio_coding_formats).

## Concetti di ffmpeg

### Input e output

Input: i dati di input possono venire da qualsiasi sorgente, dalla rete, da un dispositivo hardware, da un file e così via.. FFmpeg può gestire **più input contemporaneamente** e li gestisce numerandoli partendo dall'indice zero.

Output: l'output può essere un file, un socket di rete, un dispositivo hardware e così via. FFmpeg può gestire **più output contemporaneamente** e li gestisce numerandoli partendo dall'indice zero..

Input e output possono essere composti da più flussi audio/video, ogni flusso è numerato partendo dall'indice zero.

### Filtri e catene

Filtri: rappresentano le operazioni di modifica dei frame. Le altre applicazioni li chiamano effetti. Tra i vari filtri abbiamo il filtro di dissolvenza (effetto dissolvenza) o il filtro di aumento del volume (effetto aumento volume).

Catena: consiste nel connettere l'output di un filtro con l'input di un altro filtro, creando appunto una catena (o una pipe).

I **filtri semplici** rappresentano una singola catena di filtri che coinvolgono un solo file di input ed un solo file di output.

I **filtri complessi** rappresentano catene multiple di filtri che coinvolgono più file di input e più file di output.

Ad esempio possiamo creare un filtro complesso con tre catene:

- prima catena che ridimensiona il primo flusso video del primo file in input e lo invia nel primo file in output;
- seconda catena che copia il flusso audio dal primo file in input e lo invia nel secondo file in output;
- terza catena che converte in MP3 il flusso audio del secondo file in input e lo invia al terzo file di output;

### Specificatori dei flussi e mappe

Gli specificatori dei flussi servono a selezionare uno o piò flussi. La sintassi è la seguente:

- ``#id`` oppure ``i:id``: indica lo stream utilizzando l'ID dello stream contenuto nel formato container (partono da zero). Ad esempio ``#1`` indica il secondo stream nel container, ``#4`` indica il quinto);
- ``indice``: indica lo stream utilizzando l'indice numerico rilevato, può essere diverso dall'identificativo presente nel container; Ad esempio ``1`` indica il secondo stream nel container, ``4`` indica il quinto);
- ``m:key:value`` seleziona i flussi che contengono la chiave ``key``, eventualmente con valore ``value``. Ad esempio ``m:language:eng`` seleziona i flussi che tra i metadati hanno la chiave ``language`` con valore ``eng``;
- ``tipo:specificatore``: Indica gli stream per tipo e poi opzionalmente si può indicare un ulteriore specificatore per id o per indice. I tipi sono i seguenti:

  - ``a``: tutti i flussi audio;
  - ``v``: tutti i flussi video;
  - ``s``: tutti i flussi di sottotitoli;
  - ``d``: tutti i flussi data (including timecode tracks);
  - ``t``: tutti i flussi attachment;

  Un esempio di specificatori per tipo è ``v:0``, ovvero il primo flusso video, oppure ``a:m:language:eng``, ovvero i flussi audio che tra i metadati hanno la chiave ``language`` con valore ``eng``. Specificatori come ``a:i:1`` e ``a:#1`` non sono forme valide.

Le mappe rappresentano l'indicazione di connettere i flussi di input con i flussi di output. Una mappa si riferisce sempre ad un file di output e indica da quale file di input selezionare i flussi che, una volta elaborati, saranno salvati nel file di output a cui si riferisce la mappa. La sintassi è la seguente:

  -``idFileInput:specificatoreFlusso``: Il file di input con id ``idFileInput`` sarà l'origine da cui i flussi selezionati con ``specificatoreFlusso`` saranno elaborati e poi salvati nel file di output a cui si riferisce la mappa.

Ad esempio, per indicare il secondo flusso del secondo file di input, la mappa sarà ``1:1`` (parte da zero, quindi il primo flusso è ``0``, il secondo flusso è ``1``). Il quarto flusso del primo file di input sarà indicato dalla mappa ``0:3``. I flussi audio in lingua inglese del terzo file sono specificati con ``2:a:m:language:eng``.

## Command line (CLI)

Il software nel suo complesso è composto dai seguenti programmi:

- ``ffplay``: un lettore (riproduttore) audio / video;
- ``ffprobe``: uno strumento per ottenere informazioni sui file multimediali;
- ``ffmpeg``: uno strumento per la gestione di file audio e video: Può registrare, convertire formati, codificare/decodificare, transcodificare, muxare/demuxare, filtrare, ridimensionare, trasmettere in streaming e molto altro.

### Opzioni generali

I programmi ``ffplay``,``ffprobe`` e ``ffmpeg`` hanno lo stesso comportamento di default, ovvero ad ogni comando mostrano il "banner" della versione e della configurazione, che è lo stesso che si ottiene con l'opzione:

``-version``: mostra la versione e la configurazione;

Poiche ogni comando mostra il banner precedente, ad ogni comando possiamo nasconderlo con l'opzione ``-hide_banner``.

I programmi ``ffplay``,``ffprobe`` e ``ffmpeg`` condividono le stesse opzioni di default, ovvero

- ``-hide_banner`` nasconde il "banner", ovvero versione e configurazione;
- ``-v quiet`` / ``-v error`` / ``-v warning``: ``warning`` mostra avvisi ed errori, ``error`` mostra solo errori critici, ``quiet``: nessun messaggio;
- ``-devices``: mostra i dispositivi I/O supportati;
- ``-formats`` Mostra i formati contenitore supportati da FFmpeg (es. mp4, mkv) in lettura (decoding input) e scrittura (encoding output), per sapere quali contenitori puoi solo leggere o anche creare;
- ``-demuxers``: elenca i demuxer disponibili;
- ``-muxers``: elenca i muxer disponibili;
- ``-codecs``: Unione di ``-decoder`` ed ``-encoders``;
- ``-decoders``: elenca i decodificatori (decoder) disponibili;
- ``-encoders``: elenca i codificatori (encoder) disponibili;
- ``-protocols``: mostra i protocolli di I/O supportati (es. file, http, https, rtmp, udp, tcp, pipe);
- ``-filters``: elenca i filtri di libavfilter disponibili (es. scale, crop, drawtext, volume);
- ``-pix_fmts``: Mostra gli spazi di colore e la profondità di colore supportati (es. yuv420p, rgba);
- ``-sample_fmts``: elenca i formati dei campioni audio supportati (es. s16, fltp);
- ``-layouts``: mostra i nomi dei canali audio supportati ed il layout di riproduzione (es. stereo, 5.1) con canale 1 riprodotto su fronte-sinistra, canale 3 riprodotto su fronte-destra, ecc...);
- ``-colors``: elenca i nomi dei singoli colori ed il rispettivo valore (Red= #ff0000, Pink= #ffc0cb, RoyalBlue= #4169e1).

### Command line (CLI) di ffprobe

La regola generale per gestire la CLI di ``ffprobe`` è la seguente:

- prima vanno le opzioni globali;
- poi l'input;

```bash
ffprobe [global_options] input.mp4
```

Le opzioni principali sono:

- ``-unit``: inserisce l'unità di misura (byte, secondi, ...);
- ``-prefix``: inserisce i prefissi delle unità di misura (secondi, minuti, Kibibyte, Mebibyte, Gibibyte, ..);
- ``-byte_binary_prefix``: utilizza i prefissi delle unità di misura in binario  (Kilobyte, Megabyte, Gigabyte, ..);
- ``-sexagesimal``: Mostra intervalli di tempo in ``hh:mm:ss.ms``;
- ``-pretty``: Seleziona le opzioni ``-unit``, ``-prefix`` e ``-pretty``;
- ``-select_streams``: Seleziona un singolo flusso per tipo e indice (v:0, a:2, ...);
- ``-count_frames``: Conta il numero di frame per stream;
- ``-count_packets``: Conta il numero di pacchetti per stream;
- ``-show_format``: oppure ``-show_entries format``: Informazioni sul formato contenitore;
- ``-show_chapters``: oppure ``-show_entries chapter``: Informazioni sui capitoli presenti nel contenitore;
- ``-show_streams``: oppure ``-show_entries stream``: Informazioni sui flussi;
- ``-show_packets``: oppure ``-show_entries packet``: Informazioni sui singoli pacchetti;
- ``-show_frames``: oppure ``-show_entries frame``: Informazioni sui singoli frames;
- ``-of``: sostituito da ``print_format``;
- ``-print_format``: (alias moderno di ``-of``): indica il formato dei dati in output;
- ``-read_intervals``: mette in output solo alcuni intervalli del file

L'opzione ``-show_entries`` permette di selezionare anche i singoli campi, ad esempio ``-show_entries format=duration,size`` oppure ``-show_entries stream=index,codec``.

Il formato dei dati di output specificato in ``-print_format`` può essere uno dei seguenti:

1. ``default`` visualizza i campi in formato "sezione:chiave=valore, come ad esempio ``DISPOSITION:comment=0``, ``TAG:language=und`` o ``index=1``;
2. ``flat`` visualizza un campo per ogni riga, con notazione ad oggetti, ad esempio ``streams.stream.1.disposition.comment=0``, ``streams.stream.1.tags.language="und"``;
3. ``compact`` visualizza i dati in forma tabellare, simile a csv, ma con campi in formato "chiave=valore" e non solo il valore nella riga;
4. ``xml``, ``json``, ``ini``, ``csv`` che seguono i rispettivi standard.

Non tutti i formati di output permettono di visualizzare contemporaneamente campi da oggetti differenti, ad esempio dal contenitore e dagli stream contemporaneamente.

#### Informazioni sul contenitore con ffprobe

Per visualizzare informazioni sul contenitore:

```bash
ffprobe -v error -pretty -print_format csv -show_entries format "file.mp4"
```

L'output, separato da virgole, indica "format" ovvero le informazioni sul contenitore, il nome "file.mp4", contiene 2 flussi, il formato del contenitore è "Quicktime MOV", la durata è di circa 6208 secondi, cioè 103 minuti.

```plaintext
format,file.mp4,2 flussi,QuickTime / MOV,0.000000,6208.661000s
```

#### Informazioni sui flussi con ffprobe

Per visualizzare informazioni sui flussi:

```bash
ffprobe -v error -pretty -print_format csv -show_entries stream "file.mp4"
```

L'output è su due righe che iniziano con "stream", ad indicare che sono presenti due flussi. Subito dopo stream c'è zero sulla prima riga e uno sulla seconda riga, indicano che si tratta del primo e del secondo flusso.

La prima riga (stream 0) indica che si tratta di un flusso video con frame di dimensioni 1728 per 720 pixel, 24 frame al secondo (24000/1001) e durata del flusso di circa 6208 secondi, cioè 103 minuti.

La seconda riga (stream 0) indica che si tratta di un flusso audio stereo con frequenza di campionamento a 48000 Hz (48MHz) e della durata di circa 6205 secondi, cioè 103 minuti.

```plaintext
stream,0,h264, ... ,video, ... ,1728,720,24000/1001, ... ,6208.660792
stream,1,aac, ... ,audio, ... ,48000,2,stereo, ... ,6205.984000
```

#### Conteggio del numero di frame e pacchetti con ffprobe

Per contare il numero di frame e di pacchetti in uno stream:

```bash
ffprobe -v error -pretty -count_frames -count_packets -print_format flat -show_entries stream  "file.mp4"
```

L'output seguente riporta i campi ``nb_read_frames="34525"`` e ``nb_read_packets="34525"`` che rappresentano il numero totale di frame e di pacchetti presenti nel flusso, da non confondere col campo ``nb_frames = "67504"`` che rappresenta il numero totale di frame indicato nel formato container.

```plaintext
streams.stream.0.nb_frames="34525"
streams.stream.0.nb_read_frames="34525"
streams.stream.0.nb_read_packets="34525"
```

### Command line (CLI) di ffmpeg

La regola generale per gestire la CLI di ``ffmpeg`` è la seguente:

- prima vanno le opzioni globali;
- poi vanno le opzioni di input seguite dall'input;
- poi vanno le opzioni di output seguite dall'output. Le mappe fanno parte delle opzioni di output.

```bash
ffmpeg [global_options]
  [input1 options] -i input1.mp4
  [input2 options] -i input2.mp4
  [output1 options] output1.wav
  [output2 options] output2.mp3
```
