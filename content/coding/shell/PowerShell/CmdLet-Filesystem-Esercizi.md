---
type: "powershell"
title: "05.1 Esercizi sulla gestione di file e cartelle"
description: "Esercizi sulla gestione di file e cartelle"
date: 2020-04-21
publishdate: 2020-04-21
lastmod: 2020-04-10
categories: ["coding", "tools", "shell", "powershell"]
keywords: ["coding", "tools", "shell", "powershell"]
draft: true
toc: false
summary: "Esercizi sulla gestione di file e cartelle"
---

# Esercizi sulla gestione di file e cartelle

## Esercizio 01

Realizzare uno script in PowerShell che crei una nuova cartella avente il proprio nome. All'interno di questa cartella:
1. scriva un nuovo file di testo assegnandogli nome a piacere ed il proprio cognome come contenuto;
2. effettui una copia del file assegnandogli il nuovo nome "copia.txt";
3. crei una seconda cartella avente il proprio cognome;
4. sposti il file "copia.txt" nella seconda cartella;
5. commentare ogni riga dello script e salvarlo assegnandogli il proprio cognome e nome.

Ipotizzando che lo studente si chiami "Mario Rossi", lo script avrà nome ``Mario Rossi.ps1`` e genererà i seguenti file:
```
Mario\
  nome_a_piacere.txt  (contenuto: Rossi)
  Rossi\
    copia.txt
```
