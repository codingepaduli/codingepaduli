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

## Esempio di trasmissione dati

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

Un esempio di modulo di invio dati è il seguente:

![Esempio di modulo di invio dati](/static/coding/web/html/form02.png "Esempio di modulo di invio dati")

Come si può notare dall'esempio, il modulo è composto dai campi da inviare e dai pulsanti di azione.

Ogni campo da inviare al server deve avere un nome, un valore ed una descrizione allegata. Il valore sarà inserito dall'utente ed, associato al nome del campo, sarà inviato al server. La descrizione è semplicemente una indicazione per l'utente.

I pulsanti permettono all'utente di inviare i dati al server, una volta compilato il modulo.

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

I dati inviati al server saranno i seguenti:

```plaintext
www.server.com/login?nome=Mario&password=123456
```

Il modulo realizzato nell'esempio è un modulo vuoto, dato che non sono presenti campi di input, e non permette all'utente l'invio dei dati perché manca del pulsante di invio.

### Pulsanti

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

Un esempio dei vari campi di input con descrizione ed attributi è il seguente:

```html
<label for="nome">nome utente:</label>
<input id="nome" name="nomeUtente" required placeholder="Inserisci il nome qui (obbligatorio)">

<input name="identificativo" hidden >

<label for="company">società:</label>
<input id="company" name="company" readonly>

<label for="group">gruppo societario:</label>
<input id="group" name="gruppo" disabled>
```

Il risultato è il seguente:

![Immagine del form](/static/coding/web/html/form01.png "Immagine del form")

Come si può notare nell'esempio, l'identificativo utente è nascosto, per cui non è presente la descrizione collegata. Il gruppo societario è disabilitato, per cui non sarà inviato al server. La società è in sola lettura, perciò non sarà modificabile dall'utente. Il nome utente è obbligatorio, per cui l'utente deve inserirlo per poter inviare il modulo al server.

### Esempio completo di modulo di invio dati

Realizziamo un modulo di invio dati che permetta il login dell'utente.

In questo modulo sono necessarie due informazioni che l'utente dovrà inserire: il nome utente e la password. Si devono quindi prevedere:

- due descrizioni dei campi di input;
- due campi di input;
- un pulsante che permetta all'utente di inviare i dati;
- un pulsante che permetta all'utente di cancellare tutti i dati inseriti nel modulo, ripristinando i valori iniziali.

Realizziamo quindi un modulo con le due descrizioni:

```html
<form>
    <label>username</label>

    <label>password</label>
</form>
```

Aggiungiamo i campi di testo e leghiamo la descrizione ai campi (il valore dell'attributo ``for`` nella descrizione del campo deve essere uguale al valore dell'attributo ``id`` presente nel campo):

```html
<form>
    <label for="nome">username</label>
    <input placeholder="inserisci il tuo username" name="username" id="nome">

    <label for="pwd">password</label>
    <input placeholder="inserisci la password" name="password" id="pwd">
</form>
```

Aggiungiamo il pulsante di invio (l'attributo ``type`` ha valore ``submit``) ed il pulsante di cancellazione dati (l'attributo ``type`` ha valore ``reset``)

```html
<form>
    <label for="nome">username</label>
    <input placeholder="inserisci il tuo username" name="username" id="nome">

    <label for="pwd">password</label>
    <input placeholder="inserisci la password" name="password" id="pwd">

    <button type="submit" formaction="www.server.com/login">Invia richiesta</button>
    <button type="reset">Ripristina valori iniziali</button>
</form>
```

Il risultato è il seguente:

![Immagine del form](/static/coding/web/html/form02.png "Immagine del secondo form")

### Input testuale

Il campo di input, se non diversamente specificato, permette l'inserimento di testo. È comunque buona norma specificare il tipo testuale, indicando l'attributo ``type="text"``.

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

È consigliato inserire anche la direzione del testo, soprattutto se vi è la possibilità che un utente inserisca i dati in una lingua che prevede la direzione del testo da sinistra a destra, come l'arabo o l'ebraico. L'attributo ``dir="auto"`` permette al browser di scegliere la direzione del testo per il campo.

Un esempio di campo di testo con i vincoli e gli attributi descritti è il seguente:

```html
<input type="text" name="descrizione" minlenght="10" maxlenght="150" autocomplete="on" dir="auto">
```

Il risultato è il seguente:

![Input di testo](/static/coding/web/html/inputTesto.png "Input di testo")

### Input di una password

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

### Input di una email

Per creare un campo di input che contenga una email è necessario indicare l'attributo ``type="email"``. Si consiglia inoltre di utilizzare l'attributo ``inputmode="email"`` per indicare la scelta della tastiera virtuale appropriata per l'inserimento dei dati sui dispositivi mobile e l'attributo ``autocomplete="email"`` per suggerimenti all'utente nell'inserimento della email.

Un esempio di campo di inserimento per una email è il seguente:

```html
<input type="email" name="email" inputmode="email" autocomplete="email">
```

### Input di un indirizzo web

Per creare un campo di input che contenga un indirizzo web è necessario indicare l'attributo ``type="url"``. Si consiglia inoltre di utilizzare l'attributo ``inputmode="url"`` per indicare la scelta della tastiera virtuale appropriata (con i caratteri "://" e ".") per l'inserimento dei dati sui dispositivi mobile e per suggerimenti all'utente nell'inserimento dell'indirizzo web utilizzando l'attributo ``autocomplete="url"``.

Un esempio di campo di inserimento per un indirizzo web è il seguente:

```html
<input type="url" name="url" inputmode="url" autocomplete="url">
```

### Input di un numero di telefono

Per creare un campo di input che contenga un numero di telefono è necessario indicare l'attributo ``type="tel"``. Si consiglia inoltre di utilizzare l'attributo ``inputmode="tel"`` per indicare la scelta del tastierino numerico virtuale appropriato (con i caratteri "#", "*" e ".") per l'inserimento dei dati sui dispositivi mobile e l'attributo ``autocomplete="tel"`` per suggerimenti all'utente nell'inserimento del numero di telefono.

Un esempio di campo di inserimento per un numero di telefono è il seguente:

```html
<input type="tel" name="telephone" inputmode="tel" autocomplete="tel">
```

### Input numerico

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

### Input di una data

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

### Input di un orario

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

### Trasmissione dati con input di selezione multipla "checkbox"

Per i campi di selezione multipla, tipicamente si sceglie che tutti i campi di input dello stesso gruppo abbiano lo stesso nome. Ad esempio, per la scelta degli interessi si ha:

```html
<input type="checkbox" id="coding" name="interest" value="programmazione" checked>
<label for="coding">Coding</label>
<input type="checkbox" id="soccer" name="interest" value="calcio">
<label for="soccer">Calcio</label>
```

Al momento dell'invio dei dati, il browser invierà i dati nel seguente formato ``interest=programmazione``**&**``interest=soccer``.

### Input di selezione singola "radio"

Tutti i campi di input di selezione singola "radio" appartenenti allo stesso gruppo hanno lo stesso nome, ma solo una voce sarà selezionabile, quindi sarà inviato il campo nella forma standard ``nome=valore``.

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

<!--

### Finestre di dialogo

``onclick="window.dialog.showModal();"`` permette di aprire la finestra di dialogo
``formmethod="dialog"`` permette di chiudere la finestra di dialogo

<button onclick="window.dialog.showModal();">open dialog 1</button>

<button onclick="window.dialogWindow.showModal();">open dialog 2</button>

<div>
  <dialog id="dialogWindow">
    <p>Miseriaccia  la vendetta 2</p>
    <form>
      <button formmethod="dialog">Close</button>
    </form>
  </dialog>

  <dialog id="dialog">
    <p>Miseriaccia</p>
    <form>
      <button formmethod="dialog">Close</button>
    </form>
  </dialog>
</div>

-->
