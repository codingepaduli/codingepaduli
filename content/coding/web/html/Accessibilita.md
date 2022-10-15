---
type: "html"
title: "HTML Lez. 08 - Accessibilità"
description: "HTML Lez. 08 - Accessibilità ovvero il diritto a fruire dei sistemi informatici e delle risorse a disposizione attraverso l'uso di tecnologie assistive"
date: 2022-08-17
publishdate: 2022-08-17
lastmod: 2022-08-17
spellcheck: 2022-10-08
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 08 - Accessibilità ovvero il diritto a fruire dei sistemi informatici e delle risorse a disposizione attraverso l'uso di tecnologie assistive"
weight: 9190

references:
    -   title: "Web Accessibility Initiative (WAI)"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.w3.org/WAI/tutorials/"
        description: "Gruppi di lavoro del W3C che si occupano di stilare linee guida, relazioni tecniche e documentazione riguardante la realizzazione di creazioni digitali che siano accessibili"
    -   title: "Web Content Accessibility Guidelines (WCAG)"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.w3.org/WAI/standards-guidelines/wcag/"
        description: "Linee guida per la realizzazione di contenuti e siti web più accessibili"
    -   title: "Accessible Rich Internet Applications (WAI-ARIA)"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.w3.org/TR/wai-aria-1.1/"
        description: "Uno standard che definisce le informazioni semantiche da inserire nelle etichette degli ipertesti al fine di poter essere accessibili attraverso tecnologie assistive"
---

# Accessibilità (a11y)

Nello sviluppo delle applicazioni software e dei siti web un'attenzione particolare va agli utenti che presentano difficoltà, disturbi o disabilità.

## Leggi, normative, standard e linee guida per l'accessibilità digitale

La Costituzione Italiana afferma con l'art.3 tra i Principi Fondamentali che **tutti i cittadini hanno pari dignità sociale** e che **è compito della Repubblica rimuovere gli ostacoli di ordine economico e sociale, che, limitando di fatto la libertà e l'eguaglianza dei cittadini, impediscono il pieno sviluppo della persona umana e l'effettiva partecipazione di tutti i lavoratori all'organizzazione politica, economica e sociale del Paese**.

Il diritto all'accessibilità si fonda quindi sulla Costituzione ed è associato alla possibilità anche per persone con ridotta o impedita capacità sensoriale, motoria o psichica, ossia affette da disabilità sia temporanea che stabile, di accedere e muoversi autonomamente in ambienti fisici (per cui si parla di accessibilità fisica), di fruire e accedere autonomamente a contenuti culturali (nel qual caso si parla di accessibilità culturale) o di fruire dei sistemi informatici e delle risorse a disposizione tipicamente attraverso l'uso di tecnologie assistive o tramite il rispetto di requisiti di accessibilità dei prodotti [citazione da Wikipedia](https://it.wikipedia.org/wiki/Accessibilit%C3%A0_(design)).

Il concetto di accessibilità, nel tempo, è stato esteso anche ai ai siti web ed ai servizi digitali.

Un software o un sito web non è di per se accessibile solo perché l'utente usufruisce di tecnologie assistive, ma deve seguire gli standard e le linee guida indicate a livello internazionale. Queste linee guida permettono all'utente l'accesso alle informazioni e l'uso delle funzionalità fornite per mezzo delle tecnologie assistive di cui fa uso.

Tra gli standard e le linee guida relative l'accessibilità riportiamo:

- [Web Accessibility Initiative (WAI)](https://www.w3.org/WAI/tutorials/): Gruppi di lavoro del W3C che si occupano di stilare linee guida, relazioni tecniche e documentazione riguardante la realizzazione di creazioni digitali che siano accessibili;
- [Web Content Accessibility Guidelines (WCAG)](https://www.w3.org/WAI/standards-guidelines/wcag/): Linee guida per la realizzazione di contenuti e siti web più accessibili;
- [Accessible Rich Internet Applications (WAI-ARIA)](https://www.w3.org/TR/wai-aria-1.1/): Uno standard che definisce le informazioni semantiche da inserire nelle etichette degli ipertesti al fine di poter essere accessibili attraverso tecnologie assistive;

In particolare è la legge Stanca del 2004 che stabilisce l'accessibilità degli strumenti informatici anche per i soggetti che presentano difficoltà, disturbi o disabilità, obbligando per legge i siti dell'amministrazione pubblica e dei fornitori di servizi pubblici a seguire le linee guida WCAG versione 1.0 del 1999.

Nel 2018 con il Decreto Legislativo No.106 l'Italia recepisce le direttive della Comunità Europea (atte a migliorare l'accessibilità di siti e app per smartphone per il settore pubblico di ogni paese membro dell'Unione Europea) ed aggiorna le linee guida di riferimento per l'accessibilità, indicando le WCAG versione 2.0 pubblicate nel 2008.

La novità di questa direttiva è che le amministrazioni hanno l'obbligo di pubblicare e aggiornano periodicamente la Dichiarazione di accessibilità, in cui si attesta lo stato di conformità di ciascun sito e applicazione mobile ai requisiti di accessibilità.

In alcuni casi, però, le leggi italiane non sono le uniche a cui riferirsi. Se si considera che molti servizi (come Sky, Facebook, Twitter) sono forniti a livello mondiale, allora per questi servizi è necessario rispettare anche le leggi delle nazioni in cui si offre il servizio. Tra le tante leggi citiamo:

- Americans with Disabilities Act (U.S.A) e Section 508;
- Equality Act (U.K.);
- European Accessibility Act (2019) e Standard Europeo UNI EN-301549;

Anche le leggi nazionali di questi paesi prendono come riferimento gli standard e le linee guida internazionali relative l'accessibilità (WCAG, WAI-ARIA).

## Disturbi e disabilità

Gli utenti di un sito web possono essere persone affette da:

- disturbi psichici e psichiatrici: disturbi d'ansia, disturbi del tono dell'umore e disturbi di personalità;
- disabilità intellettiva (ex ritardo mentale) un alterato funzionamento del sistema nervoso centrale di grado lieve, moderato, grave o molto grave;
- disturbi dello spettro autistico;
- disturbi specifici del linguaggio, compromettono lo sviluppo del linguaggio in assenza di un problema neurologico, sensoriale, intellettivo o affettivo;
- disturbi specifici dell'apprendimento: difficoltà specifiche nella lettura (dislessia), scrittura (disortografia) e calcolo (discalculia).
- disturbi motori: incapacità o limitazione nell'uso di arti o del corpo.
- disturbi visivi: perdita totale (cecità) o compromissione parziale (ipovisione);
- disturbi dell'udito: perdita totale (sordità) o compromissione leggera, moderata, severa o profonda dell'udito;

Bisogna ricordare che alcuni disturbi possono essere anche temporanei, come può essere per una persona che è nel periodo di convalescenza dovuto ad un'operazione chirurgica o ad una malattia.

Le persone affette da questi disturbi presentano <!-- sviluppano disabilità, ovvero incapacità o limitazione --> difficoltà o limitazioni nello svolgere attività essenziali per la vita quotidiana, un modo alternativo per svolgerle è attraverso l'uso di tecnologie assistive.

## Tecnologie assistive

Numerose tecnologie assistive vanno a supporto dell'utente consentendogli di utilizzare i dispositivi, le applicazioni ed i siti web. Tra le tecnologie assistive riportiamo:

- i lettori dello schermo (screen-reader), che permettono ad un utente con disturbi visivi di navigare tra i contenuti dell'applicazione e della pagina web, leggendoli ad alta voce. Tra gli screen reader ricordiamo [NonVisual Desktop Access (NVDA)](https://www.nvaccess.org/) e [Job Access With Speech (JAWS)](https://www.freedomscientific.com/products/software/jaws/) per Windows, [Orca](https://help.gnome.org/users/orca/stable/index.html.en#getting_started) per Linux, TalkBack per Android, VoiceOver per Mac e iOS;
- lenti di ingrandimento: permettono di ingrandire di una determinata percentuale una porzione dello schermo, in modo da favorire la visione dei contenuti;
- i sistemi di riconoscimento ottico dei caratteri (OCR): permettono la conversione in digitale o la lettura ad alta voce del testo scritto su un foglio di carta;
- sistemi di dettatura (o trascrizione del parlato) ed assistenti vocali: permettono l'interazione attraverso la voce, in particolare per l'ascolto e la dettatura del testo (o per la trascrizione di messaggi vocali);
- sistemi di amplificazione dei suoni (anche auricolari): permettono di amplificare i suoni per facilitare l'ascolto;
- tastiere con caratteri ingranditi o tastiere tattili: hanno tasti con caratteri stampati ad una dimensione maggiore o con lettere in rilievo che permettono di capire su quale tasto si è poggiati, inoltre hanno tasti aggiuntivi per aumentare il numero di funzionalità disponibili;
- sistemi di puntamento: sono un alternativa al mouse e permettono di utilizzare gli occhi, la testa o il corpo per muovere il puntatore del mouse.

## Linee guida WCAG

Le linee guida WCAG si riferiscono in generale a tutti i contenuti multimediali e sono d'utilità per qualsiasi lavoro digitale si possa realizzare.

Nel principale documento delle WCAG, ora alla versione 2, troviamo tre livelli:

- il primo livello descrive i principi, che sono qualità base che rendono accessibile un sito web;
- il secondo livello descrive le linee guida da seguire durante la pianificazione e la progettazione di un sito web, un'applicazione o un documento per far si che sia accessibile;
- il terzo livello indica i criteri di successo per verificare che i principi e le linee guida siano stati seguiti.

### Principi

I principi sono:

- "Percepibile": Gli utenti devono poter percepire informazioni e componenti (tabelle, liste, immagini, grafici, ...). Questo principio assicura che il contenuto sia visibile o che si possano avere alternative disponibili nel caso di bisogno, come un testo che descriva un'immagine o un sottotitolo ad un video;
- "Operabile": I componenti dell'interfaccia utente e la navigazione devono essere utilizzabili. Questo principio consente agli utenti di utilizzare la loro tecnologia preferita per gestire il prodotto digitale, ad esempio navigare nelle slide di una presentazione o tra i capitoli di un documento (senza dover scorrere tutte le slide o pagine);
- "Comprensibile": Le informazioni e il funzionamento dell'interfaccia utente devono essere comprensibili. Questo principio combina l'assicurarsi che il contenuto sia facile da capire e che si possa interagire con il prodotto digitale in modo comprensibile, ad esempio durante la compilazione di un modulo o durante la visione di un video;
- "Robusto": Il contenuto deve essere sufficientemente robusto da poter essere interpretabile da uomini, software e macchine, comprese le tecnologie assistive. Questo principio, molto tecnico, sottolinea quanto sia importante un'attenta progettazione e realizzazione (da interpretarsi come un buon codice sorgente in ambito software) per realizzare un prodotto accessibile.

### Linee guida

Per ogni principio sono descritte delle linee guida che forniscono avvisi più specifici per le differenti situazioni. Di seguito si riportano le linee guida di ogni principio.

Linee guida del primo principio:

1. "fornire una descrizione alternativa per ogni contenuto non testuale" <!-- braille, voce, simboli or linguaggio semplificato -->;
2. "fornire una descrizione alternativa per i media audio e video" <!-- ad esempio i sottotitoli -->;
3. "permettere la presentazione di contenuti in diversi modi (ad esempio layout più semplice) senza perdere informazioni o struttura <!-- ad esempio utilizzando la "modalità di lettura" o consentendo qualsiasi orientamento o risoluzione del dispositivo -->;
4. "Rendi più facile per gli utenti vedere e ascoltare i contenuti, inclusa la distinzione del primo piano dallo sfondo. Evita l'uso di un solo colore o dei colori a basso contrasto per testo, informazioni ed elementi dell'interfaccia utente" <!-- ad esempio ingrandire il testo -->;

Linee guida del secondo principio:

1. "Make all functionality available from a keyboard";
2. "Fornire agli utenti abbastanza tempo per leggere e/o interagire con i contenuti" <!-- Se basati sul tempo, fornire un modo per aumentare il limite di tempo -->;
3. "Non mostrare i contenuti in una modalità che è noto possa causare reazioni fisiche o crisi <!-- come contenuti lampeggianti o animazioni -->;
4. "Fornire un modo che possa aiutare gli utenti a navigare tra i contenuti, a trovarli e a determinare in quale punto è l'utente" <!-- Avere un titolo di pagina, il focus per la tastiera visibile, una suddivisione in capitoli e paragrafi realizzata correttamente -->;
5. "Rendere facile per gli utenti utilizzare alcune funzionalità utilizzando altri dispositivi di input oltre alla tastiera" <!-- si pensi agli input vocali o tramite tastiere braille -->;

Linee guida del terzo principio:

1. "Rendere i contenuti testuali leggibili e comprensibili" <!-- traduzione, spiegazione degli acronimi, corretta pronuncia, ... -->;
2. "Far si che le pagine siano visualizzate e che operino secondo una modalità che l'utente si possa aspettare" <!-- Un pulsante ed un campo di input devono sembrare tali, e non avere forme strane o poco intuitive -->;
3. "Aiutare gli utenti ad evitare e correggere gli errori" <!-- i contenuti siano descritti in un modo utile, si possano evitare ed identificare errori (con formato dato, ora, controllo ortografico) e fornire suggerimenti -->;

Linee guida del quarto principio:

1. "Massimizzare la compatibilità con le tecnologie correnti, incluso le tecnologie assistive. Scrivere codice conforme (valido) assicurandosi che nomi, ruoli e proprietà degli elementi dell'interfaccia grafica siano chiari;

### Conformità

La conformità attesta che il sito web segue tutte le linee guida delle WCAG e che tutti i criteri di successo applicabili sono soddisfatti.

I criteri di successo delle WCAG possono avere uno dei tre livelli: **A**, **Doppia-A** e **Tripla-A**.

Il livello più basso, A, garantisce l'accessibilità di base. Se raggiungi questo livello, non stai escludendo attivamente la maggior parte delle persone con disturbi.

Il secondo livello, Double-A, garantisce l'accessibilità per la maggior parte delle persone con disturbi. Questo è il livello richiesto dalla maggior parte delle leggi e delle politiche. Per raggiungerlo, è necessario confermare tutti i criteri di successo che sono di livello A e Double-A.

Il terzo livello, Triple-A, sono difficili da raggiungere, ma può avere senso offrire funzionalità che rientrano in questo livello di conformità.

Di seguito si riportano alcuni criteri di successo:

- "Audio e immagini dell'elemento video hanno una trascrizione (Level AAA)";
- "Il contenuto dell'elemento audio ha un'alternativa testuale  (Level A)";
- "L'elemento audio o video evita la riproduzione automatica dell'audio (video muto) (Level A)";
- "L'elemento scorrevole è accessibile da tastiera (Level AAA)".

## WAI-ARIA

La WAI fornisce le linee guida conosciute come "Accessible Rich Internet Applications" (ARIA), che definiscono le informazioni semantiche da inserire nelle etichette degli ipertesti, in particolare nelle pagine HTML e negli elementi SVG, al fine di poter essere accessibili attraverso tecnologie assistive.

Per informazioni semantiche si intendono quelle che indicano il ruolo di una determinata etichetta, lo stato o le relazioni con le altre etichette. Ad esempio un menu di navigazione può essere strutturato come una lista a due o tre livelli, ed una determinata voce può essere visibile all'utente, mentre le altre no. Queste informazioni possono essere molto utili per indirizzare il "comportamento" delle tecnologie assistive, ma non è possibile fornirle utilizzando il solo codice HTML. Le linee guida vanno proprio a standardizzare queste informazioni e a definire in che modo devono essere inserite nel codice HTML.

Molte etichette del linguaggio HTML hanno già un informazione semantica, ad esempio l'etichetta del titolo ``h1`` indica l'inizio e la fine del titolo, l'etichetta dei collegamenti ``a`` indica l'inizio e la fine del collegamento, e come queste molte altre. Per inserire un titolo o un collegamento nella pagina non è necessario indicare che il ruolo dell'elemento è "titolo" o "collegamento", è la stessa etichetta a sottintendere questo ruolo.

In molti altri casi, invece, si usano le etichette per creare elementi più complessi, come una sezione per la ricerca (filtri compresi) o una visualizzazione dei contenuti basata su schede (come le schede di navigazione di un browser). In questo caso, dobbiamo associare all'etichetta il ruolo, in modo da indicare alle tecnologie assistive il ruolo svolto dall'etichetta, quindi associamo il ruolo "sezione per la ricerca" o il ruolo "lista di schede";

Le linee guida inoltre indicano per ogni ruolo un elenco di attributi (o proprietà) che il ruolo possiede. Ad esempio un menù può essere disabilitato, una sezione per la ricerca può essere nascosta, un banner pubblicitario può essere legato ad un popup (finestra a comparsa).

### Ruoli

Le linee guida riportano una lunga serie di ruoli che si possono associare alle etichette, tra le tante troviamo "menubar" (barra dei menu), "menu", "menuitem" (voce del menù), "search" (una sezione per la ricerca, filtri compresi) , "tree" (struttura ad albero), "treeitem" (voce della struttura ad albero), "tab" (schede), "banner" e tanti altri.

Questi ruoli sono divisi in sei categorie di seguito elencate:

- Widget: descrivono componenti interattivi, come i pulsanti o i componenti di input a scelta singola o multipla;
- Composite: descrivono dei contenitori di widget, ad esempio "menubar" (barra dei menu) e "tablist" (lista di schede);
- Document structure: descrivono la struttura della pagina, come il menu di navigazione;
- Landmark: descrivono sempre la struttura della pagina, ma ad un livello più alto, ad esempio la colonna pubblicitaria o un
- Live region: descrive un'area con contenuti "live", come gli avvisi a comparsa o con timer;
- Window: descrive i componenti che mostrano all'utente una finestra a comparsa, come i messaggi di alert;

I ruoli vanno indicati con l'attributo HTML ``role`` la cui sintassi è la seguente:

```html
<etichetta role="nome_ruolo">
```

### Attributi

Gli attributi (o proprietà) che il ruolo possiede sono indicati con gli attributi HTML che iniziano per ``aria-PR`` dove ``PR`` è il nome della proprietà da indicare. La sintassi è la seguente:

```html
<etichetta aria-PR="valore">
```

Gli attributi sono divisi in quattro categorie elencate di seguito:

- Widget: gestiscono gli input e le azioni utente;
- live: notificano un nuovo contenuto disponibile o una modifica nella pagina web;
- drag and drop: gestiscono il copia e incolla;
- relationship: indicano relazioni tra ruoli;

### Focus

Un altro comportamento su cui porre attenzione è la scelta del componente su cui interagire. In genere l'utente clicca su un componente e questo riceve il focus. Quando un componente riceve il focus, da la possibilità all'utente di interagirvi. Ad esempio quando si clicca su un campo di input, questo riceve il focus e quindi l'utente può inserire un valore.

Agli utenti che non utilizzano il mouse viene fornita in alternativa la possibilità di selezionare i componenti uno per volta utilizzando l'apposito pulsante della tastiera (in genere il tasto "TAB").

Lo sviluppatore può indicare quali componenti vuole che ricevano il focus, aggiungendo nel codice HTML di questi componenti l'attributo HTML ``tabindex="0"``.

### Esempio di applicazione delle linee guida ARIA

Supponendo che lo sviluppatore crei un componente con tre schede (tab) in modo tale che quando si clicca su una viene visualizzato uno dei tre pannelli. Supponiamo che il codice HTML usato per sviluppare tale componente sia il seguente:

```html
<ul>
  <li class="active">Tab 1</li>
  <li>Tab 2</li>
  <li>Tab 3</li>
</ul>
<div class="panels">
  <article class="active-panel"> … </article>
  <article> … </article>
  <article> … </article>
</div>
```

Le tecnologie assistive non hanno modo di interpretare il codice HTML e estrapolare che la lista indica delle schede e che i pannelli siano legati alle schede. Per fornire queste informazioni alle tecnologie assistive, è necessario che sia lo sviluppatore a fornirle indicandole opportunamente come di seguito:

```html
<ul role="tablist">
  <li role="tab" aria-selected="true" aria-posinset="1" class="active">Tab 1</li>
  <li role="tab" aria-selected="false" aria-posinset="2">Tab 2</li>
  <li role="tab" aria-selected="false" aria-posinset="3">Tab 3</li>
</ul>
<div class="panels">
  <article role="tabpanel" aria-hidden="false" class="active-panel"> … </article>
  <article role="tabpanel" aria-hidden="true"> … </article>
  <article role="tabpanel" aria-hidden="true"> … </article>
</div>
```

Come si può notare, la lista è descritta con il ruolo ARIA "lista di schede" ed ogni elemento della lista è descritto con il ruolo ARIA "scheda". Ogni scheda ha gli attributi ARIA che indicano la posizione e se è selezionata o meno. Anche gli articoli sono descritti con il ruolo ARIA "pannello della scheda" e l'attributo ARIA che indica se nascosto o meno. Tutte queste informazioni aggiuntive permettono all'utente che fa uso di tecnologie assistive la gestione corretta delle schede realizzate nella pagina web.

Per aggiungere anche la possibilità di applicare il focus alle tre schede, si può integrare il codice HTML come di seguito:

```html
<ul role="tablist">
  <li role="tab" aria-selected="true" aria-posinset="1" tabindex="0" class="active" >Tab 1</li>
  <li role="tab" aria-selected="false" aria-posinset="2" tabindex="0">Tab 2</li>
  <li role="tab" aria-selected="false" aria-posinset="3" tabindex="0">Tab 3</li>
</ul>
<div class="panels">
  <article role="tabpanel" aria-hidden="false" class="active-panel"> … </article>
  <article role="tabpanel" aria-hidden="true"> … </article>
  <article role="tabpanel" aria-hidden="true"> … </article>
</div>
```

In questo modo, è possibile navigare sugli elementi della lista (ogni elemento rappresenta un pulsante per visualizzare la scheda corrispondente) attraverso la tastiera e selezionare una scheda da leggere.

<!-- TODO 

, quindi l utente si deve avvalere della tastiera per navigare e di uno strumento di screen reader che possa leggere ad alta voce gli elementi sui quali naviga.

la percezione di una pagina web per un utente non vedente è completamente diversa dalla percezione che abbiamo noi, dato che gli strumenti di sintesi vocale descrivono gli elementi uno per volta quindi, l utente non ha un quadro di insieme ma ho una lista di elementi sui quali può spostarsi.

-->

### Framework CSS e per app

I siti web e le app difficilmente utilizzano dei componenti dell'interfaccia costruiti da zero, piuttosto si basano sempre più su dei framework che forniscono linee guida, componenti precostruiti e strumenti che permettono il disegno di interfacce grafiche secondo le "best practice" internazionali.

Il vantaggio nell'usare questi framework consiste appunto nel poter costruire un interfaccia grafica che supporti diversi temi di colore, che si adatti dinamicamente alle caratteristiche del dispositivo utilizzato, sia esso desktop, tablet o telefono cellulare, che fornisca allo sviluppatore una vasta gamma di componenti grafici precostruiti che seguono gli standard e linee guida per l'accessibilità, che tengono conto delle preferenze utente, come le indicazione di un maggiore contrasto dei colori o di una minimizzazione delle animazioni e degli effetti di movimento utilizzati dal sito web o dall'applicazione o le indicazioni e tanti altri vantaggi ancora;

Tra i framework più utilizzati riportiamo [Bootstrap](https://getbootstrap.com/), progettato inizialmente da Twitter nel 2011 per la costruzione di pagine web, [Material Design](https://material.io/) sviluppato da Google nel 2014 per la costruzione di app per android e per la costruzione di pagine web, [Human Interface](https://developer.apple.com/design/) per la costruzione di app per iOS, macOS e tutti gli altri dispositivi Apple.

Adottare un framework che rispetti i requisiti di accessibilità è sicuramente un buon inizio per far si che il prodotto da realizzare sia accessibile, ma comunque le scelte di progettazione delle interfacce possono portare alla realizzazione di un prodotto non accessibile.

Dato che i componenti grafici forniti da questi framework sono generici e personalizzabili, è compito del grafico realizzare delle interfacce che rispettino i requisiti di accessibilità ed è compito dello sviluppatore implementare i requisiti di accessibilità per la specifica piattaforma di sviluppo (partendo dalle interfacce realizzate dal grafico).

## Strumenti di validazione dell'accessibilità

Una volta realizzato il sito web, è necessario effettuare dei test di accessibilità. Gli strumenti automatici possono verificare solo alcune caratteristiche del codice HTML, ma non sono in grado di valutare le scelte grafiche, per cui si consiglia sempre di integrare questi strumenti con dei test effettuati attraverso le tecnologie assistive, in particolare usando screen reader e tastiera.

Tra gli strumenti più utilizzati, troviamo:

- [Axe (Deque Systems Inc.)](https://www.deque.com/axe/)
- [Wave (Utah State University)](https://wave.webaim.org/)
- [Tota11y](https://khan.github.io/tota11y/)
- [Lighthouse](https://github.com/GoogleChrome/lighthouse)

Tutti questi strumenti sono capaci di rilevare una buona parte di attributi mancanti nel codice HTML.

### Wave

Wave dev tool è un estensione che si può installare nel browser e permette di visualizzare tutti i problemi di accessibilità della pagina web. Una volta installato ed eseguito, riporta un riepilogo di tutti i problemi riscontrati.

Di seguito riportiamo un esempio reali di analisi dell'accessibilità della home page del sito "ilfattoquotidiano.it". Nella sezione di sinistra si può visualizzare il riepilogo degli errori riscontrati.

![Wave - Riepilogo](/static/coding/web/html/accessibility-wave-summary.png "Il riepilogo riporta gli errori, gli elementi con un contrasto non sufficiente, la struttura della pagina vista attraverso le tecnologie assistive ed i problemi specifici rispetto a WAI-ARIA")

Nella sezione di dettaglio si ha un elenco degli errori di accessibilità.

![Wave - Sezione degli errori](/static/coding/web/html/accessibility-wave-error-details.png "Tra gli errori notiamo quelli di testo alternativo alle immagini mancante, quelli di collegamenti senza URL, errori di contrasto, ecc...").

Nella sezione relativa alla struttura, si può visualizzare la struttura della pagina vista da uno screen reader, e cioè come una lista di elementi a cui accedere uno per volta.

![Wave - Sezione struttura](/static/coding/web/html/accessibility-wave-structure.png "La struttura è fatta dalle varie sezioni del linguaggio HTML (etichette di navigazione, sezione, articoli) e ovviamente dai titoli dal primo all'ultimo livello").

Nella sezione relativa al contrasto, troviamo gli elementi con contrasto non sufficiente.

![Wave - Sezione contrasto](/static/coding/web/html/accessibility-wave-contrast.png "Gli elementi con un contrasto non sufficiente sono riportati indicando il colore di primo piano, il colore di sfondo e la proporzione di contrasto").

### Tota11y

Tota11y è una sorta di estensione per browser (si installa nei bookmarks, tecnicamente è una bookmarklet) che aiuta a visualizzare nella pagina i problemi di accessibilità. E' disponibile anche come libreria che si può installare in ambiente di sviluppo, aggiungendola nelle pagine HTML come di seguito.

```javascript
<script src="path/to/tota11y.js"></script>
```

Una volta attivata, presenta una sezione di riepilogo contenente le varie problematiche di accessibilità del sito analizzato.

![Tota11y - Riepilogo](/static/coding/web/html/accessibility-tota11y-menu.png "Il riepilogo riporta i problemi relativi ai titoli, al contrasto, ai collegamenti, ai testi alternativi alle immagini, ecc...")

Ogni volta che si seleziona una sezione del menù, si apre una scheda che mostra i vari errori riscontrati per quella sezione.

![Tota11y - Sezioni](/static/coding/web/html/accessibility-tota11y-sections.png "Ogni sezione indica il numero di errori e mostra l'elenco degli errori")

### Lighthouse

Lighthouse non è uno strumento specifico per l'accessibilità, però fornisce anche questa funzionalità e permette di valutare gli errori più elementari.

![Lighthouse - Report](/static/coding/web/html/accessibility-lighthouse-report.png "Lighthouse fornisce un indice di valutazione dell'accessibilità del sito, seguito da un riepilogo degli errori riscontrati").
