---
type: "javascript"
title: "JavaScript Lez. 01 - Introduzione al linguaggio JavaScript"
description: "Introduzione al linguaggio JavaScript"
date: 2020-04-01
publishdate: 2020-04-01
lastmod: 2020-04-01
spellcheck: 2020-12-11
categories: ["coding", "web", "javascript"]
keywords: ["coding", "web", "javascript"]
draft: false
toc: false
summary: "Introduzione al linguaggio JavaScript"

references:
    -   title: "HTML.it"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.html.it/guide/guida-javascript-di-base/"
        description: "Corso JavaScript in italiano"
    -   title: "it.wikibooks.org"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://it.m.wikibooks.org/wiki/JavaScript"
        description: "Corso JavaScript in italiano su wikibooks"
    -   title: "JavaScript.info"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://javascript.info/"
        description: "The modern Javascript tutorial (in inglese)"
    -   title: "JavaScript.christmas"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://javascript.christmas/"
        description: "JavaScript features (in inglese)"
    -   title: "practicejs.com"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://practicejs.com/"
        description: "Some JavaScript coding exercises (in inglese)"
    -   title: "freecodecamp.org"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/basic-javascript/"
        description: "Algorithms and data structures (in inglese)"
    -   title: "w3schools.com"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.w3schools.com/js/default.asp"
        description: "JavaScript lessons (in inglese)"
    -   title: "compatibilità ECMAScript"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://kangax.github.io/compat-table/es6/"
        description: "Tabella di compatibilità delle funzionalità ECMAScript supportate dai singoli browser è mantenuta al link"
    -   title: "Verifica specifiche ECMAScript implementate"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://caniuse.com/"
        description: "Sito per verificare se una specifica ECMAScript (ad es. WebGL o WebStorage0) è implementata completamente o parzialmente dai vari browser"
---

# Introduzione al linguaggio JavaScript

JavaScript e' un linguaggio di programmazione sviluppato inizialmente nel 1995 dalla Netscape Communications allo scopo di rendere dinamiche le pagine web visualizzabili attraverso il proprio browser Netscape. Il nome iniziale era LiveScript, proprio ad indicare che rendeva le pagine web "vive", poi il successo di un altro linguaggio di programmazione, Java, portò a cambiare il nome in JavaScript, poiché si voleva cavalcare a livello commerciale il successo di Java. A parte l'assonanza nel nome, i due linguaggi non condividono nessuna relazione, solo qualche similitudine nella sintassi che era ereditata dal linguaggio **C**.

I programmi scritti in JavaScript furono chiamati semplicemente **script** ed erano contenuti direttamente nella pagina web.

Il successo di JavaScript portò anche gli altri browser a creare delle proprie varianti, quali JScript, ActionScript, ecc... Tutte queste varianti, in origine incompatibili, sono poi state indirizzate verso delle specifiche comuni, standardizzate con il nome di **ECMAScript**.

Oggi, le specifiche ECMAScript sono in evoluzione, avanzando dalla versione ECMAScript 6 (ES6) del 2015 alla ES10 del 2019 e si arricchiranno ancora di nuove funzionalità. Le specifiche sono pubblicate sul sito
[https://www.ecma-international.org/ecma-262](https://www.ecma-international.org/ecma-262 "Sito web delle specifiche ECMAScript").

Ogni browser sviluppa la propria implementazione di ECMAScript, e sia
[Mozilla](http://www.mozilla.org/js/language/ "Mozilla - implementazione ECMAScript"),
sia Chrome, sia Safari, per citare i browser più conosciuti, garantiscono nel tempo il pieno supporto alle nuove specifiche.

JavaScript è un linguaggio debolmente tipizzato nato come procedurale, e che con il tempo ha inglobato sia caratteristiche dei linguaggi funzionali sia la possibilità di creare classi ed oggetti, anche se non supporta completamente la programmazione ad oggetti. L'enorme espansione del web, accessibile anche da smartphone e dispositivi IoT, hanno diffuso notevolmente il linguaggio, che è diventato un valido linguaggio anche per applicazioni lato server. Restano purtroppo i limiti dovuti alla mancanza di una tipizzazione forte ed al mancato supporto alla OOP (Object Oriented Programming).

Per ovviare a queste mancanze, sono nati linguaggi come TypeScript, che estendono le specifiche di ECMAScript per aggiungere sia la tipizzazione forte sia la programmazione ad oggetti. Questi linguaggi permettono la scrittura di programmi che, una volta compilati, generano codice JavaScript da includere nelle pagine web.

Inoltre, sono nati molti framework che rendono l'elaborazione delle informazioni disponibili sul client un compito molto semplice e che permettono un dialogo **asincrono** con il server, cioè si permette agli script in esecuzione di inviare e ricevere dati dal server senza bloccare le elaborazioni in corso e, soprattutto, senza interrompere l'attività dell'utente nella pagina.

Infine, è nato lo standard WebAssembly, che definisce un formato binario eseguibile dal browser. Utilizzando questa tecnologia, programmi scritti in altri linguaggi di programmazione (tra cui **c**, **c++**, **rust**, ecc...) possono essere compilati in formato binario WebAssembly per essere inclusi ed eseguiti in una pagina web.

Data la continua diffusione dei servizi basati su web, la conoscenza in ambito lavorativo di JavaScript e delle tecnologie collegate è fortemente richiesta.
