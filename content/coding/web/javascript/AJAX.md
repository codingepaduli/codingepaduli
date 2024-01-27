---
type: "javascript"
title: "JavaScript Lez. 10 - Asynchronous JavaScript And XML (AJAX)"
description: "10 - Asynchronous JavaScript And XML (AJAX)"
date: 2020-08-05
publishdate: 2020-08-05
lastmod: 2020-08-05
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: true
toc: false
summary: "10 - Asynchronous JavaScript And XML (AJAX)"
customJS: ["/static/coding/web/javascript/ajax.js"]
---

# 10 - Asynchronous JavaScript And XML (AJAX) e Cross-Origin Resource Sharing (CORS)

Il modello AJAX è un modello nato per l'uso congiunto di un insieme di tecnologie preesistenti, permette al client di inviare e ricevere informazioni dal server in modalità asincrona. Il client può quindi aggiornare i singoli dati della pagina web senza dover ricaricare l'intera pagina.

Le chiamate AJAX consentono di sfruttare, dalla pagina web e dalle varie applicazioni, i vari servizi offerti online, permettendo in questo modo di separare il front-end, ovvero la grafica di applicazioni web e mobile app, dal back-end, ovvero dai servizi offerti dai server.

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

Alcuni dati vengono trasmessi nell'intestazione (tradotto **header**) della richiesta (come specificato dal protocollo HTTP). Qui vanno indicate le informazioni relative alle credenziali, all'origine della chiamata o anche al tipo di dati che si invia al server;

Quando si invoca un servizio, la richiesta può essere soddisfatta o meno, e ciò avviene attraverso un codice di risposta, sempre specificato dal protocollo HTTP, che il fornitore del servizio invia a chi lo invoca.

In alcuni casi, vengono effettuate 2 chiamate al server, la prima è necessaria per verificare che il server sia abilitato a ricevere la richiesta e la seconda effettua la richiesta a tutti gli effetti.

### Esempio di configurazione server abilitato a CORS

Per completezza, si riporta un esempio di configurazione di un generico server abilitato ad accettare chiamate AJAX di tipo Cross-Origin:

```ini
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

Le chiamate AJAX in codice JavaScript possono essere realizzate attraverso le API **Fetch**, che permettono di gestire richiesta, risposta ed errori (nel caso la richiesta non possa essere completata).

Il codice JavaScript per effettuare una semplice richiesta della risorsa è il seguente:

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

La funzione ``fetch`` permette di specificare l' URL della richiesta da effettuare ed un secondo oggetto opzionale che specifica tutti dettagli relativi la richiesta da effettuare.
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

Le proprietà dell'errore che sono accessibili dal programmatore sono:

- ``name`` — il nome dell'errore (ad esempio SyntaxError o TypeError)
- ``message`` — il messaggio contenente i dettagli dell'errore.

Un esempio di codice della funzione ``catch`` potrebbe essere il seguente:

```javascript
catch( (error) => console.log('Errore nella richiesta della risorsa: ' + error.message) );
```

### Esempio completo di chiamata AJAX

Codice HTML per generare un pulsante da cliccare:

```html
<div id="loadImage"></div>
<input type="button" onclick="callGetJSON()" value="seleziona">
```

Codice JavaScript per effettuare una chiamata AJAX utilizzando le fetch API:

```javascript
const options = {
  method: 'GET',
  headers: { 'Content-Type': 'application/json' },
  mode: 'cors',
  cache: 'no-cache'
};

function callGetJSON() {
  let source = document.querySelector('#loadImage');

  fetch('https://my-json-server.typicode.com/typicode/demo/posts/1', options)
  .then( (response) => response.ok ? response.json() :
      throw Error(`Request rejected with status ${response.status}`);
  )
  .then( (post) => source.appendChild(document.createTextNode(`${post.id} ${post.title}`))
  )
  .catch( (error) => {
      source.appendChild(document.createTextNode(`${error.name} ${error.message}`));
  });
}
```

Il risultato è il seguente:

<!-- markdownlint-disable MD033 -->

<div id="loadImage"></div>
<input type="button" onclick="callGetJSON()" value="seleziona">

headers: { 'Content-Type': 'application/x-www-form-urlencoded;charset=UTF-8' }
encodeURI(uri)

headers: { 'Content-Type': 'application/json' }, JSON.stringify(record) }

// [https://i.imgur.com/X4vco9k.jpg](https://i.imgur.com/X4vco9k.jpg)

<!-- markdownlint-enable MD033 -->

## Chiamate AJAX con jQuery

jQuery è uno strumento molto diffuso prima che esistessero le Fetch API ed ancora oggi utilizzatissimo. Permetteva di fare chiamate AJAX semplicemente, ad esempio:

```javascript
$("#idAjax1").load('index.html');
```

I dati da inviare si potevano ottenere dalla funzione ``serialize`` che trasformava un form in una **query string** da inviare:

```javascript
// query string: ?a=1&val2=vallll
let dataToSend = $('#formId').serialize();
```

In alternativa si potevano ottenere serializzando un array e ricavando la **query string**:

```javascript
let elem1 = {name: "a", value: "1"};
let elem2 = {name2: "val2", value: "vallll"}];

// query string: ?a=1&val2=vallll
let dataToSend = $.param( [elem1, elem2]);
```

Una chiamata AJAX in cui specificare indirizzo, protocollo, dati e la gestione del caso di successo o di errore poteva essere realizzata con il seguente codice:

```javascript
function ajaxCall(dataToSend, idTarget) {
  $.ajax({
    url:  "index.html",
    type: "GET",
    data: dataToSend,
    success: function(result) {
      $('' +idTarget).html(result);
    },
    error: function(xhr, textStatus, errorThrown) {
      alert("Errore: textStatus: " + textStatus + " errorThrown " + errorThrown);

      alert(formatErrorMessage(xhr, errorThrown));
    }
  });
};
```

Una funzione di utilità che permetteva di indicare l'errore era la seguente:

```javascript
function formatErrorMessage(jqXHR, errorThrown) {
  if (jqXHR.status === 0) {
      return ('Not connected.\nPlease verify your network connection.');
  } else if (jqXHR.status == 404) {
      return ('The requested page not found. [404]');
  } else if (jqXHR.status == 500) {
      return ('Internal Server Error [500].');
  } else if (errorThrown === 'parsererror') {
      return ('Requested JSON parse failed.');
  } else if (errorThrown === 'timeout') {
      return ('Time out error.');
  } else if (errorThrown === 'abort') {
      return ('Ajax request aborted.');
  } else {
      return ('Uncaught Error.\n' + jqXHR.responseText);
  }
}
```

Una volta ottenuta la risposta, e' comodo effettuare ricerche nei dati ricevuti, con

```javascript
let datiFiltrati = $("selettore", data);
```
