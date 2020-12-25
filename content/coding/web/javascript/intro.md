---
type: "javascript"
title: "01 - Introduzione al linguaggio JavaScript"
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
    -   title: "Sito JavaScript.info"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://javascript.info/"
        description: "The modern Javascript tutorial;"
    -   title: "Sito JavaScript.christmas"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://javascript.christmas/"
        description: "JavaScript articles;"
    -   title: "Sito practicejs.com"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://practicejs.com/"
        description: "Some JavaScript coding exercises;"
    -   title: "Sito HTML.it"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.html.it/guide/guida-javascript-di-base/"
        description: "Corso JavaScript in italiano su HTML.it"
    -   title: "Sito it.wikibooks.org"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://it.m.wikibooks.org/wiki/JavaScript"
        description: "Manuale in italiano su it.wikibooks.org"
    -   title: "Sito freecodecamp.org"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/basic-javascript/"
        description: "Algorithms and data structures on freecodecamp.org"
---

# Introduzione al linguaggio JavaScript

JavaScript e' un linguaggio di programmazione che ricalca la sintassi dei linguaggi di programmazione **c** e **Java**. Si sottolinea subito che, nonostante il nome simile, Java è un linguaggio di programmazione differente da JavaScript.

In origine, i programmi JavaScript, chiamati comunemente **script**, venivano inclusi nelle pagine web allo scopo di alleggerire il lavoro del server. Le elaborazioni e animazioni che si potevano realizzare nella pagina web, quindi lato client, erano modeste, dato che, all'epoca, i personal computer avevano una capacità di elaborazione molto limitata.

JavaScript, in origine, era solo una delle varie implementazioni disponibili per l'elaborazione dati lato client, poiché esistevano anche varianti quali JScript, ActionScript, ecc... Tutte queste varianti sono poi state indirizzate verso delle specifiche comuni, standardizzate con il nome di **ECMAScript**.

Oggi, le specifiche ECMAScript sono in evoluzione, avanzando dalla versione ECMAScript 6 (ES6) del 2015 alla ES10 del 2019 e si arricchiranno ancora di nuove funzionalità. Le specifiche sono pubblicate sul sito
[https://www.ecma-international.org/ecma-262](https://www.ecma-international.org/ecma-262 "Sito web delle specifiche ECMAScript").

Ogni browser sviluppa la propria implementazione di ECMAScript, e sia
[Mozilla](http://www.mozilla.org/js/language/ "Mozilla - implementazione ECMAScript"),
sia Chrome, sia Safari, per citare i browser più conosciuti, garantiscono nel tempo il pieno supporto alle nuove specifiche. Una tabella di compatibilità delle funzionalità supportate dai singoli browser è mantenuta al link
[https://kangax.github.io/compat-table/es6/](https://kangax.github.io/compat-table/es6/ "ECMAScript - tabella di compatibilità").

Per verificare se una specifica è implementata completamente o parzialmente dai vari browser, si può utilizzare il servizio [https://caniuse.com/](https://caniuse.com/ "Link al sito caniuse.com"). Inserendo per nome la specifica a cui si è interessati, ad esempio "WebGL" o "WebStorage", si visualizzano i browser che la supportano appieno, solo in parte oppure non la supportano ancora.

Esistono diversi corsi basilari su JavaScript,
[HTML.it](https://www.html.it/guide/guida-javascript-di-base/ "Link al sito html.it") (in
italiano),
[it.wikibooks.org](https://it.m.wikibooks.org/wiki/JavaScript "Link al sito it.wikibooks.org") (un buon manuale in italiano),
[www.w3schools.com](https://www.w3schools.com/js/default.asp "Link al sito www.w3schools.com") (in inglese),
[freecodecamp.org](https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/basic-javascript/ "Link al sito freecodecamp.org"),
organizzazione no-profit per aiutare le persone ad apprendere l'arte della programmazione, con corsi e certificazioni disponibili gratuitamente (in inglese), e tanti altri.

JavaScript è un linguaggio debolmente tipato nato come procedurale, e che con il tempo ha inglobato sia caratteristiche dei linguaggi funzionali sia la possibilità di creare classi ed oggetti, anche se non supporta completamente la programmazione ad oggetti. L'enorme espansione del web, accessibile anche da smartphone e dispositivi IoT, hanno diffuso notevolmente il linguaggio, che è diventato un valido linguaggio anche per applicazioni lato server. Restano purtroppo i limiti dovuti alla mancanza di una tipizzazione forte ed al mancato supporto alla OOP (Object Oriented Programming).

Per ovviare a queste mancanze, sono nati linguaggi come TypeScript, che estendono ECMAScript e che permettono sia la tipizzazione forte sia la programmazione ad oggetti. Questi linguaggi permettono la scrittura di programmi che, una volta compilati, generano codice JavaScript da includere nelle applicazioni (come per TypeScript).

Inoltre, sono nati molti framework che rendono l'elaborazione delle informazioni disponibili sul client un compito molto semplice e che permettono un dialogo **asincrono** con il server, cioè si permette agli script in esecuzione di inviare e ricevere dati dal server senza bloccare le elaborazioni in corso e, soprattutto, senza interrompere l'attività dell'utente nella pagina.

Infine, è nato lo standard WebAssembly, che definisce un formato binario eseguibile dal browser. Utilizzando questa tecnologia, programmi scritti in altri linguaggi di programmazione (tra cui **c**, **c++**, **rust**, ecc...) possono essere compilati in formato binario WebAssembly per essere inclusi ed eseguiti in una pagina web.

Data la continua diffusione dei servizi basati su web, la conoscenza in ambito lavorativo di JavaScript e delle tecnologie collegate è fortemente richiesta.
