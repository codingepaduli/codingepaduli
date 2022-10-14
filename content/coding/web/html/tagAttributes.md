---
type: "html"
title: "HTML Lez. 04 - Etichette con attributi"
description: "HTML Lez. 04 - Etichette con attributi"
date: 2019-07-25
publishdate: 2019-07-25
lastmod: 2019-07-25
spellcheck: 2020-12-11
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: true
toc: false
summary: "HTML Lez. 04 - Etichette che richiedono l'uso di attributi"
weight: 9670
---

## Attributi comuni

Alcuni attributi sono comuni a tutte le etichette:

- l'attributo ``id`` identifica in maniera univoca l'etichetta, è anche utilizzato per collegamenti che fanno riferimento ad un preciso punto della pagina;
- l'attributo ``class`` serve ad indicare i gruppi di cui le etichette fanno parte. Un'etichetta può appartenere a più insiemi;
- l'attributo ``style`` indica lo stile grafico da applicare per l'etichetta, è rappresentato da un valore scritto in linguaggio CSS;

Un esempio di questi attributi è il seguente:

```html
<p id="paragrafo1" class="insieme1">paragrafo 1</p>
<p id="paragrafo2" class="insieme1">paragrafo 2</p>
<p id="paragrafo3" class="insieme1 citazione">paragrafo 3</p>
<p id="paragrafo4" class="citazione">paragrafo 4</p>
```

Dall'esempio si nota che ogni paragrafo ha un suo identificativo e che i primi tre paragrafi fanno parte dello stesso insieme (chiamato "
``insieme1``), dato che il valore dell'attributo ``class`` è presente in tutte e tre le etichette; Poi si nota che il terzo e il quarto paragrafo fanno parte di un secondo insieme (chiamato ``citazione``) e che solo la terza etichetta fa parte di entrambi gli insiemi. Per un approfondimento, si rimanda alle specifiche sui selettori CSS.

Non tutti gli attributi sono comuni a tutte le etichette, vi sono attributi specifici per una singola etichetta, per cui è possibile associarli solo ed esclusivamente a questa etichetta.

## Etichetta di collegamento con attributi ``href`` e ``target``

L'etichetta ``a`` serve a creare un collegamento (in inglese "link") verso un
ipertesto (un'altra pagina web). Questa etichetta ha gli attributi:

- ``href``, che permette di indicare l'indirizzo dell'ipertesto da raggiungere;
- ``target``, che permette di indicare come aprire l'ipertesto, e può assumere solo i seguenti valori:
    1. ``_blank`` indica al browser di aprire l'ipertesto in una nuova scheda o finestra;
    2. ``_self`` indica al browser di aprire l'ipertesto nella stessa scheda o finestra.

Un esempio di collegamento è il seguente:

```html
<a href="www.google.it" target="_blank">collegamento a Google</a>
```

Da questo esempio, si evidenziano sia l'indirizzo web di "Google", che è un indirizzo **assoluto**, sia l'attributo ``target="_blank"`` che indica di aprire il sito web in una nuova scheda.

Un secondo esempio di collegamento è il seguente:

```html
<a href="pagina1.html" target="_self">collegamento a Google</a>
```

Da questo secondo esempio, si evidenzia sia l'attributo ``target="_self"`` che indica di aprire il sito web nella stessa scheda, sia l'indirizzo della pagina web ``pagina1.html``, che in questo caso è un indirizzo **relativo** al sito web sul quale sta navigando l'utente;

L'etichetta ``a`` può essere utilizzata per creare collegamenti ad un punto preciso del documento, inserendo nell'attributo ``href`` **l'identificativo** dello specifico punto preceduto dal carattere ``#``;

Ad esempio, supponiamo che nella parte finale del documento sia stato creato il sotto-capitolo con l'identificativo ``idTabella``, come nel codice seguente:

```html
<h2 id="idTabella">Sotto-capitolo sulle tabelle</h2>
```

Per creare, in cima al documento, un collegamento al sotto-capitolo che si trova in fondo alla pagina, l'indirizzo di collegamento deve iniziare con il carattere ``#`` seguito dall'identificativo di cui sopra, come nel codice seguente:

```html
<a href="#idTabella">Link al Sotto-capitolo sulle tabelle</a>
```

Questo tipo di collegamento non è limitato allo stesso documento, per cui è possibile anche creare un collegamento ad un punto preciso di una qualsiasi pagina web presente online, a patto che in questa pagina web siano presenti dei punti con un identificativo al quale collegarsi.

Ad esempio, per effettuare un collegamento al sotto-capitolo "Struttura di un documento HTML" della pagina web "HTML" ospitata su Wikipedia, supponendo che il sotto-capitolo sia identificato dalla voce univoca ``Struttura_di_un_documento_HTML``, allora per creare il collegamento si utilizza il codice seguente:

```html
<a href="https://it.wikipedia.org/wiki/HTML#Struttura_di_un_documento_HTML">
    Link al Sotto-capitolo "Struttura di un documento HTML"
</a>
```

Sempre trattando i collegamenti, state previste tipologie di indirizzi speciali per email e numeri di telefono che vengono gestite tramite collegamenti. Quando l'utente clicca su un collegamento con un indirizzo "speciale", il browser delega ad un'applicazione esterna il compito di inviare una email, di effettuare una chiamata telefonica e di inviare SMS verso il numero di telefono indicato.

In particolare, gli indirizzi speciali hanno un prefisso ben definito:

- ``mailto:`` è il prefisso che indica un indirizzo speciale per l'invio di una mail;
- ``tel:`` è il prefisso che indica un indirizzo speciale per effettuare una chiamata telefonica;
- ``sms`` è il prefisso che indica un indirizzo speciale per inviare un SMS.

Di seguito si riporta un esempio d'uso dei collegamenti verso queste tipologie di indirizzi:

```html
<a href="mailto:bianchi@email.com,rossi@email.com?cc=paolo@email.com&subject=Oggetto">
    Scrivi una mail
</a>
<a href="tel:+390001234567">Chiama</a>
<a href="sms:+390001234567">Invia un SMS</a>
```
