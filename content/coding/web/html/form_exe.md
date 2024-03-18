---
type: "html"
title: "HTML Lez. 09.5 - Esercizi sui moduli di invio dati"
description: "HTML - Esercizi sui moduli di invio dati"
date: 2019-10-28
publishdate: 2019-10-28
lastmod: 2019-10-28
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML - Esercizi e quiz di comprensione sui moduli di invio dati"
weight: 9300
---

# Esercizi e quiz sui moduli di invio dati

## Creazione di un form di invio dati

Nell'elenco riportato di seguito sono indicati una serie di oggetti con le relative proprietà. Ad ogni proprietà sono associate le caratteristiche: il tipo di dato (testuale, numerico, ...), l'obbligatorietà, i vincoli sul valore assegnabile.
Lo studente realizzi una pagina web che permetta all'utente di inserire i dati dell'oggetto assegnato, scelto tra quelli in elenco. Il nome del file deve essere formato dal cognome dello studente concatenato all'estensione ``html``.

Elenco degli oggetti e relative proprietà:

1. Oggetto **canzone** con le proprietà:
    - Titolo (testo, obbligatorio, minimo 3, massimo 9 caratteri);
    - Autore (testo, obbligatorio, minimo 3, massimo 9 caratteri);
    - Durata (numerico, facoltativo, minimo 3, massimo 90 secondi);
    - Genere (voce a scelta singola tra le opzioni "Pop", "Rock", "Rap");
1. Oggetto **film** con le proprietà:
    - Regista (testo, obbligatorio, minimo 5, massimo 12 caratteri);
    - Protagonista (testo, facoltativo, minimo 5, massimo 12 caratteri);
    - Durata (numerico, facoltativo, minimo 5, massimo 120 secondi);
    - Genere (voce a scelta tra le opzioni "Fantasy", "Horror", "Drammatico");
1. Oggetto **biglietto** con le proprietà
    - Numero (numerico, obbligatorio, minimo 7, massimo 150);
    - Intestatario (testo, obbligatorio, minimo 7, massimo 15 caratteri);
    - Luogo (testo, facoltativo, minimo 7, massimo 15 caratteri);
    - TipoEvento (voce a scelta tra le opzioni "Calcio", "Concerto", "Teatro");
1. Oggetto **viaggio** con le proprietà:
    - Prezzo (numerico, obbligatorio, minimo 9, massimo 180);
    - Compagnia (testo, obbligatorio, minimo 9, massimo 18 caratteri);
    - Guida (testo, facoltativo, minimo 9, massimo 18 caratteri);
    - Località (voce a scelta tra le opzioni "Roma", "Milano", "Torino");
1. Oggetto **auto** con le proprietà:
    - Targa (testo, obbligatorio, minimo 6, massimo 8 caratteri);
    - Colore (voce a scelta tra le opzioni "Giallo", "Verde", "Rosso");
    - Marca (testo, facoltativo, minimo 11, massimo 210 caratteri);
    - Cilindrata (numerico, obbligatorio, minimo 900, massimo 5000);
1. Oggetto **documento** con le proprietà:
    - Numero (numerico, obbligatorio, minimo 13, massimo 240);
    - Tipo (voce a scelta tra le opzioni "Patente", "Carta identità", "Passaporto");
    - Intestatario (testo, obbligatorio, minimo 13, massimo 24 caratteri);
    - Ente (testo, facoltativo, minimo 13, massimo 24 caratteri);
1. Oggetto **indirizzo** con le proprietà:
    - Comune (testo, obbligatorio, minimo 15, massimo 27 caratteri);
    - Provincia (voce a scelta tra le opzioni "Caserta", "Napoli", "Salerno");
    - Cap (numerico, obbligatorio, minimo 10000, massimo 99999);
    - Via (testo, facoltativo, minimo 15, massimo 27 caratteri);
1. Oggetto **squadra** con le proprietà:
    - Nome (testo, obbligatorio, minimo 13, massimo 24 caratteri);
    - Sport (voce a scelta tra le opzioni "Calcio", "Tennis", "Ippica")
    - Allenatore (testo, facoltativo, minimo 13, massimo 24 caratteri);
    - Punti (numerico, obbligatorio, minimo 17, massimo 30);
1. Oggetto **libro** con le proprietà:
    - Editore (testo, facoltativo, minimo 19, massimo 33 caratteri);
    - Genere (voce a scelta tra le opzioni "Fantasy", "Drammatico", "Giallo");
    - ISBN (testo, obbligatorio, minimo 19, massimo 33 caratteri);
    - Pagine (numerico, obbligatorio, minimo 19, massimo 33);
1. Oggetto **albergo** con le proprietà:
    - Nome (testo, obbligatorio, minimo 21, massimo 36 caratteri);
    - Proprietario (testo, facoltativo, minimo 21, massimo 36 caratteri);
    - Stelle (numerico, obbligatorio, minimo 1, massimo 5);
    - Comune (voce a scelta tra le opzioni "Caserta", "Napoli", "Salerno");
1. Oggetto **computer** con le proprietà:
    - Modello (testo, facoltativo, minimo 21, massimo 36 caratteri);
    - Marca (voce a scelta tra le opzioni "HP", "Lenovo", "Acer");
    - Costo (numerico, obbligatorio, minimo 100, massimo 10000);
    - Descrizione (testo, facoltativo, minimo 21, massimo 36 caratteri);
1. Oggetto **foto** con le proprietà:
    - Risoluzione (testo, facoltativo, minimo 23, massimo 39 caratteri);
    - Formato (voce a scelta tra le opzioni "15:10", "21:16", "28:20")
    - Fotografo (testo, obbligatorio, minimo 23, massimo 39 caratteri);
    - Costo (numerico, obbligatorio, minimo 10, massimo 100);
1. Oggetto **stadio** con le proprietà:
    - Nome (testo, obbligatorio, minimo 25, massimo 42 caratteri);
    - Indirizzo (testo, facoltativo, minimo 25, massimo 42 caratteri);
    - Sport (voce a scelta tra le opzioni "Calcio", "Tennis", "Ippica")
    - Posti (numerico, obbligatorio, minimo 1000, massimo 100000);
1. Oggetto **smartphone** con le proprietà:
    - Nome (testo, obbligatorio, minimo 27, massimo 45 caratteri);
    - Schermo (voce a scelta tra le opzioni "Retina", "Amoled", "LCD")
    - Prezzo (numerico, obbligatorio, minimo 270, massimo 450);
    - Marca (testo, facoltativo, minimo 27, massimo 45 caratteri);
1. Oggetto **sito web** con le proprietà:
    - Nome (testo, obbligatorio, minimo 29, massimo 48 caratteri);
    - Ip (numerico, obbligatorio, minimo 12, massimo 12);
    - Categoria (voce a scelta tra le opzioni "Blog", "e-commerce" e "video streaming");
    - Descrizione (testo, facoltativo, minimo 29, massimo 48 caratteri);
1. Oggetto **ristorante** con le proprietà:
    - Nome (testo, obbligatorio, minimo 31, massimo 51 caratteri);
    - Tavoli (numerico, obbligatorio, minimo 31, massimo 51);
    - Prenotazione (voce a scelta tra le opzioni "pranzo", "cena" e "buffet");
    - Indirizzo (testo, facoltativo, minimo 31, massimo 51 caratteri);
