---
type: "javascript"
title: "JavaScript Lez. 05 - Approfondimento - Le stringhe"
description: "Descrizione delle stringhe, degli operatori e delle operazioni sulle stringhe per il calcolo automatico"
date: 2025-03-10
publishdate: 2025-03-10
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "Descrizione delle stringhe, degli operatori e delle operazioni sulle stringhe per il calcolo automatico"
weight: 8940
---

# Le stringhe

Il termine "stringa" deriva dall'inglese "string", che significa "filo" o "corda", ed è utilizzato in ambito informatico per descrivere una sequenza di caratteri che sono "legati" insieme, proprio come i nodi di un filo o di una corda.

Le stringa sono sequenze di caratteri comunemente utilizzate per rappresentare dati testuali, come parole, frasi e testi. Questa natura sequenziale le rende adatte per gestire e manipolare il testo. Una stringa può contenere:

- lettere di qualsiasi lingua (dall'alfabeto latino a quello cinese, indiano, arabo, ...);
- numeri;
- simboli di qualsiasi tipo, accenti, punteggiatura, simboli di controllo (l'invio a capo, l'invio a nuova pagina, la tabulazione, ...), spazi;
- emoji.

La gestione e manipolazione del testo prevede le seguenti operazioni:

- Creazione di una nuova stringa, prevede l'allocazione dello spazio di memoria necessario a contenere la sequenza di caratteri;
- Concatenazione, ovvero unione di due o più stringhe in una sola;
- Slicing, ovvero estrazione di una parte della stringa;
- Ricerca **della posizione** di un carattere o di un'altra stringa all'interno della stringa;
- Ricerca **della presenza** di un carattere o di un'altra stringa all'interno della stringa;
- Separazione (o divisione) della stringa in più stringhe (tipicamente utilizzando un carattere per suddividerle, come uno spazio per suddividere le singole parole o un punto per suddividere le diverse frasi);
- Calcolo della lunghezza, per determinare il numero di caratteri presenti in una stringa;
- Sostituzione una parte di una stringa con un'altra. In particolare vi è:
  1. Formattazione, ovvero la sostituzione dei segnaposto presenti nella stringa con i valori specificati;
  2. Trimming ovvero rimozione degli spazi bianchi presenti esclusivamente all'inizio e/o alla fine di una stringa.
  3. Conversione del formato, ad esempio sostituendo i caratteri maiuscoli con quelli minuscoli o viceversa, la sostituzione dei caratteri non permessi in un determinato contesto con i corrispondenti caratteri permessi;

Una stringa viene creata quando viene definita una sequenza di caratteri racchiusa obbligatoriamente tra singoli apici ``'`` o doppi apici ``"``. Quando ad una variabile si assegna una sequenza di caratteri, automaticamente a questa variabile viene assegnato il tipo "stringa".

Di seguito un esempio di dichiarazione di variabili inizializzate con una sequenza di caratteri:

```javascript
let stringVariable = 'Una stringa';
let stringVariable2 = 'Seconda stringa';
let stringVariable3 = "Stringa tra doppi apici";
```

La **stringa vuota** (in inglese "empty string") è un particolare caso di stringa che non contiene caratteri. E' definita dagli apici aperti e poi subito chiusi, sia come nel caso dei singoli apici ``''``, sia nel caso dei doppi apici ``""``.

```javascript
let stringEmpty = '';
let stringEmpty2 = "";
```

Per definire una sequenza di caratteri che occupi più righe, si può racchiudere tra apici inversi `` ` ``, come nel seguente esempio:

```javascript
let stringVariable = `Una
stringa`;
```

Questo tipo di definizione è utilizzato anche per concatenare variabili o il risultato di un'espressione all'interno della stringa. Svolge una operazione simile alla formattazione, ovvero la sostituzione dei segnaposto presenti nella stringa con i valori specificati nelle variabili.

I simboli ``${`` e ``}`` possono racchiudere variabili ed espressioni, nella stringa risultante questi simboli saranno sostituiti con il valore della variabile indicata o dal risultato dell'espressione, come nel seguente esempio:

```javascript
let num1 = 9;
let num2 = 18;
let messaggio = `La somma dei
numeri ${num1} e ${num2}
vale ${num1 + num2}.`;
```

La variabile ``messaggio`` contiene la seguente sequenza di caratteri (su più righe):

```output
La somma dei
numeri 9 e 18
vale 27.
```

## Operatori di concatenazione e relazionali

Per svolgere le operazioni sulle stringhe sono utilizzati i seguenti operatori:

- di concatenazione `+` unisce due o più stringhe in una sola;
- relazionale di eguaglianza (`==`) verifica se due stringhe sono uguali;
- relazionale di maggioranza (`>`) controlla se la prima stringa è "maggiore" della seconda in base all'ordinamento naturale;
- relazionale di maggioranza o uguaglianza (`>=`) verifica se la prima stringa è "maggiore o uguale" alla seconda in base all'ordinamento naturale;
- relazionale di minoranza `<` controlla se la prima stringa è "minore" della seconda in base all'ordinamento naturale;
- relazionale di minoranza o uguaglianza (`>=`) verifica se la prima stringa è "minore o uguale" alla seconda in base all'ordinamento naturale.

L'ordinamento naturale delle stringhe avviene sulla base all'ordine lessicografico. Ad esempio la lettera ``a`` viene prima della lettera ``b`` e quindi è vera l'affermazione la lettera ``a`` è più piccola della lettera ``b`` (l'affermazione ``a < b`` è vera). In generale:

- i numeri (0-9) vengono prima delle lettere (A-Z, a-z).
- le lettere maiuscole (A-Z) vengono prima delle minuscole (a-z);
- caratteri speciali come spazi, punteggiatura e simboli vengono ordinati in base ai loro valori Unicode. Per maggiori informazioni si rimanda al capitolo dedicato alla codifica Unicode.

Un esempio d'uso degli operatori relazionali è il seguente:

```javascript
let x = "una " + "stringa.";
console.info(x); // Output: una stringa.
console.info("una " == "stringa"); // Output: false
console.info("una " > "stringa");  // Output: false
console.info("una " >= "stringa"); // Output: false
console.info("una " < "stringa");  // Output: true
console.info("una " <= "stringa"); // Output: true
```

Questi operatori sono fondamentali per confrontare e concatenare le stringhe.

## Proprietà e metodi delle stringhe

Tutte le stringhe sono istanze dell'oggetto ``String`` (come le istanze di una classe nella programmazione OOP), e quindi le proprietà ed i metodi di questo oggetto ``String`` sono disponibili alle istanze.

L'unica proprietà disponibile nelle stringhe è ``length``, è una proprietà di sola lettura che indica il numero di caratteri presenti in una stringa.

Proprietà  | Operazione              | Esempio d'uso
---------- | ----------------------- | ---
``length`` | lunghezza della stringa | ``"Questa è una stringa".length``

Un esempio d'uso è il seguente:

```javascript
let x = "una stringa.";
console.info(x.length); // 11 caratteri
```

Sono presenti numerosissime operazioni sulle stringhe, per un elenco completo si rimanda alla documentazione, mentre di seguito verranno trattate le funzioni più comuni.

### Funzioni di estrazione

La funzione progettata per eseguire l'estrazione di una parte della stringa è ``substring(inizio, fine)``, la cui firma è la seguente:

```plaintext
Syntax: String.substring(inizio, fine)

Parameters:
    inizio    Number: the starting index
    fine      Number: the ending index (exclusive)

Returns:
    String: the substring between the specified start and end positions
```

Il parametro formale ``inizio`` rappresenta la posizione di partenza della sottostringa, mentre ``fine`` rappresenta la posizione finale (non inclusa).

Il valore restituito è la sottostringa inclusa tra le posizioni di inizio e fine. Può essere salvato in una variabile.

Per ottenere la sottostringa tra le posizioni 1 e 4 della stringa "Questa è una stringa", sostituiamo al parametro formale ``inizio`` il valore ``1`` e al parametro formale ``fine`` il valore ``4``. Salviamo in una variabile ``sottostringa`` il risultato, invocando la funzione nel seguente modo:

```javascript
let sottostringa = "Questa è una stringa".substring(1, 4);
```

La funzione progettata per **cercare il carattere presente alla posizione** indicata dal parametro ``index`` è la funzione ``charAt(index)``, la cui firma è la seguente:

```plaintext
Syntax: String.charAt(index)

Parameters:
    index    Number: the position of the character

Returns:
    String: the character at the specified position
```

Il parametro formale ``index`` rappresenta la posizione del carattere nella stringa.

Il valore restituito è il carattere alla posizione specificata. Può essere salvato in una variabile.

Per ottenere il carattere alla posizione 0 della stringa "Questa è una stringa", sostituiamo al parametro formale ``index`` il valore ``0``. Salviamo in una variabile ``c`` il risultato, invocando la funzione nel seguente modo:

```javascript
let c = "Questa è una stringa".charAt(0);
```

### Funzioni di ricerca della posizione

La funzione progettata per la **ricerca della posizione della prima occorrenza** di un carattere o di un’altra stringa ``stringa`` all’interno della stringa è ``indexOf(stringa)``, la cui firma è la seguente:

```plaintext
Syntax: String.indexOf(stringa)

Parameters:
    stringa    String: the string to search for

Returns:
    Number: the index of the first occurrence of the specified string, or -1 if not found
```

Il parametro formale ``stringa`` rappresenta la stringa da cercare.

Il valore restituito è l'indice in cui appare la stringa specificata. Può essere salvato in una variabile.

Per ottenere l'indice in cui appare la stringa "inga" nella stringa "Questa è una stringa", sostituiamo al parametro formale ``stringa`` il valore ``"inga"``. Salviamo in una variabile ``indice`` il risultato, invocando la funzione nel seguente modo:

```javascript
let indice = "Questa è una stringa".indexOf("inga");
```

La funzione progettata la **ricerca della posizione dell'ultima occorrenza** di un carattere o di un’altra stringa ``stringa`` all’interno della stringa è ``lastIndexOf(stringa)``, la cui firma è la seguente:

```plaintext
Syntax: String.lastIndexOf(stringa)

Parameters:
    stringa    String: the string to search for

Returns:
    Number: the index of the last occurrence of the specified string, or -1 if not found
```

Il parametro formale ``stringa`` rappresenta la stringa da cercare.

Il valore restituito è l'ultimo indice in cui appare la stringa specificata. Può essere salvato in una variabile.

Per ottenere l'ultimo indice in cui appare la stringa "ga" nella stringa "Questa è una stringa", sostituiamo al parametro formale ``stringa`` il valore ``"ga"``. Salviamo in una variabile ``ultimoIndice`` il risultato, invocando la funzione nel seguente modo:

```javascript
let ultimoIndice = "Questa è una stringa".lastIndexOf("ga");
```

### Funzioni di ricerca della presenza

La funzione progettata per **verificare se una stringa inizia** con un carattere o un’altra stringa ``stringa`` all’interno della stringa è ``startsWith(stringa)``, la cui firma è la seguente:

```plaintext
Syntax: String.startsWith(stringa)

Parameters:
    stringa    String: the string to search for at the start

Returns:
    Boolean: true if the string starts with the specified string, otherwise false
```

Il parametro formale ``stringa`` rappresenta la stringa da verificare all'inizio.

Il valore restituito è un valore booleano che indica se la stringa inizia con la stringa specificata. Può essere salvato in una variabile.

Per verificare se la stringa "Questa è una stringa" inizia con "inga", sostituiamo al parametro formale ``stringa`` il valore ``"inga"``. Salviamo in una variabile ``risultato`` il risultato, invocando la funzione nel seguente modo:

```javascript
let risultato = "Questa è una stringa".startsWith("inga");
```

La funzione progettata per **verificare se una stringa termina** con un carattere o un’altra stringa ``stringa`` all’interno della stringa è ``endsWith(stringa)``, la cui firma è la seguente:

```plaintext
Syntax: String.endsWith(stringa)

Parameters:
    stringa    String: the string to search for

Returns:
    Boolean: true if the string ends with the specified string, otherwise false
```

Il parametro formale ``stringa`` rappresenta la stringa da verificare.

Il valore restituito è un valore booleano che indica se la stringa termina con la stringa specificata. Può essere salvato in una variabile.

Per verificare se la stringa "Questa è una stringa" termina con "inga", sostituiamo al parametro formale ``stringa`` il valore ``"inga"``. Salviamo in una variabile ``risultato`` il risultato, invocando la funzione nel seguente modo:

```javascript
let risultato = "Questa è una stringa".endsWith("inga");
```

### Funzioni di sostituzione

La funzione progettata per eseguire la **sostituzione di una parte della stringa** con un’altra stringa è ``replace(stringa1, stringa2)``, la cui firma è la seguente:

```plaintext
Syntax: String.replace(stringa1, stringa2)

Parameters:
    stringa1    String: the substring to be replaced
    stringa2    String: the substring to replace with

Returns:
    String: a new string with the specified substring replaced
```

Il parametro formale ``stringa1`` rappresenta la prima stringa da sostituire, mentre ``stringa2`` rappresenta la seconda stringa con cui sostituire.

Il valore restituito è una nuova stringa con tutte le occorrenze della prima stringa sostituite dalla seconda. Può essere salvato in una variabile.

Per sostituire tutte le occorrenze della stringa "a" con "altra stringa" nella stringa "Questa è una stringa", sostituiamo al parametro formale ``stringa1`` il valore ``"a"`` e al parametro formale ``stringa2`` il valore ``"altra stringa"``. Salviamo in una variabile ``nuovaStringa`` il risultato, invocando la funzione nel seguente modo:

```javascript
let nuovaStringa = "Questa è una stringa".replace("a", "altra stringa");
```

La funzione progettata per eseguire la **rimozione degli spazi bianchi** presenti esclusivamente all’inizio e/o alla fine di una stringa è ``trim()``, la cui firma è la seguente:

```plaintext
Syntax: String.trim()

Parameters:
    None

Returns:
    String: the string with whitespace removed from both ends
```

Non ci sono parametri formali per questa funzione.

Il valore restituito è la stringa con tutti gli spazi iniziali e finali rimossi. Può essere salvato in una variabile.

Per rimuovere gli spazi iniziali e finali dalla stringa "   Questa è una stringa   ", possiamo invocare la funzione nel seguente modo:

```javascript
let stringaTrimmed = "   Questa è una stringa   ".trim();
```

La funzione progettata per **convertire i caratteri maiuscoli in minuscolo** è ``toLowerCase()``, la cui firma è la seguente:

```plaintext
Syntax: String.toLowerCase()

Parameters:
    None

Returns:
    String: the string with all characters converted to lowercase
```

Non ci sono parametri formali per questa funzione.

Il valore restituito è la stringa con tutti i caratteri convertiti in minuscolo. Può essere salvato in una variabile.

Per convertire la stringa "Questa è una stringa" in minuscolo, possiamo invocare la funzione nel seguente modo:

```javascript
let minuscolo = "Questa è una stringa".toLowerCase();
```

La funzione progettata per **convertire i caratteri minuscoli in maiuscolo** è ``toUpperCase()``, la cui firma è la seguente:

```plaintext
Syntax: String.toUpperCase()

Parameters:
    None

Returns:
    String: the string with all characters converted to uppercase
```

Non ci sono parametri formali per questa funzione.

Il valore restituito è la stringa con tutti i caratteri convertiti in maiuscolo. Può essere salvato in una variabile.

Per convertire la stringa "Questa è una stringa" in maiuscolo, possiamo invocare la funzione nel seguente modo:

```javascript
let maiuscolo = "Questa è una stringa".toUpperCase();
```

## Conversione da numero a stringa

Per quanto concerne la conversione di un numero in formato stringa, è possibile utilizzare il metodo ``toString()`` dei tipi numerici, come nel seguente esempio:

```javascript
let x = 1;
let stringX = x.toString();
```

E' possibile convertire il numero in una base specificata passando come argomento al metodo ``toString()`` la base in cui si vuole convertire il numero.

Ad esempio, per la conversione in binario, ottale ed esadecimale si usa il seguente codice:

```javascript
let x = 10;
let x2 = (10).toString(2);
let x8 = x.toString(8);
let x16 = x.toString(16);
```

Il codice converte il numero nelle seguenti stringhe:

```output
x2 = "1010"
x8 = "12"
x16 = "a"
```

Nel caso di numeri negativi, si può effettuare una conversione in complemento a 2, utilizzando il seguente codice:

```javascript
let x = -1;
let xC2 = (x >>> 0).toString()
```

Il numero è convertito in una stringa rappresentata da 32 bit:

```output
xC2 = "11111111111111111111111111111111"
```

Per la conversione in formato esponenziale si utilizza il metodo ``toExponential()``, come nel seguente esempio:

```javascript
let x = 1;
let y = 1.4;
let w = 14;
let z = 123456789.123456;
let stringX = x.toExponential();
let stringY = y.toExponential();
let stringW = w.toExponential();
let stringZ = z.toExponential();
```

Il codice converte il numero nelle seguenti stringhe:

```output
"1e+0"
"1.4e+0"
"1.4e+1"
"1.2346e+8"
```

Si può passare al metodo il parametro opzionale indicante il numero di cifre decimali da utilizzare per la mantissa, come nel seguente esempio:

```javascript
let z = 123456789.123456;
let stringZ = z.toExponential(2);
let stringZ = z.toExponential(8);
let stringZ = z.toExponential(16);
```

Il codice converte il numero nelle seguenti stringhe:

```output
"1.23e+8"
"1.23456789e+8"
"1.2345678912345600e+8"
```
