---
type: "powershell"
title: "01 - Introduzione a PowerShell"
description: "Introduzione a PowerShell"
date: 2020-04-10
publishdate: 2020-04-10
lastmod: 2020-04-10
categories: ["coding", "tools", "shell", "powershell"]
keywords: ["coding", "tools", "shell", "powershell"]
draft: false
toc: false
summary: "Introduzione a PowerShell"
---

# Introduzione a PowerShell

PowerShell è un linguaggio di scripting orientato agli oggetti che è fortemete integrato con la shell del sistema operativo (SO) e facilita l'interazione con il sistema operativo sottostante. 

Un vantaggio di PowerShell è che permette di sfruttare gli oggetti messi a disposizione dal ``.Net Framework``, ovvero gli oggetti che fanno parte del linguaggio di programmazione ``.Net``.

Questo però rappresenta anche uno svantaggio perchè il ``.Net Framework`` non è completamente disponibile su sistemi Linux, soprattutto server, e ne esiste solo una versione ridotta, ovvero il ``.Net Core``. Inoltre, essendo un prodotto relativamente "nuovo", non è presente sui server che eseguono software relativamente "datato".

PowerShell ha una lista estendibile di comandi che è possibile eseguire. Ogni comando è noto come ``CommandLet`` o ``CmdLet`` ed è progettato per prendere in input oggetti e restituire in output un oggetto. 

Il fatto che i CmdLet lavorino con oggetti permette la gestione delle informazioni in maniera strutturata, evitando di ricorrere alla scansione del testo in input per accedere ad una specifica informazione o in output per scrivere un particolare dato.

Powershell usa i provider per gestire i dati memorizzati. I provider sono moduli che fanno parte del ``.Net Framework`` (lo stesso di PowerShell) e che forniscono un accesso specializzato ad una collezione di dati. Vi è un provider che gestisce file e cartelle, uno che gestire gli alias, uno che gestire le variabili d'ambiente, ecc... E' possibile scrivere nuovi provider per gestire altre collezioni di dati.

Per questioni di sicurezza, le impostazioni predefinite prevedono che non sia possibile eseguire gli script con il doppio click e che gli script debbano essere firmati. 

Per eseguire uno script, cliccare sullo script con il secondo tasto e scegliere la voce "Esegui con powershell".

Le politiche di esecuzione degli script sono:

- Restricted: script non permessi;

- AllSigned: script eseguiti solo se firmati;

- RemoteSigned: script eseguiti se propri o se firmati;

- Unrestricted: script eseguiti sempre.

Per impostare la politica di esecuzione degli script anche se non firmati, è necessario eseguire il comando ``Set-ExecutionPolicy Unrestricted``;

Tra le guide disponibili online, quella sul sito del produttore è completamente in italiano [Guida a Powershell](https://docs.microsoft.com/it-it/powershell/scripting/overview?view=powershell-7 "Guida a Powershell"), oltre ad altre guide in inglese come [https://www.guru99.com/powershell-tutorial.html](https://www.guru99.com/powershell-tutorial.html "Guida a powershell") ed a [https://www.tutorialspoint.com/powershell/index.htm](https://www.tutorialspoint.com/powershell/index.htm "Guida a powershell").
