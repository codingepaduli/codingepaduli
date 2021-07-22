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

Le applicazioni web sono basate su un'architettura client-server, in cui il client invia le richieste al server, il server le elabora e fornisce una risposta al client. La comunicazione avviene sfruttando un protocollo ben definito, ovvero un insieme di regole che client e server seguono per poter comunicare. Quando si naviga su web, il protocollo utilizzato è HTTPS, che permette lo scambio di ipertesti tra client e server in maniera sicura.

## Comunicazione client server su web

Il server è generalmente un computer con una grande capacità di elaborazione, che gli permette di gestire allo stesso tempo le richieste di milioni di client. Esegue un programma, detto "server web", che può offrire contemporaneamente più servizi, ognuno su un indirizzo web differente, e che è sempre in attesa delle richieste dei client. Quando riceve la richiesta da un client, la elabora e genera una risposta che viene inviata al client.

I client, dispositivi con una capacità di elaborazione non elevata, inviano le richieste di elaborazione al server e attendono la risposta. La richiesta del client deve essere inviata su uno specifico indirizzo del server e può contenere dei dati da elaborare.

I moduli per l'invio dei dati permettono sia l'invio al server dei dai compilati, sia la creazione di campi di inserimento dati nella pagina web, campi che poi saranno compilati dall'utente. Una volta sottomessi i dati al server, questi saranno elavorati ed il client riceverà una risposta dal server.

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

## Descrizione del campo di input

Ogni campo in cui l'utente inserisce i dati deve essere corredato da una descrizione, realizzata attraverso l'etichetta ``label``.

```html
<label>Inserisci il nome utente:</label>
```

Per rafforzare il legame tra la descrizione ed il campo di input, è buona regola la creazione di un identificativo per il campo di input e l'inserimento di questo identificativo nell'attributo ``for`` dell'etichetta citata.

Ad esempio, supponendo che l'identificativo del campo sia ``nome``, allora l'etichetta sarà la seguente:

```html
<label for="nome">Inserisci il nome utente:</label>
```

## Campi di input

I campi di input permettono all'utente di inserire i dati e di interagire con il modulo di invio.

Tutti i campi di input devono essere inclusi in un modulo di invio dati, e quindi vanno racchiusi all'interno delle etichette di creazione del modulo (un ``form``), in modo da indicare che appartengono a quello specifico modulo.

**Se un campo non viene inserito in un modulo, i valori inseriti dall'utente non saranno inviati al server.**

Per poter creare un campo di input, si utilizza l'etichetta ``input``, i cui attributi principali sono i seguenti:

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
<label for="nome">nome utente:</label>
<input id="nome" name="nomeUtente" placeholder="Inserisci il nome qui">
```

Alcuni attributi descrivono le caratteristiche del campo e non prevedono un valore. Tra questi, la presenza dell'attributo ``required`` implica l'obbligatorietà del campo. Se l'utente non inserisce questo dato, non è possibile inviare la richiesta al server attraverso la pagina web.

Allo stesso modo, la sola presenza degli attributi ``readonly`` e ``hidden`` implica, rispettivamente, che il campo sia di sola lettura oppure nascosto, ma saranno inviati al server.

La presenza dell'attributo ``disabled`` indica che il campo è disabilitato, non sarà inviato al server e non sarà possibile all'utente modificarlo o cliccarci sopra.

Un esempio dei vari attributi è il seguente:

```html
<label for="nome">nome utente:</label>
<input id="nome" name="nomeUtente" required placeholder="Inserisci il nome qui (obbligatorio)">

<input name="identificativo" hidden>

<label for="company">società:</label>
<input id="company" name="company" readonly>

<label for="group">gruppo societario:</label>
<input id="group" name="gruppo" disabled>
```

Come si può notare nell'esempio, l'identificativo utente è nascosto, per cui non è presente la descrizione collegata. Il gruppo societario è disabilitato, per cui non sarà inviato al server. La società è in sola lettura, perciò non sarà modificabile dall'utente. Il nome utente è obbligatorio, per cui l'utente deve inserirlo per poter inviare il modulo al server.

Una volta realizzati i campi per l'inserimento dei dati, è necessario realizzare un pulsante che permetta all'utente di inviare i dati al server. Per far ciò, è necessario impostare il valore ``submit`` nell'attributo ``type``, come nell'esempio seguente:

```html
<input type="submit" value="Invia richiesta">
```

Se si vuole offrire all'utente la possibilità di cancellare tutti i dati inseriti nel modulo, riportandoli tutti ai valori iniziali, allora è necessario creare un campo di input di ripristino, impostando il valore ``reset`` nell'attributo ``type``, come nell'esempio seguente:

```html
<input type="reset" value="Ripristina valori iniziali">
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

Per creare un campo di input che contenga una email è necessario indicare l'attributo ``type="email"``. In questo modo, sui dispositivi mobile si permette la scelta della tastiera appropriata.

Un esempio di campo di inserimento per una email è il seguente:

```html
<input type="email" name="email">
```

### Input di un numero di telefono

Per creare un campo di input che contenga un numero di telefono è necessario indicare l'attributo ``type="tel"``. In questo modo, sui dispositivi mobile si permette la scelta del tastierino numerico per la composizione del numero.

Un esempio di campo di inserimento per un numero di telefono è il seguente:

```html
<input type="tel" name="telephone">
```

### Input numerico

Per creare un campo di input che contenga un numero è necessario indicare l'attributo ``type="number"``. In questo modo, sui dispositivi mobile si permette la scelta del tastierino numerico per la composizione del numero.

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

Per creare un campo di input che contenga una data (senza l'ora), è necessario indicare l'attributo ``type="date"``. In questo modo, sui dispositivi mobile si permette la scelta della data attraverso il calendario.

Un campo di input di una data può avere dei vincoli legati alla data minima o massima da inserire. Questi vincoli si specificano attraverso gli attributi:

- ``min``: indica la data minima che si può inserire (compreso), specificandola nel formato ``yyyy-mm-dd``;
- ``max``: indica la data massima che si può inserire (compreso), specificandola nel formato ``yyyy-mm-dd``;

Inoltre, questo campo viene visualizzato con due pulsanti laterali che permettono di incrementare o decrementare il valore corrente di una certa quantità detta "step". L'attributo ``step`` indica appunto la quantità da incrementare o decrementare attraverso questi due pulsanti laterali.

- ``step``: quantità da incrementare o decrementare;

Un esempio di campo di inserimento numerico è il seguente:

```html
<input type="date" name="valore" min="2020-03-05" max="2020-06-05" step="7">
```

Il risultato è il seguente:

<input type="date" name="valore" min="2020-03-05" max="2020-06-05" step="7">


### Input di un orario

Per creare un campo di input che contenga un orario, è necessario indicare l'attributo ``type="time"``. In questo modo, sui dispositivi mobile si permette la scelta dell'orario attraverso l'orologio.

Un campo di input di un orario può avere dei vincoli legati all'orario minimo o massimo da inserire. Questi vincoli si specificano attraverso gli attributi:

- ``step``: indica che in input è richiesto l'inserimento anche dei secondi, quindi mostra il campo di input nel formato ``hh:mm:ss``;
- ``min``: indica l'orario minimo che si può inserire (compreso), specificandolo nel formato ``hh:mm`` oppure ``hh:mm:ss``;
- ``max``: indica la data massima che si può inserire (compreso), specificandolo nel formato ``hh:mm`` oppure ``hh:mm:ss``;

L'attributo ``step`` indica principalmente che in input è richiesto l'inserimento anche dei secondi. Inoltre, indica il numero di secondi da incrementare o decrementare per i browser che visualizzano il campo di input con i due pulsanti laterali, anche se la maggior parte dei browser mostra un orologio dal quale selezionare ore, minuti e secondi.

Un esempio di campo di inserimento di un orario è il seguente:

```html
<input type="time" name="valore" min="20:03:05" max="20:36:35" step="1">
```

Il risultato è il seguente:

<input type="time" name="valore" min="20:03:05" max="20:36:35" step="1">

### Input di selezione multipla "chechbox"

Per creare un campo di selezione multipla, contenente più voci selezionabili, è necessario creare più campi di input, tutti con l'attributo ``type="checkbox"``.

L'attributo ``checked`` indica che la voce è pre-selezionata. L'attributo ``value`` indica il valore da trasmettere se il campo è selezionato.

Un esempio di campo di voce da selezionare è la seguente:

```html
<input type="checkbox" id="coding" name="interest" value="coding">
<label for="coding">Coding</label>
```

Come si può notare, la descrizione è inserita successivamente alla voce selezionabile ed è legata a quest'ultima tramite l'attributo ``for`` che ha come valore l'identificativo della relativa voce;

Si possono creare più voci selezionabili, con i nomi dei campi di input differenti, oppure, solo per i campi di selezione multipla, si può scegliere che tutti i campi di input abbiano lo stesso nome.

```html
<input type="checkbox" id="coding" name="interest" value="programmazione">
<label for="coding">Coding</label>
<input type="checkbox" id="soccer" name="interest" value="calcio">
<label for="soccer">Calcio</label>
```

Al momento dell'invio dei dati, il browser invierà solo le voci selezionate, nel formato ``nome1=voce1`` **&** ``nome2=voce2``. Nel caso in cui si utilizza sempre lo stesso nome (ovvero l'attributo ``name`` delle varie voci ha sempre lo stesso valore), il formato sarà ``interest=programmazione``**&**``interest=soccer``.

### Input di selezione singola "radio"

Per creare una selezione singola, è necessario creare più campi di input, tutti con lo stesso nome, utilizzando l'attributo ``type="radio"``.

Avendo tutti lo stesso nome ed essendo tutti del tipo "radio", solo una voce sarà selezionabile.

L'attributo ``checked`` indica che la voce è pre-selezionata. L'attributo ``value`` indica il valore da trasmettere per la voce scelta.

```html
<input type="radio" id="voce1" name="contatto" value="email">
<label for="voce1">email</label>

<input type="radio" id="voce2" name="contatto" value="telefono">
<label for="voce2">telefono</label>

<input type="radio" id="voce3" name="contatto" value="pec">
<label for="pec">PEC</label>
```

Come si può notare, la descrizione è inserita successivamente alla voce selezionabile ed è legata a quest'ultima tramite l'attributo ``for`` che ha come valore l'identificativo della relativa voce;


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
