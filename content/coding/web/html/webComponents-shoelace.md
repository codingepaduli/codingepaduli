---
type: "html"
title: "Progressive Web App (PWA) e Web Components"
description: "Progressive Web App (PWA) e Web Components"
date: 2025-03-27
publishdate: 2025-03-27
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "Progressive Web App (PWA) e Web Components per lo sviluppo di applicazioni"
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
    -   title: "3d Model Viewer"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://modelviewer.dev/"
        description: "Web Component per visualizzare interattivamente modelli 3D sul web e con gli AR"
    -   title: "awesome web components - Libraries"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://github.com/web-padawan/awesome-web-components?tab=readme-ov-file#component-libraries"
        description: "Elenco di librerie di web components"
---

# Progressive Web App (PWA) e Web Components

Le Progressive Web App sono applicazioni web (siti web) che sembrano e si comportano come app native, sfruttando tutte le potenzialità del dispositivo, possa questo essere un computer con Windows, uno smartphone Apple, o un tablet Android. Offrono una ricca esperienza utente ed una buona integrazione col dispositivo, caratteristiche tipiche delle app native, e la combinano con i vantaggi forniti dalle applicazioni web. Per la maggior parte delle aziende le PWA sono una valida alternativa alle app native, permettendo di realizzare con un unico team di sviluppo una sola app che sia utilizzabile su Windows, Linux, Apple e Android.

I componenti web (Web Components) personalizzati ci consentono di costruire interfacce utente flessibili, moderne e modulari, facilitando lo sviluppo e la manutenzione delle applicazioni web. Sono basati su standard riconosciuti e sono supportati da tutti i principali browser moderni.

I Web Components permettono di creare nuovi componenti associati a nuove etichette HTML, ognuno con funzionalità, comportamenti e stili specifici. Permettono anche di estendere le funzionalità degli elementi HTML standard, aggiungendo proprietà, comportamenti e stili grafici specifici alle etichette HTML esistenti.

## Caratteristiche di una PWA

Le app Web progressive hanno alcune caratteristiche:

- Progressive: si adattano al dispositivo o al browser che le esegue. A seconda delle capacità di tale ambiente, consentono più o meno funzionalità all'utente;
- Responsive: si adattano alla forma e alle dimensioni dello schermo;
- Installabili: possono essere installate senza un app store; Quando si rilascia un aggiornamento, tutti gli utenti ottengono automaticamente la nuova versione;
- Offline: possono essere avviate senza connessione, a differenza di un sito web;

Le app Web possono utilizzare la cache (lo spazio sul dispositivo) per memorizzare i dati recuperati durante la navigazione e ripresentarli all'utente nelle varie situazioni, ad esempio quando la connessione non è presente. Le diverse strategie per presentare i dati all'utente sono:

- Cache Only: Mostra solo le pagine web presenti nella cache e non effettua mai richieste di rete;
Network Only: Mostra solo le pagine web recuperate dalla rete, non utilizza mai la cache;
- Cache First: Se la pagina web è già presente nella cache, la mostra all'utente, altrimenti tenta di recuperarla dalla rete.
- Network First: Tenta di recuperare la pagina web dalla rete, se non riesce allora cerca la pagina web nella cache.
- Stale While Revalidate: Mostra immediatamente la pagina web prendendola dalla cache (se disponibile), poi aggiorna la cache recuperando di nuovo la pagina web dalla rete, se riesce aggiorna la pagina web mostrata all'utente.

La cache può avere una durata di diversi giorni o mesi, a seconda della frequenza di aggiornamento del sito. E le risorse possono essere suddivise per tipologia e per indirizzo, in modo tale da migliorare notevolmente l'esperienza utente.

Ad esempio, si può scegliere di utilizzare la strategia "Cache First" per tutte le immagini in modo che gli utenti possano visualizzarle rapidamente, senza aspettare i tempi di caricamento. Con una durata della cache di 30 giorni, le immagini non saranno caricate dalla rete per un mese intero.

La strategia "Stale While Revalidate" può essere applicata per i commenti degli utenti, in modo che vengano caricati quelli in cache e poi, se si riescono ad aggiornare attraverso la rete, saranno mostrati all'utente anche i nuovi commenti.

In sintesi, le appropriate strategie di caching applicate ai diversi tipi di risorse rendono le app Web più veloci e reattive per l'utente, riducendo le attese dei dati dalla rete, il consumo di Giga del dispositivo e permettono la visualizzazione delle pagine anche quando si è offline.

### Installazione di una PWA

Per poter essere trasformato in PWA, un sito web deve definire un file di descrizione chiamato ``manifest.webmanifest`` e lo deve indicare tra i metadati presenti nelle proprie pagine web, nel seguente modo:

```html
<link rel="manifest" href="/manifest.webmanifest" />
```

Il file di descrizione è un file JSON contenente queste informazioni:

```javascript
{
  "name": "Nome App",
  "short_name": "Nome App",
  "description": "Descrizione app",
  "theme_color": "#002eb8",
  "background_color": "#002eb8",
  "display": "standalone",
  "orientation": "portrait",
  "start_url": "/",
  "icons": [
    {
      "src": "images/app-images/192x192.png",
      "sizes": "192x192",
      "type": "image/png"
    },
    {
      "src": "images/app-images/512x512.png",
      "sizes": "512x512",
      "type": "image/png"
    }
  ],
  "splash_pages": null
}
```

L'informazione più importante riguarda la voce ``start_url`` che indica la pagina web principale dalla presentare quando si installa e si avvia l'applicazione sul dispositivo.

### Avvio senza connessione

Per un sito web, progettato per caricare tutte le risorse da remoto, non è un compito facile poter essere mostrato senza connessione. Eppure questo è uno dei requisiti di una PWA, essere in grado di avviarsi mentre non esiste connessione e il dispositivo è offline.

Per risolvere questa problematica, i browser hanno implementato l'esecuzione di un server locale interno in grado di gestire le richieste fatte dai siti web. L'accesso a questo server è dato da una tecnologia chiamata ``Service Worker``, che si occupa di gestire l'evento di installazione di una PWA e di salvare tutte le risorse necessarie all'avvio. Queste risorse sono indicate dal sito web in un file apposito:

```javascript
const RISORSE_AVVIO = [
  '/app.js',
  '/app.css',
  '/index.html'
];
```

La tecnologia delle PWA permette inoltre di memorizzare i dati recuperati durante la navigazione per poi renderli disponibili quando il dispositivo è offline.

### Librerie di Web Components

Nonostante sia una tecnologia recente, esistono numerose librerie di componenti web che personalizzano gli elementi HTML esistenti e che creano nuovi componenti dell'interfaccia utente, mancanti nello standard HTML.

Tra i componenti creati nelle varie librerie abbiamo:

- **Alert**: Etichetta HTML per realizzare un messaggio informativo che comunica agli utenti un avviso o una notifica. Può essere di diversi tipi, come successo, errore, avviso, ecc.
- **Card**: Etichetta HTML per realizzare un contenitore flessibile che può contenere contenuti come testo, immagini e pulsanti. Utilizzato per presentare informazioni in modo visivamente accattivante.
- **Dialog**: Etichetta HTML per realizzare una finestra modale che appare sopra il contenuto principale per richiedere l'attenzione dell'utente. Può contenere messaggi, moduli o altre interazioni.
- **Dropdown**: Etichetta HTML per realizzare un menu a discesa che consente agli utenti di selezionare un'opzione da un elenco. Può contenere elementi di menu e sotto-categorie.
- **Slider**: Etichetta HTML per realizzare un controllo che consente agli utenti di selezionare un valore da un intervallo continuo. Può essere utilizzato per regolare impostazioni come volume o luminosità.
- **Tab**: Etichetta HTML per realizzare un elemento di navigazione che consente agli utenti di passare tra diverse sezioni di contenuto. Ogni tab rappresenta una sezione distinta.
- **Tooltip**: Etichetta HTML per realizzare un piccolo messaggio informativo che appare quando l'utente passa il mouse su un elemento. Utilizzato per fornire ulteriori dettagli senza occupare spazio visivo.
- **Progress Bar**: Etichetta HTML per realizzare un indicatore visivo che mostra il progresso di un'operazione in corso, come il caricamento di un file o il completamento di un'attività.
- **Toast**: Etichetta HTML per realizzare un messaggio temporaneo che appare in un angolo dello schermo per informare l'utente su un'azione completata o un evento. Scompare automaticamente dopo un breve periodo.
- **Menu**: Etichetta HTML per realizzare un elenco di opzioni o azioni che gli utenti possono selezionare. Può essere un menù laterale, un menù a scorrimento dall'alto, è principalmente utilizzato per la navigazione o per azioni contestuali.
- **Badge**: Etichetta HTML per realizzare un piccolo elemento visivo che fornisce informazioni aggiuntive, come un conteggio o uno stato, spesso utilizzato per notifiche o avvisi.
- **QR Codes**: Etichetta HTML per realizzare codici QR, utilizzati per indicare siti web e reti WiFi.

Poiché la tecnologia per la creazione di componenti è uno standard, tutti possono creare le proprie etichette HTML personalizzate per qualsiasi scopo. Ad esempio, Google ha creato il proprio componente, chiamato ``model-viewer`` per visualizzare interattivamente modelli 3D sia via web, sia utilizzando gli occhiali AR.

Un altro vantaggio dei componenti web è che si possono utilizzare singolarmente, prendendone alcuni da una libreria, altri da una seconda libreria e altri ancora da una terza, e così via.

## Librerie di Web Components

Esistono diverse librerie di Web Components che offrono elementi già pronti per l'uso, facilitando lo sviluppo di interfacce utente senza doverli creare da zero. Ecco alcune delle più note:

**Shoelace**: Shoelace è una libreria di componenti UI basati su Web Components che include una serie di elementi pronti all'uso, come bottoni, modali, schede e altro. È progettata per essere facilmente personalizzabile e integrabile in qualsiasi progetto.

**Material Web Components**: Questa libreria fornisce componenti basati sulle linee guida di Material Design di Google. Include elementi come bottoni, schede, menu e altro, tutti progettati per seguire le best practice di design. **Purtroppo Google non la sta più sviluppando.** Material Web Components attualmente è in [maintenance mode](https://github.com/material-components/material-web/discussions/5642).

**Ionic Web Components**: Ionic offre una serie di componenti UI per applicazioni web e mobili, molti dei quali sono basati su Web Components. Include elementi come barre di navigazione, schede, moduli e altro, ed è particolarmente utile per lo sviluppo di applicazioni ibride.

**Wokwi Web Components**: Componenti Web per Arduino e per i circuiti elettronici.

**Wired Elements**: Componenti Web con un aspetto disegnato a mano, che possono essere utilizzati per disegnare mockup o solo per dare un look disegnato a mano.

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

La libreria **Ionic Web Components** è un altra collezione di componenti web oggi in circolazione, che fornisce una raccolta di componenti UI progettati professionalmente e altamente personalizzabili, costruiti sulla tecnologia dei Web Component così da essere indipendente dal framework e dal linguaggio utilizzato. Questa libreria fornisce molti componenti fondamentali dell'interfaccia utente, pronti per essere personalizzati e adattati alle esigenze, è un ottimo punto di partenza dal quale progettazione l'interfaccia utente.

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

![Dettaglio componenti](/static/coding/web/html/webComponents-ionic-progressbar-details.png)

Dalla documentazione del componente e dagli esempi riportati è possibile dedurre l'utilizzo del componente, come dagli esempi riportati e di seguito riproposti:

```html
<ion-progress-bar type="indeterminate"></ion-progress-bar>
```

[esempio di componenti di Ionic](/static/coding/web/html/webComponents-ionic-example.html)

## Libreria [nfreear](https://nfreear.github.io)

Una delle librerie in fase di costruzione è **nfreear**[nfreear](https://nfreear.github.io), che fornisce una collezione di componenti UI progettati sulla tecnologia dei Web Component basati su quelli di [webcomponents.org](https://www.webcomponents.org/). E' particolarmente utile per definire le mappe di google con i punti di interesse.

### Utilizzare nfreear nelle pagine web

L'uso dei componenti nelle pagine web prevede l'aggiunta degli script dei singoli componenti della libreria nella pagina web:

```html
<!-- Content Security Policy che permette gli script "unsafe" online -->
<meta http-equiv="Content-Security-Policy" content="script-src 'self' 'unsafe-inline'  https://unpkg.com https://cdn.jsdelivr.net ;">

<script src="https://unpkg.com/@nfreear/my-map@1" type="module"></script>
```

### Utilizzo dei componenti

Nella home page è possibile visualizzare i componenti web utilizzabili. Gli esempi d'uso fanno da documentazione da cui dedurre l'utilizzo del componente:

```html
<my-map latlng="40.8363100,14.2464100" zoom="12.5">
  <marker latlng="40.8363100, 14.2464100">Napoli</marker>
</my-map>
```
