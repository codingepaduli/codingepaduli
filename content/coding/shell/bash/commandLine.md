---
type: "bash"
title: "Command line examples"
description: "Command line examples"
date: 2025-01-26
publishdate: 2025-01-26
lastmod: 2025-01-26
categories: ["coding", "shell", "bash"]
keywords: ["coding", "shell", "bash"]
draft: false
toc: false
summary: "Command line examples"
---

# Command line examples

## ``ls``

```bash
echo -e "\t ricerca file regolari: "
ls -l | grep "^-"

echo -e "\n\t ricerca directory con permesso r-x per altri utenti: "
ls -l | grep "^d......r.x"

echo -e "\tvisualizza file con permessi ""rw-"" per 2 volte consecutive"
ls -l | egrep '(rw-){2}'

echo -e "\t visualizza la data dei file"
ls -lA --time-style=long-iso
```

## ``grep``

```bash
echo -e "\tvisualizza le righe contenenti la parola ""Dimensione"" "
# l'opzione -h indica di non stampare il nome del file
grep -h -e 'Dimensione' *

echo -e "\tvisualizza le righe contenenti la parola ""Dimensione"" "
echo -e "\t indicando anche il nome del file per ogni corrispondenza"
# l'opzione -H indica di stampare il nome del file per ogni corrispondenza
grep -H -e 'Dimensione' *

echo -e "\tvisualizza solo parole che iniziano con ""Dim"", non tutta la riga"
echo -e "\t indicando anche il nome del file per ogni corrispondenza"
# l'opzione -o indica di non stampare tutta la riga, ma solo le parti corrispondenti
grep -o -H -e 'Dim[a-zA-Z0-9]*' *

echo -e "\tvisualizza ricorsivamente tutti i file con la parola"
echo -e " ""Dim"" nella cartella corrente"
grep --include "*" --recursive "Dim" .

echo -e "\n\t utenti che usano bash (elencati nel file /etc/passwd)"
echo -e "\n\t seguiti da user ID e group ID. I campi sono separati "
echo -e "\n\t dal carattere ':', stampiamo i campi 1,3,4"
grep "bash" /etc/passwd | cut -d:  -f1,3,4
```

## ``find``

```bash
echo -e "\n\t file regolari con più di un link"
find ./  -links +1 -type f

echo -e "\n\t directory con nome che inizia per maiuscola"
find ./ -maxdepth 1 -type d | grep "^\./[[:upper:]]"

echo -e "\n\t file con permesso r-x per il gruppo di appartenenza"
find ./ -maxdepth 1 -perm -g=+r+x

echo -e "\n\t file con permesso lettura OPPURE esecuzione per il gruppo"
find ./ -maxdepth 1 -perm -g=+r -o -perm -g=+x

echo -e "\n\t file con permesso lettura OPPURE esecuzione per il gruppo "
echo -e "\t e li stampa in un modo particolare:"
find ./ -maxdepth 1 -perm -g=+r -o -perm -g=+x -printf "proprietario: %g, file: %p \n"

echo -e "\n\t Nella directory corrente visualizzare la data di ultimo "
echo -e "\t accesso per tutti i file regolari."
find ./ -maxdepth 1 -type f -printf " file: \"%p\"; data ed ora: %AD %AT \n"

echo -e "\n\t cerco directory con nome che inizia per ""d"" maiuscola o minuscola"
find ./ -maxdepth 1 -type d -iname "d*"  # iname indica case Insensitive

echo -e "\n\t cerco directory con nome che inizia per ""d"" maiuscola o minuscola e modificata negli ultimi 7 giorni"
find ./ -maxdepth 1 -type d -iname "d*" -mtime -7 # iname indica case Insensitive

echo -e "\n\t cerco files con nome che inizia per ""r"" maiuscola o minuscola e dimensione > 1 byte"
find ./ -maxdepth 1 -type f -iname "r*" -size +1c # c indica bytes

echo -e "\n\t cerco files con nome che inizia per ""r"" maiuscola o minuscola e proprietario 'io'"
find ./ -maxdepth 1 -type f -iname "r*" -user 'io'

echo -e "\n\t cerco files con nome che non termini con .jpg (case-Insensitive)"
find ./ -maxdepth 1 -type f -not  \( -name "*.jpg" -o -name "*.JPG" \) 

echo -e "\n\t cerco directory con nome che inizia per ""d"" maiuscola "
echo -e "\t o minuscola e ne elenco il contenuto."
find ./ -maxdepth 1 -type d \( -name "d*" -o -name "D*" \) -exec ls {} \;

echo -e "\n\t cerco i file modificati in una specifica data."
find ./ -maxdepth 1 -type f -newermt '2022-10-13 00:00' -not -newermt '2028-10-13 23:59' -exec ls -l --time-style=long-iso {} \;

echo -e "\n\t directory con nome che inizia per D maiuscola (uso le espr. regolari)."
find ./ -regextype posix-egrep -maxdepth 1 -regex "^./D.*$"

echo -e "\n\t file non nascosti (non iniziano col punto) che hanno per 2° carattere 'i' mostrati elencati tra doppi apici."
find ./ -regextype posix-egrep -maxdepth 1 -regex "./[^.]i.*$" | ls -Q
```

## ``chmod``

```bash
# inizializzo il file con i permessi
chmod 0440 regular_file1

echo "Il comando chmod gestisce i permessi degli utenti (destinatari) sui vari file (e directory)."
echo -e "I permessi sono quelli di: \n\t lettura (r) => peso 4 \n\t scrittura (w) => peso 2 \n\t esecuzione (x) => peso 1 (l'esecuzione per le directory significa permesso di 'attraversarle' e quindi di entrarci."
echo -e "Le azioni sul file sono: \n\t assegnazione permessi (=) \n\t aggiunta (+) a permessi correnti \n\t rimozione (-) dai permessi correnti."
echo -e "I destinatari dei permessi possono essere: utente corrente (u), utenti del gruppo (g): altri (o). Si possono indicare piu destinatari ('ug' oppure 'ugo'), per indicare tutti si usa (a).\n"
echo 'Il comando si puo usare indicando destinatario, azione e permessi nella forma letterale: '
echo -e "\t chmod ug+rwx file"
echo -e "\t \t => destinatario ug (utente e gruppo utente)"
echo -e "\t \t => azione + (privilegi da aggiungere a quelli esistenti)"
echo -e "\t \t => privilegi rwx (lettura scrittura esecuzione)"
echo 'oppure nella forma numerica, indicando la somma dei permessi per utente, gruppo e altri: '
echo -e "\t chmod 753 file"
echo -e "\t \t => permessi utente => 7 ovvero la somma di lettura (4), scrittura (2) ed esecuzione (1)"
echo -e "\t \t => permessi gruppo => 5 ovvero la somma di lettura (4) ed esecuzione (1)"
echo -e "\t \t => permessi utente => 3 ovvero la somma di scrittura (2) ed esecuzione (1)"
echo -e "\n Esistono poi altri 3 permessi speciali per file e directory:"
echo -e "\t set-user-ID 's' => peso 4 => Permesso di esecuzione del file con gli stessi permessi del proprietario del file"
echo -e "\t set-group-ID 's' => peso 2 => Permesso di esecuzione del file con gli stessi permessi del gruppo proprietario del file"
echo -e "\t restricted deletion flag 't' / sticky bit 't' => peso 1 => "
echo -e "\t\t Se applicato su directory viene chiamato 'restricted deletion flag', e permette solo al proprietario della directory o al proprietario del file di rimuovere il file dalla directory o di rinominare il il file. In genere si usa su cartelle in cui tutti gli utenti possono scrivere, come la cartella /tmp."
echo -e "\t\t Se applicato su file, viene chiamato 'sticky bit' e permette la copia in swap memory del file per un caricamento piu veloce che da disco".

echo -e "\n ESEMPIO D'USO - FORMA LETTERALE: permessi correnti del file: regular_file1"
ls -l regular_file1

echo -e "\n assegno (=) i permessi rwx all'utente corrente"
chmod u=rwx regular_file1
ls -l regular_file1

echo -e "\n rimuovo (-) i permessi wx all'utente corrente"
chmod u-wx regular_file1
ls -l regular_file1

echo -e "\n al gruppo (g) aggiungo (+) i permessi di scrittura (w) ed esecuzione (x)"
chmod g+wx regular_file1
ls -l regular_file1

echo -e "\n ad utente (u) gruppo (g) e altri (o) assegno (=) i permessi di scrittura (w) ed esecuzione (x)"
echo -e "NOTA: il permesso di lettura per l'utente corrente viene cancellato perche' sovrascritto, dato che e' stata fatta un assegnazione, non un aggiunta"
chmod ugo=wx regular_file1
ls -l regular_file1

echo -e "\n a tutti (a) rimuovo (-) i permessi di scrittura (w) ed esecuzione (x)"
echo -e " poi all' utente (u) aggiungo (+) i permessi di lettura (r) "
echo -e " poi al gruppo (g) aggiungo (+) i permessi di lettura (r) "
chmod a-wx,u+r,g+r regular_file1
ls -l regular_file1

echo -e "\n ESEMPIO D'USO - FORMA NUMERICA:"
echo -e "\n assegno i permessi rwx (4+2+1=7) ad utente, gruppo ed altri"
chmod 777 regular_file1 # r=4, w=2, x=1 => 7=r+w+x=4+2+1
ls -l regular_file1

echo -e "\n assegno il permesso di lettura r (r=4) ad utente, nessun permesso al gruppo e ad altri utenti"
chmod 400 regular_file1 # r=4
ls -l regular_file1

echo -e "\n ESEMPIO D'USO - PERMESSI SPECIALI E DIRECTORY "
echo -e "permessi cartella dir2"
ls -ld */
echo -e "\n rimuovo tutti i permessi della cartella dir2, tranne la lettura per l'utente "
chmod 400 dir2
ls -ld */

echo -e "\n eseguo un accesso alla cartella con 'cd dir2' ed ottengo permesso negato (manca il permesso di attraversamento 'x')"
cd dir2

echo -e "\n aggiungo il permesso di attraversamento 'x' alla cartella dir2"
chmod +x dir2
cd dir2
echo -e "\n ora non ho accesso negato, ma sono nella cartella dir2"
cd ..

echo -e "\n assegno tutti i permessi, compresi quelli speciali, al file"
chmod 7777 regular_file1
ls -l regular_file1
```

## ``xargs``

``xargs``: prende l'output di un comando e lo passa come argomento ad un altro comando.

Esempio:

```bash
echo "file1.txt file2.txt file3.txt" | xargs cat
```

Equivale a:

```bash
cat file1.txt && cat file2.txt && cat file3.txt
```

Secondo esempio:

```bash
echo '-name "*.sh"' | xargs find .
```

Equivale a:

```bash
find . -name "*.sh"
```

```bash
# Visualizzare solo il nome del file che contiene la stringa "Enter"
find ./ -name '*' -print | xargs   grep -l Enter

# Visualizzare il nome del file ed anche il contenuto che contiene la stringa "Enter"
find ./ -name '*' -print | xargs   grep -i Enter
```

## Esercizi

[commandLine-prepare.sh](/static/coding/shell/bash/commandLine-prepare.sh "commandLine - preparazione ambiente");

[commandLine-test.sh](/static/coding/shell/bash/commandLine-test.sh "commandLine - test");

[commandLine-test_chmod.sh](/static/coding/shell/bash/commandLine-test_chmod.sh "commandLine - test chmod").
