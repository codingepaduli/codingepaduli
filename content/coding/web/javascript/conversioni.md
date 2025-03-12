---
type: "javascript"
title: "Riepilogo dei metodi e degli operatori per manipolare i tipi primitivi"
description: "Riepilogo dei metodi e degli operatori per manipolare i tipi primitivi"
date: 2020-04-06
publishdate: 2020-04-06
lastmod: 2020-04-06
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: true
toc: false
summary: "Riepilogo dei metodi e degli operatori per manipolare i tipi primitivi"

references:
    -   title: "Libreria matematica Math"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math"
        description: "Firma e descrizione delle varie funzioni matematiche"
    -   title: "Libreria matematica Number"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number"
        description: "Firma e descrizione delle varie funzioni sui numeri"
---

# Riepilogo dei metodi e degli operatori per manipolare i tipi primitivi

## Operazioni ed operatori per le stringhe

Diversi operatori possono lavorare sulle stringhe:

Simbolo operatore             | Operatore                           | Esempio d'uso
------ | ---------------------------------------------------------- | ---
``+``  | concatenazione tra due stringhe                            | ``x = "una " + "stringa"``
``==`` | confronto di eguaglianza di due stringhe                   | ``"una " == "stringa"``
``>``  | confronto di due stringhe in base all'ordinamento naturale | ``"una " > "stringa"``
``>=`` | confronto di due stringhe in base all'ordinamento naturale | ``"una " >= "stringa"``
``<``  | confronto di due stringhe in base all'ordinamento naturale | ``"una " < "stringa"``
``<=`` | confronto di due stringhe in base all'ordinamento naturale | ``"una " <= "stringa"``

## Proprietà e funzioni su stringhe

Riepilogo delle proprietà e dei metodi più utilizzati degli oggetti di tipo ``String``. Per un elenco completo si rimanda alla documentazione ufficiale.

L'unica proprietà disponibile nelle stringhe è ``length``, ed è di sola lettura.

Proprietà   | Operazione              | Esempio d'uso
----------- | ----------------------- | -------------
``length``  | lunghezza della stringa | ``"una stringa".length``

Metodi                   | Operazione                                                    | Esempio d'uso
-------------------------|---------------------------------------------------------------|--------------
``charAt(index)``        | restituisce il carattere alla posizione indicata              | ``"una stringa".charAt(0)``
``endsWith(stringa)``    | indica se termina con la stringa indicata                     | ``"una stringa".endsWith("inga")``
``indexOf(stringa)``     | restituisce l'indice in cui appare la stringa indicata        | ``"una stringa".indexOf("inga")``
``lastIndexOf(stringa)`` | restituisce l'ultimo indice in cui appare la stringa indicata | ``"una stringa".lastIndexOf("ga")``
``replace(stringa1, stringa2)`` | sostituisce tutte le occorrenze della prima stringa con la seconda stringa | ``"una stringa".replace("a", "altra stringa")``
``startsWith(stringa)``  | indica se inizia con la stringa indicata                      | ``"una stringa".startsWith("inga")``
``substring(inizio, fine)`` | restituisce la stringa inclusa tra le posizioni di inizio e fine      | ``"una stringa".substring(1,4)``
``toLowerCase()``        | restituisce la stringa con tutti i caratteri in minuscolo     | ``"una stringa".toLowerCase()``
``toUpperCase()``        | restituisce la stringa con tutti i caratteri in maiuscolo     | ``"una stringa".toUpperCase()``
``trim()``               | rimuove tutti gli spazi iniziali e finali                     | ``"una stringa".trim()``

## Costanti e funzioni matematiche

Riepilogo delle proprietà e dei metodi più utilizzati della libreria ``Math``. Per un elenco completo si rimanda alla documentazione della libreria.

Costante       | Operazione                            | Valore
-------------- | ------------------------------------- | ---------------------
``Math.E``     | Costante e di Eulero / Nepero         | ``2.718281828459045``
``Math.PI``    | Costante di Archimede &Pi; (pi greco) | ``3.141592653589793``
``Math.SQRT2`` | Valore della radice quadrata di 2     | ``1.414213562373095``

Metodi                | Operazione                             | Esempio d'uso
--------------------- | -------------------------------------- | -------------------------
``abs(x)``            | Valore assoluto                      | ``Math.abs(-2)``
``cbrt(x)``           | Radice cubica                        | ``Math.cbrt(-2)``
``ceil(x)``           | Arrotondamento per eccesso           | ``Math.ceil(-2.12)``
``cos(x)``            | Coseno dell'angolo(in radianti)      | ``Math.cos(-2)``
``exp(x)``            | Esponenziale in base E               | ``Math.exp(2)``
``floor(x)``          | Arrotondamento per difetto           | ``Math.floor(-2)``
``log(x)``            | Logaritmo in base E                  | ``Math.log(2)``
``max(x, y, w, ...)`` | Maggiore dei valori passati          | ``Math.max(-2, 3, 4, -8)``
``min(x, y, w, ...)`` | Minore dei valori passati            | ``Math.min(-2, 3, 4, -8)``
``pow(x, y)``         | x elevato a y                        | ``Math.pow(2, 3)``
``random()``          | Valore casuale tra zero ed uno       | ``Math.random()``
``round(x)``          | Arrotondamento all'intero più vicino | ``Math.round(3.12)``
``sin(x)``            | Seno dell'angolo (in radianti)       | ``Math.sin(2)``
``sqrt(x)``           | Radice quadrata                      | ``Math.sqrt(2)``
``trunc(x)``          | Valore senza parte decimale          | ``Math.trunc(3.2)``

Riepilogo delle proprietà e dei metodi dell'oggetto ``Number``. Per maggiori dettagli si rimanda alla documentazione dell'oggetto Math'.

Costante                     | Operazione                                    | Esempio d'uso
---------------------------- | --------------------------------------------- | ---
``Number.NaN``               | Valore speciale indicante 'Not a Number'      | ``"Il valore NaN vale" + Number.NaN``
``Number.NEGATIVE_INFINITY`` | Valore speciale indicante 'Infinito negativo' | ``" -Infinito: " + Number.NEGATIVE_INFINITY``
``Number.POSITIVE_INFINITY`` | Valore speciale indicante 'Infinito positivo' | ``" +Infinito: " + Number.POSITIVE_INFINITY``

Metodi                 | Operazione                                | Esempio d'uso
---------------------- | ----------------------------------------- | ---
``isNaN()``            | indica se il valore è 'NaN'               | ``Number.isNaN(-2)``
``isFinite()``         | indica se il valore è un numero finito    | ``Number.isFinite()``
``isInteger()``        | indica se il valore è un numero intero    | ``Number.isInteger()``
``parseFloat(string)`` | converte la stringa in un numero decimale | ``Number.parseFloat("2.15")``
``parseInt(string)``   | converte la stringa in un numero intero   | ``Number.parseInt("2.15")``
``toString(base)``     | converte il numero in stringa e specifica la base numerica nella quale rappresentare il numero | ``x.toString(16)``
``toExponential(digits)`` | converte il numero in stringa con rappresentazione esponenziale (mantissa ed esponente), specificando opzionalmente il numero di cifre decimali da utilizzare per la mantissa | ``z.toExponential(16)``

