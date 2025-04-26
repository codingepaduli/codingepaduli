---
type: "html"
title: "Componenti web personalizzati"
description: "Librerie di componenti web personalizzati per la realizzazione di interfacce utenti moderne"
date: 2025-03-27
publishdate: 2025-03-27
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "Librerie di componenti web personalizzati per la realizzazione di interfacce utenti moderne"
weight: 9280

references:
    -   title: "Shoelace"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://shoelace.style/"
        description: "Libreria di Web Components"
    -   title: "GitHub Web Components"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://github.com/github/github-elements"
        description: "Sviluppata da GitHub"
    -   title: "Ionic"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://ionicframework.com/docs/components"
        description: "Libreria di Web Components sviluppata da Ionic"
---

# Componenti web personalizzati

I componenti web (Web Components) personalizzati sono delle etichette HTML non standard che ci consentono di costruire interfacce utente flessibili, moderne e modulari, facilitando lo sviluppo e la manutenzione delle applicazioni web.

Sono basati su standard riconosciuti e sono supportati da tutti i principali browser moderni, per cui garantiscono una buona compatibilità.

Estendono le funzionalità degli elementi HTML standard, aggiungendo proprietà e stili grafici specifici, comportamenti personalizzati e riutilizzabili che li rendono degli ottimi componenti su cui progettare e sviluppare i siti web, evitando la necessità di soluzioni proprietarie e framework specifici.

## Librerie di Web Components

Esistono diverse librerie di Web Components che offrono elementi già pronti per l'uso, facilitando lo sviluppo di interfacce utente senza doverli creare da zero. Ecco alcune delle più note:

**Shoelace**: Shoelace è una libreria di componenti UI basati su Web Components che include una serie di elementi pronti all'uso, come bottoni, modali, schede e altro. È progettata per essere facilmente personalizzabile e integrabile in qualsiasi progetto.

**Material Web Components**: Questa libreria fornisce componenti basati sulle linee guida di Material Design di Google. Include elementi come bottoni, schede, menu e altro, tutti progettati per seguire le best practice di design. **Purtroppo Google non la sta più sviluppando.** Material Web Components attualmente è in [maintenance mode](https://github.com/material-components/material-web/discussions/5642)#5642

**Ionic Web Components**: Ionic offre una serie di componenti UI per applicazioni web e mobili, molti dei quali sono basati su Web Components. Include elementi come barre di navigazione, schede, moduli e altro, ed è particolarmente utile per lo sviluppo di applicazioni ibride.

**Wokwi Web Components**: Componenti Web per Arduino e per vari componenti elettroniche.

**Wired Elements**: una serie di Componenti Web con un aspetto disegnato a mano, che possono essere utilizzati per wireframe, mockup o solo per dare un look disegnato a mano.

## Libreria Shoelace

Una delle librerie di componenti web oggi in circolazione è **Shoelace**, che fornisce una collezione di componenti UI progettati professionalmente e altamente personalizzabili, costruiti sulla tecnologia dei Web Component così da essere indipendente dal framework e dal linguaggio utilizzato. Questa libreria fornisce molti componenti fondamentali dell'interfaccia utente, pronti per essere personalizzati e adattati alle esigenze, è un ottimo punto di partenza dal quale progettazione l'interfaccia utente.

### Utilizzare Shoelace nelle pagine web

L'uso dei componenti nelle pagine web prevede l'aggiunta degli script della libreria nella pagina web:

```html
<script type="module" src="https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.20.1/cdn/shoelace-autoloader.js"></script>
```

E' possibile scegliere il tema "light":

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.20.1/cdn/themes/light.css" />
```

In alternativa si può utilizzare il tema "dark":

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@shoelace-style/shoelace@2.20.1/cdn/themes/dark.css" />
```

### Utilizzo dei componenti

Nel menu è possibile visualizzare i componenti web utilizzabili:

![Lista componenti](/static/coding/web/html/webComponents-shoelace-menu.png)

Tra i componenti utilizzabili ne troviamo molti che estendono i componenti web esistenti. A titolo di esempio elenchiamo i componenti:

- **Alert**: Un messaggio informativo che comunica agli utenti un avviso o una notifica. Può essere di diversi tipi, come successo, errore, avviso, ecc.
- **Card**: Un contenitore flessibile che può contenere contenuti come testo, immagini e pulsanti. Utilizzato per presentare informazioni in modo visivamente accattivante.
- **Dialog**: Una finestra modale che appare sopra il contenuto principale per richiedere l'attenzione dell'utente. Può contenere messaggi, moduli o altre interazioni.
- **Dropdown**: Un menu a discesa che consente agli utenti di selezionare un'opzione da un elenco. Può contenere elementi di menu e sotto-categorie.
- **Slider**: Un controllo che consente agli utenti di selezionare un valore da un intervallo continuo. Può essere utilizzato per regolare impostazioni come volume o luminosità.
- **Tab**: Un elemento di navigazione che consente agli utenti di passare tra diverse sezioni di contenuto. Ogni tab rappresenta una sezione distinta.
- **Tooltip**: Un piccolo messaggio informativo che appare quando l'utente passa il mouse su un elemento. Utilizzato per fornire ulteriori dettagli senza occupare spazio visivo.
- **Progress Bar**: Un indicatore visivo che mostra il progresso di un'operazione in corso, come il caricamento di un file o il completamento di un'attività.
- **Toast**: Un messaggio temporaneo che appare in un angolo dello schermo per informare l'utente su un'azione completata o un evento. Scompare automaticamente dopo un breve periodo.
- **Menu**: Un elenco di opzioni o azioni che gli utenti possono selezionare. Può essere utilizzato per la navigazione o per azioni contestuali.  
- **Badge**: Un piccolo elemento visivo che fornisce informazioni aggiuntive, come un conteggio o uno stato, spesso utilizzato per notifiche o avvisi.

Una volta scelto un componente dal menù, si possono visualizzare i dettagli, come la sintassi da utilizzare, la descrizione dell'etichetta, le proprietà, gli eventi, gli esempi di come utilizzarlo. Di seguito un esempio di documentazione:

![Dettaglio componenti](/static/coding/web/html/webComponents-shoelace-details.png)

Dalla documentazione del componente e dagli esempi riportati è possibile dedurre l'utilizzo del componente, come dagli esempi riportati e di seguito riproposti:

```html
<sl-carousel pagination navigation mouse-dragging loop>
  <sl-carousel-item>
    <img src="mountains.jpg" alt="The sun shines" />
  </sl-carousel-item>
  <sl-carousel-item>
    <img src="waterfall.jpg" alt="A waterfall" />
  </sl-carousel-item>
  <sl-carousel-item>
    <img src="sunset.jpg" alt="The sun" />
  </sl-carousel-item>
</sl-carousel>
```

[esempio di componenti di shoelace](/static/coding/web/html/webComponents-shoelace-example.html)

## Libreria Ionic Web Components

Una delle librerie di componenti web oggi in circolazione è **Ionic Web Components**, che fornisce una collezione di componenti UI progettati professionalmente e altamente personalizzabili, costruiti sulla tecnologia dei Web Component così da essere indipendente dal framework e dal linguaggio utilizzato. Questa libreria fornisce molti componenti fondamentali dell'interfaccia utente, pronti per essere personalizzati e adattati alle esigenze, è un ottimo punto di partenza dal quale progettazione l'interfaccia utente.

### Utilizzare Ionic nelle pagine web

L'uso dei componenti nelle pagine web prevede l'aggiunta degli script della libreria nella pagina web:

```html
<script type="module" src="https://cdn.jsdelivr.net/npm/@ionic/core/dist/ionic/ionic.esm.js"></script>
<script nomodule src="https://cdn.jsdelivr.net/npm/@ionic/core/dist/ionic/ionic.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@ionic/core/css/ionic.bundle.css" />

<!-- Ionic icons -->
<script type="module" src="https://cdn.jsdelivr.net/npm/ionicons/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://cdn.jsdelivr.net/npm/ionicons/dist/ionicons/ionicons.js"></script>
```

### Utilizzo dei componenti

Nel menu è possibile visualizzare i componenti web utilizzabili:

![Lista componenti](/static/coding/web/html/webComponents-ionic-menu.png)

Tra i componenti utilizzabili ne troviamo molti che estendono i componenti web esistenti.

Una volta scelto un componente dal menù, si possono visualizzare i dettagli, come la sintassi da utilizzare, la descrizione dell'etichetta, le proprietà, gli eventi, gli esempi di come utilizzarlo. Di seguito un esempio di documentazione:

![Dettaglio componenti](/static/coding/web/html/webComponents-ionic-details.png)

Dalla documentazione del componente e dagli esempi riportati è possibile dedurre l'utilizzo del componente, come dagli esempi riportati e di seguito riproposti:

```html
<ion-progress-bar type="indeterminate"></ion-progress-bar>
```

[esempio di componenti di Ionic](/static/coding/web/html/webComponents-ionic-example.html)
