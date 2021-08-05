---
type: "html"
title: "HTML Lez. 02 - Etichette (tag)"
description: "HTML Lez. 02 - Etichette (tag) - Creazione di una prima pagina web e spiegazione dei primi tag"
date: 2019-07-16
publishdate: 2019-07-16
lastmod: 2019-07-16
spellcheck: 2020-12-11
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 02 - Etichette (tag) - Creazione di una prima pagina web e spiegazione dei primi tag"
---

# Etichette (tag)

Le **etichette** (in inglese Markup o TAG) sono dei segnaposto, indicano
l'inizio e la fine di un elemento della pagina web.

Ogni etichetta ha un nome, ad esempio
``h1`` è l'etichetta del titolo,
``p`` è l'etichetta del paragrafo,
``mark`` è l'etichetta per il testo evidenziato.

E' importante comprendere che, quando si parla di un'etichetta, in realtà si sottintende il riferimento a due etichette: l'etichetta di inizio (o apertura) e l'etichetta di fine (o chiusura).

Ad esempio,
``h1`` è l'etichetta del titolo, quindi si sottintende il riferimento all'etichetta di inizio del titolo e l'etichetta di fine del titolo; Allo stesso modo,
``p`` è l'etichetta del paragrafo, quindi si sottintende il riferimento all'etichetta di inizio del paragrafo e l'etichetta di fine del paragrafo; Ancora,
``mark`` è l'etichetta per il testo evidenziato, quindi si sottintende il riferimento all'etichetta di inizio del testo evidenziato e l'etichetta di fine del testo evidenziato.

Queste etichette di apertura e chiusura sono scritte secondo le seguenti regole:

- l'etichetta di apertura è composta dal nome dell'etichetta racchiuso tra parentesi angolari (i caratteri ``<`` e ``>``, tecnicamente, sono detti, parentesi angolari).
- l'etichetta di chiusura è composta dalle parentesi angolari contenenti il nome dell'etichetta preceduto dal carattere ``/``.

Per esempio,
l'etichetta di inizio del titolo è ``<h1>`` e l'etichetta di fine titolo è ``</h1>``, quindi, il titolo in HTML sarà scritto tra le due etichette usando il codice: ``<h1>Titolo</h1>``;
l'etichetta di inizio paragrafo è ``<p>`` e l'etichetta di fine paragrafo è ``</p>``, quindi, il paragrafo in HTML sarà scritto tra le due etichette usando il codice: ``<p>paragrafo</p>``;
l'etichetta di inizio testo evidenziato è ``<mark>`` e l'etichetta di fine testo evidenziato è ``</mark>``, quindi, il testo evidenziato in HTML sarà scritto tra le due etichette usando il codice: ``<mark>testo evidenziato</mark>``;

**L'etichetta di chiusura non è sempre prevista, esistono delle eccezioni di cui tenere conto.**

## Prima pagina web

Un'indicazione fondamentale che deve essere inserita **nella prima riga** della pagina web (del file HTML) è la dichiarazione del "tipo di documento": si deve indicare che il documento è scritto in HTML, utilizzando il codice ``<!doctype html>`` ("doctype" è l'abbreviazione di "document type", che tradotto significa "tipo di documento", quindi si dichiara che il tipo di documento è "HTML").

Si precisa che non si tratta di un'etichetta, è una dichiarazione, per cui **non necessita di un'etichetta di chiusura**;

Dopo la dichiarazione del tipo di documento, deve iniziare il documento web vero e proprio. L'etichetta ``html`` delimita l'intera pagina web (l'etichetta di
apertura ``<html>`` indica l'inizio del documento HTML e l'etichetta
di chiusura ``</html>`` indica la fine del documento HTML);

L'etichetta ``body`` delimita i contenuti (l'etichetta di
apertura ``<body>`` indica l'inizio dei contenuti e l'etichetta
di chiusura ``</body>`` indica la fine dei contenuti). Questa etichetta deve essere inserita nell'etichetta ``html``.

La pagina HTML risultante  (ancora incompleta) è la seguente:

```html
<!doctype html>
<html>
  <body>
    <!-- contenuti della pagina html -->
    <h1>Titolo pagina web</h1>
    <p>paragrafo della pagina web.</p>
  </body>
</html>
```

Si fa notare nuovamente che tutte le etichette nell'esempio riportato sono prima aperte e
poi chiuse.

Sempre dall'esempio precedente, si nota che le etichette possono essere inserite (innestate) l'una dentro l'altra, come avviene per i contenuti della pagina web presentata (il titolo ed il paragrafo) che si trovano nell'etichetta ``body`` , che a sua volta è posizionata nell'etichetta ``html``.

## DOM

Esiste un modello che descrive la struttura della pagina web come una struttura gerarchica: il DOM (dall'inglese Document Object Model), utilizzato soprattutto in un contesto che tratta di JavaScript, ma molto ricorrente anche quando si parla di HTML.

In questo modello gerarchico, ogni etichetta della pagina web (il documento ipertestuale) è detta **nodo** ed ha una posizione ben definita all'interno di un albero (tipica struttura gerarchica).

La radice dell'albero è l'etichetta ``html``, dato che al suo interno sono presenti tutti gli elementi della pagina web.

Dalla radice si estendono poi i nodi di "primo livello", ovvero tutte le etichette contenute nell'etichetta ``html``.

Da questi nodi di primo livello si estendono i nodi di secondo livello, ovvero le etichette contenute nelle etichette di primo livello, e cosi via per i successivi livelli.

Le foglie dell'albero sono le etichette che non posseggono contenuti.

Un esempio di rappresentazione della pagina web illustrata in precedenza, secondo il modello DOM è il seguente:

```html
html
└── body
    ├── h1
    └── p
```

Data la struttura gerarchica, è possibile stabilire delle relazioni tra gli elementi. Un elemento che contiene altri elementi è detto elemento padre, e di conseguenza gli elementi contenuti in quel nodo sono detti figli. Gli elementi che si trovano nello stesso livello si dicono fratelli, e cosí via con le altre relazioni.

## Indentazione

L'indentazione è una caratteristica che migliora la leggibilità del codice e permette di rilevare gli errori più rapidamente. 

Indentare il codice significa inserire un determinato nunero di spazi all'inizio di ogni riga, in maniera proporzionale al livello dell'etichetta presente sulla riga.

Ad esempio, per l'etichetta radice ``html`` non sono previsti spazi di indentazione, dato che è a livello zero.

Per l'etichetta di primo livello ``body``, è necessario aggiungere quattro spazi prima dell'etichetta stessa.

Per le etichette di secondo livello è necessario aggiungere otto spazi, per quelle di terzo livello sono necessari dodici, e cosí via..

Se si riguarda il codice riportato nell'esempio prededente, si può vedere che è indentato. Alcuni editor di testo permettono di indentare il documento in maniera automatica.

## Commenti

La presenza di **commenti** è praticamente d'obbligo, poiché questi rappresentano informazioni aggiuntive e promemoria che chiariscono le intenzioni del programmatore.

I commenti si scrivono tra i caratteri ``<!--`` e ``-->``, l'unica attenzione da porre è che non devono essere presenti spazi tra i caratteri indicati. Un commento può occupare più righe.

Di seguito, un esempio di commento multilinea:

```html
<!-- commento relativo i
     contenuti della
     pagina html -->
```

## Etichette obsolete

Alcune etichette sono state "cancellate" dalle specifiche HTML e non devono più essere utilizzate. Queste etichette sono dette **obsolete**.

Il termine **obsoleto**, nel linguaggio tecnico, è utilizzato per indicare tecnologie antiquate e quindi in disuso, magari perché non più competitive rispetto ad altre basate su idee più avanzate.

Il termine significa anche "logorato", e lo si utilizza soprattutto quando si parla di **obsolescenza programmata**, ovvero quella odiosa strategia commerciale utilizzata per rendere logoro, e quindi inutilizzabile, un prodotto dopo un certo tempo di utilizzo.

Di seguito, un esempio di etichette obsolete che è possibile trovare in qualche pagina web non aggiornata:

```html
<acronym title="as soon as possible">ASAP</acronym> -->
<big>This text is big</big>
```

Gli strumenti di validazione del codice HTML aiutano a rilevare, e quindi sostituire, le etichette obsolete.
