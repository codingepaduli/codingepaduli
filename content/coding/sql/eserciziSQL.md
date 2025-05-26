---
type: "sql"
title: "Esercizi su SQL"
description: "Esercizi su SQL"
date: 2025-05-26
publishdate: 2025-05-26
categories: ["coding", "sql"]
keywords: ["coding", "sql"]
draft: false
toc: false
summary: "Esercizi su SQL"
weight: 12020
---

# Esercizi su SQL

## Regole generali

Il file da consegnare deve iniziare con il proprio ``cognome`` (non il nome) seguito dalla data (in formato ``aaaa-mm-gg``, usando il carattere "trattino" ``-``, e non la barra, per separare i campi), dalla descrizione del file e dalla relativa estensione ``sql``, ad esempio "``Rossi 2022-03-01 campionato.sql``".

Se espressamente indicato, la consegna deve avvenire in un unico pacchetto compresso (file in formato "``.zip``"), con nome del file che rispetta sempre la regola indicata in precedenza (``cognome`` seguito dalla data in formato ``aaaa-mm-gg``, dalla descrizione e dall'estensione "``.zip``").

L'esercitazione deve terminare 15 minuti prima del termine delle ore a disposizione; Prima di iniziare il lavoro, smartphone e smartwatch devono essere lasciati sulla cattedra o nello zaino nella zona comune.

L'esercitazione sarà annullata per:

- chi viene sorpreso in possesso di smartphone e/o smartwatch, anche se in tasca o sulla scrivania;
- chi viene sorpreso ad utilizzare le chat online o a inviarsi la soluzione via email;
- chi viene richiamato più di una volta a parlare con i propri compagni;
- chi viola le regole di laboratorio o le regole di comportamento condivise con l'insegnante.

Superato la scadenza temporale impostata, la piattaforma impedisce la consegna di ulteriori lavori. E' compito dello studente organizzarsi per consegnare nel tempo previsto.

Per ogni problema assegnato sarà valutata la correttezza della consegna e la qualità del codice prodotto, in particolare sarà valutato:

- se tutti i file sono stati consegnati;
- se il nome e l'estensione di ogni file consegnato sono corretti;
- se l'eventuale file compresso contiene tutti i file ed il nome è corretto;
- se nel DAB e nel codice sono presenti i commenti;
- se nel primo commento sono indicati autore, data, traccia, input ed output.
- se il codice consegnato compila ed esegue correttamente il programma.

## Campionati di calcio

Progettare un database relazionale per gestire le informazioni relative a squadre di calcio e ai campionati che hanno vinto. Creare tre tabelle:

Squadre:

- Nome_Squadra: Stringa - Nome della squadra (chiave primaria)
- Anno_Fondazione: Intero - Anno in cui la squadra è stata fondata
- Citta: Stringa - Città di origine della squadra
- Stadio: Stringa - Nome dello stadio della squadra

Campionati:

- ID_Campionato: Intero - Identificatore univoco per ogni campionato
- Nome: Stringa - Nome del campionato (es. Serie A, Premier League)
- Anno_Inizio: Intero - Anno in cui è iniziato il campionato

Vittorie:

- ID_Vittoria: Intero - Identificatore univoco per ogni vittoria
- Nome_Squadra: Stringa - Identificatore della squadra (chiave esterna)
- ID_Campionato: Intero - Identificatore del campionato (chiave esterna)
- Anno: Intero - Anno in cui la squadra ha vinto il campionato

Usa l'istruzione SQL "INSERT ... VALUES .." per inserire le squadre Napoli, Inter, Real Madrid e Barcellona nella tabella Squadre.

Usa l'istruzione SQL "INSERT ... SET ..."  per inserire i campionati di Serie A, Premier League ed altri 2 campionati nella tabella Campionati

Inserisci nella tabella vittorie il Napoli e l'Inter come vincitrici degli ultimi due campionati di serie A e Real Madrid e Barcellona come vincitrici degli ultimi due campionati della lega spagnola.

Interroga il database selezionando:

- Il nome di tutte le squadre;
- La squadra che gioca nello stadio "Diego Armando"
- Le squadre che ha vinto i rispettivi campionati nel 2025
- La squadra che ha vinto il campionato di serie A nel 2025
- La squadra che ha vinto il campionato di liga spagnola nel 2024