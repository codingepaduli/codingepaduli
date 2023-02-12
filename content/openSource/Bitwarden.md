---
type: "openSource"
title: "Bitwarden"
description: "Bitwarden, un servizio di gestione credenziali/password open source"
date: 2020-02-29
publishdate: 2020-02-29
lastmod: 2020-02-29
categories: ["open source", "software"]
keywords: ["open source", "software"]
draft: false
toc: false
summary: "Bitwarden, un servizio di gestione credenziali/password open source."
---

# Bitwarden

Bitwarden è un servizio di gestione credenziali/password open source che memorizza le credenziali e le password dell'utente e permette di utilizzarle con un semplice "click" da un qualsiasi dispositivo (computer, smartphone, raspberry, ecc...).

E' possibile utilizzare Bitwarden tramite interfaccia web, tramite applicazione installata (su Windows, Linux e Mac), tramite estensione del browser (Google Chrome, Mozilla Firefox, Opera, Microsoft Edge, Safari, Vivaldi, Brave, Tor Browser), tramite app mobile e anche da linea di comando.

L'utente può generare casualmente le proprie password e poi dimenticarsene, dato che Bitwarden ricorda le credenziali (user/password) per l'utente. Accedendo ad un sito su cui è registrato, l'utente può effettuare il login semplicemente cliccando sull'icona di Bitwarden, che riempirà i campi utente e password necessari al login.

L'architettura è centralizzata, con il server che memorizza credenziali e password in forma criptata con algoritmo AES-256, salted hashing, e PBKDF2 SHA-256. Ogni account Bitwarden è associato ad una “fingerprint phrase”, un codice che non cambierà mai e che serve ad identificare l'utente (da usare in caso di smarrimento password).

L'utente ha la possibilità di attivare una seconda fase di verifica all'atto del login (two-step login) su Bitwarden, che avviene attraverso un secondo codice di sicurezza da inserire durante il login. Questo codice può essere rilasciato da un'app di autorizzazione OTP (come l'app open source AndOTP), può essere inviato via mail o, solo per gli utenti premium, si possono sfruttare servizi quali YubiKey OTP Security Key, Duo e FIDO U2F Security Key.

Per attivare la seconda fase di verifica all'atto del login (two-step login) su Bitwarden, accedere all'area "two step login":

![Bitwarden - Attivazione Two step login](/static/openSource/Bitwarden-TwoStepLogin1.png "Bitwarden - Attivazione Two step login")

E' utile prendere nota della “fingerprint phrase”, il codice che serve ad identificare l'utente, cliccando sul pulsante "view recovery code", in caso si cancelli per sbaglio i propri dati di accesso dall'applicazione di autenticazione OTP.

A questo punto, cliccare su gestione app di autenticazione "Authenticator App", quindi utilizzare l'app AndOTP (o una qualsiasi app di autenticazione OTP) per scannerizzare il codice QR (o inserire a mano il codice indicato):

![Bitwarden - Attivazione Two step login - codice QR](/static/openSource/Bitwarden-TwoStepLogin2.png "Bitwarden - Attivazione Two step login - codice QR")

Una volta scannerizzato il codice QR (o inserito a mano), l'app di autenticazione fornisce un codice OTP. Inserendo questo codice OTP e cliccando su "Enable", Bitwarden indica che la seconda fase di verifica all'atto del login (two-step login) è abilitata:

![Bitwarden - Attivazione Two step login - verifica abilitata](/static/openSource/Bitwarden-TwoStepLogin3.png "Bitwarden - Attivazione Two step login - verifica abilitata")

Si ricorda ancora di prendere nota della “fingerprint phrase”, da utilizzarsi nel caso si cancelli per sbaglio i propri dati di accesso dall'applicazione di autenticazione OTP.

A questo punto, installare l'estensione per il browser, ad esempio per Mozilla Firefox:

![Bitwarden - estensione per browser Firefox](/static/openSource/Bitwarden-FirefoxPlugin.png "Bitwarden - estensione per browser Firefox")

Durante la navigazione, quando si effettua il login ad un sito tramite utente e password, Bitwarden chiederà di memorizzare le credenziali.

La seconda volta che l'utente ha necessità di effettuare il login sul sito, sarà possibile cliccare sull'icona dell'estensione di Bitwarden per far si che Bitwarden inserisca le credenziali di login (precedentemente memorizzate) al posto dell'utente.

Tra le cose interessanti della cassaforte di Bitwarden troviamo i resoconti delle password e delle violazioni.

![Bitwarden - Resoconti](/static/openSource/Bitwarden-Resoconti.png "Bitwarden - Resoconti")

Un esempio di resoconto è quello delle violazioni dei dati, che indica che un determinato account può essere stato violato, come di seguito:

![Bitwarden - Resoconto violazione dati account](/static/openSource/Bitwarden-Resoconti-violazione.png "Bitwarden - Resoconto violazione dati account")

O si spera che non siano presenti violazioni.

![Bitwarden - Resoconto nessuna violazione](/static/openSource/Bitwarden-Resoconti-no-violazione.png "Bitwarden - Resoconto nessuna violazione")

Installa l'app da [F-Droid](/opensource/fdroid/ "F-Droid").
