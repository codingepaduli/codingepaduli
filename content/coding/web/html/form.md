---
type: "html"
title: "HTML Lez. 10 - Moduli di invio dati"
description: "HTML Lez. 10 - Moduli di invio dati"
date: 2019-09-28
publishdate: 2019-09-28
lastmod: 2019-09-28
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: true
toc: false
summary: "HTML Lez. 10 - I moduli permettono all'utente di inserire i dati nella pagina web e di inviarli al server."

references:
    -   title: "W3C Markup Validation Service"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "http://validator.w3.org/nu/"
        description: "A W3C Markup Validation Service for your web pages"
---

# Moduli di invio dati

Le applicazioni web sono basate su un'architettura client-server, in cui il client invia le richieste al server, il server le elabora e fornisce una risposta al client. La comunicazione avviene sfruttando un protocollo ben definito, ovvero un insieme di regole che client e server seguono per poter comunicare.

## Il modello client server

Il server è generalmente un computer con una grande capacità di elaborazione, che gli permette di gestire allo stesso tempo le richieste di milioni di client. Esegue un programma, detto "server web", che può offrire contemporaneamente più servizi, ognuno su un indirizzo web differente, e che è sempre in attesa delle richieste dei client. Quando riceve la richiesta da un client, la elabora e genera una risposta che viene inviata al client.

I client, dispositivi con una capacità di elaborazione non elevata, inviano le richieste di elaborazione al server e attendono la risposta. La richiesta del client deve essere inviata su uno specifico indirizzo del server e può contenere dei dati da elaborare.

I moduli per l'invio dei dati permettono la creazione di campi di inserimento dati nella pagina web, dato che è l'utente a dover inserire i dati da inviare al server per l'elaborazione.

## Esempio di comunicazione client-server

Un tipico esempio di comunicazione client server, molto familiare agli utenti, è rappresentato dalle operazioni di registrazione, di login e di logout.

Un ipotetico server ``www.server.com`` potrebbe offrire i servizi di registrazione, di login e di logout rispettivamente agli indirizzi:

```plaintext
www.server.com/registrazione
www.server.com/login
www.server.com/logout
```

La richiesta del client per la registrazione di un nuovo utente deve quindi contenere i dati dell'utente, quali il nome, il cognome, la data di nascita e tutti gli altri dati necessari, e deve essere inviata all'indirizzo del server ``www.server.com/registrazione``.

Allo stesso modo, la richiesta di login deve contenere i dati di identificazione dell'utente, tipicamente il nome utente e la password, e deve essere inviata all'indirizzo del server ``www.server.com/login``.

La richiesta di logout tipicamente non prevede dati da inviare al server e deve essere inviata all'indirizzo del server ``www.server.com/logout``.

Ricevute le richieste del client, il server le elabora, controllando che i dati inviati siano validi, e conferma l'operazione richiesta, oppure la nega con un messaggio di errore.

## I form

L'etichetta ``form`` permette la creazione di un modulo di invio dati.

Gli attributi principali previsti per questa etichetta sono:

- ``action``: indica il servizio del server a cui inviare i dati;
- ``method``: indica quale metodo utilizzare per l'invio dei dati.

Un esempio di modulo (vuoto) è il seguente:

```html
<form action="www.server.com/login">

</form>
```

Il modulo realizzato nell'esempio è un modulo vuoto, dato che non sono presenti campi di input, e non permette all'utente nemmeno l'invio dei dati perché manca del pulsante di invio.

## Campi di input

I campi di input permettono all'utente di inserire i dati e di interagire con il modulo di invio.

Generalmente, sono preceduti da una descrizione del dato da inviare. La descrizione è realizzata attraverso l'etichetta ``label``.

I campi di input si inseriscono nella pagina web attraverso l'etichetta ``input``.

I principali attributi previsti sono i seguenti:

- ``value``: il valore iniziale del campo;
- ``placeholder``: il suggerimento da mostrare all'utente;
- ``name``: il nome del dato da inviare al server;
- ``type``: il tipo di dato richiesto;
- ``required``: indica all'utente che il campo è obbligatorio;
- ``readonly``: indica che il campo è di sola lettura;
- ``hidden``: indica che il campo non è visibile e sarà comunque inviato al server;
- ``disabled``: indica che il campo è disabilitato, quindi non sarà inviato al server.

Un campo di input nel quale l'utente deve inserire il proprio nome, preceduto dalla descrizione del campo, può essere creato attraverso l'esempio seguente:

```html
<label>nome utente:</label>
<input type="text" required name="nomeUtente" placeholder="Inserisci il nome qui">
```

Si può notare come l'attributo ``required`` non prevede un valore. La sola presenza di questo attributo implica l'obbligatorietà del campo. Se l'utente non inserisce questo dato non è possibile inviare la richiesta al server.
Allo stesso modo, la sola presenza degli attributi ``readonly`` e ``hidden`` implica, rispettivamente, che il campo sia di sola lettura oppure nascosto. La presenza dell'attributo ``disabled`` indica che il campo è disabilitato, non sarà inviato al server e non sarà possibile all'utente modificarlo o cliccarci sopra.

**I campi di input devono essere inclusi in un modulo di invio dati (un ``form``), altrimenti i valori inseriti dall'utente non saranno inviati al server**.

Una volta realizzati i campi per l'inserimento dei dati, è necessario realizzare un pulsante che permetta all'utente di inviare i dati al server. Per far ciò, è necessario impostare il valore ``submit`` nell'attributo ``type``, come nell'esempio seguente:

```html
<input type="submit" value="Invia richiesta">
```

Se si vuole offrire all'utente la possibilità di cancellare i dati inseriti nel modulo, riportandoli tutti ai valori iniziali, allora è necessario impostare il valore ``reset`` nell'attributo ``type``, come nell'esempio seguente:

```html
<input type="reset" value="Invia richiesta">
```

### Esempio di modulo di invio dati

Per realizzare un modulo di invio dati che permetta il login dell'utente, sono necessarie solo due informazioni da inserire: il nome utente e la password.

Di seguito il codice HTML che permette di inserire i dati per effettuare il login:

```html
<form action="www.server.com/login">

    <label>username</label>
    <input placeholder="inserisci il tuo username" name="username">

    <label>password</label>
    <input placeholder="inserisci la password" name="password">

    <input type="submit" value="Invia richiesta">
    <input type="reset" value="Cancella dati">
</form>
```

Il risultato è il seguente:

<form>
  <label>username</label>
  <input placeholder="inserisci il tuo username" name="username">

  <label>password</label>
  <input placeholder="inserisci la password" name="password">

  <input type="submit" value="Invia richiesta">
  <input type="reset" value="Cancella dati">
</form>

Si nota come i campi di tipo ``submit`` e ``reset`` siano visualizzati come pulsanti indicanti rispettivamente "Invia richiesta" e "Cancella dati". Il primo pulsante permette l'invio dei dati al server ed il secondo riporta tutti i campi ai valori iniziali.

### Input testuale

Il campo di input, se non diversamente specificato, permette l'inserimento di testo. E' comunque buona norma specificare il tipo testuale, indicando l'attributo ``type="text"``.

Un campo di testo può avere dei vincoli di lunghezza minima e/o massima di caratteri. Questi vincoli si specificano attraverso gli attributi:

- ``minlenght``: indica il numero minimo di caratteri (compreso);
- ``maxlenght``: indica il numero massimo di caratteri (compreso);

Un esempio di campo di testo con entrambi i vincoli descritti è il seguente:

```html
<input type="text" name="descrizione" minlenght="10" maxlenght="150">
```

### Input di una password

Una password è tipicamente nascosta allo sguardo di chi è davanti allo schermo. Per creare un campo di input che contenga una password (nascosta) è necessario indicare l'attributo ``type="password"``.

Un esempio di campo di inserimento password è il seguente:

```html
<input type="password" name="password">
```

### Input di una email

Per creare un campo di input che contenga una email è necessario indicare l'attributo ``type="email"``.

Un esempio di campo di inserimento per una email è il seguente:

```html
<input type="email" name="email">
```

### Input numerico

Per creare un campo di input che contenga un numero è necessario indicare l'attributo ``type="number"``.

Un campo di input numerico può avere dei vincoli legati al numero minimo o massimo da inserire. Questi vincoli si specificano attraverso gli attributi:

- ``min``: indica il numero minimo che si può inserire (compreso);
- ``max``: indica il numero massimo che si può inserire (compreso);

Inoltre, questo campo viene visualizzato con due pulsanti laterali che permettono di incrementare o decrementare il valore corrente di una certa quantità detta "step". L'attributo ``step`` indica appunto la quantità da incrementare o decrementare attraverso questi due pulsanti laterali.

- ``step``: quantità da incrementare o decrementare;

Un esempio di campo di inserimento numerico è il seguente:

```html
<input type="number" name="valore" min="20" max="50" step="0.2">
```

Il risultato è il seguente

<input type="number" name="valore" value="20" min="20" max="50" step="0.2">

### Input di una data

Per creare un campo di input che contenga una data (senza l'ora), è necessario indicare l'attributo ``type="date"``.

Un campo di input di una data può avere dei vincoli legati alla data minima o massima da inserire. Questi vincoli si specificano attraverso gli attributi:

- ``min``: indica la data minima che si può inserire (compreso), specificandola nel formato ``yyyy-mm-dd``;
- ``max``: indica la data massima che si può inserire (compreso), specificandola nel formato ``yyyy-mm-dd``;

Inoltre, questo campo viene visualizzato con due pulsanti laterali che permettono di incrementare o decrementare il valore corrente di una certa quantità detta "step". L'attributo ``step`` indica appunto la quantità da incrementare o decrementare attraverso questi due pulsanti laterali.

- ``step``: quantità da incrementare o decrementare;

Un esempio di campo di inserimento numerico è il seguente:

```html
<input type="number" name="valore" min="2020-03-05" max="2020-06-05" step="7">
```

Il risultato è il seguente:

<input type="number" name="valore" min="2020-03-05" max="2020-06-05" step="7">


<!--
Ad esempio, la ricerca su google avviene su URL https://www.google.com/search?q=valore

Di questo URL si notano:

- ``https://``: il protocollo utilizzato per l'invio dei dati;
- ``www.google.com``: il nome del server
- ``:80``: la porta sulla quale avviene la comunicazione. In questo caso, dato che si tratta della porta predefinita, è omessa;
- ``search``: il servizio richiesto al server;
- ``?``: il carattere di separazione che indica i successivi dati inviati;
- ``q``: il nome del primo dato inviato;
- ``valore``: il dato inserito dall'utente;

I dati da inviare possono essere di diversa natura, per cui sono previsti
-->
