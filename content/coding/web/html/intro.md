---
type: "html"
title: "Siti web "
description: "Il World Wide Web, i siti web, i cookies, i browser"
date: 2025-03-22
publishdate: 2025-03-22
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "Il World Wide Web, i siti web, i cookies, i browser"
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

### Organizzazioni chiave e nuove funzionalità

Il W3C (World Wide Web Consortium) è l'organizzazione principale che stabilisce gli standard globali per il web. Si occupa di definire le specifiche per linguaggi come HTML e CSS, oltre a promuovere pratiche di accessibilità per garantire che il web sia fruibile da tutti, inclusi gli utenti con disabilità.

Il WHATWG (Web Hypertext Application Technology Working Group) è un gruppo di lavoro che si concentra sulla modernizzazione delle specifiche di HTML e del Document Object Model (DOM). Si è formato per rispondere alla necessità di un'evoluzione continua di HTML, in particolare per supportare le nuove tecnologie e le pratiche di sviluppo web.

Il TC39 (Technical Committee 39) è il comitato tecnico responsabile della definizione degli standard per JavaScript. Questo include l'evoluzione del linguaggio attraverso versioni come ES6 (ECMAScript 2015) e le versioni successive (ESNext), che introducono nuove funzionalità e miglioramenti.

Il processo per la realizzazione di una nuova funzionalità per il web è il seguente:

Proposal Stage: In questa fase iniziale, sviluppatori e fornitori di browser propongono nuove funzionalità. Queste proposte possono derivare da esigenze emergenti nel campo dello sviluppo web o da innovazioni tecnologiche.

Experimental Implementation: Una volta che una proposta è stata accettata, un browser (come Chrome o FireFox) implementa la funzionalità in modo sperimentale. Questo consente agli sviluppatori di testare la nuova funzionalità senza influenzare gli utenti finali.

Cross-Browser Adoption: Se la funzionalità si dimostra utile e stabile, altri browser iniziano a implementarla. Questo passaggio è cruciale per garantire che la nuova funzionalità venga adottata in modo ampio e non rimanga limitata a un solo browser.

Standardization by W3C/WHATWG: Una volta che la funzionalità è stata adottata da più browser e ha dimostrato di essere utile, viene formalmente standardizzata dal W3C o dal WHATWG. Questo processo implica la revisione e l'approvazione delle specifiche tecniche.

Full Browser Support: La funzionalità viene abilitata per impostazione predefinita in tutti i principali browser. Questo significa che gli utenti possono utilizzare la nuova funzionalità senza dover attivare manualmente alcuna impostazione.

L'obiettivo di questo processo è garantire che ogni browser implementi la nuova funzionalità in modo coerente, in modo che gli sviluppatori possano contare su un comportamento uniforme attraverso diverse piattaforme.

## I cookies

I siti web utilizzano i cookie per l'autenticazione dell'utente e per la memorizzazione di alcune informazioni. Quando un utente visita un sito web che utilizza cookie, spesso si imbatte in un messaggio o un banner informativo che lo informa che il sito web utilizza cookie per migliorare l'esperienza dell'utente e per personalizzare i contenuti in base alle preferenze dell'utente. Presentano anche importanti problemi di privacy.

Il termine "cookie" è spesso associato a "magic cookie", in ambito informatico si riferisce a un pezzo di informazione che viene scambiato tra due parti.

In origine servivano per memorizzare la sessione di navigazione, ovvero impedivano al browser di dover chiedere all'utente di autenticarsi (di effettuare il login) ogni volta che l'utente visitava una nuova pagina. Col tempo permettevano al browser di ricordare anche le preferenze dell'utente: la lingua, il tema. Ogni volta che l'utente clicca su un collegamento per navigare su una nuova pagina del sito web, i cookie di quel sito vengono inviati al server, che riconosce l'utente, la lingua, il tema e restituisce la pagina web con queste impostazioni (e non richiede di effettuare il login all'utente).

Esploriamo cosa sono i cookie, come funzionano e perché sono importanti.

### Tipi di cookie

Le tipologie di cookie sono descritte di seguito.

- cookie di sessione: sono cookie temporanei che scompaiono una volta chiuso il browser. Identificano la singola sessione di navigazione dell'utente e garantiscono una navigazione fluida.
- cookie persistenti: rimangono sul dispositivo fino alla loro scadenza o finché l'utente non li elimina. Aiutano i siti web a ricordare le impostazioni per le visite future.
- cookie di prima parte: sono impostati dal sito web che stai visitando. Gestiscono la personalizzazione e qualsiasi altra preferenza impostata su quel sito.
- cookie di terze parti: sono stabiliti da entità esterne al sito web come gli inserzionisti pubblicitari. Tracciano le abitudini di navigazione degli utenti sui diversi siti che questi visitano, costruendo un profilo degli interessi degli utenti. Possono essere utili, ma sollevano anche preoccupazioni sulla privacy.
- cookie sicuri: funzionano solo su connessioni crittografate (HTTPS), rendendole essenziali per proteggere le informazioni sensibili come password o dettagli bancari durante le transazioni.

### La privacy ed il marketing

I cookie oggi sono principalmente utilizzati per ottimizzare le strategie di marketing delle piattaforme web e per presentare contenuti e pubblicità adatti alle preferenze dell'utente.

I grandi inserzionisti pubblicitari prendono accordi con i siti web per effettuare il tracciamento e l’analisi delle abitudini degli utenti. Quando l'utente naviga su un sito web, i cookie vengono inviati al sito. Se si conoscono le preferenze e i gusti dell'utente, gli vengono mostrate le pubblicità adatte ai suoi gusti. Quando l'utente naviga su un secondo sito web che usa gli stessi cookie, le preferenze e i gusti espressi sul primo sito vengono aggiunte alle preferenze ed ai gusti espressi sul secondo sito. A lungo andare si crea una profilazione dell'utente: cosa gli piace, quali generi legge, che film guarda, quale squadra tifa.

Ad esempio, se un utente visita un sito di e-commerce e guarda un prodotto senza acquistarlo, i cookie possono essere utilizzati per mostrare annunci di quel prodotto su altri siti web che l'utente visita in seguito.

Da un lato le pubblicità mostrate all'utente permettono ai siti web di finanziarsi e di vendere. Dall'altro la profilazione dell'utente solleva anche diverse preoccupazioni legate alla privacy.

I cookie, in particolare i cookie di terze parti, possono essere utilizzati per tracciare gli utenti attraverso diversi siti web. Questo significa che le aziende possono raccogliere informazioni dettagliate sulle abitudini di navigazione degli utenti, creando profili comportamentali. Questo tipo di tracciamento può avvenire senza il consenso esplicito degli utenti e può portare a una sensazione di invasione della privacy.

Le informazioni raccolte tramite i cookie possono essere utilizzate per creare profili dettagliati degli utenti, che possono includere dati su interessi, comportamenti e preferenze. Questi profili possono essere utilizzati per pubblicità mirata, ma possono anche sollevare preoccupazioni etiche riguardo alla manipolazione delle scelte degli utenti e alla mancanza di trasparenza su come vengono utilizzati i dati.

Molti utenti non sono consapevoli di come i cookie vengono utilizzati o di quali dati vengono raccolti. Anche se le normative come il GDPR richiedono che i siti informino gli utenti sull'uso dei cookie e ottengano il loro consenso, non tutti i siti rispettano queste normative in modo adeguato. Questo porta a una mancanza di trasparenza e a una scarsa comprensione da parte degli utenti.

## La guerra dei browser

Per navigare su internet serve un browser. Un browser è composto principalmente da un motore per la visualizzazione delle pagine web e l'esecuzione dei programmi contenuti. Con l'evoluzione del web, i motori continuano a svilupparsi per supportare le nuove tecnologie.

Il browser Mozilla Firefox, sviluppato dalla Mozilla Foundation, è nato con l'obiettivo di rispettare la privacy degli utenti e che permettesse la personalizzazione. Utilizza il motore Gecko per la visualizzazione delle pagine web.

Il browser Safari, sviluppato dalla Apple, è nato con l'obiettivo di garantire un'esperienza utente coerente su tutti i dispositivi Apple. Utilizza il motore WebKit per la visualizzazione delle pagine web.

Quasi tutti gli altri browser attualmente esistenti utilizzano il motore Blink di Google:

- il browser Microsoft Edge si basa su Blink;
- il browser Opera si basa su Blink;
- il browser Opera GX si basa su Blink;
- il browser Vivaldi si basa su Blink;
- il browser Brave si basa su Blink;
- il browser Google Chrome si basa su Blink;
- il browser Samsung Internet si basa su Blink;
- il browser Amazon Silk si basa su Blink;
- il browser Arc si basa su Blink;
- il browser Yandex si basa su Blink.

Blink di Google è anche il motore che alimenta Electron e Chromium Embedded Framework (CEF), strumenti molto diffusi che sono utilizzati per creare applicazioni desktop come Discord, VS Code, Figma, Obsidian, Signal, Slack, Steam, Spotify, ecc...

Non c'è scelta nel mercato dei browser. Il motore che li alimenta è quasi sempre Blink, e Blink è sviluppato da Google. Unita questa tecnologia con il motore di ricerca più popolare al mondo significa che Google ha un controllo quasi completo e assoluto della navigazione sul web, creando preoccupazioni relative alla libertà di navigazione e alla sorveglianza. Google è una società che realizza la maggior parte delle sue entrate attraverso la pubblicità e la raccolta di dati.

Il Web Design System degli Stati Uniti impone il supporto ufficiale ai browser che superano l’utilizzo del 2% sui siti web gestiti dal governo degli Stati Uniti. Un requisito simile è fissato dal governo britannico. Firefox sta scendendo sotto questa soglia, una volta sotto significa che non sarà più supportato e che si perderà ancor di più libertà di scelta.

Poiché il futuro del web dipende dalla diversità nei motori dei browser, si può invitare gli utenti a considerare l'utilizzo di browser alternativi maturi e consolidati, come FireFox o Safari, e di supportare lo sviluppo e la crescita di browser poco diffusi e non basati su Blink, come Servo e Ladybird, ancora non maturi per una navigazione fluida e priva di errori.
