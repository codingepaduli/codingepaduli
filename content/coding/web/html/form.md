---
type: "html"
title: "HTML Lez. 09 - Moduli di invio dati e trasmissione dati al server"
description: "HTML - La richiesta di risorse al server può essere corredata di ulteriori dati da trasmettere, che possono essere inseriti dall'utente negli appositi moduli di invio dati presenti nella pagina web o che possono essere preimpostati staticamente in un collegamento."
date: 2019-09-28
publishdate: 2019-09-28
lastmod: 2019-09-28
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML - La richiesta di risorse al server può essere corredata di ulteriori dati da trasmettere, che possono essere inseriti dall'utente negli appositi moduli di invio dati presenti nella pagina web o che possono essere preimpostati staticamente in un collegamento."
weight: 9310

references:
    -   title: "W3C Markup Validation Service"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "http://validator.w3.org/nu/"
        description: "A W3C Markup Validation Service for your web pages"
---

# Moduli di invio dati e trasmissione dati al server

Il server web espone le proprie risorse ed i propri servizi su un indirizzo web, detto URL, che identifica univocamente una risorsa.

I client possono richiedere le risorse specificando nella richiesta l'indirizzo web (URL) della risorsa.

Oltre ad un URL, nella richiesta al server il client può inviare i dati da elaborare, indicando per ogni dato il nome ed il valore.

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

Ci sono solo due elementi HTML che, inseriti in una pagina web, consentono di richiedere una risorsa ad un server specificando eventuali dati aggiuntivi: i collegamenti ed i moduli di invio dati.

## Collegamenti per richieste al server

Un collegamento è un testo sul quale l'utente può cliccare per ricevere dal server la pagina web contenente i dati richiesti.

Un esempio di collegamento è il seguente: <!-- markdownlint-disable-next-line MD033 -->
<a href="www.google.com/search?q=HTML">ricerca il termine HTML su Google</a>

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

A differenza dei collegamenti, che non sono modificabili dall'utente, i moduli di invio dati hanno il vantaggio di permettere all'utente di inserire i dati da inviare al server.

Un esempio di modulo di invio dati è il seguente:

![Esempio di modulo di invio dati](/static/coding/web/html/form02.png "Esempio di modulo di invio dati")

Come si può notare dall'esempio, il modulo è composto dai campi da inviare e dai pulsanti di azione.

Ogni campo da inviare al server deve avere un nome, un valore ed una descrizione allegata. Il valore sarà inserito dall'utente ed, associato al nome del campo, sarà inviato al server. La descrizione è semplicemente una indicazione per l'utente.

I pulsanti permettono all'utente di inviare i dati al server, una volta compilato il modulo.

L'etichetta ``form`` permette la creazione di un modulo di invio dati. Gli attributi principali previsti per questa etichetta sono:

- ``action``: indica il servizio del server a cui inviare i dati;
- ``method``: indica quale metodo utilizzare per l'invio dei dati.

Un esempio di modulo (vuoto) è il seguente:

```html
<form action="www.server.com/login">

</form>
```

Il modulo realizzato nell'esempio è un modulo vuoto, dato che non sono presenti campi di input, e non permette all'utente nemmeno l'invio dei dati perché manca del pulsante di invio.

### Pulsanti

I pulsanti sono realizzati utilizzando l'etichetta ``button`` che contiene il testo da mostrare all'utente.

Un esempio di codice HTML che genera un pulsante è il seguente:

```html
<button>Cliccami</button>
```

Gli attributi principali previsti per questa etichetta sono:

- ``type``: il tipo di pulsante, che può essere

  - ``submit`` cioè di invio dati al server;
  - ``reset`` cioè cancella i dati del form e non invia dati al server;
  - ``button`` cioè non effettua azioni.

- ``formaction``: si usa solo quando è presente l'attributo ``type=submit``, ed indica a quale servizio inviare i dati;

Ad esempio, se vogliamo realizzare un modulo di invio dati che invii i dati ad uno dei motori di ricerca conosciuti, allora possiamo creare più pulsanti, ognuno con l'azione di invi dati verso uno specifico motore di ricerca, come nel seguente esempio:

```html
<form>
    <button type="submit" formaction="www.google.com/search?q=HTML">Invia a Google</button>
    <button type="submit" formaction="www.duckduckgo.com/search?q=HTML">Invia a DuckDuckGo</button>
    <button type="submit" formaction="www.bing.com/search?q=HTML">Invia a Bing</button>
</form>
```

Il risultato è il seguente:

![Pulsanti del form](/static/coding/web/html/form-buttons.png "Pulsanti del form")

### Descrizione dei campi

Ogni campo in cui l'utente inserisce i dati deve essere corredato da una descrizione, realizzata attraverso l'etichetta ``label``.

```html
<label>Inserisci il nome utente:</label>
```

Per rafforzare il legame tra la descrizione ed il campo di input, è buona regola la creazione di un identificativo per il campo di input e l'inserimento di questo identificativo nell'attributo ``for`` dell'etichetta citata.

Ad esempio, supponendo che l'identificativo del campo sia ``nome``, allora l'etichetta sarà la seguente:

```html
<label for="nome">Inserisci il nome utente:</label>
```

### Campi di input

I campi di input permettono all'utente di inserire i dati e di interagire con il modulo di invio.

Tutti i campi di input devono essere inclusi in un modulo di invio dati, e quindi vanno racchiusi all'interno delle etichette di creazione del modulo (un ``form``), in modo da indicare che appartengono a quello specifico modulo.

**Se un campo non viene inserito in un modulo, i valori inseriti dall'utente non saranno inviati al server.**

Per poter creare un campo di input, si utilizza l'etichetta ``input``, i cui attributi principali sono i seguenti:

- ``value``: il valore iniziale del campo;
- ``placeholder``: il suggerimento da mostrare all'utente;
- ``name``: il nome del dato da inviare al server;
- ``type``: il tipo di dato richiesto;
- ``inputmode``: indica la tastiera virtuale da utilizzare sui dispositivi mobile per l'inserimento dei valori;
- ``autocomplete``: indica in che modo aiutare l'utente nell'inserimento del valore.
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

Allo stesso modo, la sola presenza degli attributi ``readonly`` e ``hidden`` implica, rispettivamente, che il campo sia di sola lettura oppure nascosto, i dati saranno comunque inviati al server.

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

Il risultato è il seguente:

![Immagine del form](/static/coding/web/html/form01.png "Immagine del form")

Come si può notare nell'esempio, l'identificativo utente è nascosto, per cui non è presente la descrizione collegata. Il gruppo societario è disabilitato, per cui non sarà inviato al server. La società è in sola lettura, perciò non sarà modificabile dall'utente. Il nome utente è obbligatorio, per cui l'utente deve inserirlo per poter inviare il modulo al server.

Una volta realizzati i campi per l'inserimento dei dati, è necessario realizzare un pulsante che permetta all'utente di inviare i dati al server. Per far ciò, è necessario impostare il valore ``submit`` nell'attributo ``type``, come nell'esempio seguente:

```html
<button type="submit">Invia richiesta</button>
```

Se si vuole offrire all'utente la possibilità di cancellare tutti i dati inseriti nel modulo, riportandoli tutti ai valori iniziali, allora è necessario creare un campo di input di ripristino, impostando il valore ``reset`` nell'attributo ``type``, come nell'esempio seguente:

```html
<button type="reset">Ripristina valori iniziali</button>
```

### Esempio completo di modulo di invio dati

Per realizzare un modulo di invio dati che permetta il login dell'utente, sono necessarie solo due informazioni da inserire: il nome utente e la password.

Di seguito il codice HTML che permette di inserire i dati per effettuare il login:

```html
<form>
    <label>username</label>
    <input placeholder="inserisci il tuo username" name="username">

    <label>password</label>
    <input placeholder="inserisci la password" name="password">

    <button type="submit" formaction="www.server.com/login" >Invia richiesta</button>
    <button type="reset">Ripristina valori iniziali</button>
</form>
```

Il risultato è il seguente:

![Immagine del form](/static/coding/web/html/form02.png "Immagine del secondo form")

#### Input testuale

Il campo di input, se non diversamente specificato, permette l'inserimento di testo. E' comunque buona norma specificare il tipo testuale, indicando l'attributo ``type="text"``.

Un campo di testo può avere dei vincoli di lunghezza minima e/o massima di caratteri. Questi vincoli si specificano attraverso gli attributi:

- ``minlenght``: indica il numero minimo di caratteri (compreso);
- ``maxlenght``: indica il numero massimo di caratteri (compreso);

Si consiglia inoltre di fornire assistenza all'utente nell'inserimento del campo utilizzando l'attributo:

- ``autocomplete="on"`` per suggerimenti su testo libero;
- ``autocomplete="name"`` per suggerirgli nome e cognome preceduti dall'eventuale prefisso (Mr., Mrs., Miss, Sig. Sig.ra, Dr, ..);
- ``autocomplete="given-name"`` per suggerirgli il proprio nome;
- ``autocomplete="family-name"`` per suggerirgli il proprio cognome;
- ``autocomplete="username"`` per suggerirgli il nome utente;
- ``autocomplete="street-address"`` per suggerirgli l'indirizzo;
- ``autocomplete="country-name"`` per suggerirgli lo stato ("Italia");
- ``autocomplete="cc-name"`` per suggerirgli il nome dell'intestatario del conto corrente.

Un esempio di campo di testo con i vincoli descritti è il seguente:

```html
<input type="text" name="descrizione" minlenght="10" maxlenght="150" autocomplete="on">
```

Il risultato è il seguente:

![Input di testo](/static/coding/web/html/inputTesto.png "Input di testo")

#### Input di una password

Una password è tipicamente nascosta allo sguardo di chi è davanti allo schermo. Per creare un campo di input che contenga una password (nascosta) è necessario indicare l'attributo ``type="password"``.

Si consiglia inoltre di fornire assistenza all'utente nell'inserimento del campo utilizzando l'attributo:

- ``autocomplete="current-password"`` per suggerirgli la password corrente;
- ``autocomplete="new-password"`` per suggerirgli una nuova password;
- ``autocomplete="one-time-code"`` per suggerirgli un codice OTP (One Time Password).

Un esempio di campo di inserimento password è il seguente:

```html
<input type="password" name="password" autocomplete="current-password">
```

Il risultato è il seguente:

![Input di tipo password](/static/coding/web/html/inputPassword.png "Input di tipo password")

#### Input di una email

Per creare un campo di input che contenga una email è necessario indicare l'attributo ``type="email"``. Si consiglia inoltre di utilizzare l'attributo ``inputmode="email"`` per indicare la scelta della tastiera virtuale appropriata per l'inserimento dei dati sui dispositivi mobile e l'attributo ``autocomplete="email"`` per suggerimenti all'utente nell'inserimento della email.

Un esempio di campo di inserimento per una email è il seguente:

```html
<input type="email" name="email" inputmode="email" autocomplete="email">
```

#### Input di un indirizzo web

Per creare un campo di input che contenga un indirizzo web è necessario indicare l'attributo ``type="url"``. Si consiglia inoltre di utilizzare l'attributo ``inputmode="url"`` per indicare la scelta della tastiera virtuale appropriata (con i caratteri "://" e ".") per l'inserimento dei dati sui dispositivi mobile e per suggerimenti all'utente nell'inserimento dell'indirizzo web utilizzando l'attributo ``autocomplete="url"``.

Un esempio di campo di inserimento per un indirizzo web è il seguente:

```html
<input type="url" name="url" inputmode="url" autocomplete="url">
```

#### Input di un numero di telefono

Per creare un campo di input che contenga un numero di telefono è necessario indicare l'attributo ``type="tel"``. Si consiglia inoltre di utilizzare l'attributo ``inputmode="tel"`` per indicare la scelta del tastierino numerico virtuale appropriato (con i caratteri "#", "*" e ".") per l'inserimento dei dati sui dispositivi mobile e l'attributo ``autocomplete="tel"`` per suggerimenti all'utente nell'inserimento del numero di telefono.

Un esempio di campo di inserimento per un numero di telefono è il seguente:

```html
<input type="tel" name="telephone" inputmode="tel" autocomplete="tel">
```

#### Input numerico

Per creare un campo di input che contenga un numero è necessario indicare l'attributo ``type="number"``.  Si consiglia inoltre di utilizzare l'attributo ``inputmode="numeric"`` o ``inputmode="decimal"`` per indicare la scelta del tastierino numerico virtuale appropriato (con o senza il carattere di separazione dei decimali) per l'inserimento dei dati sui dispositivi mobile.

Un campo di input numerico può avere dei vincoli legati al numero minimo o massimo da inserire. Questi vincoli si specificano attraverso gli attributi:

- ``min``: indica il numero minimo che si può inserire (compreso);
- ``max``: indica il numero massimo che si può inserire (compreso);

Inoltre, questo campo viene visualizzato con due pulsanti laterali che permettono di incrementare o decrementare il valore corrente di una certa quantità detta "step". L'attributo ``step`` indica appunto la quantità da incrementare o decrementare attraverso questi due pulsanti laterali.

- ``step``: quantità da incrementare o decrementare;

Si consiglia inoltre di fornire assistenza all'utente nell'inserimento del campo utilizzando l'attributo:

- ``autocomplete="postal-code"`` per suggerirgli il codice postale.
- ``autocomplete="cc-exp"`` per suggerirgli la scadenza della carta del conto corrente.

Un esempio di campo di inserimento numerico è il seguente:

```html
<input type="number" name="valore" min="20" max="50" step="0.2" inputmode="decimal">
```

Il risultato è il seguente:

![Input di tipo numerico](/static/coding/web/html/inputNumerico.png "Input di tipo numerico")

#### Input di una data

Per creare un campo di input che contenga una data (senza l'ora), è necessario indicare l'attributo ``type="date"``. In questo modo, sui dispositivi mobile si permette la scelta della data attraverso il calendario.

Un campo di input di una data può avere dei vincoli legati alla data minima o massima da inserire. Questi vincoli si specificano attraverso gli attributi:

- ``min``: indica la data minima che si può inserire (compreso), specificandola nel formato ``yyyy-mm-dd``;
- ``max``: indica la data massima che si può inserire (compreso), specificandola nel formato ``yyyy-mm-dd``;

Inoltre, questo campo viene visualizzato con due pulsanti laterali che permettono di incrementare o decrementare il valore corrente di una certa quantità detta "step". L'attributo ``step`` indica appunto la quantità da incrementare o decrementare attraverso questi due pulsanti laterali.

- ``step``: quantità da incrementare o decrementare;

<!-- TODO verifica se funziona:

Si consiglia inoltre di fornire assistenza all'utente nell'inserimento del campo utilizzando l'attributo:

- ``autocomplete="bday"`` per suggerirgli la data di nascita.
- ``autocomplete="cc-exp"`` per suggerirgli la data di scadenza del conto corrente.
-->

Un esempio di campo di inserimento numerico è il seguente:

```html
<input type="date" name="valore" min="2020-03-05" max="2020-06-05" step="7">
```

Il risultato è il seguente:

![Input di tipo data](/static/coding/web/html/inputData.png "Input di tipo data")

#### Input di un orario

Per creare un campo di input che contenga un orario, è necessario indicare l'attributo ``type="time"``. In questo modo, sui dispositivi mobile si permette la scelta dell'orario attraverso l'orologio.

Un campo di input di un orario può avere dei vincoli legati all'orario minimo o massimo da inserire. Questi vincoli si specificano attraverso gli attributi:

- ``step``: indica che in input è richiesto l'inserimento anche dei secondi, quindi mostra il campo di input nel formato ``hh:mm:ss``;
- ``min``: indica l'orario minimo che si può inserire (compreso), specificandolo nel formato ``hh:mm`` oppure ``hh:mm:ss``;
- ``max``: indica la data massima che si può inserire (compreso), specificandolo nel formato ``hh:mm`` oppure ``hh:mm:ss``.

L'attributo ``step`` indica principalmente che in input è richiesto l'inserimento anche dei secondi. Inoltre, indica il numero di secondi da incrementare o decrementare per i browser che visualizzano il campo di input con i due pulsanti laterali, anche se la maggior parte dei browser mostra un orologio dal quale selezionare ore, minuti e secondi.

Un esempio di campo di inserimento di un orario è il seguente:

```html
<input type="time" name="valore" min="20:03:05" max="20:36:35" step="1">
```

Il risultato è il seguente:

![Input di tipo orario](/static/coding/web/html/inputOrario.png "Input di tipo orario")

#### Input di selezione multipla "checkbox"

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
<input type="checkbox" id="coding" name="interest" value="programmazione" checked>
<label for="coding">Coding</label>
<input type="checkbox" id="soccer" name="interest" value="calcio">
<label for="soccer">Calcio</label>
```

Al momento dell'invio dei dati, il browser invierà solo le voci selezionate, nel formato ``nome1=voce1`` **&** ``nome2=voce2``. Nel caso in cui si utilizza sempre lo stesso nome (ovvero l'attributo ``name`` delle varie voci ha sempre lo stesso valore), il formato sarà ``interest=programmazione``**&**``interest=soccer``.

Il risultato è il seguente:

![Input di tipo checkbox](/static/coding/web/html/inputCheckbox.png "Input di tipo checkbox")

#### Input di selezione singola "radio"

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

Il risultato è il seguente:

![Input di tipo radio](/static/coding/web/html/inputRadio.png "Input di tipo radio")

### Input testuale con lista di suggerimenti

Un campo di testo può prevedere una lista di suggerimenti per l'utente.

Quando un utente inizia a scrivere nel campo di testo, viene mostrato un suggerimento contenuto nella lista se i primi caratteri corrispondono, se invece i caratteri non corrispondono l'utente continua a scrivere liberamente senza nessun suggerimento.

La lista di suggerimenti non è limitata ai suggerimenti testuali ma può prevedere anche suggerimenti numerici, temporali (data e ora) o codici di colori, per cui può essere associata anche ai campi di input numerici, di input di una data, input di un'ora e così via.

La lista di suggerimenti è un elemento HTML separato rispetto al campo di input. L'etichetta utilizzata per creare una lista di suggerimenti è ``datalist`` e deve avere l'attributo ``id`` necessario ad identificarla.

Il campo di input e poi legato alla lista di suggerimenti attraverso l'attributo ``list``, che deve avere lo stesso valore inserito nell'attributo ``id`` della lista.

Ad esempio, nell'esempio seguente si realizza una lista di suggerimenti per la scelta del gusto di un gelato. La lista di suggerimenti ha l'identificativo ``gelati-suggeriti``. Il campo di input è legato a questi suggerimenti attraverso l'attributo ``list`` che ha per valore ``gelati-suggeriti`` (l'identificativo della lista di suggerimenti).

```html
<label for="scelta-gelati">Scegli un gusto:</label>
<input list="gelati-suggeriti" id="scelta-gelati" name="gusto-scelto">

<datalist id="gelati-suggeriti">
    <option value="Cioccolato">
    <option value="Cocco">
    <option value="Menta">
    <option value="Fragola">
    <option value="Vaniglia">
</datalist>
```

Il risultato è il seguente:

![Input con lista di suggerimenti](/static/coding/web/html/inputWithDatalist.png "Input con lista di suggerimenti")

### Campi di selezione singola da menù a tendina

I campi di selezione sono campi nei quali l'utente puó scegliere un valore tra quelli disponibili nel menù a tendina.

Dato che anche i campi di selezione sono campi di input, devono essere inseriti all'interno di un form per poter inviare un valore al server,

Per poter creare un campo di selezione, si utilizza l'etichetta ``select``, che condivide molti attributi di un campo di input:

Gli attributi ``name``, ``required``, ``readonly``, ``hidden`` e ``disabled`` ricoprono le stesse funzionalità  viste per i campi di input.

Le voci da mostrare nel menù a tendina devono essere inserite nell'etichetta ``option``, che prevede l'attributo ``value``, il cui valore viene inviato al server.

Un esempio di campo di selezione è il seguente:

```html
<label for="auto">auto</label>
<select name="car" id="auto">
      <option value="volvo">Volvo</option>
      <option value="mercedes">Mercedes</option>
      <option value="audi">Audi</option>
</select>
```

Il risultato è il seguente:

![Input di tipo selezione singola](/static/coding/web/html/inputSelect.png "Input di tipo selezione singola")

Le varie opzioni possono essere raggruppate per categoria, dimensione o altro criterio, inserendo le varie voci nell'etichetta ``optgroup``:

```html
<label for="auto">auto</label>
<select name="car" id="auto">
    <optgroup label="auto svedesi">
      <option value="volvo">
      Volvo</option>
      <option value="saab">
      Saab</option>
    </optgroup>
    <optgroup label="auto tedesche">
      <option value="mercedes">
      Mercedes</option>
      <option value="audi">
      Audi</option>
    </optgroup>
</select>
```

Il risultato è il seguente:

![Input di tipo selezione singola](/static/coding/web/html/inputSelectGroup.png "Input di tipo selezione singola")

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
