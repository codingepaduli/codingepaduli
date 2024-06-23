---
type: "html"
title: "Siti web + esercizi "
description: "Siti web + esercizi"
date: 2019-07-15
publishdate: 2019-07-15
lastmod: 2019-07-15
spellcheck: 2022-10-08
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: true
toc: false
summary: "Siti web + esercizi"
weight: 10000
mainfont: "Noto Sans Regular"
sansfont: "Noto Sans Regular"
monofont: "Noto Sans Mono"
mathfont: "Noto Sans Math"
emojifont: "Noto Color Emoji"

---

# Siti web

## Tecnologie e software per la creazione di siti web

I siti web possono essere costruiti in mille modi.

Esistono software che permettono, anche con poche conoscenze tecniche, di disegnare, configurare ed amministrare un sito web mediante interfacce grafiche che guidano l'utente nei vari passi. Questi software sono chiamati genericamente
[CMS](https://it.wikipedia.org/wiki/Content_management_system "Collegamento all'articolo sui CMS su wikipedia.it"). Tra i CMS più noti troviamo
[WordPress](https://wordpress.org/ "Collegamento al sito web di WordPress") e
[Joomla](https://www.joomla.org/ "Collegamento al sito web di Joomla"), ma la scelta è ampia.

E' possibile creare dei siti web "statici", cioè scritti con software che trasformano un insieme di articoli e contenuti in un sito web. Questi strumenti prendono il nome di "static site generator" (generatori di siti web statici).

E' comunque possibile creare siti web partendo da un semplice editor di testi. Tra gli editor consigliati spuntano [Notepad++](https://notepad-plus-plus.org/ "Collegamento all'editor Notepad++"), [VSCodium](https://vscodium.com/ "Collegamento all'editor VSCodium") e Visual Studio Code. Tra gli editor non adatti si elencano l'editor Word di Office e "Blocco Note" (Notepad) di Windows.

Una volta costruito, il sito web deve essere **pubblicato** sul web, scegliendo le caratteristiche del servizio di hosting o di cloud, i certificati di sicurezza e gli strumenti adatti per il trasferimento e la sincronizzazione delle pagine sul dominio.

## Caratteristiche di un sito web

Dal punto di vista tecnico, un sito web deve rispondere ad una serie di requisiti molto richiesti, seppur non obbligatori, che elenchiamo di seguito:

- **validità**: caratteristica che indica l'assenza di errori. L'attività di validazione è necessaria ad individuare e correggere gli errori prima che siano pubblicati sul sito web. Per svolgere questi compiti, troviamo strumenti per la correzione grammaticale, validatori delle pagine web, validatori dei collegamenti (per evitare che possano riferirsi a risorse rimosse o spostate). Uno strumento di controllo dei collegamenti è il [W3C Link Checker](https://validator.w3.org/checklink "Collegamento al validatore dei link"). Per validare il codice HTML si può utilizzare il validatore [W3C Validator](https://validator.w3.org/ "Collegamento al validatore HTML");
- **accessibilità**: caratteristica che permette l'utilizzo del sito web anche persone con ridotta o impedita capacità sensoriale, motoria o psichica;
- **"responsività"**: caratteristica indicante che il sito web è fruibile su schermi con differenti risoluzioni e formati, sia quelli piccoli dei cellulari e palmari, sia quelli classici dei computer e tablet, sia quelli extra-large delle smart-TV. Uno strumento per verificare che un sito web sia "responsive" è [Responsively.App](https://responsively.app/ "App open source per simulare in un'unica schermata la visualizzazione del sito su più dispositivi");
- **rapidità**: Indica i tempi di caricamento della pagina e i tempi di risposta alle azioni dell'utente. L'attività fa si che i gli utenti possano interagire rapidamente col sito web, anche su connessioni lente, usando strumenti quali
  [lighthouse](https://developers.google.com/web/tools/lighthouse/ "Collegamento al sito web di lighthouse");
  opzionalmente si può rendere il sito capace di funzionare anche senza connessione internet
  ([PWA](https://it.m.wikipedia.org/wiki/Progressive_Web_App "Collegamento all'articolo su PWA su wikipedia.it"));
- **ottimizzazione per i motori di ricerca ([SEO](https://it.m.wikipedia.org/wiki/Ottimizzazione_\(motori_di_ricerca\) "Collegamento all'articolo su SEO su wikipedia.it"))**: permette al sito web di posizionarsi piú in alto possibile in un motore di ricerca.

Opzionalmente si può adattare al semantic web [semantic-web](https://it.m.wikipedia.org/wiki/Web_semantico "Collegamento all'articolo sul Web semantico su wikipedia.it").

## Altre etichette

Sono numerose le etichette HTML utili a descrivere i contenuti di una pagina web. Di seguito elenchiamo le etichette  che non sono state descritte nei capitoli precedenti, ma che possono risultare utili in più di una situazione e che possono aggiungere preziose informazioni per i motori di ricerca e per i lettori audio.

## Etichetta per le variabili matematiche

Le variabili matematiche possono essere indicate dall'etichetta **var**, come di seguito:

```html
<var>i</var> * <var>i</var> = -1
```

## Etichette per l'input e l'output di un programma

Quando si vuole indicare l'input di un software, si usa l'etichetta **kbd** (dall'inglese "keyboard input").

Allo stesso modo, quando si vuole indicare l'output di un software, si usa l'etichetta **samp** (dall'inglese "sample output element").

Nel seguente esempio verrà mostrato l'uso di entrambe le etichette:

```html
<samp>Keyboard not found. Press F1 to continue</samp>
<kbd>F</kbd>
<samp>Invalid key. Press F1 to continue</samp>
<kbd>F1</kbd>
```

## Esercizi sui siti web

1. Il World Wide Web è:

    1. un servizio di trasmissione dati su internet;
    2. un servizio di navigazione su internet;
    3. un servizio di memorizzazione dati su internet;
    4. un servizio di geolocalizzazione su internet.

2. Il server è generalmente un:

    1. computer con una grande capacità di elaborazione e memorizzazione dati;
    2. computer con una capacità di elaborazione e memorizzazione dati non elevata;
    3. software per la connessione ad internet;
    4. software per la navigazione sul web.

3. Il client è generalmente un:

    1. computer con una grande capacità di elaborazione e memorizzazione dati;
    2. computer con una capacità di elaborazione e memorizzazione dati non elevata;
    3. software per la connessione ad internet;
    4. software per la navigazione sul web.

4. Il protocollo è:

    1. il software usato per poter navigare sul web;
    2. il software che "ospita" uno i piú siti web;
    3. l'indirizzo web di una risorsa;
    4. l'insieme di regole che client e server seguono per poter comunicare.

5. Il browser è:

    1. il software usato per poter navigare sul web;
    2. il software che "ospita" uno i piú siti web;
    3. l'indirizzo web di una risorsa;
    4. l'insieme di regole che client e server seguono per poter comunicare.

6. Il web server è:

    1. il software usato per poter navigare sul web;
    2. il software che "ospita" uno i piú siti web;
    3. l'indirizzo web di una risorsa;
    4. l'insieme di regole che client e server seguono per poter comunicare.

7. Un URL è:

    1. il software usato per poter navigare sul web;
    2. il software che "ospita" uno i piú siti web;
    3. l'indirizzo web di una risorsa;
    4. l'insieme di regole che client e server seguono per poter comunicare.

<!-- markdownlint-disable MD036 -->

|           |     |     |     |     |     |     |     |              |
| --------- | --- | --- | --- | --- | --- | --- | --- | ------------ |
| Esercizio |  1  |  2  |  3  |  4  |  5  |  6  |  7  | Totale Punti |
| Max punti |  2  |  2  |  1  |  1  |  1  |  2  |  1  |              |
| Punti     |     |     |     |     |     |     |     |              |

**Cognome ______________ Nome ______________ Classe __________ Data __________**

<!-- markdownlint-enable MD036 -->

## Esercizi sulle caratteristiche di un sito web

1. L'attività di validazione viene svolta per:

    1. ridurre il rischio di errori su un sito web;
    2. permettere l’utilizzo del sito web anche a chi ha difficoltà visive o motorie;
    3. rendere il sito web fruibile su schermi con differenti risoluzioni e formati;
    4. migliorare l'esperienza utente sul sito web anche nel caso di connessioni lente.

2. L'accessibilità viene realizzata per:

    1. ridurre il rischio di errori su un sito web;
    2. permettere l’utilizzo del sito web anche a chi ha difficoltà visive o motorie;
    3. rendere il sito web fruibile su schermi con differenti risoluzioni e formati;
    4. migliorare l'esperienza utente sul sito web anche nel caso di connessioni lente.

3. Un sito web è "responsive" se:

    1. gli errori presenti sono stati rilevati e corretti;
    2. permette l’utilizzo anche a chi ha difficoltà visive o motorie;
    3. è fruibile su schermi con differenti risoluzioni e formati;
    4. migliora l'esperienza utente anche nel caso di connessioni lente.

4. La rapidità di un sito web serve a:

    1. ridurre il rischio di errori;
    2. permetterne l’utilizzo anche a chi ha difficoltà visive o motorie;
    3. renderlo fruibile su schermi con differenti risoluzioni e formati;
    4. migliorare l'esperienza utente anche nel caso di connessioni lente.

5. L'ottimizzazione per i motori di ricerca serve a:

    1. migliorare la ricerca dei contenuti presenti nel sito web;
    2. migliorare il posizionamento del sito web rispetto agli altri siti risultanti nelle ricerche;
    3. far si che i video del sito siano visualizzabili su youtube e le immagini siano visualizzate nella ricerca per immagini;
    4. tradurre il sito web in altre lingue grazie ad un motore di ricerca.

6. Un CMS è un software che serve a:

    1. disegnare, configurare ed amministrare un sito web mediante interfacce grafiche;
    2. ospitare un sito web su un dominio;
    3. validare un sito web in modo da evitare la pubblicazioni di errori;
    4. rendere "responsive" un sito web in modo che sia fruibile su schermi con differenti risoluzioni e formati.

<!-- markdownlint-disable MD009 MD036 -->

 |        |     |     |     |     |     |     |     | 
---       | --- | --- | --- | --- | --- | --- | --- | --- 
Esercizio |  1  |  2  |  3  |  4  |  5  |  6  | Totale Punti
Max punti |  2  |  2  |  1  |  2  |  2  |  1  |     |
Punti     |     |     |     |     |     |     |     |

**Cognome ______________ Nome ______________ Classe __________ Data __________**

<!-- markdownlint-enable MD009 MD036 -->
