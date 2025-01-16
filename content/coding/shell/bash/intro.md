---
type: "bash"
title: "Esercizi in bash"
description: "Esercizi in bash"
date: 2025-01-05
publishdate: 2025-01-05
lastmod: 2025-01-05
categories: ["coding", "shell", "bash"]
keywords: ["coding", "shell", "bash"]
draft: false
toc: false
summary: "Esercizi in bash"
---

# Esercizi in bash

## Controllo esistenza file

Si realizzi uno script ``controlla_esistenza_file.sh`` che prende come parametro il nome di un file ed, ad intervalli di 20 secondi, controlli che il file sia stato creato, restando in attesa fino alla creazione.

[controlla_esistenza_file.sh](/static/coding/shell/bash/controlla_esistenza_file.sh "Controllo esistenza file").

## Crea nodi HTML

Si realizzi uno script ``crea_nodi_html.sh`` che genera 30 file vuoti denominati ``node1.html``, ``node2.html``, ... , ``node30.html``.

In ogni file ``nodeXXX.html`` inserire poi la stringa 
``<HTML> <HEAD> <TITLE> nodoXXX.html </TITLE> </HEAD> <BODY> nodoXXX.html </BODY> </HTML>``.

Per ciascun file HTML aggiungere all'inizio del file una riga di commento che indica il proprietario del file e la data di ultima modifica del file. Nota che commenti HTML si applicano nella forma <!-- Commento -->.

[crea_nodi_html.sh](/static/coding/shell/bash/crea_nodi_html.sh "Crea nodi HTML").

## Elenca file

Si realizzi uno script ``elenca_file.sh`` che prende come parametro una directory e un file, cerchi file regolari e directory nella directory passata come argomento e:

- aggiungere la lettera "F" prima del nome per i file regolari;
- aggiungere la lettera "D" per le directory;

L'output deve essere indirizzato nel file passato come argomento.

[elenca_file.sh](/static/coding/shell/bash/elenca_file.sh "Elenca file").

## Quadrato

Si realizzi uno script ``drawsquare.sh`` che prende come parametro un numero ``n`` e disegni un quadrato di lato ``n``, gli angoli li disegni col segno più ``+``, i lati col trattino e il contenuto con degli asterischi ``*``.

[drawsquare.sh](/static/coding/shell/bash/drawsquare.sh "Quadrato").

## Numero file in sotto-directory

Si realizzi uno script ``num_subdir.sh`` che calcola il numero di file delle sotto-directory di una certa directory ``ambiente``, e stampa a video per ogni directory il messaggio "La sotto-directory NomeDir contiene N file" (è molto importante riuscire a comporre esattamente questo messaggio).

Gli eventuali file contenuti nella directory NomeDir devono essere saltati.

Lo script ``num_subdir_prepare.sh`` servirà a preparare la cartella ``ambiente``:

- [num_subdir_prepare.sh](/static/coding/shell/bash/num_subdir_prepare.sh "Preparazione numero file in sotto-directory").
- [num_subdir.sh](/static/coding/shell/bash/num_subdir.sh "Numero file in sotto-directory").

## Seleziona righe

Si realizzi uno script ``seleziona_righe.sh`` che, dato un file di testo esistente ``elenco.txt``, visualizza la riga di tale file che viene lessicograficamente per seconda.

Ad esempio se il contenuto di un file elenco è il seguente:

```plaintext
valeria
aldo
roberta
bruno
sandro
paola
```

il comando deve creare il file nominativo con il seguente contenuto:

```plaintext
bruno
```

Tale script dovrà inoltre prendere come argomento di input il nome di un file non esistente, e creare questo file che deve essere formato dalle prime 3 righe del file ``elenco.txt`` e dalle ultime 2 righe del file ``lista.txt``. Non devono essere usati file temporanei.

- [seleziona_righe.sh](/static/coding/shell/bash/seleziona_righe.sh "Seleziona righe").
- [seleziona_righe_elenco.txt](/static/coding/shell/bash/seleziona_righe_elenco.txt "Seleziona righe - elenco").
- [seleziona_righe_lista.txt](/static/coding/shell/bash/seleziona_righe_lista.txt "Seleziona righe - lista").

## Stringa da cellulare

Si realizzi uno script ``stringa_da_cellulare.sh`` che prenda come parametri una sequenza di caratteri, separati tra loro da uno spazio, e li trasformi in numeri tramite la seguente regola (simile a quella dei cellulari):

0=ABC, 1=DEF, 2=GHI, 3=JKL, 4=MNO, 5=PQR, 6=STU, 7=VWX, 8=YZ

E' OBBLIGATORIO usare la struttura di controllo case (e NON l’if).
L'output deve essere stampato sia su più righe, che su un'unica riga.

Esempio:

```plaintext
$ ./stringa_da_cellulare.sh A S T N O B
```

L'output deve essere:

```plaintext
output: 0 6 6 4 4 0
```

- [stringa_da_cellulare.sh](/static/coding/shell/bash/stringa_da_cellulare.sh "Stringa da cellulare").

## Tipo di tasto

Si realizzi uno script ``tipo_tasto.sh`` che prenda come argomento di input un carattere ed indichi se si tratta di una lettera minuscola, lettera maiuscola, cifra numerica o altro.

- [tipo_tasto.sh](/static/coding/shell/bash/tipo_tasto.sh "Tipo di tasto").

## Controlla utente

Si realizzi uno script ``controlla_utenti_loggati.sh`` che prenda come parametro ``n`` (gli ultimi n accessi al sistema) ed ``UserName`` (l’utente), controlli se l’utente ``UserName`` esiste (quindi il suo UserName è contenuto all’interno del file ``/etc/passwd``) e, nel caso esista, controlli se risulta tra gli ultimi ``n`` utenti collegati al sistema (``who | tail --lines=$n`` visualizza gli ultimi).

Esempio:

```plaintext
$ ./controlla.sh 5 io
```

L'output deve essere:

```plaintext
L’utente UserName esiste ed è collegato al sistema.
```

- [controlla_utenti_loggati.sh](/static/coding/shell/bash/controlla_utenti_loggati.sh "Controlla utente loggato").
