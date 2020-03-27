---
type: "tools"
title: "Installare OpenJDK"
description: "Guida passo passo all'installazione di OpenJDK, l'ambiente di sviluppo per applicazioni Java"
date: 2020-03-27
publishdate: 2020-03-27
lastmod: 2020-03-27
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: false
toc: false
notesforauthors: "Guida passo passo all'installazione di OpenJDK, l'ambiente di sviluppo per applicazioni Java"
summary: "Guida passo passo all'installazione di OpenJDK, l'ambiente di sviluppo per applicazioni Java"
---

OpenJDK è un'implementazione open-source della piattaforma Java, un insieme di software per lo sviluppo e l'esecuzione di applicazioni scritte in linguaggio Java.

Il JDK rappresenta l'ambiente di sviluppo; Il JRE rappresenta l'ambiente di esecuzione che contiene la macchina virtuale Java (dall'inglese Java Virtual Machine);

In Gnu/Linux, su distribuzioni basate su Debian, si può installare attraverso il package manager apt:

```bash
sudo apt-get install openjdk-11-jdk
sudo update-alternatives --config java
```

In windows si può installare attraverso il package manager ```choco```:

```powershell
choco install openjdk11
```

In alternativa, si può scaricare dal sito [https://adoptopenjdk.net/](https://adoptopenjdk.net/) 

![image](/static/coding/tools/OpenJDK-ChooseSO.png "OpenJDK - Scelta Sistema Operativo")

Cliccando sul tasto ``Altre piattaforme``, si ha la possibilità di scegliere sia la versione che la macchina virtuale.

![image](/static/coding/tools/OpenJDK-Choose.png "OpenJDK - Scelta versione e JVM")

Si sceglie la versione OpenJDK 11, la Java Virtual Machine "OpenJ9" poi si prosegue nella scelta del pacchetto adatto al sistema operativo:

![image](/static/coding/tools/OpenJDK-Download.png "OpenJDK - Download pacchetto")

Si sceglie il sistema operativo, si verifica l'architettura (x86 o x64) e si scarica il pacchetto eseguibile (con estensione ".msi" per Windows o ".pkg" per Linux).

Si procede all'installazione seguendo le indicazioni della procedura guidata. Quindi al termine, si verifica che l'installazione è avvenuta correttamente, eseguendo il comando:

```bash
java -version
```

L'output del comando indicherà la versione installata:

```bash
openjdk version "11.0.6" 2020-01-14
```
