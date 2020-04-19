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

PowerShell è un linguaggio di scripting orientato agli oggetti che facilita l'interazione con il sistema operativo sottostante. 

Ogni comando della shell è noto come ``CommandLet`` o ``CmdLet`` ed è progettato per sfruttare gli oggetti messi a disposizione dal ``.Net Framework``, ovvero gli oggetti che fanno parte dei linguaggi di programmazione ``.Net``. Ogni ``CmdLet`` prende in input oggetti e restituire in output oggetti del  ``.Net Framework``.

Il fatto che i ``CmdLet`` lavorino con oggetti permette la gestione delle informazioni in maniera strutturata, evitando di ricorrere alla scansione del testo in input per accedere ad una specifica informazione o in output per scrivere un particolare dato. 

Il ``.Net Framework`` non è completamente disponibile su sistemi Linux, soprattutto per i server, dato che ne esiste solo una versione ridotta, ovvero il ``.Net Core``. Inoltre, essendo un prodotto relativamente "nuovo", non è presente sui server che hanno un parco software non proprio aggiornato.

Tra le guide disponibili online, quella sul sito del produttore è completamente in italiano [Guida a Powershell](https://docs.microsoft.com/it-it/powershell/scripting/overview?view=powershell-7 "Guida a Powershell"), oltre ad altre guide in inglese come [https://www.guru99.com/powershell-tutorial.html](https://www.guru99.com/powershell-tutorial.html "Guida a powershell") ed a [https://www.tutorialspoint.com/powershell/index.htm](https://www.tutorialspoint.com/powershell/index.htm "Guida a powershell").
