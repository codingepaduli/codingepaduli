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
draft: true
toc: false
summary: "HTML Lez. 01 - Il World Wide Web"
weight: 10000
mainfont: "Noto Sans Regular"
sansfont: "Noto Sans Regular"
monofont: "Noto Sans Mono"
mathfont: "Noto Sans Math"
emojifont: "Noto Color Emoji"

---

# Il World Wide Web (WWW)

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

