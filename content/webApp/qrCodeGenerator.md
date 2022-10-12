---
type: "webApp"
title: "QR Code Generator"
description: "Generare un codice QR quadrato (modello 2)"
date: 2022-09-27
publishdate: 2022-09-27
lastmod: 2022-09-27
categories: ["webApp"]
keywords: ["webApp"]
draft: false
toc: false
summary: "Generare un codice QR quadrato (modello 2)"
customJS: ["/static/js/p5-1.2.0-min.js", "/static/webApp/qrCodeGenerator.js"]

references:
    -   title: "QR Codes"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.thonky.com/qr-code-tutorial/mask-patterns"
        description: "L'algoritmo per la generazione del codice QR"
---

# QR Codes - Specifiche tecniche

Il codice QR è un codice a barre bidimensionale inventato dalla compagnia Denso Wave per tracciare le componenti coinvolte nel processo manifatturiero della Toyota. Il nome "QR" è l'abbreviazione dell'inglese Quick Response ("risposta rapida"), che sottolinea la rapida decodifica del contenuto. La società Denso Wave, pur conservando i diritti di brevetto, ha permesso l'uso del codice QR con licenza libera.

Rispetto ai vecchi codici a barre, che potevano essere letti scorrendo il dispositivo solo seguendo una sola angolazione, i codici QR permettono la lettura da più angoli ed inoltre permettono di memorizzare molte più informazioni. L'utilizzo si è diffuso soprattutto perché permettono agli utenti di acquisire informazioni come indirizzi web e contatti telefonici attraverso una semplice azione dello smartphone.

## Versione del QR Code

Nel 2000 il codice QR è stato approvato come Standard internazionale, in cui si definiva un primo modello del classico formato quadrato. I successivi aggiornamenti hanno portato alla definizione di un secondo modello, sempre relativo al classico formato quadrato, che è quello attualmente utilizzato e che prevede 40 possibili dimensioni, identificate da un numero di versione che va da 1 a 40.

In numero di versione indica la dimensione del quadrato, che si ottiene attraverso la formula **17+4*numVersione**.

La versione 1 è un quadrato di 21x21 moduli (punti), la versione 2 è un quadrato di 25 x 25 moduli (punti), mentre la versione 40 è un quadrato di 177x177 moduli (punti). Da specifiche tecniche, deve essere applicato un margine vuoto di almeno 4 punti intorno al codice QR.

Un codice QR deve contenere tre pattern di ricerca che identificano i due angoli in alto e l'angolo in basso a sinistra. Il pattern di ricerca è caratterizzato da un quadrato nero largo 7 punti che ingloba un quadrato bianco di 5 punti che a sua volta ingloba un terzo quadrato bianco largo di 3 punti.

Oltre ai pattern di ricerca, un codice QR deve contenere, a seconda dalla versione, un certo numero di pattern di allineamento che consentono al lettore di allineare l'immagine. I pattern di allineamento sono definiti da un quadrato nero largo 5 punti che ingloba un quadrato bianco di 3 punti che a sua volta ingloba un terzo quadrato bianco largo di 1 punto.

### Algoritmo di posizionamento dei pattern di allineamento

Il codice QR in versione 1 non prevede pattern di allineamento; Per le versioni dalla 2 alla 40, l'algoritmo di posizionamento dei pattern di allineamento è il seguente:

1. E' necessario calcolare il numero di intervalli in cui suddividere il codice QR, utilizzando la formula **Math.floor(version / 7) +1**, dove **version** è la versione del codice QR;
2. Se il numero di intervalli è maggiore di 1, bisogna calcolare il passo, ovvero ogni quanti punti inserire un pattern di allineamento, utilizzando la formula **(dimensione-7 - 6) / numeroIntervalli**, dove **dimensione** è la dimensione del codice QR per la versione utilizzata e **numeroIntervalli** consiste nel numero di intervalli calcolati al punto 1; Se non è maggiore di uno, il centro dell'unico punto di allineamento è (**dimensione-7**, **dimensione-7**)
3. Se il passo è un numero decimale deve essere approssimato all'intero successivo. Se il numero risultante è dispari, deve essere incrementato di 1.
4. Ottenuto il passo, si generano le coppie di coordinate che rappresentano il centro dei punti di allineamento, secondo la formula **(dimensione-7 - step i, dimensione-7 - step j**, con **i** e **j** libere di variare; Se una coordinata è inferiore a 6, la sostituisce con il valore 10, inoltre si devono escludere quelle che si sovrappongono graficamente ai tre pattern di ricerca.

Ad esempio, il codice QR versione 3 ha dimensione 29 per 29 punti, il numero di intervalli si calcola con Math.floor(3/7) +1, ovvero 1; Dato che non è maggiore di 1, il centro dell'unico punto di allineamento è (29-7, 29-7);

Altro esempio, il codice QR versione 15 ha dimensione 77 per 77 punti, il numero di intervalli si calcola con Math.floor(15/7) +1, ovvero 3;
Dato che è maggiore di 1, calcoliamo il passo con (77-7-6) / 3 = 21.3, che si arrotonda a 22;
A questo punto generano le coppie di coordinate con i=0, ovvero (70, 70), (70, 48), (70, 26), (70, 4), con i=1, ovvero (48, 70), (48, 48), (48, 26), (48, 4), con i=2, ovvero (26, 70), (26, 48), (26, 26), (26, 4) ed infine con i=3, ovvero(4, 70), (4, 48), (4, 26), (4, 4).

Si escludono le coordinate (4, 4), (4, 70) e (70, 4) perchè si sovrappongono ai pattern di ricerca, e si sostituiscono le coordinate con valore inveriore a 10 con il valore 6, ottenendo le seguenti coordinate:

![Pattern di ricerca ed allineamento](/static/webApp/qrCodes-alignmentPattern.png "Posizionamento dei Pattern di ricerca ed allineamento")

## Codifica dei dati

Una caratteristica importante dei codici QR riguarda la codifica dei dati. Attualmente sono supportate diverse codifiche tra cui:

- la codifica binaria che prevede la conversione dei dati secondo lo standard ISO 8859-1, e quindi poi la suddivisione del risultato in gruppi da 8 bit con l'eventuale aggiunta di bit di completamento;
- la codifica alfanumerica che utilizza una tabella di 44 caratteri, ad ognuno le quali è associato un numero, per convertire le coppie di caratteri in bit con l'eventuale aggiunta di bit di completamento;
- la codifica numerica che prevede per ogni tripla di numeri una conversione a lunghezza variabile di massimo 11 bit.
- la codifica kanji per codificare gli ideogrammi cinesi giapponesi e simili.

## Correzione degli errori

I codici QR contengono anche una sezione che contiene dei bit di correzione degli errori. Questi permettono di leggere le informazioni del codice QR anche se questo in alcuni punti è danneggiato, ad esempio a causa di lievi graffi, o deteriorato, cosa che può avvenire se affisso all'esterno.

Esistono diversi livelli di correzione degli errori che permettono di recuperare più o meno dati a seconda proprio del livello. Ogni livello è identificato da un codice.

Il codice di correzione degli errori può essere uno dei seguenti:

Error Correction Level | Bits | Integer Equivalent | restored data
--- | --- | --- | ---
L | 01 | 1 | 7%
M | 00 | 0 | 14%
Q | 11 | 3 | 25%
H | 10 | 2 | 30%

## Schema di mascheramento

Lo schema di mascheramento indica una formula utilizzata per indicare se deve essere invertito il colore di un bit.

## Evoluzioni successive

I codici QR si sono evoluti nel tempo con i seguenti formati:

- Micro QR, versione ridotta del codice QR, utilizzata tipicamente sulle schede elettroniche che hanno una superficie ridotta, e contiene meno informazioni rispetto al classico formato quadrato.
- rMQR, versione rettangolare che ha il vantaggio di poter essere applicata in orizzontale o verticale su superfici lunghe e strette, contiene più informazioni rispetto al classico formato quadrato;
- SQRC, versione che contiene informazioni crittografate che possono essere lette solo da chi possiede un dispositivo con la chiave di lettura configurata;
- Frame QR, una versione simile al classico formato quadrato che contiene un'immagine sul codice QR.

![Vari tipi di codici QR](/static/webApp/qrCodes-types.png "Vari tipi di codici QR")

### QR Code Generator

<form>
    <fieldset>
        <label for="dati">Dati da codificare nel QR Code</label>
        <input id="dati" type="text" placeholder='Dati da codificare'>
    </fieldset>
    <fieldset>
        <label for="q">Codifica da utilizzare: </label>
        <select id="codifica">
            <option value="numerica (0001)" disabled>numerica (0001)</option>
            <option value="alfanumerica (0010)">alfanumerica (0010)</option>
            <option value="byte (0100)" disabled>byte (0100)</option>
            <option value="kanji" disabled>kanji (1000)</option>
            <option value="ECI" disabled>ECI (0111)</option>
        </select>
    </fieldset>
     <fieldset>
        <label for="datiCodificati">Dati codificati:</label>
        <input id="datiCodificati" type="text">
    </fieldset>
    <fieldset>
        <label for="qrVersion">QR version</label>
        <input id="qrVersion" type="number" value="1" min="1" max="40" placeholder='Versione del QR Code da utilizzare'>
    </fieldset>
    <fieldset>
        <label for="errorLevel">Error Correction Level</label>
        <select id="errorLevel">
            <option value="L">L (7%)</option>
            <option value="M">M (15%)</option>
            <option value="Q">Q (25%)</option>
            <option value="L">3: (x+y) % 3 == 0</option>
        </select>
    </fieldset>
    <fieldset>
        <label for="maskPattern">Motivo di masking</label>
        <select id="maskPattern">
            <option value="0">0: (x+y) % 2 == 0</option>
            <option value="1">1: x % 2 == 0</option>
            <option value="2">2: y % 3 == 0</option>
            <option value="3">3: (x+y) % 3 == 0</option>
            <option value="4">4: (Math.floor(x/2)+Math.floor(y/3)) % 2 == 0</option>
            <option value="5">5: ((x*y) % 2) + ((x*y) % 3) == 0</option>
            <option value="6">6: ((x*y) % 2) + ((x*y) % 3) % 2 == 0</option>
            <option value="7">7: ((x+y) % 2) + ((x*y) % 3) % 2 == 0</option>
        </select>
    </fieldset>
</form>

<div id="qrCode">
</div>

<!--
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

-->