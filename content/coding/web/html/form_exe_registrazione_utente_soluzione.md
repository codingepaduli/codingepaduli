---
type: "html"
title: "HTML Lez. 09.4 - Soluzione modulo di registrazione utente"
description: "HTML - Soluzione modulo di registrazione utente"
date: 2023-12-21
publishdate: 2023-12-21
lastmod: 2023-12-21
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML - Soluzione modulo di registrazione utente"
weight: 9302
---

# Soluzione modulo di registrazione utente

<!-- markdownlint-disable MD036 MD033 -->

<form action="www.server.com/login">
  
  <h3>Dati anagrafici</h3>

  <!-- Nome (obbligatorio) -->
  <label for="nome">Nome:</label>
  <input id="nome" name="nome" required autocomplete="given-name" placeholder="Inserisci il nome">

  <!-- Cognome (obbligatorio) -->
  <label for="cognome">Cognome:</label>
  <input id="cognome" name="cognome" required autocomplete="family-name" placeholder="Inserisci il cognome">

  <!-- Età (tra 18 e 200)-->
  <label for="eta">Età (tra 18 e 200):</label>
  <input id="eta" type="number" name="age" min="18" max="200" step="1" inputmode="numeric">

  <!-- Data di nascita (obbligatorio, dal 1960-01-01 e 2030-12-31)-->
  <label for="datanascita">Data di nascita:</label>
  <input id="datanascita" type="date" name="birthdate" required min="1960-01-01" max="2030-12-31" step="1" autocomplete="bday">

  <!-- Codice fiscale (obbligatorio, 16 caratteri) -->
  <label for="codicefiscale">Codice Fiscale:</label>
  <input id="codicefiscale" name="fiscalcode" required placeholder="Inserisci il codice fiscale" minlength="16" maxlength="16">

  <!-- Nel caso del tipo radio l'attributo required può essere aggiunto a uno qualsiasi delle scelte, perché tutte le scelte radio hanno lo stesso nome e sono considerati come un gruppo. Viene quindi impostata l'obbligatorietà per tutti.-->

  <!-- Sesso (obbligatorio, scelta singola) -->
  <label>Sesso: </label>

  <input type="radio" id="maschio" name="sesso" value="maschio" required>
  <label for="maschio">maschio</label>
  <input type="radio" id="femmina" name="sesso" value="femmina" required>
  <label for="femmina">femmina</label>

  <!--Pulsante di invio  (con azione "formaction" per invio dati personali) -->
  <button type="submit" formaction="www.server.com/personal_data">Invio dati personali</button>

  <!-- Informazioni residenza -->

  <h3>Indirizzo</h3>

  <!--Provincia (obbligatorio, con lista suggerimenti) -->
  <label for="provincia">Provincia:</label>
  <input list="province" id="provincia" name="provincia" required placeholder="Inserisci la tua provincia">
  
  <!-- lista suggerimenti per le province -->
  <datalist id="province">
    <option value="Napoli">
    <option value="Salerno">
    <option value="Avellino">
    <option value="Benevento">
    <option value="Caserta">
    <option value="Roma">
    <option value="Milano">
    <option value="Torino">
    <option value="Bologna">
    <option value="Firenze">
    <option value="Palermo">
    <!-- ... -->
  </datalist>

  <!-- Comuni (obbligatorio, con lista suggerimenti) -->
  <label for="comune">Comune:</label>
  <input list="comuni" id="comune" name="comune" required placeholder="Inserisci comune qui">

  <datalist id="comuni">
    <!-- lista comuni che verranno suggeriti all'utente durante l'inserimento -->
    <option value="Cesa">
    <option value="Sant'Antimo">
    <option value="Sant'Arpino">
    <option value="Aversa">
    <option value="Marcianise">
    <option value="Frattamaggiore">
    <option value="Frattaminore">
    <option value="Teverola">
    <option value="Gricignano d'Aversa">
    <option value="Succivo">
    <!-- ... -->
  </datalist>

  <!-- Via -->
  <label for="via">Via:</label>
  <input id="via" name="via" placeholder="Inserisci la tua via qui">

  <!-- Numero Civico -->
  <label for="civicNumber">Numero Civico:</label>
  <input id="civicNumber" type="number" name="numeroCivico" required min="1" max="1000" placeholder="Inserisci il numero civico" inputmode="numeric">

  <!-- pulsante di invio  (con azione "formaction" per invio dati indirizzo)-->
  <button type="submit" formaction="www.server.com/address_information">Invio dati indirizzo</button>

  <!-- Informazioni account -->
  <h3>Informazioni account</h3>

  <label for="email">Email:</label>
  <input id="email" type="email" name="email" autocomplete="email" required placeholder="Inserisci la tua email">

  <label for="password">Password:</label>
  <input id="password" type="password" name="password" required autocomplete="current-password" placeholder="Inserisci la tua password">

  <label for="oraInvio">Orario invio (dalle 07:00 alle 20:59):</label>
  <input id="oraInvio" type="time" name="oraInvio" min="07:00:00" max="20:59:59"  step="1">

  <!-- Interessi personali -->

  <h3>Informazioni generali</h3>

  <label>Selezione i tuoi interessi:</label>

  <input type="checkbox" id="coding" name="interest" value="programmazione">
  <label for="coding">Programmazione</label>

  <input type="checkbox" id="sport" name="interest" value="sport">
  <label for="sport">Sport</label>

  <input type="checkbox" id="musica" name="interest" value="musica">
  <label for="musica">Musica</label>

  <input type="checkbox" id="arte" name="interest" value="arte">
  <label for="arte">Arte</label>

  <input type="checkbox" id="cucina" name="interest" value="cucina">
  <label for="cucina">Cucina</label>

  <input type="checkbox" id="fitness" name="interest" value="fitness">
  <label for="fitness">Fitness</label>
  
  <label for="segno">Segni particolari:</label>
  <input id="segno" name="segno" placeholder="Inserisci segni particolari">

  <label for="statura">Statura:</label>
  <input id="statura" type="number" name="statura" min="1.00" max="2.50" step="0.1" value="1.00" placeholder="Inserisci la tua statura" inputmode="decimal"> <label for="statura">m</label>

  <label for="occhi">Colore degli occhi:</label>
  <input id="occhi" name="occhi" placeholder="Inserisci colore occhi">

  <label for="capelli">Colore dei capelli:</label>
  <input id="capelli" name="capelli" placeholder="Inserisci il colore dei tuoi capelli">
  
  <label for="stato_civile">Stato civile:</label>
  <select id="stato_civile" name="stato_civile">
    <option value="single">Single</option>
    <option value="sposato">Sposato/a</option>
    <option value="divorziato">Divorziato/a</option>
    <option value="vedovo">Vedovo/a</option>
  </select>

  <label for="professione">Professione:</label>
  <input id="professione" name="professione" placeholder="Inserisci la tua professione">

  <!-- principali cittadinanze-->
  <label for="cittadinanza">Cittadinanza:</label>
  <select id="cittadinanza" name="cittadinanza">
    <option value="italiana">Italiana</option>
    <option value="francese">Francese</option>
    <option value="tedesca">Tedesca</option>
    <option value="spagnola">Spagnola</option>
    <option value="inglese">Inglese</option>
    <option value="americana">Americana</option>
  </select>

  <button type="submit" formaction="www.server.com/all">Invia tutte le informazioni</button>
  <button type="reset">Reset</button>
</form>

<!-- markdownlint-enable MD036 -->