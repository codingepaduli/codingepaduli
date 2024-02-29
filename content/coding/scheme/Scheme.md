---
type: "scheme"
title: "Appunti scheme"
description: "Appunti scheme"
date: 2022-03-28
publishdate: 2022-03-28
lastmod: 2022-03-28
spellcheck: 2022-03-28
categories: ["coding", "scheme"]
keywords: ["coding", "scheme"]
draft: true
toc: false
summary: "Appunti scheme"
weight: 1
---

# Appunti su scheme (estensione .rkt)

```scheme

; Nel '58 è nato lo standard LISP. SBCL, lisp-in-a-box, lispy sono implementazioni diverse dello stesso standard. Scheme e' nato nel 78 per mano di G.Steele e G. Sussmann, ed e' un dialetto del lisp. E' a grandi tratti descritto dalle RNRS (N e' un numero) una sorta di RFC per il linguaggio. Racket, ChezSchee, GUILE sono implementazioni delle varie RNRF

; Per prendere confidenza con il linguaggio, si utilizza l'ambiente DrRacket, indicando il dialetto che si vuole utilizzare. DrRacket dispone di una sezione per le definizioni e di una sezione per le valutazioni (tipo shell, ma piu' propriamente detta REPL, ovvero Read-Eval-Print Loop)

; Per questi scopi, useremo come linguaggio scheme il "Pretty Big" ovvero utilizziamo il linguaggio in modalita' lisp like.

; Scheme e lisp sono linguaggi costruiti su espressioni S, ovvero espressioni basate su liste. La natura degli elementi in queste liste dice al valutatore come comportarsi.

; Il numero tre viene valutato e risulta essere un numero

3

; printf viene valutata e risulta essere una funzione. Notare che la funzione NON VIENE INVOCATA, l'interprete stampa a video #<procedure:printf> e non un eventuale risultato.

printf

; Ogni elemento della lista viene valutato e risulta essere il primo un numero, il secondo una funzione.

3 printf

; per invocare una funzione, si usano le parentesi, che richiedono sempre al loro interno una funzione o una special form, ovvero uno dei costrutti if, while, ecc.. Ovvio che prima dell'invocazione, entrambi i simboli vengono valutati, il primo risulta essere una funzione, il secondo un numero. Solo dopo la valutazione, la funzione viene invocata.

(print 3)

; Ecco quindi la funzione "define" che, quando INVOCATA, definisce un SIMBOLO e relativa associazione (in questo caso il simbolo e' il nome di una variabile ed e' associato al valore 3)

(define pie 3)

; una variabile booleana (#f o #v, tutti i valori non-#f sono trattati come veri).

(define boolvar #f)

; definizione di una variabile a cui e' assegnato il valore restituito dall'invocazione di una serie di funzioni.

(define stupid (and (and #f boolvar) (> pie 3)))

; "define" e' utilizzata anche per definire un nuovo modulo associato al simbolo.

(define (hello) (print "hello world"))

; definizione di un simbolo associato ad una funzione con argomenti e corpo. Solo il valore dell'ultima espressione e' restituito quando la funzione e' INVOCATA. Notare che le prime istruzioni del body sono incluse tra parentesi tonde proprio perche' si vuole che LE FUNZIONI definite nel corpo della funzione siano INVOCATE, e non valutate. L'ultimo elemento invece viene valutato e RESTITUITO a chi invoca questa funzione.

(define (hello2 msg)
  (printf "this is a simple function with a message: ")
  (printf msg)
  2)

; definizione di una funzione che fa uso di una special form (infatti e' contenuta in parentesi tonde), special form rappresentata dal costrutto if

(define (reply-more s)
  (if (equal? s "ciao")
      "ciao"
      (if (equal? s "addio")
          "addio"
          "I no spech inglish")))

; definizione di una funzione che fa uso di una special form (infatti e' contenuta in parentesi tonde), special form rappresentata dal costrutto "switch"

(define (reply-more2 s)
  (cond
    ((equal? s "ciao")
     "ciao")
    ((equal? "addio" s)
     "addio")
    (else "I no spech inglish")))

; LAMBDA permette la definizione di una funzione anonima che ha lista di argomenti ed un body.
; dato che si trova in parentesi DOPPIE, viene prima definita, poi anche valutata con il parametro passato "ciao".
((lambda (s)  (if (equal? s "ciao")
      (hello)
      (if (equal? s "addio")
          "addio"
          "I no spech inglish"))) "ciao")

; Le definizioni dei simboli possono essere "private", se non e' necessario una visibilita' maggiore.
; let permette di definire dei simboli (che prende come lista di parametri) e di utilizzarli nel suo body.

(let ((A 10)
      (B 20))
    (* A B))

; let* permette di definire dei simboli (che prende come lista di parametri) e di utilizzarli sia nella lista di parametri che nel body.

(let* ((A 10)
      (B 20)
      (C (+ A B)))
    (* (* A B) C))

;quoting (' is a shorter form of quoting) let to build a constant.

(quote apple)
'apple
(quote (1 2 3 4 (+ 5 4)))

;quasiquote let to build a constant evaluating the expression in unquote form.

(quasiquote (1 2 3 4 (+ 6 0)))
(quasiquote (1 2 3 4 (unquote (+ 6 0))))

; Operations

; invocazioni varie

(print "ciao")

(equal? 6 6)

(equal? "hi" "hi")

(string-append  "hi" " pie")

(string-length "shoelace")

(string? "hi")

(string? 1)

; invocazioni (operazioni algebriche)

(sqrt -16)

(number? 1)

(+ 1 2)

(- 0 1 2 3 4)

(< 2 1)

; invocazioni (operazioni su liste)

(list "red" "green" "blue" 1 2 3) ; crea una lista

(list (list 1 2 3) (list 2 3 4) (list 3 4 5) ) ; crea una "matrice"

(cons "dead" empty) ; crea una lista a partire da un altra

(build-list 10 values) ; crea una lista a partire da 0 ad n-1, applicando ad ogni elemento la funzione values

(length (list "hop" "skip" "jump")) ; numero di elementi

(empty? (list 1 3 5)) ; verifica se vuota

(list-ref (list "hop" "skip" "jump") 0) ; extract an element by index

(append (list "hop" "skip") (list "jump")) ; combine lists

(reverse (list "hop" "skip" "jump"))    ; reverse order

(member "fail" (list "hop" "skip" "jump")) ; check if the list contains the element

(member #f (list #f)) ; restituisce da una lista l'elemento speciicato

(first (list 1 2 3)) ; primo elemento

(rest (list 1 2 3)) ; lista rimanente estratto il primo elemento

; Iterazioni su liste

; La funzione map invoca il simbolo specificato per ogni elemento della lista. Il risultato di ogni invocazione e' usato per creare una nuova lista.

(map sqrt (list 1 4 9 16))

; La funzione andmap invoca il simbolo specificato per ogni elemento della lista, ed effettua un AND tra tutti i risultati di ogni invocazione.

(andmap string? (list "a" "b" "c"))

; La funzione ormap invoca il simbolo specificato per ogni elemento della lista, ed effettua un AND tra tutti i risultati di ogni invocazione.

(ormap number? (list "a" "b" 6))

; La funzione filter crea una lista a partire dagli elementi della lista che utilizzati come argomento nell'invocazione del simbolo risultano veri.

(filter string? (list "a" "b" 6))

; La funzione fold LEFT per prima cosa costruisce una lista scorrendo quella in ingresso da LEFT a RIGHT (reverse), ed aggiungendo come ultimo valore l'argomento del valore iniziale, poi, sulla lista costruita invoca il simbolo specificato.

(foldl - 12 '(1 2 3 4)) ; == (- 4 (- 3 (- 2 (- 1 12))))
(foldl string-append "H" '("A"  "b" "C")) ; == (string-append "C" "b" "A" "H")

; La funzione fold RIGHT per prima cosa costruisce una lista scorrendo quella in ingresso da RIGHT A LEFT (reverse), ed aggiungendo come ultimo valore l'argomento del valore iniziale, poi, sulla lista costruita invoca il simbolo specificato.

(foldr - 12 '(1 2 3 4)) ;  (- 1 (- 2 (- 3 (- 4 12))))
(foldr string-append "H" '("A"  "b" "C")) ; == (string-append "A" "b" "C" "H")

; check if the character is a vowel

(define (vowel? s)
  (or
    (equal? s #\A)
    (equal? s #\a)
    (equal? s #\E)
    (equal? s #\e)
    (equal? s #\I)
    (equal? s #\i)
    (equal? s #\O)
    (equal? s #\o)
    (equal? s #\U)
    (equal? s #\u)
  )
)

; Translator to farfallina languages. The string "ciao farfallone" will be "cifiafaofo fafarfafallofonefe"

(define (toFarfallinaLanguage2 s)
  (foldr string-append ""
   (map
    (lambda (s)
        (list->string (if (vowel? s) (list s #\f s) (list s) ))
    ) (string->list s)
   )))

(toFarfallinaLanguage2 "ciao farfallone")
(toFarfallinaLanguage2 "hi young racket programmer")

; create products matrix
;define list of sums from 1 to n for the first n numbers

(define (listOfSum s)
  (build-list (+ 1 s) (lambda (s)
    (foldr + 0 (if (equal? 0 s)
      '(0)
      (build-list s (lambda (t)
        (+ t 1))))))))

(listOfSum 10)
(listOfSum 20)
(listOfSum 30)

; Translator to farfallina languages. The string "ciao farfallone" will be "cifiafaofo fafarfafallofonefe" in recursive mode

(define (toRecursiveFarfallinaLanguage l)
  (cond
    ((empty? l) empty)
    (else
       (let*
         ((firstChar (first l))
          (head (if (vowel? firstChar) (list firstChar #\f firstChar) (list firstChar)))
         )
         (append head (toRecursiveFarfallinaLanguage (rest l)))
       ))))

(list->string (toRecursiveFarfallinaLanguage (string->list "ciauzz")))

```
