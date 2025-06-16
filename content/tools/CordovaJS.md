---
type: "tools"
title: "Apache Cordova"
description: "Apache Cordova - Sviluppo di apps cross-platform con HTML5, CSS & JS"
date: 2024-01-15
publishdate: 2024-01-15
lastmod: 2024-01-15
weight: 1
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: true
toc: false
summary: "Apache Cordova - Sviluppo di apps cross-platform con HTML5, CSS & JS"
---

# Apache Cordova

[Apache Cordova](https://cordova.apache.org/ "Sito web di Apache Cordova") è un un framework che permette di sviluppare applicazioni cross-platform in HTML5. Per applicazioni cross-platform in HTML5 si intende applicazioni sviluppate in HTML5 (e quindi CSS e JavaScript) e che possono essere eseguite sulle piattaforme supportate, al momento Android, IOs, Linux e Windows.

L'architettura è visualizzabile nella seguente immagine, a primo impatto può sembrare complessa ma diventa molto comprensibile con l'uso quotidiano del framework.

[Architettura](https://cordova.apache.org/static/img/guide/cordovaapparchitecture-20230712.svg)

Il macro-componente "Web App" è l'applicazione sviluppata in HTML5.

I plug-in sono gli strumenti che permettono alla "Web App" di interfacciarsi con i componenti specifici del Sistema Operativo, come lo spazio di archiviazione, la fotocamera, l'accelerometro, ecc...

La WebView (Rendering Engine) è il componente che si occupa di presentare l'applicazione grafica (la Web App).

## Sviluppo di app Android con Apache Cordova

La versione 11.x di Apache Cordova prevede i seguenti requisiti per lo sviluppo di app Android:

- una versione uguale o successiva di ``Gradle 7.4.2``;
- Java 11 per lo sviluppo di app per Android 12 (API-Levels: 32);
- Node.js con versione maggiore o uguale a ``14``;

La versione 12.x di Apache Cordova prevede i seguenti requisiti per lo sviluppo di app Android:

- una versione uguale o successiva di ``Gradle 7.6``;
- Java 11 per lo sviluppo di app per Android 13 (API-Levels: 33);
- Node.js con versione maggiore o uguale a ``16.13``;

La versione 13.x di Apache Cordova prevede i seguenti requisiti per lo sviluppo di app Android:

- una versione uguale o successiva di ``Gradle 8.7``;
- Java 17 per lo sviluppo di app per Android 14 (API-Levels: 34);
- Node.js con versione maggiore o uguale a ``16.13``;

## Build ed esecuzione

Per creare un progetto:

```bash
cordova create hello com.example.hello HelloWorld
```

Per visualizzare le piattaforme sulle quali si può sviluppare:

```bash
cordova platforms ls
```

```plaintext
Installed platforms:
  android 10.1.2
  browser 6.0.0
Available platforms: 
  electron ^3.0.0
```

Per eseguire l'app su browser, avviando il server all'indirizzo ``http://localhost:8000/``:

```bash
cordova run browser
```

Per verificare i requisiti di un progetto Android:

```bash
cordova requirements android
```

Nel caso sia mostrato questo specifico errore di incompatibilità, bisogna controllare la versione di Java:

```plaintext
Errore: LinkageError durante il caricamento della classe principale com.android.sdklib.tool.AvdManagerCli
	java.lang.UnsupportedClassVersionError: com/android/sdklib/tool/AvdManagerCli has been compiled by a more recent version of the Java Runtime (class file version 61.0), this version of the Java Runtime only recognizes class file versions up to 55.0"
```

La versione del JRE 61.0 si riferisce a Java 17, mentre la versione JRE installata è la 55.0 (Java 11).
Allo stesso modo, alla versione del JRE 65.0 corrisponde Java 21.

Per effettuare la build di un progetto Android:

```bash
cordova build android
```

```plaintext
BUILD SUCCESSFUL in 4s
  48 actionable tasks: 48 up-to-date
  Built the following apk(s): 
    /hello-world/hello/platforms/android/app/build/outputs/apk/debug/app-debug.apk
```

Per eseguire l'app su emulatore Android:

```bash
cordova run android
```
