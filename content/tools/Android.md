---
type: "tools"
title: "Android SDK e ADB"
description: "Android SDK e ADB - installare gli strumenti di sviluppo e debug di Android"
date: 2025-06-15
publishdate: 2025-06-15
weight: 1
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: false
toc: false
summary: "Android SDK e ADB - installare gli strumenti di sviluppo e debug di Android"
---

# Android SDK e ADB

Gli ambienti di sviluppo Android possono essere scaricati come unico pacchetto con Android Studio oppure singolarmente con gli strumenti a linea di comando Android.

## CLI

Supponiamo di voler installare gli SDK Android nella cartella ``$HOME/Sviluppo/AndroidSDK``.

```bash
mkdir -p "$HOME/Sviluppo/AndroidSDK/cmdline-tools/latest"
```

Al momento lo script di installazione richiede che gli strumenti a linea di comando siano posizionati nella cartella ``cmdline-tools/latest`` quindi procediamo nel crearle.

```bash
mkdir -p "$HOME/Sviluppo/AndroidSDK/cmdline-tools/latest"
```

Scaricato il pacchetto dal sito ufficiale, è necessario estrarlo e spostare **tutti** i file estratti nella cartella ``latest``.

Dalla cartella ``cmdline-tools/latest/bin`` è possibile eseguire il comando per visualizzare i pacchetti da installare:

```bash
./sdkmanager --list
```

Questo comando da in output la seguente tabella:

```plaintext
Available Packages:
  Path                 | Version    | Description
  build-tools;30.0.3   | 30.0.3     | Android SDK Build-Tools 30.0.3
  platforms;android-30 | 2          | Android SDK Platform 30
  platform-tools       | 34.0.0     | Android SDK Platform-Tools
  emulator             | 32.1.11    | Android Emulator
```

I pacchetti da installare sono i seguenti:

- Il software di emulazione ``emulator``
- Le immagini di sistema ``system-images`` da eseguire negli emulatori; si differenziano per varianti come ``system-images;android-32;google_apis;x86_64`` che supporta le API di Google e ``system-images;android-32;google_apis;aosp_atd;x86_64`` del progetto Android Open Source Project (AOSP);
- Gli strumenti di compilazione ``build-tools`` necessari a creare un file APK;
- Gli strumenti ``platform-tools`` per gestire la piattaforma Android (indipendente dalla versione Android e dalla versione API utilizzata);
- Le API e le implementazioni ``platforms;android-32`` specifiche per la versione Android;

Per la scelta della versione dei pacchetti da installare si deve seguire la corrispondenza in tabella:

versione    | SDK e API level | Build Tools
----------- | --------------- |------------
Android 11  | SDK Platform 30 | 30.x
Android 12  | SDK Platform 31 | 31.x
Android 12L | SDK Platform 32 | 32.x
Android 13  | SDK Platform 33 | 33.x
Android 14  | SDK Platform 34 | 34.x

Dalla cartella ``latest/bin`` è possibile lanciare i seguenti comandi per installare i componenti scelti:

```bash
./sdkmanager "platform-tools"
./sdkmanager "platforms;android-32"
./sdkmanager "build-tools;32.0.0"
./sdkmanager "emulator"
./sdkmanager "system-images;android-32;aosp_atd;x86_64"
```

E' possibile verificare i pacchetti istallati con il comando:

```bash
./sdkmanager --list_installed
```

L'output indica i pacchetti installati ed il relativo percorso:

Path                 | Version | Description                | Location
------------------   | ------- | -------------------------- | --------------------
build-tools;30.0.3   | 30.0.3  | SDK Build-Tools 30.0.3     | build-tools/30.0.3
emulator             | 32.1.11 | Android Emulator           | emulator
patcher;v4           | 1       | SDK Patch Applier v4       | patcher/v4
platform-tools       | 34.0.0  | Android SDK Platform-Tools | platform-tools
platforms;android-30 | 2       | Android SDK Platform 30    | platforms/android-30

Installati i pacchetti desiderati, si procede a salvare nel file ``.bashrc`` i percorsi appena creati:

```bash
export ANDROID_HOME="$HOME/Sviluppo/AndroidSDK"
export ANDROID_SDK_ROOT="$HOME/Sviluppo/AndroidSDK"

export PATH=$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator/
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools/
export PATH=$PATH:$ANDROID_SDK_ROOT/build-tools/
```

Per creare un dispositivo virtuale Android (avd), assicurarsi di aver installato una ``system-images`` con la stessa versione del pacchetto ``platforms;android`` installato.

Si può creare il dispositivo virtuale su questa immagine:

```bash
avdmanager create avd --name Pixel2 --package "system-images;android-32;google_apis;x86" --path "$HOME/Sviluppo/AndroidSDK/avd/"
```

## Comandi adb

Adb ha una shell che si può utilizzare per inviare comandi al telefono.

```bash
adb shell
```

```plaintext
daemon not running; starting now at tcp:5037
daemon started successfully
```

Dalla shell si può utilizzare il seguente comando che permette di gestire tante caratteristiche del sistema:

```bash
cmd package
```

Si può anche lanciare un comanda nella shell in maniera non interattiva:

```bash
adb shell 'cmd package'
```

Per visualizzare gli utenti: ``pm list users``

```plaintext
Users:
UserInfo{0::c13} running
UserInfo{97:dual:1010} running
```

In questo caso si vede l'utente con ID 0 e l'utente con ID 97 per le app installate il "dual mode".

Per installare un app per un utente: il comando:

```bash
adb install  --user 97  app.apk
```

Per trovare il path di un file APK:

```bash
adb shell
cmd package path com.android.chrome
```

Per copiare e incollare da e verso il dispositivo:

```bash
adb pull path_from_android path_to_local
adb push path_to_android path_from_local
```

Per rimuovere un app per un utente: il comando:

```bash
cmd package clear --user 97 com.android.chrome
cmd package uninstall  --user 97  com.android.chrome
```

Esempio di rimozione di una app:

```bash
adb shell 'cmd package path com.google.android.apps.subscriptions.red'
adb pull system/priv-app/GoogleOne/GoogleOne.apk /home/io/SyncV3/Varie/apk/
adb shell 'cmd package clear --user 97 com.google.android.apps.subscriptions.red'
adb shell 'cmd package clear --user 0 com.google.android.apps.subscriptions.red'
adb shell 'cmd package uninstall  --user 97  com.google.android.apps.subscriptions.red'
adb shell 'cmd package uninstall  --user 0  com.google.android.apps.subscriptions.red'
```
