---
type: "openSource"
title: "Session"
description: "Session, un'app open source per la messaggistica progettata per offrire comunicazioni criptate e orientate al rispetto della privacy"
date: 2020-03-10
publishdate: 2020-03-10
lastmod: 2020-03-10
categories: ["open source", "software"]
keywords: ["open source", "software"]
draft: false
toc: false
notesforauthors: "Software open source"
summary: "Session, un'app open source per la messaggistica progettata per offrire comunicazioni criptate e orientate al rispetto della privacy."
---

Session, un'app open source per la messaggistica (simile a whatsapp e signal) progettata per offrire comunicazioni criptate e orientate al rispetto della privacy. 

La differenza di Session rispetto alle altre app di messaggistica è che non richiede una mail o un numero di telefono per utilizzarlo. All'avvio dell'applicazione viene generato un Session ID che serve ad identificare l'utente. 

![Image](/static/openSource/Session-SessionID.png "Session - Session ID")

Sempre all'avvio, Session crea la propria frase di recupero, in modo che l'utente possa accedere in qualunque momento alle proprie comunicazioni.

![Image](/static/openSource/Session-RecoveryPhrase.png "Session - Recovery Phrase")

Dato che Session non usa il numero di telefono, non può creare una lista di contatti a partire da quelli presenti in rubrica. 
Questo comporta che per iniziare una comunicazione è necessario inserire il Session ID della persona da contattare, per cui è necessario che questi trasmetta il proprio Session ID (anche rappresentato da un codice QR) tramite sms, bluetooth, mail o altro mezzo di comunicazione.

![Image](/static/openSource/Session-NewChat.png "Session - New Chat")

L'interfaccia si presenta del tutto simile alle altre app di messaggistica, con l'elenco di chat avviate.

![Image](/static/openSource/Session-ChatList.png "Session - Chat List")

Le funzionalità sono molteplici, la creazione di gruppi aperti o chiusi, l'invio di messaggi che si autodistruggono dopo tot minuti, la possibilità di collegare più dispositivi allo stesso Session ID e tante altre.

L'app si puó scaricare dal sito web [https://getsession.org/](https://getsession.org/).
