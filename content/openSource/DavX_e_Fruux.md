---
type: "openSource"
title: "DavX e Fruux"
description: "DavX in combinazione con Fruux offrono la sincronizzazione di contatti, calendario e tasks ai dispositivi registrati"
date: 2020-05-30
publishdate: 2020-05-30
lastmod: 2020-05-30
categories: ["open source", "software"]
keywords: ["open source", "software"]
draft: false
toc: false
summary: "DavX è un'app che permette la sincronizzazione di contatti, calendario e tasks su server. Fruux è un server (basato su software open source) che offre la memorizzazione e sincronizzazione della rubrica, del calendario e dei task ai dispositivi registrati."
---

# DavX e Fruux

**Fruux** è un servizio web che offre la sincronizzazione dei propri dispositivi sui server della società. Il servizio è basato su software open source che offre trasmissione e memorizzazione criptata dei dati. 

Utente e password sono generati per ogni dispositivo e non vengono memorizzati sul server, per cui se le credenziali di un dispositivo vengono smarrite, il dispositivo deve essere cancellato e ricreato.

Il servizio offre anche la possibilità di cancellare i propri dati "a distanza", nel caso un dispositivo sia stato smarrito.

La registrazione di un account su server Fruux prevede la selezione del tipo di dispositivo:

![Image](/static/openSource/Fruux-SelectDeviceType.png "Fruux - Select Device Type")

Il passo successivo prevede la scelta di un nome per il dispositivo da sincronizzare.

![Image](/static/openSource/Fruux-SelectDeviceName.png "Fruux - Select Device Name")

Al dispositivo vengono quindi associati un utente fittizio ed una password.

![Image](/static/openSource/Fruux-DeviceUserPwd.png "Fruux - Device User and Password")

La lista di dispositivi registrati viene quindi riportata.

![Image](/static/openSource/Fruux-DeviceList.png "Fruux - Device List")


**DavX5** è un'applicazione open source per la sincronizzazione di contatti, calendario e tasks su un server (abilitato WebDav), quale Fruux.

L'inserimento di un'account in DavX5 prevede il solo inserimento dell'url (di Fruux), e delle credenziali del dispositivo.

![Image](/static/openSource/DavX-AddDevice.png "DavX5 - Add a Device")

L'app DavX5 permette di slegare i propri dati da Google e di utilizzare un servizio su web adatto alle proprie esigenze.

Fruux offre un servizio affidabile per tenere i propri dati al sicuro da occhi indiscreti.

Installa l'app da [F-Droid](/opensource/fdroid/ "F-Droid").

