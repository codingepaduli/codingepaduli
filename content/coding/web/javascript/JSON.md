---
type: "javascript"
title: "JavaScript Lez. 10 - JSON"
description: "10 - JSON"
date: 2024-08-14
publishdate: 2024-08-14
lastmod: 2024-08-14
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: true
toc: false
summary: "10 - JSON"
---

# JavaScript Object Notation

Il formato di dati JSON è utilizzato per lo scambio testuale di dati tra sistemi informatici e per la memorizzazione testuale dei dati su file. E' diventato standard ECMA-404 nel 2013 e poi con la seconda versione del 2017, standard ISO/IEC 21778. E' un alternativa ad altri linguaggi simili che si prefissano lo stesso scopo, come XML, YAML, TOML e tanti altri.

JSON è l'acronimo di JavaScript Object Notation, è un sottoinsieme di regole di sintassi del linguaggio JavaScript che definisce il formato dei dati. Poiché le regole di sintassi sono proprio quelle del linguaggio JavaScript, questo formato dati è particolarmente semplice da utilizzare in un programma scritto in JavaScript ed utilizzato in una pagina web, ed è questo uno dei motivi principali per il quale si è ampiamente diffuso.

I dati scambiati o memorizzati su file sono dati testuali, i caratteri permessi sono quelli previsti dallo standard Unicode e la codifica può avvenire sia in UTF-8 che in UTF-16. L'estensione del file è ``.json``, ma ricordiamo che le estensioni non sono obbligatorie.

## Struttura dei dati JSON

JSON è un sottoinsieme di regole di sintassi del linguaggio JavaScript e con quest'ultimo condivide tutte le regole di sintassi relative ai tipi primitivi, come numeri e stringhe e a quelli complessi, come array e oggetti.

Le regole di sintassi non prevedono commenti di nessun tipo, per ovviare a questo problema a volte viene usato JSONC, un estensione di JSON che permette i commenti, ma che al momento non è uno standard.

La struttura di un documento JSON è decisa, in base ai requisiti del programma, dal programmatore o dall'analista, che sceglie le proprietà, i tipi e come innestare la gerarchia di oggetti. Un oggetto può contenere un'altro oggetto, come ad esempio un oggetto "biblioteca" può contenere un elenco di oggetti "libri".

### Sintassi dei dati primitivi

I **dati primitivi** ammessi in JSON sono i valori che una variabile di tipo primitivo può assumere nel linguaggio JavaScript. I tipi primitivi sono:

  1. tipo numerico intero o decimale;
  2. tipo stringa;
  3. tipo booleano;
  4. tipo nullo.

Ricordiamo la sintassi che devono rispettare i dati associati ad un tipo primitivo:

Le regole di sintassi di un valore numerico non prevedono caratteri di delimitazione, un numero intero viene rappresentato così com'è, ad esempio ``2`` o ``1340593``, un numero con la virgola usa il punto ``.`` come simbolo di delimitazione tra la parte numerica intera e quella decimale, ad esempio ``21.35`` o ``15778.980013``. E' possibile usare anche la rappresentazione esponenziale dei numeri, con mantissa ed esponente, ad esempio ``0.8E5``.

Le regole di sintassi di una stringa prevedono che sia delimitata da doppi apici ``"``, ad esempio ``"una stringa"`` o ``una "seconda stringa"``. Gli altri delimitatori utilizzabili in JavaScript per delimitare le stringhe, ovvero il singolo apice ``'`` e l'apice rovesciato `` ` `` in JSON non sono ammessi.

Le regole di sintassi di un elemento booleano prevedono solo i valori ``true`` e ``false`` e non prevedono delimitatori.

Le regole di sintassi del valore nullo prevedono solo il valore ``null`` senza delimitatori.

### Sintassi degli array

Un array è una sequenza ordinata di valori separati da virgole e racchiusa in parentesi quadre.

Le sole parentesi quadre (sia aperta che chiusa) ``[]`` senza nessun elemento indicano un array vuoto, non importa se ci sono spazi vuoti.

I valori contenuti in un array devono essere tutti dello stesso tipo, possono essere oggetti o dati primitivi. Ad esempio, un array di numeri è indicato con ``[1.34, 3.451, 4.51, 5.9023]``, un array di stringhe è indicato con ``["uno", "due", "altro", "elem"]``, un array di valori booleani è indicato con ``[true, false, true, true, true]``. Seppur racchiusi in un array, le regole di sintassi dei tipi primitivi devono essere rispettate.

Un array può contenere oggetti, definiti secondo le regole riportate di seguito.

### Sintassi delle proprietà

Una **proprietà** è una coppia "nome-valore". Nome e valore sono separati dal simbolo dei due punti ``:``.

Il **nome di una proprietà** deve essere obbligatoriamente una stringa, quindi deve essere racchiusa tra doppi apici ``"`` e deve iniziare con un carattere alfabetico.

Il **valore associato ad una proprietà** può essere:

- un oggetto;
- un array;
- un dato primitivo, cioè un valore assegnabile ad un tipo primitivo;

Una proprietà può quindi contenere un elenco di dati, un'altro oggetto o semplicemente un dato primitivo.

### Sintassi degli oggetti

Un **oggetto** può contenere una lista di proprietà, separate tra loro da una virgola ``,`` e racchiuse tra parentesi graffe.

Le sole parentesi graffe (sia aperta che chiusa) ``{}`` senza nessuna proprietà indicano un oggetto vuoto.

### Struttura del documento

La sintassi JSON prevede che i dati siano strutturati e tutti contenuti in un elemento **radice**, che può essere un oggetto oppure un array, quindi gli unici dati validi in JSON sono quelli racchiusi:

- in un oggetto, che può essere potenzialmente vuoto `` { } ``;
- in una lista, che può essere potenzialmente vuota `` [ ] ``.

Non è possibile che un documento JSON contenga solo dati primitivi o solo proprietà, è necessario che vi sia un elemento radice.

Un **array** non può contenere proprietà ma solo oggetti o dati primitivi.

Un esempio di oggetto "libro" con le proprietà "prezzo", "titolo", "disponibile" e "personaggi" rappresentato in formato JSON può essere il seguente:

```javascript
{
  "prezzo": 23.56,
  "titolo": "Moby dick",
  "disponibile": true,
  "personaggi": [
    "capitano Achab",
    "Ismaele",
    "Moby Dick"
  ]
}
```

Come si può notare, le parentesi graffe indicano l'oggetto radice, tutte le proprietà dell'oggetto sono separate da una virgola. Ogni proprietà ha il nome indicato tra doppi apici, il valore associato alle proprietà segue le regole del tipo di dato. In particolare, la proprietà "personaggi" è un array di stringhe, come si può notare dalle parentesi quadre, ogni stringa di questo array è racchiusa tra doppi apici ed è separata dalle altre con una virgola.

In particolare si nota che:
  
- l'ultimo elemento dell'array non è seguito da una virgola, poiché non deve essere separato da altri elementi successivi;
- la proprietà "personaggi" non è seguita da una virgola, poiché non deve essere separato da altre proprietà successive;

Un esempio di lista di libri, descritti come nel formato precedente, è la seguente:

```javascript
[
  {
    "prezzo": 23.56,
    "titolo": "Moby dick",
    "disponibile": true,
    "personaggi": [
      "capitano Achab",
      "Ismaele",
      "Moby Dick"
    ]
  },
  {
    "prezzo": 13.83,
    "titolo": "L'isola del tesoro",
    "disponibile": true,
    "personaggi": [
      "Jim Hawkins",
      "Dottor David Livesey",
      "Capitano Alexander Smollett"
    ]
  }
]
```

Come si può notare, le parentesi quadre all'inizio ed alla fine indicano un array che è l'elemento radice. L'array contiene due oggetti, identificati dalle parentesi graffe e separati tra loro da una virgola. Gli oggetti sono i libri, la sintassi è descritta nell'esempio precedente.

E' possibile verificare se il documento rispetta le regole di sintassi salvando il file con estensione ``.json`` e aprendolo con il browser Firefox. Questo è un esempio di visualizzazione gerarchica con Firefox:

![JSON - visualizzazione](/static/coding/web/javascript/json.png "JSON - visualizzazione")

In alternativa si possono usare i servizi online di validazione JSON, che svolgono lo stesso compito.

Nel caso il documento non rispetti le regole di sintassi, tipicamente viene mostrato l'errore corrispondente, indicando la riga e la colonna, ad esempio il messaggio "SyntaxError: JSON.parse: unexpected non-whitespace character after JSON data at line 12 column 4 of the JSON data".

## Uso del formato JSON

Le regole del formato JSON sono un sottoinsieme di regole JavaScript, quindi un oggetto definito secondo le regole della sintassi JSON può essere direttamente utilizzabile in uno script JavaScript.

E' possibile assegnare l'oggetto "libro" definito in JSON ad una variabile "libro" utilizzando la sintassi JavaScript:

```javascript
let a = 1;
let libro = {
  "prezzo": 23.56,
  "titolo": "Moby dick",
  "disponibile": true,
  "personaggi": [
    "capitano Achab",
    "Ismaele",
    "Moby Dick"
  ]
}
let x = 2.3;
```

Si può fare accesso alle proprietà con la classica "notazione punto", ad esempio:

```javascript
let prezzo = libro.prezzo;
let disponibile = libro.disponibile;
```

E' possibile convertire qualsiasi oggetto in formato testuale JSON con la funzione JavaScript ``JSON.stringify()`` e, viceversa, è possibile convertire in una variabile un oggetto definito in formato testuale JSON con la funzione ``JSON.parse()``.

### Conversione in testo

La funzione JavaScript progettata per convertire un oggetto in formato testuale JSON è ``JSON.stringify``, la cui firma è la seguente:

```plaintext
Syntax: JSON.stringify(obj)

Parameters:
    obj    object: object to convert

Return:
    the JSON text
```

Il parametro ``obj`` è un oggetto JavaScript da convertire in testo. Il valore restituito può essere memorizzato all'interno di una variabile.

Un esempio d'uso della funzione, che in questo caso converte un oggetto in formato testuale JSON e lo memorizza nella variabile ``text``, è il seguente:

```javascript
let obj = {
  "prezzo": 23.56,
  "titolo": "Moby dick"
}
let text = JSON.stringify(obj);
```

### Conversione in oggetto

La funzione JavaScript progettata per convertire un testo JSON in un oggetto ``JSON.parse()``, la cui firma è la seguente:

```plaintext
Syntax: JSON.parse(text)

Parameters:
    text    string: text to convert

Return:
    the object
```

Il parametro ``text`` è un testo da convertire in un oggetto JavaScript. Il valore restituito può essere memorizzato all'interno di una variabile.

Un esempio d'uso della funzione, che in questo caso converte un oggetto in formato testuale JSON e lo memorizza nella variabile ``obj``, è il seguente:

```javascript
let text = ' { "prezzo": 23.56, "titolo": "Moby dick" } ';
let obj = JSON.parse(text)
```

## JSON Path

JSON Path è un linguaggio per l'analisi, la trasformazione e l'estrazione selettiva di dati di documenti JSON,. Diventa lo standard internet RFC 9535 del 2024.

Questo linguaggio nasce ispirandosi ad XPath, che è utilizzato per lo stesso scopo su documenti XML.

### Selettori JSON Path

La selezione ed i filtri avvengono attraverso le espressioni.

Il **selettore dell'elemento radice** è indicato con il simbolo ``$``, ogni espressione deve selezionare questo elemento.

Il **selettore di una proprietà** può essere specificato sia con la "notazione punto", sia con la "notazione a parentesi" e permette selezionare una proprietà di un elemento. La "notazione punto" permette di selezionare una proprietà attraverso il simbolo del punto seguito dal nome della proprietà ``.proprieta``. La "notazione a parentesi" permette di selezionare una proprietà specificandola nelle parentesi quadre tra singoli apici ``['proprieta']``.

Il **selettore universale** ``*`` restituisce tutti gli elementi o le proprietà di un elemento selezionato.

Il **selettore di un indice dell'array** ``[i]`` restituisce l'elemento in posizione ``i`` dell'array selezionato.

Il **selettore di un intervallo dell'array** ``[a:b:s]`` definisce un intervallo tra gli indici (numerici) ``a`` e ``b`` ed uno step ``s`` ed è utilizzato per filtrare gli elementi di un array, partendo dall'indice ``a`` ed arrivando all'indice ``b`` con step ``s``.

Il **selettore ricorsivo universale**  `'$..*'` restituisce tutti gli elementi o le proprietà a qualsiasi livello siano innestati nell'elemento radice.

Il **selettore ricorsivo di una proprietà** ``$..proprietà`` permette selezionare una proprietà di un elemento a qualsiasi profondità si trovi l'elemento nell'albero.

Il **selettore ricorsivo di un indice dell'array** ``$..[i]`` restituisce l'elemento in posizione ``i`` di qualsiasi array.

### Esempio di selettori JSON Path

Riprendendo l'esempio della libreria che contiene i libri:

Il selettore ``$.*.personaggi`` seleziona nella radice ``$`` tutti gli oggetti ``.*`` e da questi seleziona la proprieta "personaggi" ``.personaggi``, restituendo l'oggetto seguente:

```javascript
[
   [
      "capitano Achab",
      "Ismaele",
      "Moby Dick"
   ],
   [
      "Jim Hawkins",
      "Dottor David Livesey",
      "Capitano Alexander Smollett"
   ]
]
```

Il selettore ``$.*.personaggi`` può essere scritto nella notazione a parentesi ``$['*']['personaggi']`` e restituisce lo stesso oggetto appena mostrato.

Il selettore ``$[*].personaggi[0]`` seleziona nella radice ``$`` tutti gli oggetti ``.*`` e da questi seleziona l'elemento zero ``[0]`` dell'array "personaggi" ``.personaggi``, restituendo l'oggetto seguente:

```javascript
[
   "capitano Achab",
   "Jim Hawkins"
]
```

Il selettore ``$[*].personaggi[0:3:2]`` seleziona nella radice ``$`` tutti gli oggetti ``.*`` e da questi seleziona dall'array "personaggi" ``.personaggi`` gli elementi partendo da quello con indice ``0`` e proseguendo con passo ``2`` fino ad arrivare a quello prima di ``3`` (cioè due), restituendo l'oggetto seguente:

```javascript
[
   "capitano Achab",
   "Moby Dick",
   "Jim Hawkins",
   "Capitano Alexander Smollett"
]
```

Come si nota, manca l'elemento pari dell'array.

Ecco alcuni esempi ripresi dalla documentazione ufficiale di JSON Path:

``$.store.book[*].author`` gli autori di tutti i libri nel negozio;
``$..author`` tutti gli autori;
``$.store.*`` tutte le cose nel negozio;
``$.store..price`` il prezzo di tutte le cose nel negozio;
``$..book[2]`` il terzo libro;
``$..book[0,1]`` o ``$..book[:2]`` i primi due libri.

### Filtri JSON Path

I filtri lavorano iterando sugli elementi selezionati attraverso i selettori. Per ogni iterazione è possibile identificare l'elemento corrente con il simbolo ``@``, che funziona come un selettore. Il filtro agisce sull'elemento corrente applicando una condizione che se verificata filtra, e quindi seleziona l'elemento corrente. Il simbolo del filtro è ``?`` che funziona come test.

Dato che serve un selettore, possiamo fare l'esempio di una selezione di tutti gli elementi della radice, utilizzando il selettore ``$.*``, a questi oggetti poi applichiamo il filtro.

Il filtro di esistenza ``?@.proprieta`` permette di filtrare (e quindi selezionare) l'elemento corrente se ha la proprietà indicata. Questo filtro agisce solo sugli oggetti. Applicato al selettore di tutti gli elementi della radice ``$.*``, la sintassi è ``$.*[?@.proprieta]``.

Il filtro di comparazione permette di comparare l'elemento corrente utilizzando gli operatori logici ``!``, ``==``, ``!=``, ``<``, ``<=``, ``>``, ``>=``, ``&&`` e ``||`` con la priorità con cui sono appena stati scritti. La comparazione deve essere possibile secondo le regole del linguaggio JavaScript. La sintassi è quindi ``?@ operatore valore``, con valore compatibile a valutare l'espressione. Dato che i filtri si applicano agli elementi selezionati, useremo ancora una volta il selettore di tutti gli elementi della radice ``$.*`` negli esempi:

```javascript
$.*[?@ == 2]
$.*[?@.proprieta == 'g']
$.*[?@>1 && @<=4]
$.*[?@.u || @.x]
$.*[?@.proprieta >= 'f']
$.*[?@>$.x]
```

Inoltre è possibile definire e quindi specificare una funzione nel filtro. Tra le funzioni gia definite troviamo ``lenght`` e ``count``. Il filtro con funzione filtro ha sintassi ``?funzione(selettore)``. Useremo ancora una volta il selettore di tutti gli elementi della radice ``$.*`` negli esempi: esempio:

```javascript
$.*[?length(@) < 3]
$.*[?count(@.*) == 1]
```

L'elemento corrente deve essere un elemento su cui è possibile calcolare la lunghezza, come una stringa o un array, o un elemento che contenga a sua volta altri elementi in modo tale che sia possibile poterli contare.

Ecco alcuni esempi ripresi dalla documentazione ufficiale di JSON Path:

``$..book[?@.isbn]`` tutti i libri con un numero ISBN;
``$..book[?@.price<10]`` tutti i libri con prezzo minore di 10 dollari.

<!-- markdownlint-disable MD033 -->

<!-- markdownlint-enable MD033 -->
