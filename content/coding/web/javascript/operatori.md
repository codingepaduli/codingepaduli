---
type: "javascript"
title: "JavaScript Lez. 04 - Operatori ed espressioni"
description: "Operatori ed espressioni"
date: 2020-04-08
publishdate: 2020-04-08
lastmod: 2020-04-08
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "Operatori ed espressioni"
---

# Operatori ed espressioni {#top}

## Operazioni ed operatori per le stringhe

Diversi operatori possono lavorare sulle stringhe:

Simbolo operatore | Operatore | Esempio d'uso
--- | --- | ---
``+`` | concatenazione tra due stringhe | ``x = "una " + "stringa."``
``==`` | confronto di eguaglianza di due stringhe | ``"una " == "stringa"``
``>`` | confronto di due stringhe in base all'ordinamento naturale | ``"una " > "stringa"``
``>=`` | confronto di due stringhe in base all'ordinamento naturale | ``"una " >= "stringa"``
``<`` | confronto di due stringhe in base all'ordinamento naturale | ``"una " < "stringa"``
``<=`` | confronto di due stringhe in base all'ordinamento naturale | ``"una " <= "stringa"``

Per tutte le altre operazioni sulle stringhe si utilizzano le proprietà ed i metodi dell'oggetto ``String``. Tutte le stringhe sono istanze di questo oggetto (come le istanze di una classe nella programmazione OOP), e quindi le proprietà ed i metodi di questo oggetto ``String`` sono disponibili alle istanze.

L'unica proprietà disponibile nelle stringhe è ``length``, ed è di sola lettura.

Proprietà | Operazione | Esempio d'uso
--- | --- | ---
``lenghth`` | lunghezza della stringa | ``"Questa è una stringa".length``

I metodi disponibili sono numerosissimi, per un elenco completo si rimanda alla documentazione della classe ``String``. Di seguito un elenco dei metodi più utilizzati:

Metodi | Operazione | Esempio d'uso
--- | --- | ---
``charAt(index)`` | restituisce il carattere alla posizione passata come argomento | ``"Questa è una stringa".charAt(0)``
``endsWith(stringa)`` | indica se termina con la stringa passata come argomento | ``"Questa è una stringa".endsWith("inga")``
``indexOf(stringa)`` | restituisce l'indice in cui appare la stringa passata come argomento | ``"Questa è una stringa".indexOf("inga")``
``lastIndexOf(stringa)`` | restituisce l'ultimo indice in cui appare la stringa passata come argomento | ``"Questa è una stringa".lastIndexOf("ga")``
``replace(stringa1, stringa2)`` | sostituisce tutte le occorrenze della prima stringa passata come argomento con la seconda stringa passata come argomento | ``"Questa è una stringa".replace("a", "altra stringa")``
``startsWith(stringa)`` | indica se inizia con la stringa passata come argomento | ``"Questa è una stringa".startsWith("inga")``
``substring(inizio, fine)`` | restituisce la stringa inclusa tra le posizioni di inizio e fine | ``"Questa è una stringa".substring(1,4)``
``toLowerCase()`` | restituisce la stringa con tutti i caratteri in minuscolo | ``"Questa è una stringa".toLowerCase()``
``toUpperCase()`` | restituisce la stringa con tutti i caratteri in maiuscolo | ``"Questa è una stringa".toUpperCase()``
``trim()`` | rimuove tutti gli spazi iniziali e finali | ``"Questa è una stringa".trim()``

## Operazioni sui numeri ed operatori aritmetici

Gli operatori aritmetici si applicano a valori numerici e servono per le classiche operazioni aritmetiche.

Simbolo operatore | Operatore aritmetico | Esempio d'uso
--- | --- | ---
``+`` | somma tra due numeri | ``x = 3 + 4``
``-`` | sottrazione tra due numeri o negazione di un numero | ``x = 3 - 4`` oppure ``x = -(-3)``
``*`` | moltiplicazione tra due numeri | ``x = 3 * 4``
``/`` | divisione tra due numeri | ``x = 3 / 4``
``%`` | resto della divisione tra due numeri | ``x = 3 % 4``
``**`` | esponenziale  | ``x = 3 ** 4``
``++`` | incremento (incrementa il numero di un'unità) | ``x = 3++``
``--`` | decremento (decrementa il numero di un'unità) | ``x = 3--``

Per tutte le altre operazioni sui numeri si utilizzano le proprietà ed i metodi della libreria ``Math`` e dell'oggetto ``Number``.

Le costanti ed i metodi resi disponibili dalla libreria ``Math`` sono numerosissimi, per un elenco completo si rimanda alla documentazione della libreria. Di seguito un elenco delle costanti e dei metodi più utilizzati:

Costante | Operazione | Esempio d'uso
--- | --- | ---
``Math.E`` | Costante e di Eulero / Nepero | ``"La costante E vale" + Math.E``
``Math.PI`` | Costante &Pi; (pi greco) / Costante di Archimede | ``"La costante &Pi; vale" + Math.PI``
``Math.SQRT2`` | Valore della radice quadrata di 2 | ``"La costante SQRT2 vale" + Math.SQRT2``

Metodi | Operazione | Esempio d'uso
--- | --- | ---
``abs(x)`` | restituisce il valore assoluto del numero x | ``Math.abs(-2)``
``cbrt(x)`` | restituisce la radice cubica del numero x | ``Math.cbrt(-2)``
``ceil(x)`` | restituisce l'arrotondamento di x al numero intero più grande | ``Math.ceil(-2.12)``
``cos(x)`` | restituisce il coseno dell'angolo x (espresso in radianti) | ``Math.cos(-2)``
``exp(x)`` | restituisce l'esponenziale in base E del numero x | ``Math.exp(2)``
``floor(x)`` | restituisce l'arrotondamento di x al numero intero più piccolo | ``Math.floor(-2)``
``log(x)`` | restituisce il logaritmo in base E del numero x | ``Math.log(2)``
``max(x, y, w, ...)`` | restituisce il maggiore dei valori passati come argomento | ``Math.max(-2, 3, 4, -8)``
``min(x, y, w, ...)`` | restituisce il minore dei valori passati come argomento | ``Math.min(-2, 3, 4, -8)``
``pow(x, y)`` | restituisce il valore di x elevato ad y | ``Math.pow(2, 3)``
``random()`` | restituisce un valore casuale tra zero ed uno | ``Math.random()``
``round(x)`` | restituisce l'arrotondamento di x al numero intero più vicino | ``Math.round(3.12)``
``sin(x)`` | restituisce il seno dell'angolo x (espresso in radianti) | ``Math.sin(2)``
``sqrt(x)`` | restituisce la radice quadrata di x | ``Math.sqrt(2)``
``trunc(x)`` | restituisce il valore di x senza la parte decimale | ``Math.trunc(3.2)``

Le costanti ed i metodi comunemente utilizzati dell'oggetto ``Number`` sono di seguito descritti:

Costante | Operazione | Esempio d'uso
--- | --- | ---
``Number.NaN`` | Valore speciale indicante 'Not a Number' | ``"Il valore NaN vale" + Number.NaN``
``Number.NEGATIVE_INFINITY`` | Valore speciale indicante 'Infinito negativo' | ``" -Infinito " + Number.NEGATIVE_INFINITY``
``Number.POSITIVE_INFINITY`` | Valore speciale indicante 'Infinito positivo' | ``" +Infinito " + Number.POSITIVE_INFINITY``

Metodi | Operazione | Esempio d'uso
--- | --- | ---
``isNaN()`` | indica se il valore è 'NaN' | ``Number.isNaN(-2)``
``isFinite()()`` | indica se il valore è un numero finito | ``Number.isFinite()``
``isInteger()`` | indica se il valore è un numero intero | ``Number.isInteger()``
``parseFloat(string)`` | converte la stringa in un numero decimale | ``Number.parseFloat("2.15")``
``parseInt(string)`` | converte la stringa in un numero intero | ``Number.parseInt("2.15")``

## Operatori relazionali

Permettodo di valutare le relazioni tra i valori indicati. I confronti possono avvenire anche tra tipi diversi, poichè JavaScript prevede delle conversioni automatiche da un tipo all'altro prima di confrontarli.

Simbolo operatore | operatore relazionale | Esempio d'uso
--- | --- | ---
``<`` | minore | ``3 < 4``
``<=`` | minore o uguale | ``3 <= 4``
``>`` | maggiore | ``3 > 4``
``>=`` | maggiore o uguale | ``3 >= 4``
``==`` | valore uguale | ``3 == 4``
``!=`` | valore diverso | ``3 != 4``
``===`` | strettamente uguale (valore e tipo di dato uguali) | ``3 === '3'``
``!==`` | strettamente diverso (valore o tipo di dato differenti) | ``3 !== '4''``

## Operatori logici

Gli operatori logici permettono di lavorare con i valori di verità delle proposizioni logiche, ovvero con i valori **vero** o **falso**. Ad esempio la proposizione ``3 < 4`` ha il valore **vero**. Gli operatori logici permettono quindi di congiungere, disgiungere o negare proposizioni.

Simbolo operatore | Operatore logico | Esempio d'uso
--- | --- | ---
``&&`` | and (congiunzione logica) | ``x = (3 < 4) && (4 < 5)``
``||`` | or (disgiunzione logica) | ``x = (3 < 4) || (4 < 5)``
``!`` | not (negazione logica) | ``x = ! (3 < 4)``

## Operatori binari

Gli operatori binari operano sulla rappresentazione binaria dei numeri e permettono le classiche operazioni disponibili nell'algebra di Boole.

Simbolo operatore | Operatore binario | Esempio d'uso
--- | --- | ---
``&`` | operazione di and booleano tra due sequenze di bit | ``x = 3 & 5``
``|`` | operazione di or booleano tra due sequenze di bit | ``x = 3 | 5``
``^`` | operazione di xor booleano tra due sequenze di bit | ``x = 3 ^ 5``
``~`` | operazione di not booleano su una sequenza di bit | ``x = 3 ~ 5``
``<<`` | shift sinistro di n posizioni | ``x = 3 << 5``
``>>`` | shift destro di n posizioni | ``x = 3 >> 5``
``>>>`` | shift destro senza segno di n posizioni | ``x = 3 >>> 5``

## Assegnazione

Gli operatori di assegnazione si utilizzano per assegnare il valore o il risultato di un'espressione ad una variabile. L'elenco degli operatori di assegnazione è il seguente:

Simbolo operatore | Operatore relazionale | Esempio d'uso
--- | --- | ---
``=`` | assegna il valore ad una variabile | ``x = 5``
``+=`` | somma il valore al valore della variabile e assegna il risultato alla variabile stessa | ``x += 5``
``-=`` | sottrae il valore della variabile il valore indicato e assegna il risultato alla variabile stessa | ``x -= 5``
``*=`` | moltiplica il valore della variabile per il valore indicato e assegna il risultato alla variabile stessa | ``x *= 5``
``/=`` | divide il valore della variabile per il valore indicato e assegna il risultato alla variabile stessa | ``x /= 5``
``%=`` | calcola il resto della divisione tra il valore della variabile ed il valore indicato ed assegna il risultato alla variabile stessa | ``x %= 5``
``&=``| effettua l'operazione di and booleano tra due sequenze di bit ed assegna il risultato alla variabile stessa | ``x &= 5``
``|=``| effettua l'operazione di or booleano tra due sequenze di bit ed assegna il risultato alla variabile stessa | ``x |= 5``
``^=``| effettua l'operazione di xor booleano tra due sequenze di bit ed assegna il risultato alla variabile stessa | ``x ^= 5``
``~=``| effettua l'operazione di not booleano su una sequenza di bit ed assegna il risultato alla variabile stessa | ``x ~= 5``
``<<=``| effettua l'operazione di shift sinistro di n posizioni ed assegna il risultato alla variabile stessa | ``x <<= 5``
``>>=``| effettua l'operazione di shift destro di n posizioni ed assegna il risultato alla variabile stessa | ``x >>= 5``
``>>>=``| effettua l'operazione di shift destro senza segno di n posizioni ed assegna il risultato alla variabile stessa | ``x >>>= 5``
