---
type: "html"
title: "HTML Lez. 05 - Tag audio e  video"
description: "HTML Lez. 05 - Tag audio e  video"
date: 2019-08-22
publishdate: 2019-08-22
lastmod: 2019-08-22
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: true
toc: false
summary: "HTML Lez. 05 - Tag audio e  video"
---

# Tag audio e video

È consigliabile, per questioni di performance, proporre i contenuti
audio e video in streaming. Comunque si possono proporre anche come file
o collegamenti.

L'aggiunta di audio e video ad una pagina web è semplice, ma, spesso, è
necessario preparare questi contenuti, affinchè siano utilizzabili su
risoluzioni diverse, dagli smartphone alle smart-tv, e su connessioni a
differenti velocitá, dal 3G alla fibra.

Su connessioni lente e su dispositivi con schermi piccoli, quali gli
smartphone, è preferibile mostrare video che abbiano qualitá ridotta e
immagini con le dimensioni adattate (in verticale), in modo che siano
completamente visibili e che possano essere caricati piú velocemente. In
caso di connessioni veloci e schermi grandi, invece, è preferibile
aumentare la qualitá, preferendo video Full-HD e immagini ad alta
risoluzione, preferibilmente orientate in orizzontale.

Per inserire un file audio, che l'utente puó ascoltare, si utilizza il
seguente codice:

```html
<audio controls autoplay>
  <source src="horse.ogg" type="audio/ogg">
  <source src="horse.mp3" type="audio/mpeg">
  <source src="horse.wav" type="audio/wav">
</audio>
```

Per inserire un file video, che l'utente puó guardare, si utilizza il
seguente codice:

```html
<video controls autoplay width="800px" height="600px" poster="poster.png">
  <source src="horse.mp4" type="video/mp4">
  <source src="horse.ogg" type="video/ogg">
  <source src="horse.webm" type="video/webm">
  <track label="English" kind="subtitles" srclang="en" src="captions/vtt/sintel-en.vtt" default>
</video>
```

Come si vede, entrambi i tag `audio` e `video` hanno gli attributi:

- `mute`, per silenziare il video;
- `loop`, per riavviare l'audio o il video una volta terminato;
- `autoplay`, per avviare automaticamente l'audio o il video; Le
  specifiche indicano che deve essere usato insieme all'attributo
  `mute` per poter effettuare l'autoplay sui dispositivi mobile;
- `controls`, per visualizzare i pulsanti di controllo "play",
  "pause", "stop", ....
- `controlsList`, una lista di tre possibili valori: `nodownload` non
  permette all'utente di scaricare il file; `nofullscreen` non
  permette all'utente di vedere il video a tutto schermo;
  `noremoteplayback`, non permette all'utente di riprodurre il
  contenuto in remoto; Essendo una lista, questo attributo viene
  utilizzato come nel seguente esempio: `controlsList="nodownload
  nofullscreen noremoteplayback"`

Ovviamente, solo il tag video ha gli attributi:

- `poster`, l'immagine di anteprima da mostrare;
- `width`, la larghezza del video (in pixel);
- `height`, l'altezza del video (in pixel);

Entrambi i tag `audio` e `video` fanno uso del tag `source`, per
indicare i video o gli audio da riprodurre. Di questi, solo uno viene
effettivamente riprodotto: il browser sceglie (nell'ordine indicato) il
primo file che riesce a riprodurre (in base ai formati supportati).

Il tag `source` prevede diversi attributi, ma alcuni sono ad uso
esclusivo per le immagini, per cui quelli maggiormente utilizzabili per
**audio e video** sono:

- `src`, per indicare il percorso del file da riprodurre;
- `type`, per indicare il mime-type del file da riprodurre. Tra i
  possibili mime-type **audio** abbiamo `audio/mpeg` per i file mp3,
  `audio/wav` per i file wav e `audio/ogg` per i file ogg. Tra i
  possibili mime-type **video** abbiamo `video/mp4` per i file mp4,
  `video/webm` per i file webm e `video/ogg` per i file ogg.

Il tag `video` permette anche di specificare dei possibili sottotitoli
da mostrare sopra il video. I sottotitoli sono indicati nei tag `track`,
che prevede i seguenti attributi:

- `label`, una descrizione, generalmente la lingua del sottotitolo;
- `kind`, il tipo di traccia (per ora subtitles);
- `srclang` il codice del linguaggio;
- `src` il percorso del file di sottotitoli; Il formato del file è VTT.
- `default` il sottotitolo da mostrare di default.
