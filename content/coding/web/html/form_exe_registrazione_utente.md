---
type: "html"
title: "HTML Lez. 09.3 - Modulo di registrazione utente"
description: "HTML - Modulo di registrazione utente"
date: 2019-10-28
publishdate: 2019-10-28
lastmod: 2019-10-28
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML - Modulo di registrazione utente"
weight: 9304
---

# Modulo di registrazione utente

## Requisiti funzionali

Realizzare un modulo di registrazione utente contenente i seguenti campi con i relativi vincoli:

Dati anagrafici:

- nome (obbligatorio);
- cognome (obbligatorio);
- eta (numerico tra 18 e 200);
- data di nascita (obbligatorio, data compresa tra 1960-01-01 e 2030-12-31, estremi compresi);
- codice fiscale (obbligatorio, lunghezza di 16 caratteri);
- sesso (obbligatorio, tipo 'radio', scelta singola tra 'M' e 'F');
- pulsante di invio  (con azione "formaction" per invio **dati personali**).

Informazioni residenza:

- provincia (obbligatorio, con lista suggerimenti);
- comune (obbligatorio, con lista suggerimenti);
- via;
- numero civico (obbligatorio, numerico tra 1 e 1000);
- pulsante di invio  (con azione "formaction" per invio dati **residenza**).

Informazioni account personale:

- email (obbligatorio, tipo email);
- password (obbligatorio, tipo password);
- ora di invio (tipo orario, dalle 07:00:00 alle 20:59:59);
- pulsante di invio (con azione "formaction" per invio dati **account**).

Informazioni generali:

- interessi (checkbox, scelta multipla tra sport, cucina, musica, arte, ...);
- segni particolari;
- statura (numerico tra 1.00m e 2.50m);
- colore occhi;
- colore capelli;
- stato civile (menù a tendina con scelta singola);
- professione;
- cittadinanza (menù a tendina con scelta singola);
- pulsante di invio e di reset (con azione "formaction" per invio informazioni **generali**).

Scrivere un commento indicando per ogni punto richiesto nella traccia se è stato svolto completamente (esempio: ora di invio con tipo orario realizzato come da requisiti).

Di seguito, un'immagine del progetto da realizzare.

![HTML - Modulo di registrazione utente](/static/coding/web/html/form_exe_registrazione_utente.png "HTML - Modulo di registrazione utente")

## Fasi di realizzazione

Le fasi di realizzazione da seguire per sviluppare il progetto sono le seguenti:

**Fase 1**: Crea il file HTML ed inserisci la struttura base del documento HTML:

```html
<!doctype html>
<html lang="it">
  <body>
  </body>
</html>
```

**Fase 2:** Inserisci l'intestazione della pagina web con i metadati obbligatori. Nota che l'intestazione si realizza con l'etichetta ``head`` che va inserita subito dopo l'etichetta ``html``.

```html
<!doctype html>
<html lang="it">
  <head>
    <!-- Metadati obbligatori -->
    <meta charset="UTF-8">
    <title>Modulo registrazione utente</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  </head>
  <body>
  </body>
</html>
```

**Fase 3:** Aggiungi uno dei due stili facoltativi per far si che il modulo sia diviso per righe. Lo stile deve essere aggiunto nell'etichetta ``head``, dopo i metadati obbligatori.

Stile con riga a capo:

```html
<style>
  /* Questo stile serve per creare una nuova riga.
      Crea un elemento prima del testo di ogni etichetta selezionata.
      Seleziona le etichette (label) precedute (+) da:
      - un campo di input non di tipo indicato;
      - un elemento che non sia un campo di input. */
  input:not([type='checkbox'], [type='radio']) + label::before,
  :not(input) + label::before
  {
    content: '\A'; 
    white-space: pre;
    background: #21209c;
    border: 4px solid #21209c;
  }
</style>
```

Stile con layout a griglia:

```html
<style>
 form fieldset {
      display: grid;
      grid-template-columns: 30% 30%;
      gap: 10px;
    }
    
    form button {
      grid-column: 1 / 3;
    }
</style>
```

**Fase 4**: Crea il titolo ed il modulo contenente tutti i campi richiesti. il titolo ed il modulo devono essere inseriti nell'etichetta ``body``.

```html
<!--Contenuto principale della pagina-->
<main>
  <h1>Modulo registrazione utente</h1>
  <p>Modulo per l'inserimento dei dati per la registrazione dell'utente</p>

    <form action="www.server.com/login">
      
      <h3>Dati anagrafici</h3>

      <!-- Nome (obbligatorio) -->
      <label for="nome">Nome:</label>
      <input id="nome" name="nome" required autocomplete="given-name" placeholder="Inserisci il nome">

      ...

    </form>
<main>
```

<!-- markdownlint-disable MD036 -->

|                                 |        |                                       |
---       | ---                   | ---    | ---                                   | ---
Esercizio | Struttura pagina web  |  Form  |  Commenti, indentazione e validazione | Totale Punti
Max punti |       2               |  6     |  2                                    |  10
Punti     |                       |        |                                       |

Cognome ______________
Nome ______________
Classe __________
Data __________

<!-- markdownlint-enable MD036 -->
