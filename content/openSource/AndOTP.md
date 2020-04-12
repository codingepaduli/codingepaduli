---
type: "openSource"
title: "AndOTP"
description: "AndOTP, un'app open source per l'autenticazione a due fattori"
date: 2020-03-02
publishdate: 2020-03-02
lastmod: 2020-03-02
categories: ["open source", "software"]
keywords: ["open source", "software"]
draft: false
toc: false
summary: "AndOTP, un'app open source per l'autenticazione a due fattori."
---

# AndOTP

AndOTP è un'app open source per l'autenticazione a due fattori. Si occupa della generazione di una password valida "una volta sola", dall'inglese "one time password" (OTP).

Queste password "OTP" sono utili nell'autenticazione a due fattori, cioè l'accesso ad un servizio tramite prima l'inserimento di utente e password e poi (in seconda fase) l'inserimento di una password OTP.

In generale la password OTP cambia ogni 30 secondi (algoritmo temporale) o cambia a seconda della password usata in precedenza o ancora può essere generata casualmente ed inviata all'utente (tramite SMS o email). 

Il vantaggio dell'uso di un'autenticazione a due fattori è che se un potenziale intruso riesce a intercettare utente e password, deve comunque inserire una OTP per accedere al servizio. Nel caso il potenziale intruso avesse intercettato anche la password OTP, non potrebbe comunque riutilizzarla, in quanto non più valida (è valida "una volta sola").

All'avvio, l'app richiede di impostare la password per l'accesso all'app ed ai dati memorizzati.

![Image](/static/openSource/AndOTP-Setup.png "AndOTP - Setup")

![Image](/static/openSource/AndOTP-PinSetup.png "AndOTP - Pin Setup")

AndOTP permette di generare la password OTP a partire da un codice QR da scannerizzare o da una chiave segreta da inserire (sia il codice QR che la chiave segreta sono forniti dal servizio che si intende utilizzare).

![Image](/static/openSource/AndOTP-AddService.png "AndOTP - Add Service")

Aggiunti i dettagli, è possibile visualizzare le password OTP generate:

![Image](/static/openSource/AndOTP-ServiceList.png "AndOTP - Service List")

Installa l'app da [F-Droid](/opensource/fdroid/ "F-Droid").
