---
type: "tools"
title: "SSH"
description: "SSH, uno strumento per l'amministrazione di una macchina da remoto"
date: 2021-11-03
publishdate: 2021-11-03
lastmod: 2021-11-03
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: false
toc: true
summary: "SSH, uno strumento per l'amministrazione di una macchina da remoto"
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
    -   title: "A visual guide to SSH tunnels"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://robotmoon.com/ssh-tunnels/"
        description: "An extended guide on tunnels"
---

# SSH

SSH (Secure SHell) è uno strumento per l'amministrazione di una macchina da remoto.

Utilizza algoritmi di crittografia classica e moderna per autenticare l'utente sulla macchina remota e per creare un canale di comunicazione criptato sul quale trasmettere i dati.

Lo scopo della crittografia è rendere incomprensibile un testo o un messaggio a persone terze, permettendo la comprensione dello stesso solo ai soggetti autorizzati.

La storia della crittografia può essere divisa in due ere: l'era classica, in cui la comunicazione tra le parti era basata su un segreto condiviso (una chiave), e l'era moderna, in cui la comunicazione è basata su una chiave pubblica ed una chiave privata, entrambe utilizzabili per criptare e decriptare il messaggio (ovvero per rendere comprensibile o meno il messaggio).

Le funzionalità dello strumento SSH sono quindi le seguenti:

- accesso al server remoto utilizzando:

    1. autenticazione con user/pass (segreto condiviso tra client e server);
    2. autenticazione con chiave pubblica e privata (il client possiede la chiave privata ed il server quella pubblica);
    3. autenticazione con certificati (autorità di certificazione);

- generazione di un'autorità di certificazione per la verifica dei certificati;
- firma dei messaggi (autenticità dei messaggi);
- creazione di proxy e reverse-proxy per la trasmissione di informazioni su canali sicuri;

## Algoritmi di Crittografia classica

Nell'era classica la stessa chiave (segreta) era usata sia per cifrare che per decifrare il messaggio. L'algoritmo di cifratura dei dati era basato principalmente sui cifrari segreti, che indicavano come sostituire le lettere o le parole di un messaggio. I cifrari potevano essere molto semplici, come il cifrario di Cesare, o molto complessi, come il cifrario utilizzato nella macchina Enigma per la trasmissione delle informazioni durante la seconda guerra mondiale.

Ad esempio, il cifrario di Cesare prevede la sostituzione di ogni lettera del messaggio con la lettera che si trova un certo numero di posizioni successive nell'alfabeto. Il segreto consisteva quindi nel numero di posizioni da "scorrere". Ipotizzando 2 posizioni di "scorrimento", la lettera "A" era sostituita con la lettera "C", la lettera "B" era sostituita con la lettera "D" e così via, rendendo il testo incomprensibile. Per rendere il testo nuovamente comprensibile, si "scorreva" dello stesso numero di posizioni ma in senso inverso, quindi la lettera "D" era sostituita con la lettera "B", la lettera "C" era sostituita con la lettera "A" e così via. Se non si conosceva il numero segreto di posizioni, non si poteva rendere comprensibile il testo.

Il punto debole di questi algoritmi "classici" consisteva proprio nella trasmissione della chiave segreta, poiché permetteva sia di decifrare il messaggio, sia di inviare messaggi cifrati sostituendosi all'autore originale. Si passava dal problema di trasmettere il messaggio al problema di trasmettere la chiave segreta per leggere il messaggio.

## Algoritmi di Crittografia moderna

Il passaggio all'era moderna è dovuto ai primi algoritmi basati sulla teoria dei numeri: l'algoritmo RSA e lo scambio di chiavi Diffie-Hellman, che si basavano sul problema matematico della fattorizzazione in numeri primi. L'algoritmo RSA usa una chiave privata ed una pubblica, una chiave serve a criptare i dati (e quindi renderli incomprensibili) e l'altra chiave è utilizzata per decriptarli (e renderli di nuovo comprensibili). L'algoritmo di scambio delle chiavi Diffie-Hellman consente a due entità di stabilire una chiave condivisa e segreta utilizzando un canale di comunicazione insicuro. Server e client arrivano a calcolare la stessa chiave indipendentemente uno dall'altro, condividendo solo alcuni dati e mantenendo segreti altri.

Il vantaggio rivoluzionario di questi algoritmi è che qualsiasi utente può tranquillamente pubblicare la propria chiave pubblica, in modo tale da permettere a chiunque di utilizzarla per cifrare i dati da trasmettere al destinatario, il quale poi utilizza la propria chiave privata per leggerli. Viceversa, l'utente può utilizzare la chiave privata per trasmettere i dati a terzi, che utilizzano la chiave pubblica per leggerli. L'algoritmo per cifrare e decifrare i messaggi non è segreto, ma pubblico.

Si può scegliere se fidarsi o meno di un partner esterno per la diffusione delle chiavi pubbliche. Ad esempio GitHub permette di accedere alla chiave pubblica di un utente ``USERNAME`` dal link ``https://github.com/USERNAME.keys``.

Rendere leggibile un messaggio criptato senza avere la chiave privata equivale a risolvere un problema matematico difficile da risolvere. Si ha quindi una prova matematica della impossibilità di lettura delle trasmissioni senza possedere la chiave privata, indipendentemente dal fatto che l'algoritmo di cifratura sia pubblico.

Oggi non si utilizza più il problema matematico della fattorizzazione in numeri primi, bensì l'equazione delle curve ellittiche (dall'inglese Equation of Elliptic Curve), che resta sempre di difficile risoluzione.

Sempre basati sulla coppia di chiavi pubbliche e private, ci sono le autorità di certificazione che svolgono il ruolo di garanti dell'identità di un utente e di smistamento delle chiavi tra gli utenti. Ad ogni utente viene rilasciato un certificato digitale che in pratica è una chiave pubblica. Utenti terzi che hanno necessità di verificare l'identità e stabilire un canale sicuro di trasmissione con l'utente contattano l'autorità di certificazione per verificare il certificato dell'utente e per ottenere la chiave pubblica dell'utente.

## Algoritmi di hash e di firma

Gli algoritmi di hash non mirano a rendere incomprensibile un messaggio, ma hanno lo scopo di generare un codice alfanumerico, detto **hash**, a partire dal messaggio che può essere utilizzato per verificare che il messaggio non sia stato contraffatto.

Quando si invia un messaggio, si invia pure l'hash (può essere inviato sia in coda al messaggio, sia separatamente). L'utente che riceve il messaggio, per verificare che non sia contraffatto, prende il messaggio e ne calcola l'hash. Poi confronta l'hash calcolato con l'hash che ha ricevuto e se corrispondono significa che il messaggio non è stato contraffatto.

Questa strategia è spesso applicata sui siti web che permettono di scaricare un file. Sul sito web oltre al file si può trovare (pubblicata sulla pagina web o in un file a parte da scaricare) l'hash del file da scaricare. L'utente scarica il file, ne calcola l'hash, poi lo confronta con quello presente sul sito web, se corrispondono significa che il file scaricato non è stato sostituito da un hacker e non è affetto da un virus.

Le tecniche di firma oltre a garantire che il messaggio non sia contraffatto, garantiscono anche l'identità del mittente. Utilizzano un algoritmo di hash per generare un hash del messaggio, poi l'hash viene firmato con la chiave privata ed allegato al messaggio. L'hash firmato è detto **firma**. Quando un utente vuole verificare che un messaggio non è contraffatto, decodifica la firma usando la chiave pubblica, poi verifica che il codice alfanumerico decrittato (hash) sia uguale al codice alfanumerico che si ottiene dal messaggio (poiché il messaggio è in chiaro). Se i due codici alfanumerici corrispondono, il messaggio non è contraffatto ed è stato inviato dall'utente che possiede la chiave privata.

## Funzionamento basilare di SSH

SSH funziona su modello client-server. Il server è in attesa di connessioni da parte dei client.

Quando un client si collega, client e server negoziano la versione di protocollo SSH da utilizzare per la comunicazione. La lista di versioni supportate può essere visualizzata attraverso il comando seguente:

```bash
ssh -Q protocol-version
```

Stabilita la versione di protocollo da utilizzare, client e server negoziano una chiave segreta per criptare il canale di comunicazione. La negoziazione avviene attraverso un algoritmo per lo scambio delle chiavi (dall'inglese Key EXchange), il più famoso è quello di scambio di chiavi Diffie-Hellman. Molti algoritmi aderiscono allo standard GSS-API (dall'inglese Generic Security Service Application Program Interface). La lista di algoritmi per lo scambio delle chiavi può essere visualizzata attraverso i comandi seguenti:

```bash
ssh -Q kex
ssh -Q kex-gss
```

Effettuato lo scambio delle chiavi, client e server creano un canale criptato utilizzando un algoritmo di crittografia simmetrico basato sulla chiave segreta scambiata precedentemente. La lista di algoritmi simmetrici (cha si basano sui cifrari) può essere visualizzata attraverso i comandi seguenti:

```bash
ssh -Q cipher
```

Una volta creato il canale criptato di comunicazione, è necessario autenticare l'utente all'accesso del sistema. Esistono molte strategie di autenticazione che possono essere configurate, dalla classica richiesta di credenziali (username e password) alla più moderna autenticazione basata su chiave pubblica/privata a quella basata su certificati.

La lista degli algoritmi simmetrici (cha si basano su username e password) utilizzati per autenticare un utente può essere visualizzata attraverso il comando seguente:

```bash
ssh -Q cipher-auth
```

La lista degli algoritmi asimmetrici (cha si basano sul possesso di chiave pubblica e privata) utilizzati per autenticare un utente può essere visualizzata attraverso il comando seguente:

```bash
ssh -Q key
```

La lista degli algoritmi basati su certificato utilizzati per autenticare un utente può essere visualizzata attraverso il comando seguente:

```bash
ssh -Q key-cert
```

Aggiungiamo ancora gli algoritmi per firmare un file, la cui lista può essere visualizzata attraverso il comando seguente:

```bash
ssh -Q sig
```

## Analisi della sicurezza

Ci sono diverse debolezze nell'interazione client server con SSH:

1. Quando il client si collega per la priva volta al server, il server invia al client la propria impronta digitale, quindi l'utente deve verificarla ed accettarla per proseguire la connessione. Questa impronta digitale viene salvata nel file ``./ssh/known_hosts``. L'utente, per pigrizia, non verifica mai l'impronta digitale e sceglie di fidarsi sempre;

    ```plaintext
    The authenticity of host xxx can''t be established.
    RSA key fingerprint is SHA256:4fdsanfMfazsbfMadfas
    Are you sure you want to continue connecting (yes/no)?
    ```

2. L'accesso al server con utente e password è insicuro perché la password può essere indovinata con algoritmi di brute-force o basati su dizionario.
3. L'accesso al server con chiave pubblica/privata è ritenuto sicuro, ma prevede che la chiave pubblica dell'utente sia memorizzata sul server (per poter autenticare l'utente) nel file ``.ssh/authorized_keys``. Come può accedere al server l'utente per poter copiare la propria chiave pubblica? Utilizzare un accesso con utente e password è insicuro.
4. Il server SSH accumula nel file ``.ssh/authorized_keys`` le chiavi pubbliche di migliaia di utenti che hanno accesso al server. Il numero elevato di queste chiavi pubbliche le rende ingestibili e la pulizia di queste chiavi può causare un accesso negato a persone o sistemi critici.
5. Le chiavi SSH non scadono mai, quindi in caso di furto di una chiave, si ha un accesso furtivo al server difficilmente rilevabile.

## Installare il server SSH

Il server SSH permette di accettare connessioni dai client su una porta di sistema, tipicamente la 22, ed autenticare gli utenti utilizzando la strategia più opportuna.

L'installazione del server SSH avviene con il seguente comando:

```bash
apt install openssh-server
```

I file di configurazione utilizzati dal demone SSH si trovano nelle seguenti posizioni:

- ``/etc/ssh/sshd_config``
- files in ``/etc/ssh/sshd_config.d/*.conf``

Ad ogni cambio di configurazione è necessario riavviare il server SSH con il comando seguente:

```bash
systemctl restart sshd
```

### Configurare l'autenticazione utente

Le strategie di autenticazione dell'utente vanno indicate nei file di configurazione del server. Le principali sono le seguenti:

- ``password`` (autenticazione con password) richiede che l'utente inserisca il nome utente e la password per l'accesso al sistema;
- ``keyboard-interactive`` (autenticazione interattiva) richiede che l'utente risponda ad una serie di domande per autenticarlo, permette di applicare la verifica in più passaggi.
- ``publickey`` (autenticazione con chiave privata/pubblica) utilizza una coppia di chiavi pubblica/privata per autenticare l'utente;

Si può scegliere anche di applicare più di una strategia di autenticazione. Scelte quelle adatte, devono essere inserite nella seguente voce del file di configurazione.

```plaintext
AuthenticationMethods "publickey,password,keyboard-interactive" # una o più
```

#### Autenticazione con password

Questa strategia di autenticazione richiede che l'utente inserisca il nome utente e la password per l'accesso al sistema.

E' possibile abilitare o disabilitare questa strategia di autenticazione indicandola nel file di configurazione del server SSH alla voce ``AuthenticationMethods`` e poi abilitando la voce:

```bash
PasswordAuthentication yes # yes or no
```

#### Autenticazione interattiva

Questa strategia di autenticazione richiede che l'utente risponda ad una serie di domande e solo nel caso in cui tutte le risposte siano corrette l'utente è autenticato. Questo meccanismo permette di applicare strategie di autenticazione come quelle basate ad esempio sulla verifica in due passaggi, in cui oltre ad utente e password viene richiesto un codice di verifica inviato su smartphone o su email o generato con applicazioni OTP.

Come sistema principale di autenticazione degli utenti questa strategia di autenticazione utilizza il sistema **PAM** che ha vari moduli che definiscono le strategie di autenticazione come ad esempio:

- ``libpam-google-authenticator``: modulo PAM che si interfaccia con la libreria google per abilitare la verifica a due step;
- ``libpam-mysql``: modulo PAM che si interfaccia con database MySQL;
- ``libpam-otpw``:  modulo PAM che permette l'uso di OTPW (One-Time password) per l'autenticazione degli utenti;

Configurato il sistema PAM, SSH può essere configurato per utilizzare PAM come sistema di autenticazione degli utenti, configurando il file ``/etc/pam.conf`` e ``/etc/pam.d/sshd``.

E' possibile abilitare o disabilitare questa strategia di autenticazione indicandola nel file di configurazione del server SSH alla voce ``AuthenticationMethods`` e poi abilitando le voci:

```bash
UsePAM yes # yes or no
KbdInteractiveAuthentication yes # yes or no
```

Nelle vecchie versioni di SSH, questo valore era chiamato ``ChallengeResponseAuthentication`` e se si trova ancora presente nei file di configurazione è solo per compatibilità a ritroso.

#### Autenticazione con chiave privata/pubblica

Questa strategia di autenticazione richiede che l'utente utilizzi la propria chiave privata per autenticarsi sul server (sul quale ha pubblicato la propria chiave pubblica).

E' possibile abilitare o disabilitare questa strategia di autenticazione indicandola nel file di configurazione del server SSH alla voce ``AuthenticationMethods`` e poi abilitando la voce:

```bash
PubkeyAuthentication yes # yes or no
```

Generalmente l'utente ha una coppia di chiavi, una privata ed una pubblica, rispettivamente memorizzate nei file:

- ``~/.ssh/id_ed25519``
- ``~/.ssh/id_ed25519.pub``

La chiave pubblica deve essere inserita nel file ``$HOME/.ssh/authorized_keys`` del server remoto al fine di autorizzare l'accesso all'utente. Questo file contiene l'elenco di tutte le chiavi pubbliche che (accoppiate con le chiavi private) garantiscono l'accesso al server da parte degli utenti.

Per aggiungere l'accesso di un nuovo utente, è necessario copiare la chiave **pubblica** dell'utente nel server, aggiungendola in coda al file.

Per generare la chiave pubblica e privata, vedere il capitolo dedicato.

### Configurazioni opzionali dell'autorizzazione con credenziali

Si può scegliere se permettere l'autenticazione degli utenti senza password, impostando nella configurazione l'opzione:

```bash
PermitEmptyPasswords no # yes or no
```

Per questioni di sicurezza l'accesso ai server dovrebbe avvenire utilizzando un utente senza permessi amministrativi, per poi utilizzare i metodi del sistema stesso per diventare amministratore. E' l'amministratore di sistema a scegliere il metodo di accesso consentito, assegnando alla proprietà ``PermitRootLogin`` uno dei seguenti valori:

- ``prohibit-password`` permette l'accesso come amministratore solo attraverso una chiave pubblica o un certificato, ma non con una password perché con un attacco brute-force si potrebbe riuscire ad accedere al sistema;
- ``no`` permette l'accesso solo agli utenti non amministratori;
- ``yes`` permette l'accesso anche come amministratore;
- ``forced-commands-only`` permette di lanciare i comandi come amministratore, ma non di effettuare l'accesso. I comandi eseguibili devono essere configurati in SSH.

L'impostazione consigliata è la seguente:

```bash
PermitRootLogin no
```

Si può indicare gli utenti ai quali permettere l'accesso al server attraverso l'opzione:

```bash
AllowUser username1 username2
```

In ambienti in cui spesso si modificano gli utenti che hanno i permessi di accesso ai server, piuttosto che effettuare continue modifiche ai file di configurazione, può essere utile garantire l'accesso ad un intero gruppo e quindi aggiungere o rimuovere gli utenti dal gruppo. L'opzione per tale scelta è:

```bash
AllowGroup group1 group2
```

Al salvataggio della configurazione deve essere poi riavviato il sistema o il servizio SSH, con il comando:

```bash
systemctl reload sshd
```

### Configurazioni opzionali dell'autorizzazione con chiave privata/pubblica

Il file ``$HOME/.ssh/authorized_keys``, memorizzato sul server, contiene l'elenco di tutte le chiavi pubbliche che (accoppiate con le chiavi private) garantiscono l'accesso al server da parte degli utenti.

<!--
Si può utilizzare il comando apposta, come di seguito:

```bash
ssh-copy-id -i $HOME/chiavi_ssh/id_ed25519.pub user@server
```

A questo punto si può accedere al server specificando la chiave:

```bash
ssh -i $HOME/chiavi_ssh/id_ed25519 user@server
```

-->

Nel caso l'utente non sia autorizzato ad accedere attraverso la chiave pubblica, verificare che la cartella ``.ssh`` abbia i permessi ``700`` (``rwx`` solo per il proprietario), verificare che il file ``$HOME/.ssh/authorized_keys`` abbia i permessi ``600`` e verificare che nel file di configurazione del server ``/etc/ssh/sshd_config`` si stia leggendo il file ``authorized_keys`` corretto:

```bash
AuthorizedKeysFile  .ssh/authorized_keys
```

Al salvataggio della configurazione deve essere poi riavviato il sistema o il servizio SSH, con il comando:

```bash
systemctl reload sshd
```

## Installazione ed uso del client SSH

Il client SSH permette di collegarsi al server, autenticarsi ed utilizzare la shell di sistema.

L'installazione del client SSH avviene con il seguente comando:

```bash
apt install openssh-client
```

Il comando per l'accesso ad un server è il seguente:

```bash
ssh user@192.168.1.50
```

E' possibile effettuare il debug utilizzando le opzioni seguenti:

```bash
ssh -vvv user@192.168.1.50
```

Dall'output di debug si possono notare le seguenti informazioni relative all'autenticazione:

```plaintext
debug1: Connecting to 192.168.1.50 [192.168.1.50] port 22.
debug1: identity file        .ssh/id_ecdsa     type -1
debug1: identity file        .ssh/id_ed25519   type 3
debug1: Authenticating to 192.168.1.50:22 as 'user'
debug1: Found key in         .ssh/known_hosts:4
debug1: Authentications that can continue:     publickey
debug1: Trying private key:  .ssh/id_ecdsa
debug1: Offering public key: .ssh/id_ed25519 ED25519 SHA256:123456
debug1: Server accepts key:  .ssh/id_ed25519 ED25519 SHA256:123456
debug1: Authentication succeeded (publickey).
```

E' possibile specificare la porta alla quale connettersi e la chiave privata da utilizzare per l'autenticazione al server con le opzioni seguenti:

```bash
ssh -i $HOME/chiavi_ssh/id_ed25519 -p 22 user@server
```

Dato che l'uso di una chiave privata prevede l'inserimento di una passphrase, per evitare che questa sia chiesta più e più volte all'utente si può utilizzare l'opzione seguente:

```bash
ssh -o "AddKeysToAgent=yes" io@192.168.1.50
```

Questa opzione memorizza la password in sessione la prima volta che viene chiesta, quindi evita le successive richieste di inserimento fino al termine della sessione o fino al riavvio.

### Configurazione del client SSH

I file di configurazione utilizzati dal client si trovano nelle seguenti posizioni:

- ``/etc/ssh/ssh_config``
- files in ``/etc/ssh/ssh_config.d/*.conf``

Gli utenti possono creare il proprio file di configurazione ``$HOME/.ssh/config``. Questi file di configurazione sono utilizzati anche per gli altri programmi come ``scp`` , ``sftp`` e ``rsync``.

Lo script per la creazione del file e dei permessi adatti è il seguente:

```bash
mkdir -p ~/.ssh
chmod 700 ~/.ssh
touch ~/.ssh/config
chmod 600 ~/.ssh/config
```

Il file di configurazione client ha è organizzato in sezioni, ogni sezione è relativa alla configurazione di un singolo host, infine c'è la sezione comune a tutti gli host. La sintassi è la seguente:

```plaintext
Host hostname1
    SSH_OPTION value
    SSH_OPTION value

Host hostname2
    SSH_OPTION value

Host *
    SSH_OPTION value
```

Un esempio di configurazione della connessione ad un host, indicando il nome utente, la porta ed il nome dominio è la seguente:

```plaintext
Host github
    HostName github.com
    User john
    Port 1234
```

Con questa configurazione, si può utilizzare il seguente comando per collegarsi:

```bash
ssh github
```

Un esempio di configurazione della connessione ad un host, indicando la chiave privata, la porta, l'utente, il nome dominio, l'opzione per memorizzare la passphrase ed il livello di log desiderato è la seguente:

```plaintext
Host server
    HostName 192.168.1.10
    User server
    Port 7654
    IdentityFile ~/.ssh/server.key
    AddKeysToAgent yes
    LogLevel INFO
```

Un esempio di configurazione della connessione a differenti host con una sezione comune tra gli host è la seguente:

```plaintext
Host server
    HostName 192.168.1.10
    User admin
    IdentityFile ~/.ssh/server.key
    IdentitiesOnly yes

Host github
    HostName github.com
    User john
    Port 1234

Host *
    AddKeysToAgent yes
    LogLevel INFO
```

Le opzioni inserite nel file di configurazione possono essere anche passate a linea di comando con l'opzione ``-o`` in forma ``chiave=valore``. In caso siano già presenti in un file di configurazione, le opzioni passate a linea di comando hanno priorità e quindi sovrascrivono quelle contenute nei file. Un esempio è il seguente:

```bash
ssh -o "AddKeysToAgent=yes" github
```

### Eseguire comandi tramite SSH

E' possibile inviare dei comandi al server specificandoli come parametro.

```bash
ssh user@machine.local 'COMANDO'
```

E' importante notare che il parametro è composto da una intera stringa, che poi viene eseguita sul server con il comando ``sh -c COMANDO``. Inoltre, la shell del client risolve eventuali variabili ed espressioni prima che SSH possa inviare il comando al server per l'esecuzione.

Questi due passaggi non sono sempre ovvi e portano a degli errori che possono sembrare strani.

Ad esempio il comando ``ssh user@machine.local bash -lc "cd /tmp;pwd"`` intuitivamente dovrebbe avere come output ``/tmp`` ma invece ha come output la cartella ``/home/user`` dell'utente ``user``. Il fatto si spiega analizzando il comando che viene eseguito sul server:

```bash
sh -c bash -lc cd /tmp;pwd
```

Come si può notare, in questo comando sono coinvolte due shell, la prima è ``sh``, la seconda è ``bash``. I doppi apici sono stati persi perché SSH prende i tre parametri ``bash`` ``-lc`` e ``"cd /tmp;pwd"`` e crea il comando da passare al server ``bash -lc cd /tmp;pwd``.

Sul server si fa quindi accesso come utente ``user`` e sono eseguiti i seguenti comandi:

1. la prima shell ``sh`` esegue nella cartella corrente ``$HOME`` dell'utente ``user`` la seconda shell ``bash``, che esegue il comando ``cd /tmp`` e poi termina. Quindi, anche la shell ``bash`` termina, e questo comporta la perdita della posizione corrente (``/tmp``);
2. successivamente la prima shell esegue, sempre nella cartella corrente ``$HOME`` dell'utente ``user``, il secondo comando ``pwd`` che stampa a video ``/home/user``.

E' sempre consigliato quindi utilizzare gli apici singoli o doppi per racchiudere il comando da inviare, come nell'esempio di seguito:

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

Dato che la variabile ``$HOME`` è risolta prima di inviare il comando al server, perché questa volta tra apici doppi, la shell sostituisce a questa variabile il percorso della cartella dell'utente ``user`` che esegue il comando ssh. Successivamente il comando è inviato al server e, una volta eseguito, genera l'output seguente:

```plaintext
/home/user
```

Un'altra attenzione da porre quando i comandi sono passati come argomento, è che non sono legati ad una sessione, quindi anche se si interrompe la comunicazione, i processi avviati rimangono attivi sulla macchina server. Per ovviare a questo problema, si può legare il comando ad un terminale, e quando si verifica un problema, la chiusura del terminale causa la terminazione del processo eseguito da remoto. La creazione del terminale avviene specificando l'opzione ``-t``.

## Generare la coppia di chiavi pubblica/privata

Per generare la coppia di chiavi pubblica/privata, che vengono salvate nei file ``id_ed25519.pub`` e ``id_ed25519`` nella cartella ``chiavi_ssh``, si utilizza il comando seguente (nota che l'estensione ``.pub`` viene aggiunta automaticamente al nome del file che contiene la chiave pubblica):

```bash
ssh-keygen -t ed25519 -f $HOME/chiavi_ssh/id_ed25519 -C "chiave per server A"
```

Il commento, specificato nel comando precedente attraverso l'opzione ``-C`` (maiuscola) può essere utile ad indicare lo scopo d'uso o il server a cui è destinata una chiave. Si può cambiare utilizzando l'opzione ``-c -C commento`` (minuscola e maiuscola)

```bash
ssh-keygen -f $HOME/chiavi_ssh/id_ed25519 -c -C "chiave per server B"
```

La passphrase (frase di sblocco) viene richiesta, ma può essere omessa con le opzioni ``-q -N ""`` che indicano di non utilizzare una passphrase e di non richiederla quando si usa la chiave.

```bash
ssh-keygen -t ed25519 -f $HOME/chiavi_ssh/id_ed25519 -q -N ""
```

Per cambiare la passphrase, si utilizza il comando seguente:

```bash
ssh-keygen -f $HOME/chiavi_ssh/id_ed25519 -p
```

Le informazioni su una chiave possono essere recuperate attraverso il comando seguente, che si riporta insieme all'output per semplicità descrittiva:

```bash
ssh-keygen -l -f $HOME/chiavi_ssh/id_ed25519

2048 SHA256: abacadaeaf1234567890 Comment for key xyz (ed25519)
^^^^   ^^^^^^^^^^^^^^^^^^^^^^^^       ^^^^^^^^^^       ^^^
 |__ Size   Fingerprint __|     Comment __|     Type __|
```

Si ricorda che la chiave pubblica serve ad autorizzare l'accesso all'utente e deve essere copiata sul server.

## Memorizzare la passphrase usando l'agente SSH

L'agente SSH si occupa di memorizzare la passphrase per tutta la durata della sessione SSH.

Per verificare se l'agente SSH gestisce già delle chiavi, eseguire il comando:

```bash
ssh-add -l
```

Per affidargli una chiave, è necessario il comando:

```bash
ssh-add $HOME/chiavi_ssh/id_ed25519
```

Per rimuovere una chiave è necessario il comando:

```bash
ssh-add -d $HOME/chiavi_ssh/id_ed25519
```

Quando una chiave viene aggiunta, è possibile effettuare il login automatico ad una shell, senza che sia richiesta la passphrase.

```bash
ssh -i $HOME/chiavi_ssh/id_ed25519 user@server
```

E' possibile affidare automaticamente la chiave all'agente, impostando la configurazione del client ``/etc/ssh/ssh_config`` con la voce seguente:

```bash
AddKeysToAgent yes
```

## Firmare e verificare file con SSH

E' possibile firmare file, email e rami di git utilizzando SSH, e quindi anche verificare una firma.

Lo strumento di firma di SSH utilizza tre namespace differenti, ``email`` è il namespace per la firma delle email, ``file`` è il namespace per la firma dei file e ``git`` è il namespace per la firma dei commit e dei tag di git.

Il comando per la firma prevede quindi l'opzione ``-n`` per indicare il namespace e l'opzione ``-Y sign`` per indicare di firmare il file, l'opzione ``-f key`` indica la chiave da utilizzare per firmare ed infine ``file_to_sign`` indica il file da firmare, come nell'esempio seguente:

```bash
ssh-keygen -Y sign -n file -f $HOME/chiavi_ssh/id_ed25519 file_to_sign
```

La firma produce un file firmato di nome ``file_to_sign.sig``.

Per verificare il file firmato, è necessario prima creare un elenco di chiavi di cui ci si fida, che sono legate all'identità (generalmente l'email). Questo file ha il seguente formato:

```plaintext
email valid-after=YYYYMMDD,valid-before=YYYYMMDD chiave
```

Un esempio di questo elenco è il seguente:

```plaintext
alice@example.com valid-after=20180101,valid-before=20250101 ssh-rsa ABCD..KEY
bob@example.net   valid-after=20180101,valid-before=20250101 ssh-ed25519 KEY..DA
```

Creato questo file, è possibile verificare che il file sia stato firmato dall'utente identificato dalla email specificata, utilizzando le opzioni ``-Y verify`` per indicare di verificare il file, ``-f allowed_signers`` per indicare l'elenco di chiavi fidate, ``-I alice@example.com`` per indicare l'identità da verificare, ``-n`` per indicare il namespace, ``-s file_to_verify.sig`` per indicare la firma digitale del file ed infine ``file_to_verify`` per indicare il file (in questo caso viene inviato sullo standard input), come di seguito:

```bash
ssh-keygen -Y verify -f allowed_signers -I alice@example.com -n file -s file_to_verify.sig < file_to_verify
```

## Copia sicura dei file

SSH permette la creazione di un canale sicuro di comunicazione tra client e server che può essere utilizzato per inviare e ricevere file.

Il comando utilizzato è ``scp`` (dall'inglese "secure copy") e prevede sia la copia di un file dal client al server che viceversa. La sintassi per specificare un file o una cartella sul server è una delle seguenti:

```plaintext
user@host:/path
scp://user@host:port/path
```

Come si può notare, ``user`` è l'utente che effettua l'accesso sul server, ``host`` indica il nome o l'indirizzo IP del server, ``port`` indica la porta sulla quale è in ascolto il processo e ``path`` indica il percorso del file da copiare o della cartella nella quale copiare il file.

Il comando ``scp`` può quindi essere utilizzato per copiare un file presente su client nella cartella del server ``/home/user/cartella`` utilizzando la seguente sintassi:

```bash
scp -i $HOME/chiavi_ssh/id_ed25519 -P 22 file user@server:/home/user/cartella
```

Viceversa, un file presente sul server nella cartella ``/home/user/cartella/`` può essere copiato nella cartella ``cartella`` del client con la seguente sintassi:

```bash
scp -i $HOME/chiavi_ssh/id_ed25519 -P 22 user@server:/home/user/cartella/file cartella
```

Per copiare tutti i file presenti in una cartella si può utilizzare il carattere jolly ``*``, come nell'esempio seguente:

```bash
scp -i $HOME/chiavi_ssh/id_ed25519 -P 22 user@server:/home/user/cartella/* cartella
```

Per copiare ricorsivamente tutti i file e le cartelle presenti in una specifica cartella si può utilizzare l'opzione ``-r``, come nell'esempio seguente:

```bash
scp -i $HOME/chiavi_ssh/id_ed25519 -P 22 -r user@server:/home/user/cartella cartella
```

## SSH filesystem

Con SSH si può installare un driver che permette di montare una cartella remota come se fosse un disco locale.

L'installazione del filesystem SSH avviene con il seguente comando:

```bash
apt-get install sshfs
```

Creare una cartella ``/mnt/root`` con il comando:

```bash
sudo mkdir /mnt/Remote
```

Montare la cartella con il seguente comando:

```bash
sudo sshfs -o allow_other,IdentityFile=/home/user/.ssh/id_ed25519 user@192.168.1.50:/home/user/Sync /mnt/Remote
```

Per smontare la cartella, utilizzare il seguente comando:

```bash
sudo umount /mnt/Remote
```

## SSH Tunneling (Port forwarding)

Con SSH si può permettere ai client di collegarsi su una porta di comunicazione di un primo server che, tramite un tunnel creato attraverso un canale SSH criptato, trasferisce i dati ad un secondo server.

Questa tecnica permette ad un servizio che è in ascolto sull'interfaccia locale o sull'interfaccia di rete, e che quindi non è disponibile ai client che si collegano da remoto, di essere disponibile ai client remoti su un'altra porta.

I tunnel possono essere di due tipi: locali o remoti.

Il **local port forwarding** permette di avere una porta remota disponibile localmente, quindi i client si collegano in locale per comunicare i dati con server remoto.

```plaintext
ssh -L [<LocalAddress>]:<LocalPort>:<RemoteHost>:<RemotePort> sshUser@remoteServer
```

Il **remote port forwarding** permette di avere una porta locale disponibile su un server remoto, quindi i client si collegano al server remoto per comunicare i dati alla macchina locale.

```plaintext
ssh -R [<RemoteAddress>]:<RemotePort>:<LocalHost>:<LocalPort> sshUser@remoteServer
```

Nel caso il RemoteAddress non sia l'interfaccia ``localhost``, allora la selezione dell'indirizzo remoto deve essere abilitata nel file di configurazione del server alla voce ``GatewayPorts`` e prevede tre opzioni:

- ``yes`` nel caso la porta remota sia resa disponibile sia in localhost che in rete locale che su internet;
- ``no`` nel caso la porta remota sia resa disponibile solo su localhost;
- ``clientspecified`` nel caso la porta remota sia resa disponibile sull'indirizzo specificato dal client.
