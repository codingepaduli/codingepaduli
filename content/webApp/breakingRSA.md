---
type: "webApp"
title: "Rompere la codifica RSA"
description: "Rompere la codifica RSA con il metodo di Fermat."
date: 2022-03-19
publishdate: 2022-03-19
lastmod: 2022-03-19
categories: ["webApp"]
keywords: ["webApp"]
draft: false
toc: false
summary: "Rompere la codifica RSA con il metodo di Fermat."
---

<script type="text/javascript" src="/static/webApp/breakingRSA.js"></script>

# Rompere la codifica RSA

Partiamo dal fatto che l'algoritmo RSA genera una chiave pubblica ed una chiave privata partendo da due numeri primi: **p** e **q**. La chiave pubblica è composta dalla coppia di numeri (E, N), dove N = p * q.

F è il toziente di N, che per le proprietà moltiplicativa è dato dal toziente di **p** moltiplicato il toziente di **q**. Per un numero primo **a**, il toziente è **a-1**, quindi F = (p-1)(q-1).

E è un numero coprimo di F, coprimo significa che E ed F non hanno divisori comuni, eccetto il valore 1, quindi il Massimo Comun Divisore MCD(E, F) = 1.

Dato che la chiave è pubblica, il valore N è conosciuto da chiunque e lo si può utilizzare per ricavare i due fattori **p** e **q** di partenza. Fattorizzare un numero primo di grandi dimensioni è computazionalmente difficile, ma se i due numeri di partenza sono vicini, ci può aiutare il "piccolo teorema di Eurelo-Fermat".

Notiamo prima una cosa: se **p** e **q** sono vicini, allora posso approssimare entrambi al valore M e dire che N = M * M, la cui la soluzione è M (radice di N). Il valore M è stato approssimato, ma possiamo dire che il valore preciso si trova nelle vicinanze.

Secondo il Metodo di Fermat, se riesco a scrivere il numero N come differenza di due quadrati, cioè N = A^2 - B^2, allora ho trovato una fattorizzazione di |N| = (|A-B|)(|A+B|). Fattorizzare N significa trovare i due valori A e B.

Secondo il Metodo di Fermat, se N è fattorizzabile come p * q, allora N = A^2 - B^2 = (A-B)(A+B) con A = 1/2(p+q) e B = 1/2(|p-q|).

Per rompere RSA quando **p** e **q** sono vicini, posso scrivere l'equazione di Fermat come B^2 = A^2 - N e prendere il valore N dalla chiave pubblica. A questo punto, partendo da K = radice di N e proseguendo, incrementando di volta in volta il valore di K, posso calcolare il valore B^2 = K^2 - N. Se la radice di A è un valore intero, ho trovato sia A che B e quindi posso scrivere N = (A-B)(A+B).

<form>
    <fieldset>
        <label for="n">n = p * q</label>
        <input id="n" type="number" value="84773093" placeholder='Inserisci il numero N parte della chiave pubblica'>
    </fieldset>
    <fieldset>
        <label for="p">Numero primo "p"</label>
        <input id="p" type="number" placeholder='Il numero primo "p"'>
    </fieldset>
    <fieldset>
        <label for="q">Numero primo "q"</label>
        <input id="q" type="number" placeholder='Il numero primo "q"'>
    </fieldset>
    <fieldset>
        <input type="button" value="Calcola i valori p e q" onclick="breakRSA()">
    </fieldset>
</form>

<table id="codifica">
    <colgroup>
        <col span="1" style="width: 20%;">
        <col span="1" style="width: 20%;">
        <col span="1" style="width: 20%;">
        <col span="1" style="width: 20%;">
        <col span="1" style="width: 20%;">
    </colgroup>
    <tr>
        <th>B</th>
        <th>B^2</th>
        <th class="big">A^2 = B^2 - N</th>
        <th>sqrt(A^2)</th>
        <th class="big">A</th>
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
