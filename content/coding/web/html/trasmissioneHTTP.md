---
type: "html"
title: "HTML Lez. 10 - Trasmissione dati su protocollo HTTP"
date: 2024-01-26
publishdate: 2024-01-26
lastmod: 2024-01-26
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: true
toc: false
summary: "Trasmissione dati su protocollo HTTP"
weight: 9300
---

# Trasmissione dati su protocollo HTTP

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

Il web server **ospita** (in inglese hosting) uno i piú siti web. Il sito web viene quindi ospitato sul server e viene configurato il **nome di dominio**, ovvero il nome associato al sito web, ad esempio "google.it" o "www.microsoft.com". Questo nome di dominio viene quindi pubblicato sui DNS, che associano al nome di dominio un indirizzo IP.

Un **URL** (acronimo di Uniform Resource Locator) è un indirizzo che identifica univocamente una risorsa su una rete di computer. Il web server si occupa di esporre ogni singolo file, risorsa o servizio del sito web su un indirizzo web detto URL.

Ogni pagina web, immagine, file di testo e qualsiasi altra risorsa ha associato un proprio URL per poter essere raggiungibile sul **WWW**. Man mano che gli utenti navigano sul web, il browser richiedere le risorse (delle pagine web, delle immagini, dei file) al server, specificando per ogni richiesta l'indirizzo web (URL) della risorsa.

Un URL del sevizio di navigazione è composto da:

``protocollo``://``nomeDominio``:``porta``/``servizio``?``queryString``

La query string presente in un URL è composta dal seguente formato:

``?``nomeParam1``=``valoreParam1``&``nomeParam2``=``valoreParam2

Ad esempio, l'indirizzo della pagina di ricerca di google è:

``https://www.google.it:443/search?q=ricerca``

- ``https``: il protocollo di comunicazione;
- ``www.google.it``: il nome di dominio (del sito web);
- ``443``: la porta sulla quale avviene la comunicazione. Quando si tratta della porta predefinita, può essere omessa;
- ``/search``: il servizio richiesto al server, ovvero il servizio di ricerca;
- ``q=ricerca``: la query string;
- ``://``, ``:`` e ``?`` sono caratteri di separazione;

Nello stesso esempio, la query string è formata da:

- ``q``: il nome del primo dato inviato;
- ``ricerca``: il valore del primo dato inviato;
- ``?``: il carattere di separazione che indica l'inizio dei dati inviati;
- ``&``: il carattere di separazione tra un dato e l'altro;

### Esempio di trasmissione dati

Ad esempio, un ipotetico server ``www.server.com`` potrebbe offrire i servizi di registrazione, di login e di logout rispettivamente agli indirizzi:

```plaintext
www.server.com/registrazione
www.server.com/login
www.server.com/logout
```

Per la registrazione di un nuovo utente, il client invia al server la richiesta, nella quale specifica come URL il servizio di registrazione utenti ed i dati dell'utente, come nel seguente esempio:

```plaintext
www.server.com/registrazione
nome=Mario
cognome=Rossi
dataDiNascita=2021-09-05
```

Allo stesso modo, invia la richiesta di login nella quale specifica l'URL del servizio ed i dati di identificazione dell'utente, tipicamente il nome utente e la password, come nel seguente esempio:

```plaintext
www.server.com/login
username=Mario
password=A1b2C3d4
```

La richiesta di logout tipicamente non prevede dati da inviare al server, per cui è sufficiente specificare l'URL del servizio di logout, come nel seguente esempio:

 ```plaintext
www.server.com/logout
```

Quando il server riceve la richiesta da un client, la elabora, verificando che l'URL richiesto esista e sia disponibile e che i dati inviati siano validi. In caso positivo conferma la richiesta del server e genera una risposta da inviare al client. In caso negativo restituisce al client un messaggio d'errore.

## Metodi del protocollo HTTP

I metodi previsti dal protocollo, che corrispondono alle operazioni che è possibile effettuare, sono i seguenti:

- GET : richiesta della risorsa identificata dall'URL;
- PUT : imposta una nuova risorsa sull'URL indicato. Se esiste gia una risorsa, sarà sostituita;
- PATCH : modifica della risorsa identificata dall'URL;
- POST : aggiunge contenuti (figli) di una risorsa;
- DELETE : cancellazione della risorsa identificata dall'URL;

L'URL in questi casi identifica univocamente la risorsa sulla quale si vuole agire.

Un esempio con relativa spiegazione delle varie chiamate AJAX è il seguente:

```plaintext
GET  /blogs                 # Richiede la lista di tutti i blog
GET  /blogs/12              # Richiede i dati relativi al blog 12
GET  /blogs/12/articles     # Richiede la lista di tutti gli articoli del blog 12
GET  /blogs/12/articles/5   # Richiede l'articolo 5 del blog 12
POST /blogs/12/articles     # Aggiunge un nuovo articolo al blog 12
PUT  /blogs/12/articles/5   # Inserisce o sostituisce l'articolo 5 del blog 12
PATCH /blogs/12/articles/5  # Modifica l'articolo 5 del blog 12 (ad esempio il titolo)
DELETE /blogs/12/articles/5 # Cancella l'articolo 5 del blog 12
```

Ci sono utilizzi non sempre concordi sull'uso del metodo POST, ma le specifiche d'uso dei due metodi sono principalmente le seguenti:

- Usando il metodo PUT, si aggiunge o sostituisce la risorsa specificata dall'URL indicato, mentre usando il metodo POST, si aggiunge un figlio alla risorsa specificata dall'URL;
- Usando il metodo PUT, è il client ad indicare l'URL della risorsa, mentre usando il metodo POST, è il server a decidere;
- Inviando più volte la stessa richiesta col metodo PUT, la risorsa interessata dalla modifica sarà sempre la stessa e sarà modificata sempre allo stesso modo, come se la richiesta fosse stata una sola. Inviando più volte la stessa richiesta col metodo POST, si otterranno risultati diversi;
- Il metodo POST ha un uso più astratto rispetto al metodo PUT.

## Codifica e formato dei dati

I dati inviati o ricevuti al server possono avere formati diversi. Di seguito una spiegazione per ognuno di essi:

- Formato "testo in chiaro" ``text/plain``: i dati sono inviati senza nessun tipo di codifica. Questo tipo di trasmissione non è pensata per l'invio dei dati verso un altro sistema informatico ma solo per l'analisi da parte di un tecnico, quindi per la lettura e la stampa dei dati;
- Formato "URL-Encoded" ``application/x-www-form-urlencoded``: i dati vengono inviati come fossero parte di un'unica stringa formata da coppie "chiave=valore". Le coppie sono separate tra loro dal carattere ``&`` ("e" commerciale) e sono codificate in codice **ASCII**. I caratteri non rappresentabili da un codice ASCII sono sostituiti da un carattere ``%`` ("percentuale") seguito da due cifre esadecimali. I caratteri di "nuova linea" vengono normalizzati, e gli spazi sono sostituiti con il carattere ``+`` o con il codice ``%20``;
- Formato "multipart" ``multipart/form-data``: E' il formato utilizzato per l'invio di file o per grandi quantità di dati. Ogni dato viene inviato in una propria parte del messaggio, contenente sia le informazioni relative al dato inviato, come ad esempio che si tratti di un campo di un form o che si tratti di un file, sia il valore del campo o il contenuto del file;
- Formato "JSON" ``application/json``: E' il formato utilizzato per l'invio dei dati in formato JSON utilizzando la codifica "UTF-8".
- Formato "XML" ``application/xml``: E' il formato utilizzato per l'invio dei dati in formato XML utilizzando la codifica "UTF-8".
- Formato "HTML" ``text/html``: E' il formato utilizzato per l'invio dei dati in formato HTML utilizzando la codifica "UTF-8".

## Risposta del server o del servizio

Il server risponde ad una richiesta trasmettendo un codice di stato che indica se la chiamata è andata a buon fine o meno. I codici di stato definiti dal protocollo HTTP sono raggruppati per classi che sono descritte di seguito:

- codici di informazione da ``100`` a ``199`` indicano che la richiesta del client è stata ricevuta e si può continuare l'elaborazione. Tra questi codici troviamo informazioni come "continua la trasmissione del messaggio" (codice ``100``) oppure "cambio di protocollo in corso" (codice ``101``);
- codici di elaborazione avvenuta da ``200`` a ``299`` indicano che il server ha elaborato la richiesta. Tra questi codici troviamo "dati inviati correttamente dal server" (codice ``200``), "richiesta elaborata e nessun dato inviato dal server" (codice ``204``), "risorsa creata ed inviata dal server" (codice ``201``);
- codici di redirezione da ``300`` a ``399`` indicano che il server non elaborerà la richiesta, ma che la può elaborare se si invia la richiesta alla risorsa indicata del server. Tra questi codici troviamo "risorsa spostata ad altro URL" (codice ``301``), "risorsa disponibile tramite proxy" (codice ``305``);
- codici di errore del client da ``400`` a ``499`` indicano che la richiesta effettuata è errata o non ha le condizioni per poter essere elaborata. Tra questi codici troviamo "richiesta errata" (codice ``400``), "richiesta senza autenticazione" (codice 401), "pagamento richiesto" (codice ``402``), "risorsa richiesta non trovata" (codice ``404``);
- codici di errore del server da ``500`` a ``599`` indicano che la richiesta non sarà elaborata per problemi interni del server. Tra questi codici troviamo "errore del server" (codice ``500``), "operazione non disponibile" (codice ``501``), ""servizio non disponibile" (codice ``509``).

## Richieste con collegamenti HTML

I collegamenti HTML consentono di richiedere una risorsa ad un server specificando eventuali dati aggiuntivi.

Un collegamento è un testo sul quale l'utente può cliccare per ricevere dal server la pagina web contenente i dati richiesti.

Un esempio di collegamento è il seguente: <!-- markdownlint-disable-next-line MD033 -->
<a href="https://www.google.com/search?q=HTML">ricerca il termine HTML su Google</a>

Quando l'utente clicca su un collegamento, il browser effettua una richiesta al server e gli invia i dati necessari, se presenti nel collegamento.

Per poter aggiungere ad un collegamento i dati necessari da inviare al server, è sufficiente accodarli all'URL della risorsa richiesta, rispettando le seguenti regole:

- L'URL è separato dai dati mediante il carattere ``?``;
- Ogni dato da inviare è separato dal successivo con il carattere ``&``;
- di ogni dato da inviare, si specifica il nome, seguito dal carattere ``=`` e poi dal valore associato;

Considerando la richiesta di login dell'utente "Mario" vista nell'esempio precedente, la si può scrivere nella seguente forma:

```plaintext
www.server.com/login?username=Mario&password=A1b2C3d4
```

Il codice HTML risultante è il seguente:

```html
<a href="www.server.com/login?username=Mario&password=A1b2C3d4">richiesta login</a>
```

Allo stesso modo, la richiesta di registrazione dell'utente "Mario" vista in precedenza la si può scrivere nella seguente forma:

```plaintext
www.server.com/registrazione?nome=Mario&cognome=Rossi&dataDiNascita=2021-09-05
```

Il codice HTML risultante è il seguente:

```html
<a href="www.server.com/registrazione?nome=Mario&cognome=Rossi&dataDiNascita=2021-09-05">registra</a>
```

La richiesta di logout vista in precedenza non prevede dati da inviare, ma solo l'URL, quindi il collegamento HTML risultante è il seguente:

```html
<a href="www.server.com/logout">logout</a>
```

Un esempio reale può essere la richiesta a Google della ricerca del termine ``HTML``, sfruttando l'omonimo servizio di ricerca presente all'indirizzo web ``www.google.com/search``. In questo caso, la richiesta deve essere corredata dal dato da ricercare, che deve essere trasmesso con il nome ``q`` e con valore ``HTML``.

Il collegamento da creare è realizzato con il seguente codice:

```html
<a href="www.google.com/search?q=HTML">ricerca il termine HTML</a>
```

Cliccando sul collegamento, il servizio di ricerca risponde restituendo la pagina web che fa riferimento al termine ricercato.

## I moduli di invio dati per richieste al server

I moduli per l'invio dei dati permettono la creazione di campi di inserimento dati nella pagina web, che poi saranno compilati dall'utente ed inviati al server.

Ogni campo da inviare al server deve avere un nome ed un valore, che sarà inserito dall'utente. La query string, formata da tutti i nomi dei campi associati ai rispettivi valori, sarà inviata al server.

La risorsa o il servizio da richiedere al server può essere specificato nell'etichetta ``form`` con gli attributi:

- ``action``: indica il servizio del server a cui inviare i dati;
- ``method``: indica quale metodo utilizzare per l'invio dei dati.

Consideriamo ad esempio il seguente form:

```html
<form action="www.server.com/login" method="get">
  <label for="nome">username</label>
    <input placeholder="username" name="username" id="nome">

    <label for="pwd">password</label>
    <input placeholder="password" name="password" id="pwd">

    <button>Invia richiesta</button>
</form>
```

La richiesta inviata al server sarà la seguente:

```plaintext
www.server.com/login?nome=Mario&password=123456
```

Nel modulo è genericamente specificata la richiesta da effettuare. Un modulo però può prevedere più pulsanti, ognuno con la propria richiesta da effettuare.

In questo caso, piuttosto che specificare la richiesta nel form, la si specifica direttamente nei pulsanti, utilizzando i seguenti attributi:

- ``formaction``: si usa solo quando è presente l'attributo ``type=submit``, indica a quale servizio inviare i dati;
- ``formmethod``: si usa solo quando è presente l'attributo ``type=submit``, indica quale metodo utilizzare per inviare i dati;

Questi due attributi vanno a sovrascrivere la richiesta da effettuare presente nell'etichetta ``form`` (se presente).

Ad esempio, se vogliamo realizzare un modulo che invii i dati ad uno dei motori di ricerca conosciuti, allora possiamo creare più pulsanti, ognuno con l'azione di invi dati verso uno specifico motore di ricerca, come nel seguente esempio:

```html
<form>
    <label>inserisci cosa cercare</label>
    <input placeholder="cerca" name="q">

    <button type="submit" formaction="www.google.com/search">Invia a Google</button>
    <button type="submit" formaction="www.duckduckgo.com/search">Invia a DuckDuckGo</button>
    <button type="submit" formaction="www.bing.com/search">Invia a Bing</button>
</form>
```

Il risultato è il seguente:

![Pulsanti del form](/static/coding/web/html/form-buttons.png "Pulsanti del form")

Bisogna ricordare che HTTP è un protocollo basato su ipertesti, non sono previsti tipi numerici o tipi temporali, tutto viene trasmesso come testo semplice.

Le date ad esempio sono trasmesse come testo nella forma ``yyyy-mm-dd`` e gli orari nella forma ``hh:mm:ss``;

I campi di input disabilitati non saranno parte della query string, quindi non saranno inviati al server.

Tutti i campi di input di selezione singola "radio" appartenenti allo stesso gruppo hanno lo stesso nome, ma solo una voce sarà selezionabile, quindi sarà inviato il campo nella forma standard ``nome=valore``.

I campi di selezione multipla appartenenti allo stesso gruppo tipicamente hanno lo stesso nome (non è obbligatorio, ma è uso comune). Ad esempio, per la scelta degli interessi si ha:

```html
<input type="checkbox" id="coding" name="interest" value="programmazione" checked>
<label for="coding">Coding</label>
<input type="checkbox" id="soccer" name="interest" value="calcio">
<label for="soccer">Calcio</label>
```

Al momento dell'invio dei dati, il browser invierà i dati ripetendo più volte il nome del campo di input e associando di volta in volta il valore, come nel seguente esempio: ``interest=programmazione``**&**``interest=soccer``.
