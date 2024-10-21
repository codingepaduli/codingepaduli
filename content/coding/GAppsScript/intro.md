---
type: "GAppsScript"
title: "Lez. 01 - Introduzione a Google App Script"
description: "Introduzione a Google App Script"
date: 2024-10-20
publishdate: 2024-10-20
lastmod: 2024-10-20
categories: ["coding", "GAppsScript"]
keywords: ["coding", "GAppsScript"]
draft: false
toc: false
summary: "Introduzione a Google App Script"
---

# 01 - Introduzione a Google App Script

Apps Script ( [https://script.google.com/](https://script.google.com/) ) è una piattaforma JavaScript basata su cloud che consente di integrare e automatizzare le attività in tutti i prodotti Google.

Ogni progetto Apps Script utilizza Google Cloud per gestire le autorizzazioni, servizi avanzati e altri dettagli. Per configurare e gestire queste impostazioni, ogni progetto Apps Script ha un progetto Google Cloud associato

L'ambiente di lavoro si presenta così:

![Nuovo progetto - step 1](/static/coding/GAppsScript/GAppsScript-newProject-step1.png)

## Concetti

**Ambiti di autorizzazione**: Gli utenti devono autorizzare i progetti di script che accedono ai loro dati o agiscono per loro conto. Quando un utente esegue uno script che richiede l'autorizzazione per la prima volta nel tempo, la UI presenta una richiesta di avvio del flusso di autorizzazione. Apps Script rileva automaticamente gli ambiti di autorizzazione necessari.

Gli ambiti si vedono nelle informazioni del progetto:

![Nuovo progetto - ambiti di autorizzazione](/static/coding/GAppsScript/GAppsScript-newProject-auth.png)

**Servizi integrati**: per interagire con i dati utente ed i prodotti Google, Google Apps Script fornisce l'interazione attraverso degli oggetti JavaScript globali (simili all'oggetto ``Math``). Ogni servizio fornisce almeno un oggetto globale (di primo livello):

- l'oggetto ``GmailApp`` per accedere al servizio Gmail;
- l'oggetto ``SpreadsheetApp`` per accedere al servizio Fogli di calcolo;
- l'oggetto ``FormApp`` per accedere al servizio Moduli;
- l'oggetto ``DriveApp`` per accedere al servizio Drive;
- l'oggetto ``AdminDirectory`` per accedere all'amministrazione di dispositivi, gruppi, utenti e altre entità del dominio;
- Browser
- Logger
- MimeType
- Session
- ...

**Servizi avanzati**: I servizi avanzati funzionano in modo molto simile a servizi integrati, sono esposti allo stesso modo come oggetti globali, ma devono essere attivati prima di poterli utilizzare. Apps Script gestisce automaticamente il flusso di autorizzazione per questi servizi. Sono implementati come dei sottili wrapper che rivestono le API sottostanti e consentono meno configurazioni rispetto alle interfacce HTTP.

## Primo progetto

Cliccando sul pulsante "nuovo progetto" si visualizza un nuovo progetto:

![Nuovo progetto - step 2](/static/coding/GAppsScript/GAppsScript-newProject-step2.png)

Cliccando su impostazioni si visualizza la schermata seguente:

![Nuovo progetto - step 2](/static/coding/GAppsScript/GAppsScript-newProject-settings.png)

E' importante impostare le voci relative a:

- Nome del progetto;
- Mostra il file manifest "appsscript.json" nell'editor;
- Le proprietà desiderate;

Il file manifest ``appsscript.json`` si mostra cosi:

```javascript
{
  "timeZone": "Africa/Abidjan",
  "dependencies": {
    "enabledAdvancedServices": []
  },
  "exceptionLogging": "STACKDRIVER",
  "runtimeVersion": "V8"
}
```

Per aggiungere i servizi avanzati, nell'editor del codice si clicca sul tasto di "aggiunta servizi" e si sceglie il servizio:

![Nuovo progetto - servizi aggiuntivi](/static/coding/GAppsScript/GAppsScript-newProject-serviziAggiuntivi.png)

Una volta aggiunto un servizio aggiuntivo, questo viene aggiunto al file di manifest ``appsscript.json``:

```javascript
{
  "timeZone": "Africa/Abidjan",
  "dependencies": {
    "enabledAdvancedServices": [{
      "userSymbol": "AdminDirectory",
      "version": "directory_v1",
      "serviceId": "admin"
    }]
  },
  "exceptionLogging": "STACKDRIVER",
  "runtimeVersion": "V8"
}
```


