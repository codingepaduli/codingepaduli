---
type: "javascript"
title: "10 - Asynchronous Javascript And XML (AJAX)"
description: "10 - Asynchronous Javascript And XML (AJAX)"
date: 2020-08-05
publishdate: 2020-08-05
lastmod: 2020-08-05
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: true
toc: false
summary: "10 - Asynchronous Javascript And XML (AJAX)"
customJS: ["/static/coding/web/javascript/ajax.js"]
---

# 10 - Asynchronous Javascript And XML (AJAX) e Cross-Origin Resource Sharing (CORS)

Il modello AJAX è un modello nato per l'uso congiunto di un insieme di tecnologie preesistenti, permette al client di inviare e ricevere informazioni dal server in modalità asincrona. Il client può quindi aggiornare i singoli dati della pagina web senza dover ricaricare l'intera pagina.

Le chiamate AJAX consentono di sfruttare, dalla pagina web e dalle varie applicazioni, i vari servizi offerti online, permettendo in questo modo di separare il front-end, ovvero la grafica di applicazioni web e app degli smartphone, dal back-end, ovvero dai servizi offerti dai server.

L'invio e la ricezione dati sono soggette alle regole di sicurezza del browser e del server.

La regola principale di sicurezza è detta **same origin policy**, ovvero l'applicazione web può richiedere risorse, attraverso chiamate AJAX, solo ed esclusivamente dalla stessa origine (same origin) dalla quale è stata caricata, ovvero al solo sito web visitato, e non ad altri siti web. Ad esempio, se l'utente naviga su google, l'applicazione web può utilizzare le richieste AJAX per richiedere risorse e servizi solo ed esclusivamente alla stessa google (stessa origine), e non su microsoft o su amazon.

Una seconda regola di sicurezza è che le chiamate AJAX non sono sempre abilitate da **localhost**, per cui è necessario associare un nome fittizio al sito web attraverso il file **hosts** del sistema operativo.

L'applicazione web può richiedere risorse ad un'origine diversa (un altro servizio web) sfruttando il meccanismo Cross-Origin Resource Sharing (CORS, tradotto come condivisione di risorse tra più origini). Questo meccanismo serve ad indicare al server che si sta richiedendo una risorsa o un servizio da un'origine diversa, opzionalmente indicando le credenziali o l'identificativo d'accesso. Il server (a cui l'applicazione web fa richieste Cross-Origin) può essere configurato per accettare richieste provenienti da specifici domini o solamente se corredate di specifiche credenziali identificative.

## Chiamate AJAX su protocollo HTTPS

Le comunicazioni AJAX avvengono comunque su protocollo HTTP/HTTPS, per cui c'è bisogno di indicare:
- l'URL del servizio o della risorsa;
- l'operazione da effettuare sulla risorsa (lettura, modifica, cancellazione, aggiornamento);
- i dati necessari per effettuare l'operazione;
- i dati tecnici per effettuare la chiamata AJAX, quali credenziali di autenticazione, codifica del testo, formato di output richiesto, ecc..

Alcuni dati vengono trasmessi nell'intestazione (tradotto **header**) del protocollo HTTP, come le informazioni relative alle credenziali, all'origine della chiamata o anche al tipo di dati che si invia al server;

Quando si invoca un servizio, la richiesta può essere soddisfatta o meno, e ciò avviene attraverso un codice di risposta, sempre specificato dal protocollo HTTP, che il fornitore del servizio invia a chi lo invoca.

In alcuni casi, vengono effettuate 2 chiamate al server, la prima è necessaria per verificare che il server sia abilitato a ricevere la richiesta e la seconda effettua la richiesta a tutti gli effetti.

### Metodi del protocollo HTTP per la gastione delle risorse

I metodi previsti dal protocollo, che corrispondono alle operazioni da effettuare, sono i seguenti:

- GET : richiesta della risorsa identificata dall'URL;
- PUT : imposta una nuova risorsa sull'URL indicato. Se sull'URL indicato esiste gia una risorsa, questa sarà sostituita;
- PATCH : modifica della risorsa identificata dall'URL;
- POST : aggiunge contenuti (figli) di una risorsa;
- DELETE : cancellazione della risorsa identificata dall'URL;

L'URL in questi casi identifica univocamente la risorsa sulla quale si vuole agire.

Un esempio con relativa spiegazione delle varie chiamate AJAX è il seguente:

```html
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


### Codifica e formato dei dati inviati e ricevuti

I dati da inviare al servizio possono essere in formati diversi. Di seguito una spiegazione per ognuno di essi:

- Formato "testo in chiaro" ``text/plain``: i dati sono inviati senza nessun tipo di codifica. Questo tipo di trasmissione non è pensata per l'invio dei dati verso un altro sistema informatico ma solo per l'analisi da parte di un tecnico, quindi per la lettura e la stampa dei dati;
- Formato "URL-Encoded" ``application/x-www-form-urlencoded``: i dati vengono inviati come fossero parte di un'unica striga formata da coppie "chiave=valore". Le coppie sono separate tra loro dal carattere ``&`` ("e" commerciale) e sono codificate in codice **ASCII**. I caratteri non rappresentabili da un codice ASCII sono sostituiti da un carattere ``%`` ("percentuale") seguito da due cifre esadecimali. I caratteri di "nuova linea" vengono normalizzati, e gli spazi sono sostituiti con il carattere ``+`` o con il codice ``%20``;
- Formato "multipart" ``multipart/form-data``: E' il formato utilizzato per l'invio di file o per grandi quantità di dati. Ogni dato viene inviato in una propria parte del messaggio, contenente sia le informazioni relative al dato inviato, come ad esempio che si tratti di un campo di un form o che si tratti di un file, sia il valore del campo o il contenuto del file);
- Formato "JSON" ``application/json``: E' il formato utilizzato per l'invio dei dati in formato JSON utilizzando la codifica "UTF-8".


### Risposta del server o del servizio

Il server risponde ad una chiamata AJAX attraverso un codice di stato che indica se la chiamata è andata a buon fine o meno. Tipicamente i codici di stato sono quelli impliciti del protocollo HTTP, che sono raggruppati per classi, di seguito descritte:

- codici di informazione da ``100`` a ``199`` indicano che la richiesta del client è stata ricevuta e si può continuare l'elaborazione. Tra questi codici troviamo informazioni come "continua la trasmissione del messaggio" (codice ``100``) oppure "cambio di protocollo in corso" (codice ``101``);
- codici di elaborazione avvenuta da ``200`` a ``299`` indicano che il server ha elaborato la richiesta. Tra questi codici troviamo "dati inviati correttamente dal server" (codice ``200``), "richiesta elaborata e nessun dato inviato dal server" (codice ``204``), "risorsa creata ed inviata dal server" (codice ``201``);
- codici di redirezione da ``300`` a ``399`` indicano che il server non elaborerà la richiesta, ma che la può elaborare se si seguono le indicazioni del server. Tra questi codici troviamo "risorsa spostata ad altro URL" (codice ``301``), "risorsa disponibile tramite proxy" (codice ``305``);
- codici di errore del client da ``400`` a ``499`` indicano che la richiesta effettuata è errata o non ha le condizioni per poter essere elaborata. Tra questi codici troviamo "richiesta errata" (codice ``400``), "richiesta senza autenticazione" (codice 401), "pagamento richiesto" (codice ``402``), "risorsa richiesta non trovata" (codice ``404``);
- codici di errore del server da ``500`` a ``599`` indicano che la richiesta non sarà elaborata per problemi interni del server. Tra questi codici troviamo "errore del server" (codice ``500``), "operazione non disponibile" (codice ``501``), ""servizio non disponibile" (codice ``509``).

### Esempio di configurazione server abilitato a CORS

Per completezza, si riporta un esempio di configurazione di un generico server abilitato ad accettare chiamate AJAX di tipo Cross-Origin:

```
allowedOrigins: *
allowedMethods: GET,POST,OPTIONS,DELETE,PUT,HEAD
allowedHeaders: origin, content-type, accept, authorization
cross-origin: /api/cors/*
```

Di seguito sono specificate le chiavi e le relative spiegazioni:
- allowedOrigins: indica le "origini" dalle quali il server può accettare una chiamata AJAX di tipo Cross-Origin; Può essere una lista limitata di server, come ``www.google.com, www.facebook.com``, oppure può essere concesso a tutte le origini, indicate attraverso il carattere ``*``, come nell'esempio precedente;
- allowedMethods: indica i metodi del protocollo HTTP che il server gestisce; se il client invia una richiesta con un metodo non abilitato, la richiesta viene respinta; Nell'esempio precedente, il server non è abilitato a ricevere richieste di tipo ``PATCH``, che saranno respinte;
- cross-origin: indica su quali percorsi il server accetta chiamate AJAX di tipo Cross-Origin; Nell'esempio precedente, il server è abilitato a ricevere richieste AJAX di tipo Cross-Origin solo sui percorsi che iniziano con ``/api/cors/`` (il carattere ``*`` in questo caso indica qualsiasi percorso seguente);
- allowedHeaders: indica attributi personalizzati che possono essere inclusi nell'header della richiesta del protocollo ``HTTP``.

L'esempio e la relativa spiegazione non intendono dare nozioni di configurazione e avvio di un server, ma solo un'idea di come un server è configurato e di quali richieste accetta in base alla configurazione;

## Chiamate AJAX con le API Fetch

Le chiamate AJAX in codice Javascript possono essere realizzate attraverso le API **Fetch**, che permettono di gestire richiesta, risposta ed errori (nel caso la richiesta non possa essere completata).

Il codice Javascript per effettuare una semplice richiesta della risorsa è il seguente:

```javascript
const options = {
  method: 'GET',
  headers: { 'Content-Type': 'application/json' },
  cache: 'no-cache',
  mode: 'cors'
};

fetch('https://www.google.it/dati.html', options)
.then( (response) => console.log('Risorsa richiesta') )
.catch( (error) => console.log('Errore nella richiesta della risorsa') );
```

Come si può notare dal codice, la funzione principale è ``fetch``, che indica l'URL dal quale recuperare la risorsa. Questa funzione poi permette di gestire il caso di successo gestito nel ramo ``then`` ed il caso di insuccesso gestito nel ramo ``catch``.


### Effettuare la richiesta al server con le API Fetch

La funzione ``fetch`` permette di specificare l' URL della richiesta da effettuare ed un secondo oggetto opzionale che speficica tutti dettagli relativi la richiesta da effettuare.
Questo secondo oggetto opzionale contiene le seguenti proprietà:
- ``method``: indica il tipo di richiesta HTTP;
- ``mode``: indica il tipo di chiamata AJAX, a scelta tra ``same-origin`` (stessa origine), ``cors`` (tra origini differenti), ``no-cors`` e ``navigate`` (che non saranno descritte in questo capitolo e per le quali si rimanda alle specifiche per ulteriori dettagli);
- ``headers``: indica un insieme di chiavi-valore che forniscono ulteriori informazioni al server o al servizio, tra cui la chiave ``Content-Type`` che indica il formato dei dati inviati al server;
- ``body``: indica i dati da inviare al server. 


### Gestire la risposta del server con le API Fetch

La funzione ``then`` restituisce la risposta del server che contiene principalmente le seguenti proprietà:
- ``ok``: flag indicante se la risposta del server ha avuto successo, cioè se lo stato HTTP della risposta è compreso tra 200 e 299;
- ``status``: indica il codice dello stato HTTP relativo alla risposta del server;
- ``body``: contiene la risposta del server.

In particolare, la  risposta ``response`` del server può essere in uno qualsiasi dei formati indicati in precedenza, per cui è necessario trasformare questa risposta in un'oggetto conforme al formato utilizzato. Per trasformare la risposta in:
- "JSON" è necessario applicare la funzione ``response.json()``;
- "testo in chiaro" è necessario applicare la funzione ``response.text()``;
- "URL-Encoded" è necessario applicare la funzione ``response.formData()``;
- "binario" è necessario applicare la funzione ``response.blob()``.


### Gestire errori nella richiesta con le API Fetch

La funzione ``catch`` serve a catturare errori nel caso la risposta del server non sia stata recapitata al client. In questo caso, l'unico oggetto disponibile è appunto un errore, che viene gestito dal programmatore in questa funzione.


Esempio di selezione:
<div id="loadImage"></div>
<input type="button" onclick="callGetJSON()" value="seleziona">

headers: { 'Content-Type': 'application/x-www-form-urlencoded;charset=UTF-8' }
encodeURI(uri)

headers: { 'Content-Type': 'application/json' },
 JSON.stringify(record)
