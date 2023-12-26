---
type: "html"
title: "HTML Lez. 09.2 - Soluzioni esercizi sui moduli di invio dati"
description: "HTML - Soluzioni esercizi e quiz di comprensione sui moduli di invio dati"
date: 2023-12-21
publishdate: 2023-12-21
lastmod: 2023-12-21
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML - Soluzioni esercizi e quiz di comprensione sui moduli di invio dati"
weight: 9306
---

# Soluzioni esercizi e quiz sui moduli di invio dati

## Soluzione modulo di invio dati di registrazione utente

<!-- markdownlint-disable MD036 MD033 -->

<form action="www.server.com/login">
  
  <!-- Dati personali -->

  <label for="nome">Nome:</label>
  <input id="nome" name="nome" required autocomplete="given-name" placeholder="Inserisci il nome">  

  <label for="cognome">Cognome:</label>
  <input id="cognome" name="cognome" required autocomplete="family-name" placeholder="Inserisci il cognome">

  <label for="eta">Età:</label>
  <input id="eta" type="number" name="age" min="18" max="120" step="1" inputmode="numeric">

  <label for="datanascita">Data di nascita:</label>
  <input id="datanascita" type="date" name="birthdate" required min="1960-01-01" max="2028-11-30" step="1" autocomplete="bday">

  <label for="codicefiscale">Codice Fiscale:</label>
  <input id="codicefiscale" name="fiscalcode" placeholder="Inserisci il codice fiscale" required minlength="16" maxlength="16">

  <label>Sesso</label>
  <input type="radio" id="maschio" name="sesso" value="maschio" required>
  <label for="maschio">maschio</label>
  <input type="radio" id="femmina" name="sesso" value="femmina" required>
  <label for="femmina">femmina</label>

  <button type="submit" formaction="www.server.com/personal_data">Invio dati personali</button>
  
  <!-- Informazioni residenza -->

  <label for="provincia">Provincia:</label>
  <input list="province" id="provincia" name="provincia" required placeholder="Inserisci la tua provincia">
  
  <!-- suggerimenti province -->
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
  </datalist>
  
  <label for="comune">Comune:</label>
  <input list="comuni" id="comune" name="comune" required placeholder="Inserisci comune qui">

  <!-- suggerimenti comuni -->
  <datalist id="comuni">
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
  </datalist>
  
  <label for="via">Via:</label>
  <input id="via" name="via" placeholder="Inserisci la tua via qui">

  <label for="civicNumber">Numero Civico:</label>
  <input id="civicNumber" type="number" name="numeroCivico" min="1" max="1000" placeholder="Inserisci il numero civico" inputmode="numeric">

  <button type="submit" formaction="www.server.com/address">Invio dati indirizzo</button>

  <!-- Informazioni account -->

  <label for="email">Email:</label>
  <input id="email" type="email" name="email" autocomplete="email" required placeholder="Inserisci la tua email">

  <label for="password">Password:</label>
  <input id="password" type="password" name="password" required autocomplete="current-password" placeholder="Inserisci la tua password">

  <label for="oraInvio">Orario invio:</label>
  <input id="oraInvio" type="time" name="oraInvio" min="00:00:00" max="23:59:59"  step="1">

  <!-- Interessi personali -->

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
  <input id="statura" type="number" name="statura" min="1.00" max="2.50" step="0.1" value="1.00" placeholder="Inserisci la tua statura in cm qui" inputmode="decimal"> <label for="statura">m:</label>

  <label for="occhi">Colore degli occhi:</label>
  <input id="occhi" name="occhi" placeholder="Inserisci colore occhi">

  <label for="capelli">Colore dei capelli:</label>
  <input id="capelli" name="capelli" placeholder="Inserisci il colore dei tuoi capelli qui">

  <label for="stato_civile">Stato civile:</label>
  <select id="stato_civile" name="stato_civile">
    <option value="single">Single</option>
    <option value="sposato">Sposato/a</option>
    <option value="divorziato">Divorziato/a</option>
    <option value="vedovo">Vedovo/a</option>
  </select>
  
  <label for="professione">Professione:</label>
  <input id="professione" name="professione" placeholder="Inserisci la tua professione qui">

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
