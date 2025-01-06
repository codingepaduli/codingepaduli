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

Scrivere uno script shell ``seleziona_righe.sh`` che, dato un file di testo esistente ``elenco.txt``, visualizza la riga di tale file che viene lessicograficamente per seconda.

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
