---
type: "tools"
title: "Cron e Crontab"
description: "Cron e Crontab, strumenti per la schedulazione di un task con una specifica ricorrenza."
date: 2021-01-15
publishdate: 2021-01-15
lastmod: 2021-01-15
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: false
toc: false
summary: "Cron e Crontab, strumenti per la schedulazione di un task con una specifica ricorrenza."

references:
    -   title: "How to use cron and anacron in Linux"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://opensource.com/article/17/11/how-use-cron-linux"
        description: "Scheduling tasks with cron, crontab and anacron"
    -   title: "Use systemd timers instead of cronjobs"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://opensource.com/article/20/7/systemd-timers"
        description: "Use systemd timers instead of cronjobs"
    -   title: "Analyzing systemd calendar and timespans"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://opensource.com/article/20/7/systemd-calendar-timespans"
        description: "Analyzing systemd calendar and timespans"
---

# Schedulazione task ricorrenti con cron e crontab

Cron e anacron permettono la schedulazione di un task utente con una specifica ricorrenza, ad esempio giornaliera o mensile. Per la scrittura dei task da eseguire, ci si avvale di due programmi: **crontab** ed **anacrontab**.

Cron presume che il sistema sia attivo 24 ore su 24, quindi se in un certo periodo il computer è spento, i task schedulati in quel periodo non saranno eseguiti, ma saranno schedulati per la prossima occorrenza. Ad esempio, se un task schedulato il primo giorno di ogni mese non viene eseguito, magari perché il computer è spento, allora sarà eseguito il primo giorno del mese successivo.

Gli utenti comuni non possono usare cron, però possono gestire i propri task attraverso crontab, se l'amministratore da loro i permessi di esecuzione del programma.

Anche gli amministratori possono utilizzare crontab, ed il corrispondente anacrontab, per gestire i task ricorrenti.

## Configurazione di cron per l'amministratore

Per verificare lo stato del servizio cron, eseguire come utente root il comando:

```bash
systemctl status cron.service
```

Sia l'amministratore, sia le applicazioni di sistema possono inserire i propri task nelle directory:

```plaintext
/etc/cron.d/
/var/spool/cron
```

Gli amministratori possono comunque utilizzare crontab per gestire i task ricorrenti. I task vengono raccolti nel file:

```plaintext
/etc/crontab
```

## Crontab

Per autorizzare gli utenti all'uso di crontab, creare (o modificare) il file ``/etc/cron.allow`` (utente proprietario ``root`` e gruppo proprietario ``crontab``) ed inserire una riga per ogni utente autorizzato.

Crontab si occupa di gestire il file in cui saranno indicati i task utente. Ogni file ha il nome dell'utente che ha schedulato i task.

Ogni utente abilitato ha il file dei task posizionato nella cartella:

```bash
/var/spool/cron/crontabs
```

Questo file deve essere modificato **esclusivamente** attraverso il comando ``crontab -e``, poiché questo comando verifica la sintassi del file e riavvia il demone ``cron.d``.

Ogni task eseguito prevede l'invio dell'output tramite una mail destinata all'utente. Le email sono memorizzate nella cartella:

```bash
/var/spool/mail/
```

### Configurazione primo job con crontab

Per schedulare un nuovo task, sono necessari i seguenti step:

1. Selezionare l'editor per editare i task, aggiungendo al file ``.profile`` una riga in cui si specifica la variabile:

    ```bash
    export EDITOR="/usr/bin/micro"
    ```

2. Eseguire il comando:

    ```bash
    crontab -e
    ```

3. Indicare le variabili ``SHELL``, ``PATH`` ed eventualmente ``MAILTO``:

    ```bash
    SHELL=/bin/bash
    PATH=/usr/sbin:/usr/bin:/sbin:/bin:/root/bin:/bin
    MAILTO=root@example.com
    ```

4. Inserire l'espressione che indica l'intervallo di ripetizione (da [https://crontab.guru/](https://crontab.guru/)) seguito dal comando (percorso completo) da eseguire:

    ```bash
    @reboot /bin/date "+\%F-\%T - Cron started" >> /home/io/login.txt 2>&1
    ```

Riavviando il sistema, l'utente dovrebbe trovare nella propria cartella ``/home/io`` il file ``login.txt`` con la data e l'ora di esecuzione del primo job schedulato.

Nel caso non sia stato eseguito, si può cercare una traccia di eventuali errori riferiti a cron nei file seguenti:

```bash
grep 'cron' /var/log/syslog
grep 'cron' /var/log/messages
```

## Sintassi di schedulazione di cron

La sintassi standard di una regola di cron è:

```plaintext
minuto ora giornoMese mese giornoSettimana  job
```

 |
--- | ---
``minuto``          | da 0 a 59 oppure ``*`` per indicare ogni minuto
``ora``             | da 0 a 23 oppure ``*`` per indicare ogni ora
``giornoMese``      | da 1 a 31 oppure ``*`` per indicare ogni giorno
``mese``            | da 1 a 12 oppure ``*`` per indicare ogni mese
``giornoSettimana`` | da 0 (Domenica) a 6 (Sabato) oppure * per indicare ogni giorno della settimana
``job``             | il comando da eseguire

Il campo ``giornoSettimana`` va in OR logico con il campo ``giornoMese``, per cui il task viene eseguito sia nei giorni indicati dal campo ``giornoMese``, sia nei giorni indicati nel campo ``giornoSettimana``.

Se il task deve essere eseguito il giorno 30 di ogni mese, allora il task non sarà eseguito a Febbraio (non ha 30 giorni).
Se l'orario di esecuzione è alle 2:30 di notte, allora il task non sarà eseguito nel giorno del passaggio dall'ora solare a quella legale (gli orologi avanzano di un'ora, dalle 2:00 alle 3:00).

In ogni campo si possono usare i seguenti modelli:

 |
--- | ---
``*``   | qualsiasi valore per il campo
``A,B`` | esecuzione del task quando ha valore A oppure B (non aggiungere il carattere spazio)
``A-B`` | esecuzione del task quando ha valore tra A e B (estremi compresi, senza spazio)
``A/B`` | esecuzione del task quando la divisione ha resto zero

Invece di specificare i singoli campi, si possono utilizzare le seguenti espressioni non standard:

 |
--- | ---
``@yearly``   | esecuzione del task annuale (non-standard)
``@annually`` | esecuzione del task annuale (non-standard)
``@monthly``  | esecuzione del task mensile (non-standard)
``@weekly``   | esecuzione del task settimanale (non-standard)
``@daily``    | esecuzione del task giornaliera (non-standard)
``@hourly``   | esecuzione del task oraria (non-standard)
``@reboot``   | esecuzione del task ad ogni riavvio (non-standard)

### Esempi di schedulazione

Per lanciare il comando ogni giorno:

```plaintext
@daily comando
```

Per lanciare il comando ogni giorno alle 7.30:

```plaintext
30 7 * * * comando
```

Per lanciare il comando il giorno 1 ed il giorno 16 dei mesi che vanno da aprile a ottobre:

```plaintext
26 * 1,16 4-10 * comando
```

Per lanciare il comando nei mesi che vanno da aprile a ottobre, il giorno 1 ed il giorno 16 ma anche il lunedì dei mesi predetti:

```plaintext
26 * 1,16 4-10 1 comando
```

Per lanciare il comando alla fine di ogni mese, dato che non c'è l'opzione, si può usare il giorno successivo, quindi il primo del mese, magari alle due di notte:

```plaintext
0 2 1 * * comando
```

Si vuole lanciare il comando ogni 5 minuti delle ore lavorative (9-18), ma solo un'ora si ed un'ora no. Ricordando che la regola ``A/B`` viene eseguito solo quando il resto della divisione è zero, la si può sfruttare per specificare l'esecuzione nelle ore pari, dato che solo le ore pari hanno resto zero, per cui l'espressione ``9-18/2`` realizza quanto desiderato:

```plaintext
*/5 9-18/2 * * * comando
```

### Redirezione output

Aggiungendo una redirezione, l'output del task finisce nel file di log, come con la regola:

```plaintext
@reboot /bin/date "+\%F-\%T - Cron started" >> /home/io/login.txt
```

E' possibile redirezionare il log ed evitare che la mail venga inviata, con la regola:

```plaintext
@reboot /bin/date "+\%F-\%T - Cron started" >> /home/io/login.txt 2>&1
```

E' possibile verificare il valore delle variabili con le redirezioni:

```plaintext
/bin/echo $PATH > /root/path.txt
/usr/bin/env > /root/allEvnVars.txt
```

## Errori tipici

Tutti i comandi devono terminare con una nuova linea.

I caratteri speciali devono essere con escape (ad esempio il segno ``%`` deve essere scritto ``\%`` );

Esegui gli script tramite la shell corretta indicandola con:

```bash
#!/bin/bash
```

oppure con

```bash
/bin/bash -c "script.sh"
```

Se si hanno problemi di accesso o scrittura quando si esegue il comando ``crontab -e``, allora controllare i permessi:

Il comando crontab deve appartenere all'utente root:

```bash
# set owner, group and permission on the command "crontab"
chown root:crontab /usr/bin/crontab
chmod 2755 /usr/bin/crontab          # set the permission to -rwxr-sr-x
```

La cartella ``/var/spool/cron/crontabs`` deve appartenere a ``root`` (permessi ``rwx``), al gruppo ``crontab`` (permessi ``ws``) e deve avere lo sticky bit (il permesso di esecuzione) impostato per tutti gli altri utenti. Per comprendere i permessi, ricordare che ``T``=sticky bit senza permesso esecuzione, ``t``=sticky bit con permesso esecuzione.

```bash
# set owner, group and permission on the spool folders
chown root:crontab /var/spool/cron/crontabs
chmod 1730 /var/spool/cron/crontabs  # set the permission to drwx-wx--T
```

Se si hanno problemi a rimuovere lo sticky bit, usare la sintassi simbolica "user meno S" o "others meno T":

```bash
chmod u-s /var/spool/cron/crontabs
```

I file interni alla cartella ``/var/spool/cron/crontabs`` devono appartenere ai rispettivi proprietari ed al gruppo ``crontab`` e devono avere il permesso di lettura e scrittura ``rw`` solo per il proprietario ``-rw-------``, nessun altro permesso (al gruppo o altri) deve essere impostato, altrimenti i task vengono eseguiti in modalità insicura (messaggio "INSECURE MODE (mode 0600 expected)").
