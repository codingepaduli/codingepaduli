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

Le applicazioni web sono basate su un'architettura client-server.

Il server riceve le richieste di milioni di client, ogni richiesta viene elaborata e viene generata una risposta per ogni singolo client.

I client inviano le richieste di elaborazione al server e attendono la risposta. Prima di inviare la richiesta, è necessario permettere all'utente di inserire i dati da inviare al server per l'elaborazione.

I moduli per l'invio dei dati svolgono proprio questo ruolo: permettono la creazione di campi di inserimento dati nella pagina web.

Una volta presi in input i dati dall'utente, è necessario inviarli al server. Ma il server può svolgere migliaia di compiti, quindi è necessario indicare quale compito (e quindi quale elaborazione) svolgere. Ad esempio, il server permette il login, il logout, la visualizzazione del proprio profilo, la visualizzazione degli ordini effettuati, la ricerca di un prodotto, e così via..

Ogni compito, detto più genericamente "servizio", può essere individuato attraverso un URL, ovvero un percorso che indica il servizio richiesto.

Ad esempio, i servizi di login e di logout di un server potrebbero trovarsi rispettivamente agli indirizzi:

```plaintext
www.server.com/login
www.server.com/logout
```

Ogni servizio prevede uno specifico insieme di dati che il client dovrà inviare. Ad esempio, il servizio di login potrebbe prevedere che l'utente invii il proprio username e la propria password, mentre il servizio di logout potrebbe prevedere solo lo username o non prevedere alcun dato.

## I form

L'etichetta ``form`` permette la creazione di un modulo di invio dati.

Gli attributi previsti per questa etichetta sono:

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

I campi di input si inseriscono nella pagina web attraverso l'etichetta ``input``. Gli attributi previsti sono i seguenti:

- ``value``: il valore iniziale;
- ``placeholder``: il suggerimento da mostrare all'utente;
- ``name``: il nome del dato da inviare al server;
- ``type``: il tipo di dato richiesto.

In particolare, per realizzare un pulsante che permetta all'utente di inviare i dati al server è necessario impostare il valore ``submit`` nell'attributo ``type``.
Se si vuole offrire all'utente la possibilità di cancellare i dati inseriti nel modulo, riportandoli tutti ai valori iniziali, allora è necessario impostare il valore ``reset`` nell'attributo ``type``.

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

### Input obbligatorio

Alcuni dati di un modulo possono essere obbligatori per l'utente. Senza questi dati non deve essere possibile inviare la richiesta al server.

I dati obbligatori vanno contrassegnati con l'attributo ``required``, che è un attributo particolare, perché fa eccezione, dato che non prevede nessun valore. Se questo attributo è presente, il campo è obbligatorio.

Un esempio di campo obbligatorio è il seguente:

```html
<input required name="email">
```

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

Una password è tipicamente nascosta allo sguardo di chi è davanti allo schermo. Per creare un campo di input che contenga una password (nascosta) è necessario indicando l'attributo ``type="password"``.

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
