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
notesforauthors: "Software open source"
summary: "AndOTP, un'app open source per l'autenticazione a due fattori."
---

AndOTP è un'app open source per l'autenticazione a due fattori. Si occupa della generazione di una password valida "una volta sola" (dall'inglese "one time").

In generale la password OTP cambia ogni 30 secondi (algoritmo temporale) o cambia a seconda della password usata in precedenza o anche casualmente. 

Queste password "OTP" sono utili nell'autenticazione a due fattori, cioè l'accesso ad un servizio tramite prima utente/password e poi (seconda fase) una password OTP.

Il vantaggio dell'uso di un'autenticazione a due fattori è che se un potenziale intruso riesce a intercettare utente e password, deve comunque inserire una OTP per accedere al servizio. Nel caso il potenziale intruso avesse intercettato anche la password OTP,  non potrebbe comunque riutilizzarla, in quanto non più valida (è valida "una volta sola").

![Image](/static/openSource/AndOTP-Pin.png "AndOTP - Immagine 1")

AndOTP permette di generare la password OTP a partire da un codice QR da scannerizzare o da una frase identificativa da inserire (sia il codice QR che la frase identificativa sono generati dal servizio che si vuole utilizzare).

Permette il backup criptato o protetto da password e l'accesso all'app solo attraverso un pin.
