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
toc: true
summary: "Siti web + esercizi"
weight: 10000
mainfont: "Noto Sans Regular"
sansfont: "Noto Sans Regular"
monofont: "Noto Sans Mono"
mathfont: "Noto Sans Math"
emojifont: "Noto Color Emoji"

---

# Il World Wide Web ed i siti web

I siti web sono una delle componenti fondamentali di Internet, permettono all'utente di navigare tra le informazioni contenute nelle pagine web in maniera semplice ed intuitiva.

Insieme alle app per smartphone (e a quelle dei dispositivi smart, come gli assistenti vocali, ad esempio Alexa), i siti web rappresentano una delle vie principali per accedere ai contenuti online.

L'insieme di collegamenti tra i vari siti web creano il **World Wide Web** (dall'inglese “Rete di Ampiezza Globale”), una rete di estensione mondiale.

## Architettura client server del WWW

Il World Wide Web si basa su un'architettura client-server, in cui il client invia le richieste al server, il server le elabora e fornisce una risposta al client.

Il **server** è generalmente un computer con una grande capacità di elaborazione, che gli permette di gestire allo stesso tempo le richieste di milioni di client.

I **client** sono dispositivi con una capacità di elaborazione non elevata, inviano le richieste di elaborazione al server e attendono la risposta.

Il **protocollo** di comunicazione definisce un insieme di regole che client e server seguono per poter comunicare.

I client, per poter navigare, devono utilizzare un software, chiamato **browser**.

Per permettere ai client la navigazione delle risorse, sul server deve essere installato il **web server**, ovvero il software che offre il servizio di navigazione.

Il protocollo **HTTP** (HyperText Transfer Protocol) regola la navigazione, intesa come scambio di ipertesti, tra client e server.

Purtroppo, quando si utilizza il protocollo HTTP, è possibile leggere i messaggi che client e server si scambiano, installando un software adatto su un qualsiasi dispositivo posto tra client e server (ad esempio sul router di casa o su un ripetitore wireless).

Il protocollo **HTTPS** (HTTP Secure) è nato per aggiungere al protocollo HTTP uno strato ulteriore che consenta di evitare il problema descritto in precedenza e garantisca la comunicazione client-server in sicurezza.

## I nomi di dominio

I dispositivi connessi ad internet sono identificati da un indirizzo IP (ad esempio 192.107.122.156) che è difficile da memorizzare. Il servizio Domain Name System (DNS) nasce proprio per rendere più semplice accedere ad un dispositivo associando all'indirizzo IP un nome, detto **nome di dominio**.

La struttura gerarchica dei nomi di dominio è organizzata in livelli, con i domini di primo livello in cima, seguiti dai dominio di secondo livello e dai sottodomini di terzo livello. Questa struttura consente una gestione flessibile e organizzata dei nomi di dominio su Internet.

La forma di un nome di dominio può essere ad esempio ``wikipedia.org`` oppure ``italia.gov`` oppure ``wiki.italia.com``. Il carattere "punto" presente nel nome di dominio separa i livelli:

- il primo livello è indicato a destra, ad esempio ``.com`` o ``.it``;
- il secondo livello è indicato alla sinistra del primo livello, ad esempio ``wikipedia`` o ``.italia``;
- il terzo livello è opzionale ed è indicato, se presente, alla sinistra del secondo livello, ad esempio ``blog`` o ``wiki``;

L'**ICANN** (Internet Corporation for Assigned Names and Numbers) è l'organizzazione responsabile delle politiche di gestione e delle linee guida che regolamentano il sistema dei nomi di dominio a livello globale. Ha il ruolo di arbitro e supervisore, ma non gestisce direttamente nessun dominio.

La sintassi di un nome di dominio permette le lettere (a-z), i numeri (0-9) ed i trattini (-), non permette caratteri speciali come spazi, simboli (come @, #, $, %, ecc.) o punteggiatura (eccetto il trattino, ma non all'inizio o alla fine). La lunghezza non deve superare i 63 caratteri. I nomi di dominio sono insensibili al maiuscolo e al minuscolo, ad esempio "Example.com", "example.com" e "EXAMPLE.COM" sono considerati equivalenti. Il carattere "punto" separa i livelli dei domini.

### Dominio di primo livello

I domini di primo livello, detti Top Level Domain (TLD), identificano il tipo di organizzazione o la provenienza geografica di un sito web. Si dividono in differenti categorie:

- generici (gTLD): non sono legati a un paese specifico e possono essere registrati da chiunque. Tra questi menzioniamo i domini ``.com``, ``.net``, ecc...
- geografici (ccTLD): sono specifici per un paese o una regione. Tra questi menzioniamo i domini ``.it``, ``.fr``, ecc...
- sponsorizzati (sTLD): sono gestiti da organizzazioni specifiche e sono destinati a comunità particolari. Tra questi menzioniamo i domini ``.edu``, ``.gov``, ecc...

Ogni dominio di primo livello è gestito da un'organizzazione chiamata **registry**. Di seguito elenchiamo i **registry** dei nomi di dominio di primo livello più popolari:

1. **.com** gestito dal Registry "VeriSign, Inc.", originariamente progettato per le attività commerciali.
2. **.org** gestito dal Registry "Public Interest Registry (PIR)", originariamente utilizzato da organizzazioni non profit.
3. **.net** gestito dal Registry "VeriSign, Inc.", originariamente destinato a fornitori di servizi di rete.
4. **.gov** gestito dal Registry "U.S. General Services Administration (GSA)", originariamente riservato a enti governativi degli Stati Uniti.
5. **.edu** gestito dal Registry "Educause", originariamente riservato a istituzioni educative accreditate negli Stati Uniti.
6. **.mil** gestito dal Registry "U.S. Department of Defense", originariamente riservato a enti militari degli Stati Uniti.
7. **.de** gestito dal Registry "DENIC eG", il ccTLD per la Germania, utilizzato da aziende e utenti tedeschi.
8. **.uk** gestito dal Registry "Nominet", il ccTLD per il Regno Unito, utilizzato da aziende e utenti inglesi, offre diverse opzioni di registrazione come **.co.uk**, **.org.uk**, ecc...
9. **.fr** gestito dal Registry "AFNIC (Association Française pour le Nommage Internet en Coopération)", il ccTLD per la Francia, utilizzato da aziende e utenti francesi.
10. **.it** gestito dal Registry "Registro.it", il ccTLD per l'Italia, utilizzato da aziende e utenti italiani.

### Domini di secondo livello e nomi di dominio

I domini di secondo livello (SLD, Second-Level Domain) possono rappresentare aziende, marchi, persone, progetti o qualsiasi altro tipo di contenuto online.

Un **nome di dominio** è un indirizzo formato da un dominio di secondo livello ed uno di primo livello separati da un punto, ad esempio ``wikipedia.org`` e ``unicef.org``.

I **registrar** sono le aziende accreditate e autorizzate a vendere nomi di dominio agli utenti finali. I registrar operano come intermediari tra gli utenti e i registry. Quando un utente desidera registrare un nome di dominio, lo fa tramite un registrar, che invia la richiesta al registry che gestisce il dominio di primo livello corrispondente.

I registry di primo livello sono responsabili della registrazione e della gestione dei nomi di dominio all'interno di un determinato dominio di primo livello.

### Esempio di processo di registrazione

Il processo di registrazione di un nome di dominio per un sito web è composto dai seguenti passi:

1. Scelta del nome: L'utente sceglie la parte iniziale del nome del sito web, ad esempio ``esempio`` oppure ``miosito``, e sceglie la parte finale, ad esempio ``.com`` oppure ``.it``. Il nome del suo sito web (e quindi il nome del suo dominio) sarà ``example.com`` o ``miosito.it``.
2. Verifica della disponibilità: L'utente utilizza un registrar per verificare se il nome di dominio (``example.com`` o ``miosito.it``) scelto è disponibile.
3. Registrazione: Se il nome è disponibile, l'utente completa il processo di registrazione attraverso il registrar, che invia la richiesta al registry indicante le informazioni di contatto, gli indirizzi IP, ecc...
4. Gestione: Una volta registrato il nome di dominio, questo (``example.com`` o ``miosito.it``) è gestito dal registry.

### Domini di terzo livello

I domini di terzo livello sono utilizzati per organizzare e gestire contenuti o servizi specifici all'interno di un dominio di secondo livello. Sono creati e gestiti direttamente dal proprietario del dominio di secondo livello, per cui il processo di registrazione di un nome di dominio di terzo livello segue le regole dettate dal gestore di dominio di secondo livello.

Se un'azienda possiede ``example.com``, può creare i nomi di dominio ``blog.example.com`` o ``shop.example.com`` senza dover registrare separatamente questi domini di terzo livello.

## I siti web

### Tecnologie e software per la creazione di siti web

I siti web possono essere costruiti in mille modi.

Esistono software che permettono, anche con poche conoscenze tecniche, di disegnare, configurare ed amministrare un sito web mediante interfacce grafiche che guidano l'utente nei vari passi. Questi software sono chiamati genericamente
[CMS](https://it.wikipedia.org/wiki/Content_management_system "Collegamento all'articolo sui CMS su wikipedia.it"). Tra i CMS più noti troviamo
[WordPress](https://wordpress.org/ "Collegamento al sito web di WordPress") e
[Joomla](https://www.joomla.org/ "Collegamento al sito web di Joomla"), ma la scelta è ampia.

E' possibile creare dei siti web "statici", cioè scritti con software che trasformano un insieme di articoli e contenuti in un sito web. Questi strumenti prendono il nome di "static site generator" (generatori di siti web statici).

E' comunque possibile creare siti web partendo da un semplice editor di testi. Tra gli editor consigliati spuntano [Notepad++](https://notepad-plus-plus.org/ "Collegamento all'editor Notepad++"), [VSCodium](https://vscodium.com/ "Collegamento all'editor VSCodium") e Visual Studio Code. Tra gli editor non adatti si elencano l'editor Word di Office e "Blocco Note" (Notepad) di Windows.

Una volta costruito, il sito web deve essere **pubblicato** sul web, scegliendo le caratteristiche del servizio di hosting o di cloud, i certificati di sicurezza e gli strumenti adatti per il trasferimento e la sincronizzazione delle pagine sul dominio.

### Caratteristiche di un sito web

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

## I cookies

<!-- TODO -->

## Il copyright

<!-- TODO -->

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
