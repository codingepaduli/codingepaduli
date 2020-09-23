---
type: "javascript"
title: "06 - Funzioni"
description: "Funzioni"
date: 2020-04-26
publishdate: 2020-04-26
lastmod: 2020-04-26
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "Funzioni"
---

# Funzioni

Le funzioni sono blocchi di codice progettati per eseguire un'operazione.

Alle funzioni viene dato un **nome**, in modo da poter eseguire l'operazione più volte semplicemente usando il nome (e non dover ripetere il blocco di codice).

Le funzioni sono **dichiarate** dalla parola chiave ``function`` seguita dal nome, dalle parentesi tonde ``()`` ed infine dal blocco di codice racchiuso tra le parentesi graffe ``{`` e ``}``.

Un esempio di funzione che scrive il proprio nome è la seguente:

```javascript
function scriviNome() {
    alert("Mario Rossi");
}
```

E' importante notare la differenza tra **dichiarazione** ed **invocazione**: la funzione dichiarata viene "creata" ma non viene "eseguita".

Per eseguire la funzione è necessario invocarla mediante il nome, seguito dalle parentesi tonde ``()``.

Ad esempio, per invocare la funzione dichiarata nel codice precedente si usa:

```javascript
scriviNome();
```

Questo esempio produce in output il messaggio seguente:

```
Mario Rossi
```

Per eseguire più volte la funzione, e quindi eseguire più volte il blocco di codice corrispondente, la si deve invocare più volte, come nel seguente esempio:

```javascript
scriviNome();
scriviNome();
scriviNome();
scriviNome();
```

Il vantaggio principale dell'uso delle funzioni è che permettono di organizzare il programma in termini di operazioni da svolgere e consentono di separare i compiti tra i vari programmatori, ognuno dei quali si occuperà di sviluppare alcune funzionalità.

## Modalità di esecuzione

Le funzioni possono essere eseguite in modalità ``strict`` o ``sloppy``, indipendentemente dalla modalità di esecuzione indicata negli script.

Per cui, per specificare la modalità ``strict`` è necessario indicarla all'inizio di ogni funzione, come nel seguente esempio.

```javascript
function scriviNome() {
    'use strict';

    alert("Mario Rossi");
}
```

## Valore di ritorno

Le funzioni sono progettate per eseguire un'operazione. Il risultato di questa operazione può essere restituito, attraverso la parola chiave ``return``, a chi invoca la funzione.

Supponendo ad esempio di voler **definire** una funzione che scriva il proprio nome nella console e che lo restituisca anche al chiamante, il codice sarà il seguente:

```javascript
function scriviNome() {
    'use strict';

    let nome ="Mario Rossi";
    console.info(nome);
    return nome;
}
```

Per **invocare** la funzione dichiarata nel codice precedente ed ottenere il risultato si usa il seguente codice:

```javascript
let ris = scriviNome();
```

La variabile ``ris`` assume quindi valore ``Mario Rossi``, dato che l'istruzione ``return`` restituisce questo valore.

## Parametri

L'operazione che viene svolta da una funzione può necessitare di uno o più parametri su cui lavorare.

L'esempio visto fin'ora della funzione ``scriviNome`` mostrava sempre lo stesso nome (Mario Rossi). Questa funzione potrebbe essere generalizzata permettendo di scrivere un qualsiasi nome e cognome. Ciò significa che è necessario passare alla funzione ``scriviNome`` il nome ed il cognome da mostrare, **passandoli come parametri**.

Per poter usare i parametri, questi devono essere indicati nella definizione tra le parentesi tonde, come nel seguente esempio:

```javascript
function scriviNome(nome, cognome) {
    'use strict';

    alert(nome + " " + cognome);
}
```

Come si può notare, i parametri ``nome`` e ``cognome`` passati alla funzione sono utilizzati come se fossero delle variabili.

**Definita** la funzione con i parametri, è possibile **invocarla** passando i valori da utilizzare sempre tra le parentesi tonde, come nel seguente esempio:

```javascript
scriviNome("Mario", "Rossi");
scriviNome("Giuseppe", "Verdi");
scriviNome("Pinco", "Pallino");
scriviNome("Tizio", "Caio");
```

L'esempio precedente mostra il seguente output:

```output
Mario Rossi
Giuseppe Verdi
Pinco Pallino
Tizio Caio
```

L'uso dei parametri ci permette quindi di rendere "generica" l'operazione definita dalla funzione.

## Parametri di default

E' possibile assegnare ai parametri un valore predefinito, come per il seguente esempio:

```javascript
function scriviNome(nome = "Mario", cognome = "Rossi") {
    'use strict';

    alert(nome + " " + cognome);
}
```

## Parametri rimanenti (rest parameter)

E' possibile definire funzioni che prendano un numero variabile di parametri, precedendo l'unico o l'ultimo parametro  con i tre punti ``...``.

Dato che questo tipo di sintassi crea di fatto una collezione di valori, è possibile accedervi attraverso l'istruzione iterativa ``for-in``.

Supponendo, ad esempio, di voler creare una funzione che scriva un numero imprecisato di nomi, il codice sarà il seguente:

```javascript
function scriviNome(...nomi) {
    'use strict';

    for (nome in nomi) {
      console.info(nome);
    }
}
```

Definita la funzione, è possibile invocarla passando tutti i parametri di cui si ha necessità, come nei seguenti esempi:

```javascript
scriviNome("Mario Rossi");
scriviNome("Giuseppe Verdi", "Pinco Pallino", "Tizio Caio");
```
