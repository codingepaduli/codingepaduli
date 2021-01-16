---
type: "tools"
title: "Anacron ed Anacrontab"
description: "Anacron ed Anacrontab, strumenti per la schedulazione di un task con una specifica ricorrenza."
date: 2021-01-15
publishdate: 2021-01-15
lastmod: 2021-01-15
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: false
toc: false
summary: "Anacron ed Anacrontab, strumenti per la schedulazione di un task con una specifica ricorrenza."

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
    -   title: "Linux Anacron Command Example for Background Jobs"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://linux.101hacks.com/unix/anacron/"
        description: "Linux Anacron Command Example for Background Jobs"
---

# Schedulazione task ricorrenti con anacron ed anacrontab

Cron e anacron permettono la schedulazione di un task utente con una specifica ricorrenza, ad esempio giornaliera o mensile. Per la scrittura dei task da eseguire, ci si avvale di due programmi: **crontab** ed **anacrontab**.

Anacron permette la gestione di task solo per l'utente root. Non prevede l'esecuzione per gli utenti classici, ma tale gestione la si può simulare tramite cron.

Oltre ad eseguire i task schedulati, anacron si occupa di avviare, appena possibile, i task che non sono stati eseguiti (perché magari nel momento in cui dovevano essere eseguiti, il computer era spento). Da notare, però, che anacron esegue i task una volta sola, non importa quante volte siano stati "saltati". Ad esempio, se un task deve essere eseguito ogni giorno, ma viene saltato per 4 giorni perché il computer è spento, quando si accende il computer sarà eseguito, appena possibile, una sola volta.

## Configurazione di anacron

Per verificare lo stato del servizio anacron, eseguire come utente root i comandi:

```bash
systemctl status anacron.service
systemctl status anacron.timer
```

Sia l'amministratore, sia le applicazioni di sistema possono inserire i propri task nelle cartelle:

```plaintext
/etc/cron.daily/
/etc/cron.weekly/
/etc/cron.monthly/
```

Queste directory sono configurate perché siano utilizzate da anacron. Nel file ``/etc/crontab`` si trovano, appunto, i comandi che indicano l'esecuzione di anacron sulle cartelle citate. Inoltre, anacron legge la lista di job dalla cartella:

```plaintext
/etc/anacrontab
```

Ogni task eseguito prevede l'invio dell'output tramite una mail destinata all'utente. Le email sono memorizzate nella cartella:

```bash
/var/spool/mail/
```

**Su alcune distribuzioni, anacron esegue i task solo se il pc è collegato alla rete elettrica**. Per verificare ciò, si può leggere il file della propria distribuzione, che su Debian è ``/usr/share/doc/anacron/README.Debian``.

### Configurazione di anacron con alimentazione da batteria

Per abilitare l'esecuzione dei task anche quando il pc è collegato alla batteria:

- Su SysVinit occorre cambiare impostazioni nel file ``/etc/default/anacron``

```ini
ANACRON_RUN_ON_BATTERY_POWER=yes
```

- Su systemd, occorre seguire i seguenti passi a partire:

    1. creare la directory ``anacron.service.d`` dentro la directory ``/etc/systemd/system/``;
    2. inserire all'interno della directory creata il file ``on-ac.conf``;
    3. inserire il contenuto del file:

```ini
[Unit]
ConditionACPower=
```

In caso anacron non esegua i task perché non abilitato quando il computer funziona a batteria, il comando:

```bash
systemctl status anacron.service
```

visualizza il messaggio di 'failed':

```plaintext
Condition: start failed at 'Tue 2020-09-29 08:31:19' - ConditionACPower=true was not met
```

## Comando anacron per l'amministratore

Per verificare la validità di un file, ad esempio ``/etc/anacrontab``, contenente la lista di job da eseguire:

```bash
anacron -T -t /etc/anacrontab # -T = test
```

Per forzare **l'immediata** esecuzione di un job indicato in un file, e non in background, ma in "foregraund", in modo da poter visualizzare l'output:

```bash
anacron -f -d -n -t /etc/anacrontab # -f = force, -d = display, -n = now
```

## Sintassi regole di anacron

I tast di anacron giornalieri, settimanali, mensili ed annuali sono programmati per essere eseguiti secondo la sintassi:

```plaintext
period (days)  delay (minutes)  job-id  job
````

 |
--- | ---
``period`` | il numero di giorni dopo il quale ripetere il job, oppure ``@weekly``
``delay``  | il numero di minuti che devono passare dall'avvio per eseguire il job, in modo da evitare che si accavallino;
``job-id`` | l'identificatore del job (solo i caratteri ``[a-zA-Z0-9]`` e "underscore" ``_``)
``job``    | il comando da eseguire

Un esempio di job schedulato è il seguente:

```plaintext
1    1    log-job    /bin/date "+\%F-\%T - anacron executed" >> $HOME/login.txt
```

## Abilitare anacrontab per l'utente comune

Per abilitare anacrontab in user mode per l'utente "io" occorre seguire i seguenti passi:

- Selezionare l'editor per editare i task, aggiungendo al file ``.profile`` una riga in cui si specifica la variabile:

    ```bash
    export EDITOR="/usr/bin/micro"
    ```

- Creare il file con i task da eseguire ``/var/spool/anacron/anacrontabs/io``
- Creare l'alias ``anacrontab-e='micro /var/spool/anacron/anacrontabs/io'``
- Creare la cartella in cui anacron segna i task eseguiti e da eseguire ``$HOME/.anacron/spool``
- Creare la regola di cron per richiamare anacron ogni ora con ``crontab -e``:

    ```plaintext
    @hourly /usr/sbin/anacron -s -t /var/spool/anacron/anacrontabs/io -S $HOME/.anacron/spool
    ```

Lo script completo è il seguente:

```bash
#!/bin/bash

mkdir -p $HOME/.anacron/spool

# needs root permission
mkdir -p /var/spool/anacron/anacrontabs/
touch /var/spool/anacron/anacrontabs/$USER

# set user "io" and group "crontab" to the file
chown $USER:crontab /var/spool/anacron/anacrontabs/$USER
```

Si può anche scegliere di non utilizzare ``/var/spool`` e di creare i file nella cartella utente, regolando di conseguenza il comando di cron precedentemente mostrato.

### Redirezione output

Aggiungendo una redirezione, l'output del task finisce nel file di log, come con la regola:

```plaintext
1    1    log-job   /bin/date "+\%F-\%T - Cron started" >> /root/login.txt
```

E' possibile redirezionare il log ed evitare che la mail venga inviata, con la regola:

```plaintext
1    1    log-job   /bin/date "+\%F-\%T - Cron started" >> /root/login.txt 2>&1
```

E' possibile verificare il valore delle variabili con le redirezioni:

```plaintext
/bin/echo $PATH > /root/path.txt
/usr/bin/env > /root/allEvnVars.txt
```
