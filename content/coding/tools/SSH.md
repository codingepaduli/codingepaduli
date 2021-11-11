---
type: "tools"
title: "SSH"
description: "SSH, uno strumento per lo scambio sicuro di dati e informazioni tra client e server"
date: 2021-11-03
publishdate: 2021-11-03
lastmod: 2021-11-03
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: false
toc: false
summary: "SSH, uno strumento per lo scambio sicuro di dati e informazioni tra client e server"
references:
    -   title: "SSH certificates"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://berndbausch.medium.com/ssh-certificates-a45bdcdfac39"
        description: "How to use SSH with certificates"
    -   title: "Mozilla SSH recommendations"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://infosec.mozilla.org/guidelines/openssh"
        description: "How to configure SSH server"
    -   title: "Algorithms by security levels"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://infosec.mozilla.org/guidelines/key_management.html"
        description: "Mozilla recommendations about handling and management of cryptographic material"
---

# SSH

SSH (Secure SHell) è uno strumento per lo scambio sicuro di dati e informazioni tra client e server.

I metodi di autenticazione e crittografia permettono differenti opzioni:

- autenticazione con user/pass;
- autenticazione con chiave pubblica e privata;
- autenticazione con certificati;
- generazione di un'autorità di certificazione per la verifica dei certificati;
- crittografia simmetrica e asimmetrica (ovvero con una e con due chiavi per cifrare e decifrare delle informazioni)
- creazione di proxy e reverse-proxy che fanno da tunnel sicuri;
- ...

Installazione su client:

- ``apt install openssh-client``

Installazione su server:

- ``apt install openssh-server``

File di configurazione su client:

- ``/etc/ssh/ssh_config``
- files in ``/etc/ssh/ssh_config.d/*.conf``

File di configurazione su server:

- ``/etc/ssh/sshd_config``
- files in ``/etc/ssh/sshd_config.d/*.conf``

Per riavviare il server SSH (al cambio di configurazione, ad esempio), è necessario il comando:

```bash
systemctl restart ssh
```

Per verificare gli algoritmi disponibili:

```bash
ssh -Q cipher
ssh -Q cipher-auth
ssh -Q mac
ssh -Q kex
ssh -Q key
```

## Autenticazione con user/password

L'autenticazione con utente e password è demandata al sistema operativo.

L'utente fornisce un nome utente ed una password, il server SSH confronta tali dati con il database degli utenti del sistema operativo ed in caso di corrispondenza permette l'accesso all'utente.

E' possibile abilitarla o disabilitarla modificando il file di configurazione del server SSH ``/etc/ssh/sshd_config``, alla voce:

```bash
PasswordAuthentication yes # yes or no
```

## Autenticazione e cifratura con chiave privata/pubblica

L'autenticazione e cifratura con chiave privata/pubblica è impostata nel file di configurazione del server SSH ``/etc/ssh/sshd_config`` dalla voce seguente:

```bash
PubkeyAuthentication yes # yes or no
```

Generalmente l'utente ha una coppia di chiavi, una privata (id_rsa) ed una pubblica (id_rsa.pub), tipicamente memorizzate nei file:

- ``~/.ssh/id_rsa``
- ``~/.ssh/id_rsa.pub``

La chiave pubblica deve essere copiata sul server remoto, e quando si utilizza SSH, automaticamente si utilizza la chiave privata per criptare la comunicazione con il server, che a sua volta utilizza la chiave pubblica copiata. Se le chiavi sono compatibili, viene stabilita una comunicazione.

Per generare la coppia di chiavi pubblica/privata, che vengono salvate nei file ``id_rsa`` e ``id_rsa.pub`` nella cartella ``chiavi_ssh``, si utilizza il comando seguente (nota che l'estensione ``.pub`` viene aggiunta automaticamente al nome del file che contiene la chiave pubblica):

```bash
ssh-keygen -t rsa -f $HOME/chiavi_ssh/id_rsa -C "chiave per server A"
```

Il commento, specificato nel comando precedente attraverso l'opzione ``-C`` (maiuscola) può essere utile ad indicare lo scopo d'uso o il server a cui è destinata una chiave. Si può cambiare utilizzando l'opzione ``-c -C commento`` (minuscola e maiuscola)

```bash
ssh-keygen -f $HOME/chiavi_ssh/id_rsa -c -C "chiave per server B"
```

La passphrase (frase di sblocco) viene richiesta, ma può essere omessa con le opzioni ``-q -N ""`` che indicano di non utilizzare una passphrase e di non richiederla quando si usa la chiave.

```bash
ssh-keygen -t rsa -f $HOME/chiavi_ssh/id_rsa -q -N ""
```

Per cambiare la passphrase, si utilizza il comando seguente:

```bash
ssh-keygen -f $HOME/chiavi_ssh/id_rsa -p
```

Per ottenere informazioni su una chiave, verificare l'output del comando:

```bash
ssh-keygen -l -f $HOME/chiavi_ssh/id_rsa

2048 SHA256: abacadaeaf1234567890 Comment for key xyz (RSA)
^^^^   ^^^^^^^^^^^^^^^^^^^^^^^^       ^^^^^^^^^^       ^^^
 |__ Size   Fingerprint __|     Comment __|     Type __|
```

### Autorizzare l'accesso di un client

Il file ``$HOME/.ssh/authorized_keys`` contiene l'elenco di client a cui è permesso l'accesso.

Per aggiungere l'accesso di un client, è necessario copiare la chiave **pubblica** del client nel server, come di seguito:

```bash
ssh-copy-id -i $HOME/chiavi_ssh/id_rsa.pub SERVER
```

A questo punto si può accedere al server specificando la chiave:

```bash
ssh -i $HOME/chiavi_ssh/id_rsa SERVER
```

Nel caso l'utente non sia autorizzato ad accedere attraverso la chiave pubblica, verificare che la cartella ``.ssh`` abbia i permessi ``700`` (``rwx`` solo per il proprietario), verificare che il file ``$HOME/.ssh/authorized_keys`` abbia i permessi ``600`` e verificare che nel file di configurazione del server ``/etc/ssh/sshd_config`` si stia leggendo il file ``authorized_keys`` corretto:

```bash
AuthorizedKeysFile  .ssh/authorized_keys
```

### Memorizzare la passphrase usando l'agente SSH

L'agente SSH si occupa di memorizzare la passphrase per tutta la durata della sessione SSH.

Per verificare se l'agente SSH gestisce già delle chiavi, eseguire il comando:

```bash
ssh-add -l
```

Per affidargli una chiave, è necessario il comando:

```bash
ssh-add $HOME/chiavi_ssh/id_rsa
```

Per rimuovere una chiave , è necessario il comando:

```bash
ssh-add -d $HOME/chiavi_ssh/id_rsa
```

Quando una chiave viene aggiunta, è possibile effettuare il login automatico ad una shell, senza che sia richiesta la passphrase.

```bash
ssh -i $HOME/chiavi_ssh/id_rsa SERVER
```

E' possibile affidare automaticamente la chiave all'agente, impostando la configurazione del client ``/etc/ssh/ssh_config`` con la voce seguente:

```bash
AddKeysToAgent yes
```

## Eseguire comandi tramite SSH

E' possibile inviare dei comandi al server specificandoli come parametro.

```bash
ssh user@machine.local 'COMANDO'
```

E' importante notare che il parametro è composto da una intera stringa, che poi viene eseguita sul server con il comando ``sh -c COMANDO``. Inoltre, la shell del client risolve eventuali variabili ed espressioni prima che SSH possa inviare il comando al server per l'esecuzione.

Questi due passaggi non sono sempre ovvi e portano a degli errori che possono sembrare strani.

Ad esempio il comando ``ssh user@machine.local bash -lc "cd /tmp;pwd"`` intuitivamente dovrebbe avere come output ``/tmp`` ma invece ha come output ``/home/user``. Il fatto si spiega analizzando il comando che viene eseguito sul server:

```bash
sh -c bash -lc cd /tmp;pwd
```

Come si può notare, esistono due shell, la prima è ``sh``, la seconda è ``bash``. I doppi apici sono stati persi perchè SSH prende i tre parametri ``bash`` ``-lc`` e ``"cd /tmp;pwd"`` e crea il COMANDO da passare al server ``bash -lc cd /tmp;pwd``.

Vengono quindi eseguiti i seguenti comandi:

1. la prima shell (``sh``) esegue nella cartella corrente ``$HOME`` la seconda shell (``bash -lc cd /tmp``) che poi termina perdendo la posizione corrente (``/tmp``);
2. successivamente la prima shell esegue sempre nella cartella corrente ``$HOME`` il secondo comando ``pwd``.

E' sempre consigliato quindi utilizzare i doppi apici, passando i comandi come di seguito:

```bash
ssh user@machine.local 'bash -lc "cd /tmp;pwd"'
```

Per osservare il lavoro che la shell svolge nella risoluzione di variabili ed espressioni, supponiamo di voler stampare la home dell'utente.

Se si vuole accedere sul server per poi scrivere a video la cartella home dell'utente, si usa il comando seguente:

```bash
ssh prof@localhost 'bash -lc "cd $HOME;pwd"'
```

L'output, come ci si aspetta, è la cartella dell'utente ``prof``, dato che la variabile ``$HOME`` non è risolta immediatamente, perché il comando è tra apici singoli, e solo quando il comando è inviato al server viene risolta, per cui l'output risultante è il seguente:

```plaintext
/home/prof
```

Se si vuole invece ricavare la cartella home dell'utente ``user`` per inviarla al server, si usa il comando seguente:

```bash
ssh prof@localhost "bash -lc \"cd $HOME;pwd\""
```

Dato che la variabile ``$HOME`` è risolta prima di inviare il comando al server, perché questa volta tra apici doppi, il comando inviato al server contiene il percorso della cartella dell'utente ``user``, quindi una volta eseguito genera l'output seguente:

```plaintext
/home/user
```

## Analisi della sicurezza

Ci sono diverse debolezze nell'interazione client server:

1. Quando il client si collega per la priva volta al server, il server invia al client la propria impronta digitale, quindi l'utente deve verificarla ed accettarla per proseguire la connessione. Questa impronta digitale viene salvata nel file ``./ssh/known_hosts``. L'utente, per pigrizia, non verifica mai l'impronta digitale e sceglie di fidarsi sempre;

    ```bash
    The authenticity of host xxx can''t be established.
    RSA key fingerprint is SHA256:4fdsanfMfazsbfMadfas
    Are you sure you want to continue connecting (yes/no)?
    ```

2. La chiave pubblica dell'utente deve essere inviata al server (per poter autenticare l'utente), che la memorizza nel file ``.ssh/authorized_keys``. E' problematico inviare la chiave pubblica al server senza connessione sicura, soprattutto se non si ha una password di accesso (il client non ha SSH, dato che ancora non è possibile stabilire una connessione col server). Inoltre le mille chiavi accumulate nel file ``.ssh/authorized_keys`` sono ingestibili.
3. Le chiavi SSH non scadono mai.
