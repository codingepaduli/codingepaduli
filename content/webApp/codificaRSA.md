---
type: "webApp"
title: "Codifica RSA"
description: "Codifica e decodifica RSA di un messaggio."
date: 2022-03-19
publishdate: 2022-03-19
lastmod: 2022-03-19
categories: ["webApp"]
keywords: ["webApp"]
draft: false
toc: false
summary: "Codifica e decodifica RSA di un messaggio."
---

<!-- markdownlint-disable MD033 -->

<script type="text/javascript" src="/static/webApp/codificaRSA.js"></script>

<h1>Codifica e decodifica RSA</h1>

<form>
    <fieldset>
        <label for="p">Scegli il numero primo "p"</label>
        <input id="p" type="number" min="1" step="1" value="11"required placeholder='Inserisci  il numero primo "p"'>
    </fieldset>
    <fieldset>
        <label for="q">Scegli il numero primo "q"</label>
        <input id="q" type="number" min="1" step="1" value="7" required placeholder='Inserisci  il numero primo "q"'>
    </fieldset>
    <fieldset>
        <input type="button" value="Calcola chiave pubblica e privata" onclick="calcolaChiavi()">
    </fieldset>
    <fieldset>
        <label for="n">n = p * q</label>
        <input id="n" type="number">
    </fieldset>
    <fieldset>
        <label for="f">f = (p-1) * (q-1)</label>
        <input id="f" type="number">
    </fieldset>
    <fieldset>
        <label for="coprimo">e (coprimo di f) =</label>
        <input id="coprimo" type="number" min="1" step="1">
    </fieldset>
    <fieldset>
        <label for="congruente">d (con d * e ed 1 congruenti modulo f) =</label>
        <input id="congruente" type="number" min="1" step="1">
        <input type="button" value="calcola congruente successivo" onclick="congruenteSuccessivo()">
    </fieldset>
    <fieldset>
        <label for="pubblica">chiave pubblica (e, n)</label>
        <input id="pubblicaE" type="number">
        <input id="pubblicaN" type="number">
    </fieldset>
    <fieldset>
        <label for="privata">chiave privata (d, n)</label>
        <input id="privataD" type="number">
        <input id="privataN" type="number">
    </fieldset>
    <fieldset>
        <label for="messaggio">Inserisci il messaggio da criptare:</label>
        <input id="messaggio" type="text" value="strana zavorra" required placeholder="Inserisci il messaggio da criptare">
    </fieldset>
    <fieldset>
        <input type="button" value="Codifica messaggio con la chiave privata" onclick="codificaMessaggio()">
    </fieldset>
</form>

<table id="codifica">
    <colgroup>
        <col span="1" style="width: 5%;">
        <col span="1" style="width: 5%;">
        <col span="1" style="width: 20%;">
        <col span="1" style="width: 10%;">
        <col span="1" style="width: 50%;">
        <col span="1" style="width: 10%;">
    </colgroup>
    <tr>
        <th>carattere</th>
        <th>codice ascii</th>
        <th class="big">codifica step 1 (codice ascii ^ e)</th>
        <th>codifica step 2 (codice ascii ^ e % n)</th>
        <th class="big">decodifica step 1 (numeroCodificato ^ d)</th>
        <th>decodifica step 2 (numeroCodificato ^ d % n)</th>
    </tr>
</table>

<style>
    table {
        width:100%;
        table-layout: fixed;
    }
    th {
        background-color: #04AA6D;
        color: white;
    }
    td * {
        overflow-wrap: break-word;
        display:inline-block;
    }
</style>

<!-- markdownlint-enable MD033 -->
