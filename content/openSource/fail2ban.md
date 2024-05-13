---
type: "openSource"
title: "Fail2ban"
description: "Fail2ban, un servizio di protezione da tentativi di intrusione ripetuti"
date: 2024-05-13
publishdate: 2024-05-13
lastmod: 2024-05-13
categories: ["open source", "software"]
keywords: ["open source", "software"]
draft: false
toc: false
summary: "Fail2ban, un servizio di protezione da tentativi di intrusione ripetuti."
---

# Fail2ban

Fail2ban è un un servizio di protezione da ripetitivi tentativi di intrusione nel proprio pc.

Il servizio controlla i file di log del sistema per verificare tentativi ripetuti di accesso remoto non riusciti e dopo un certo numero di tentativi in un determinato periodo da parte dello stesso IP, lo blocca aggiungendo una regola sul firewall.

Può monitorare diversi servizi, come ssh ed apache HTTP server, inoltre funziona con diversi firewall, da iptables a ufw. Ogni servizio da monitorare è detto `'jail'`, mentre i firewall sottostanti sono detti ``backend``;

Il client fail2ban-client permette di interagire col server, in particolare possiamo avviarlo, stopparlo e monitorare il sistema con i comandi:

- ``sudo fail2ban-client stop``;
- ``sudo fail2ban-client start``;
- ``sudo fail2ban-client status``;

Per visualizzare i log del servizio possiamo usare uno dei due comandi (l'opzione ``-b`` visualizza quelli dall'ultimo avvio del sistema):

- ``sudo journalctl -u fail2ban.service``
- ``sudo journalctl -u fail2ban.service -b``

## Configurazione

La cartella ``/etc/fail2ban/`` contiene i file di configurazione principali:

- ``fail2ban.conf``: la configurazione del servizio;
- ``jail.conf``: i parametri per rilevare i ripetuti tentativi di accesso remoto non riusciti;

Sono poi presenti le sottocartelle contenenti i file specifici che sovrascrivono la configurazione generica:

- ``jail.conf/*.conf`` file che sovrascrivono i parametri di rilevazione dei tentativi di accesso;
- ``fail2ban.d/*.conf`` file che sovrascrivono la configurazione del servizio
- ``filter.d/*.conf`` regole per leggere i file di log e filtrare le righe del servizio monitorato;
- ``action.d/*.conf`` azioni per creare una nuova regola sul firewall;

Nei sistemi Debian, ad esempio, le voci contenute nel file ``jail.d//defaults-debian.conf`` sovrascrivono tutte le voci generiche del file ``jail.conf``;

<!-- 
![Bitwarden - Resoconto nessuna violazione](/static/openSource/Bitwarden-Resoconti-no-violazione.png "Bitwarden - Resoconto nessuna violazione")

Installa l'app da [F-Droid](/opensource/fdroid/ "F-Droid").
-->
