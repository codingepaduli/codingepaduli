---
type: "html"
title: "HTML Lez. 01 - Il World Wide Web"
description: "HTML Lez. 01 - Il World Wide Web"
date: 2019-07-15
publishdate: 2019-07-15
lastmod: 2019-07-15
spellcheck: 2022-10-08
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 01 - Il World Wide Web"
weight: 10000
mainfont: "Noto Sans Regular"
sansfont: "Noto Sans Regular"
monofont: "Noto Sans Mono"
mathfont: "Noto Sans Math"
emojifont: "Noto Color Emoji"

references:
    -   title: "Guida HTML su html.it"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.html.it/guide/guida-html/"
        description: "Corso HTML sul sito web di html.it (in italiano)"
    -   title: "Guida HTML (versione 5) su html.it"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.html.it/guide/guida-html5/"
        description: "Corso HTML versione 5 sul sito web di html.it (in italiano)"
    -   title: "Guida HTML su corsidia.com"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://corsidia.com/materia/web-design/webmaster-tutorial/guida-html"
        description: "Corso HTML sul sito web di corsidia.com (in italiano)"
    -   title: "Manuale HTML su it.wikibooks.org"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://it.m.wikibooks.org/wiki/HTML"
        description: "Un buon manuale HTML su it.wikibooks.org (in italiano)"
    -   title: "Guida HTML su w3schools.com"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.w3schools.com/html/"
        description: "Corso HTML sul sito web di www.w3schools.com (in inglese)"
    -   title: "Corso HTML per principianti su internetingishard.com"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://internetingishard.com/html-and-css/"
        description: "Corso HTML per principianti sul sito web di www.w3schools.com (in inglese)"
    -   title: "Documentazione sulla tecnologia HTML su developer.mozilla.org"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://developer.mozilla.org/it/docs/Web/HTML"
        description: "Sito della Mozilla Foundation dedicato agli sviluppatori (in corso di traduzione in italiano)"
    -   title: "Corso e certificazione HTML su freecodecamp.org"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.freecodecamp.org/learn/2022/responsive-web-design/"
        description: "Corso e certificazione della freecodecamp, organizzazione no-profit che aiuta le persone ad apprendere l'arte della programmazione, con corsi e certificazioni disponibili gratuitamente (in inglese)"
---

# Il World Wide Web (WWW)

Il **World Wide Web** (dall'inglese "Rete di Ampiezza Globale") è il servizio di internet che permette di navigare tra i siti web utilizzando i collegamenti tra un sito e l'altro. Sono questi collegamenti tra i vari siti web a creare una rete di estensione mondiale.

Ad esempio, un utente, seguendo i collegamenti di volta in volta presenti, può iniziare la navigazione sul sito web di un quotidiano italiano, poi vedere un video su una piattaforma web americana ed ancora visualizzare un prodotto in vendita su un e-commerce australiano, e così via.

Il <abbr title="World Wide Web">WWW</abbr> nasce presso il CERN, il più importante laboratorio di fisica europeo, con lo scopo di condividere documenti scientifici in un formato elettronico che sia indipendente dalla piattaforma utilizzata.

Il <abbr title="World Wide Web">WWW</abbr> diventa un unico grande **ipertesto** (hypertext in inglese), cioè un enorme insieme di documenti messi in relazione tra loro attraverso dei collegamenti ipertestuali (hyperlink in inglese).

## Architettura client server del WWW

Il World Wide Web si basa su un'architettura client-server, in cui il client invia le richieste al server, il server le elabora e fornisce una risposta al client.

Il **server** è generalmente un computer con una grande capacità di elaborazione, che gli permette di gestire allo stesso tempo le richieste di milioni di client.

I **client** sono dispositivi con una capacità di elaborazione non elevata, inviano le richieste di elaborazione al server e attendono la risposta.

Il **protocollo** di comunicazione definisce un insieme di regole che client e server seguono per poter comunicare.

I client, per poter navigare, devono utilizzare un software, chiamato **browser**.

Per permettere la navigazione su WWW ai client, sul server deve essere installato il **web server**, ovvero il software che offre il servizio di navigazione.

Il web server **ospita** (in inglese hosting) uno i piú siti web ed espone ogni singolo file, risorsa o servizio del sito web su un indirizzo web detto URL.

Un **URL** (acronimo di Uniform Resource Locator) è un indirizzo che identifica univocamente una risorsa su una rete di computer.

Ogni pagina web, immagine, file di testo e qualsiasi altra risorsa ha associato un proprio URL per poter essere raggiungibile su WWW. Man mano che gli utenti navigano sul web, il browser richiedere le risorse (delle pagine web, delle immagini, dei file) al server, specificando per ogni richiesta l'indirizzo web (URL) della risorsa.

Il protocollo **HTTP** (HyperText Transfer Protocol) regola la navigazione, intesa come scambio di ipertesti, tra client e server.

Purtroppo, quando si utilizza il protocollo HTTP, è possibile leggere i messaggi che client e server si scambiano, installando un software adatto su un qualsiasi dispositivo posto tra client e server (ad esempio sul router di casa o su un ripetitore wireless).

Il protocollo **HTTPS** (HTTP Secure) è nato per aggiungere al protocollo HTTP uno strato ulteriore che consenta di evitare il problema descritto in precedenza e garantisca la comunicazione client-server in sicurezza.

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

## I linguaggi degli ipertesti

Sul web sono utilizzati molti linguaggi, ma i principali usati per la realizzazione dei siti web sono:

- Il linguaggio <abbr title="HyperText Markup Language">**HTML**</abbr> e' un linguaggio che definisce la struttura delle pagine web, ma non indica la formattazione.
- Il linguaggio <abbr title="Cascading Style Sheets">**CSS**</abbr> è usato per definire la formattazione dei documenti HTML, ovvero stili, colori, animazioni, ...
- Il linguaggio **JavaScript** è usato per poter elaborare le informazioni sul client e per poter interagire con l'utente (ad esempio nei videogiochi online).

I tre linguaggi sono fortemente collegati, ma è utile sottolineare che ognuno ha uno scopo ben definito.
