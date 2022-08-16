---
type: "html"
title: "HTML Lez. 11 - Accessibilità"
description: "HTML Lez. 11 - Accessibilità"
date: 2021-08-17
publishdate: 2021-08-17
lastmod: 2021-08-17
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: true
toc: false
summary: "HTML Lez. 11 - Accessibilità"
---

# Accessibilità (a11y) 

Nello sviluppo delle applicazioni software e dei siti web un'attenzione particolare va agli utenti con disabilità.

## Categorie

Le disabilità possono essere di tipo:

- visivo: cecità completa o parziale, impossibilità nel vedere i colori, ...
- motorie: difficoltá nell'uso degli arti o di parti del corpo;
- del linguaggio: mutismo o problemi alle corde vocali, mal di gola acuto;
- dell'ascolto come la sordità;
- cognitivo: autismo, difficoltà di apprendimento, sonnolenza;
- psichiche: ansietà, depressione, sturbo da stress post traumatico (mobbing).

Bisogna ricordare che le disabilità possono essere anche temporanee, come può essere per una persona che è nel periodo di convalescenza dovuto ad un'operazione chirurgica o ad una malattia.

## Leggi e normative

Molte leggi prevedono l'obbligo per le aziende di rendere i propri software e i propri siti web accessibili a questi utenti. Tra queste ricordiamo:

- Americans with Disabilities Act (U.S.A) e Section 508;
- Equality Act (U.K.);
- European Accessibility Act (2019) e Standard Europeo UNI EN-301549;
- Legge Stanca 2004 (Italia);

La legge italiana prevede i suddetti obblighi specificamente per le aziende pubbliche. Purtroppo non sono previste sanzioni economiche, un fatto che, unito alla lunga durata dei processi ed alla prescrizione, rende tale obbligo una sorta di azione facoltativa, nell'incuranza dei dirigenti delle aziende pubbliche che continuano a prendere stipendi milionari. 

<!-- Il decreto legge 16/07/2020 aggiorna la legge Stanca estendendo l'obbligo anche a soggetti privati, ma solo se hanno determinati requisiti, come un fatturato annuo di 500 milioni di euro, che sono passibili di multe fino al 5% del fatturato. 

Il difensore civico per il digitale è una figura prevista dal Codice dell'Amministrazione Digitale (AgID) che tutela i diritti digitali di cittadini ed imprese, raccoglie reclami e segnalazioni di presunte violazioni (anche relative all'accessibilità) e dispone eventuali misure correttive.
 -->

## Tecnologie assistive

In ambito informatico, le disabilitá comportano delle difficoltà parziali o una completa impossibilità ad usare mouse e/o tastiera e a visualizzare i contenuti su uno schermo, che sia quello dello smartphone o del computer o della smart-TV.

Numerose tecnologie assistive vanno a supporto dell'utente consentendogli di utilizzare i dispositivi, le applicazioni ed i siti web. Tra le tecnologie assistive riportiamo:

- i lettori dello schermo (screen-reader), che permettono ad un utente con disabilità visive di navigare tra i contenuti dell'applicazione e della pagina web, leggendoli ad alta voce. Tra gli screen reader ricordiamo [NonVisual Desktop Access (NVDA)](https://www.nvaccess.org/) e [Job Access With Speech (JAWS)](https://www.freedomscientific.com/products/software/jaws/) per Windows, [Orca](https://help.gnome.org/users/orca/stable/index.html.en#getting_started) per Linux, TalkBack per Android, VoiceOver per Mac e iOS;
- lenti di ingrandimento: permettono di ingrandire di una determinata percentuale una porzione dello schermo, in modo da favorire la visione dei contenuti;
- i sistemi di riconoscimento ottico dei caratteri (OCR): permettono la conversione in digitale o la lettura ad alta voce del testo scritto su un foglio di carta;
- sistemi di dettatura, di trascrizione del parlato ed assistenti vocali: permettono la notifica degli eventi, l'ascolto o la dettatura del testo per mezzo della voce e la trascrizione di messaggi vocali in testo;
- sistemi di amplificazione dei suoni (anche auricolari): permettono di amplificare i suoni per facilitare l'ascolto;
- tastiere con caratteri ingranditi o tastiere tattili: hanno tasti con caratteri stampati ad una dimensione maggiore o con sporgenze che permettono di capire su quale tasto si è poggiati, inoltre hanno tasti aggiuntivi per aumentare il numero di funzionalità disponibili;
- sistemi di puntamento: sono un alternativa al mouse e permettono di utilizzare gli occhi, la testa o il corpo per muovere il puntatore del mouse;

## Accessibilità

Il termine accessibilità è associato alla possibilità anche per persone con ridotta o impedita capacità sensoriale, motoria o psichica, ossia affette da disabilità sia temporanea che stabile, di accedere e muoversi autonomamente in ambienti fisici (per cui si parla di accessibilità fisica), di fruire e accedere autonomamente a contenuti culturali (nel qual caso si parla di accessibilità culturale) o di fruire dei sistemi informatici e delle risorse a disposizione tipicamente attraverso l'uso di tecnologie assistive o tramite il rispetto di requisiti di accessibilità dei prodotti [citazione da wikipedia](https://it.wikipedia.org/wiki/Accessibilit%C3%A0_(design)).

Un software o un sito web non è di per se accessibile solo perchè l'utente usufruisce di tecnologie assistive, ma deve seguire gli standard e dalle linee guida indicate sia a livello internazionale, sia dalle associazioni in difesa di tali diritti. Queste linee guida permettono il poter acquisire in maniera corretta attraverso le tecnologie assistive le informazioni a cui fa accesso l'utente.

Tra gli standard e le linee guida relative l'accessibilità riportiamo:

- [Web Accessibility Initiative (WAI)](https://www.w3.org/WAI/tutorials/): Uno standard internazionale per lo sviluppo di siti Web ed in generale di creazioni digitali che siano accessibili;
- [Accessible Rich Internet Applications (WAI-ARIA)](https://www.w3.org/TR/wai-aria-1.1/): Uno standard che definisce le informazioni semantiche da inserire nelle etichette degli ipertesti al fine di poter essere accessibili attraverso tecnologie assistive;
- [Web Content Accessibility Guidelines (WCAG)](https://www.w3.org/WAI/standards-guidelines/wcag/): Uno standard che indica come rendere i contenuti di un sito web più accessibili;

## Linee guida WCAG

Le linee guida WCAG si riferiscono in generale a tutti i contenuti multimediali e sono d'utilità per qualsiasi lavoro digitale si possa realizzare.

Nel principale documento delle WCAG troviamo tre livelli: 

- il primo livello descrive i principi, che sono qualità base che rendono accessibile un sito web;
- il secondo livello descrive le linee guida da seguire durante la pianificazione e la progettazione di un sito web, un'applicazione o un documento per far si che sia accessibile;
- il terzo livello indica i criteri di successo per verificare che i principi e le linee guida siano stati seguiti.

I principi sono:

- "Percepibile": Gli utenti devono poter percepire informazioni e componenti (tabelle, liste, immagini, grafici, ...). Questo principio assicura che le persone disabili possano vedere il contenuto o avere alternative disponibili nel caso in cui ne abbiano bisogno, come un testo che descriva un'immagine o un sottotitolo ad un video;
- "Operabile": I componenti dell'interfaccia utente e la navigazione devono essere utilizzabili. Questo principio consente agli utenti di utilizzare la loro tecnologia preferita per gestire il prodotto digitale, ad esempio navigare nelle slide di una presentazione o tra i capitoli di un documento (senza dover scorrere tutte le slide o pagine);
- "Comprensibile": Le informazioni e il funzionamento dell'interfaccia utente devono essere comprensibili. Questo principio combina l'assicurarsi che il contenuto sia facile da capire e che si possa interagire con il prodotto digitale in modo comprensibile, ad esempio durante la compilazione di un modulo o durante la visione di un video;
- "Robusto": Il contenuto deve essere sufficientemente robusto da poter essere interpretabile da uomini, software e macchine, comprese le tecnologie assistive. Questo principio, molto tecnico, sottolinea quanto sia importante un'attenta progettazione e realizzazione (da interpretarsi come un buon codice sorgente in ambito software) per realizzare un prodotto accessibile.

Per ogni principio sono descritte delle linee guida che forniscono avvisi più specifici per le differenti situazioni. Di seguito se ne riportano alcuni, ma si consiglia di leggerli attentamente e comprenderli tutti.

- "fornire una descrizione alternativa per ogni contenuto non testuale";
- "permettere la presentazione di contenuti in diversi modi (ad esempio layout più semplice) senza perdere informazioni o struttura (consentendo qualsiasi orientamento o risoluzione del dispositivo);
- "Rendi più facile per gli utenti vedere e ascoltare i contenuti, inclusa la distinzione del primo piano dallo sfondo. Evita l'uso di un solo colore o dei colori a basso contrasto per testo, informazioni ed elementi dell'interfaccia utente";
- "rendere più facile per gli utenti utilizzare la funzionalità attraverso vari input oltre la tastiera (si pensi agli input vocali o tramite tastiere braille)";

<!--

The Guidelines are situated underneath the principles and give more specific advice for
different situations.

Principle “1. Perceivable” has four guidelines:
1.1 Text Alternatives 
Provide text alternatives for any non-text
content so that it can be changed into other forms people need, such as large print, braille,
speech, symbols or simpler language.
Whenever content is on the page that is useful or essential for the understanding of the
whole page or view, an alternative in text form must be provided.
That alternative can be used in different contexts.

1.2 Time-based Media
Provide alternatives for time-based media.
Time-based media is WCAG language for (mostly) audios and videos.
Similar to “text alternatives”, this ensures that people with different disabilities have
access to the media content.
For example, this guideline requires captions, to enable access for people who cannot hear
narration, and audio descriptions, which enable access for people who are unable to see a video.

1.3 Adaptable
Generate [!sic] content that can be presented in different ways (for example simpler layout) without
ùlosing information or structure.
This guideline prepares content to be used out of the context or styled and viewed differently.
Here’s where semantic markup comes into play.
It also means allowing users to use their devices in any orientation.

1.4 Distinguishable
Make it easier for users to see and hear content including separating foreground from background.
Avoid the use of color alone or low contrast colors for text, information, and UI elements.
Allow resizing of text and changing the viewport, for example by implementing a responsive design.

The second principle, Operable, has 5 guidelines:

2.1 Keyboard Accessible
Make all functionality available from a keyboard.
This is important as many technologies disabled people use are using keyboard commands to
navigate around, even as the users are using joysticks or other input methods.

2.2 Enough Time
Provide users enough time to read and use content.
Avoid introducing arbitrary time limits and let users take as much time as they need.
If there’s a requirement to restrict the time for a certain task — for example for
security reasons — the user must be informed and given a way to extend the timeout.

2.3 Seizures and Physical Reactions
Do not design content in a way that is known to cause seizures or physical reactions.
This guideline targets flashing content and motion animation.
Note that this guideline was extended to cover physical reactions with WCAG 2.1, you might
find the old wording, which only talks about seizures, occasionally.

2.4 Navigable
Provide ways to help users navigate, find content, and determine where they are.
Examples of requirements that come from this guideline are the ability to bypass blocks
of content on the page, having proper page titles, and proper keyboard focus and a visible focus outline.

2.5 Input Modalities
Make it easier for users to operate functionality through various inputs beyond keyboard.
New in WCAG 2.1, this guideline expands interaction with the page or application when the keyboard
is not used.
For example, websites and applications must provide an alternative to pinch and zoom gestures
you would use two fingers or pointers for.

Principle 3, Understandable has 3 guidelines:

The first one: 3.1 Readable
Make text content readable and understandable.
This guideline covers languages and language transitions, the explanation of unknown words
and abbreviations, reading level, and pronunciation.

3.2 Predictable
Make Web pages appear and operate in predictable ways.
The guidance in this guideline makes sure that users are not surprised by the things
that happen on the website and also that common elements look the same.

3.3 Input Assistance
Help users avoid and correct mistakes.
This guideline advises to label your form fields in a useful way, identify errors and
provide suggestions on how to prevent errors in the first place.

The last principle, Robust, has only one guideline:

4.1 Compatible
Maximize compatibility with current and future user agents, including assistive technologies.
Write conforming HTML code, make sure that the names, roles, and statuses of UI elements
are clear.

-->

La conformità attesta che il sito web segue tutte le linee guida delle WCAG e che tutti i criteri di successo applicabili sono soddisfatti.

I criteri di successo delle WCAG possono avere uno dei tre livelli: **A**, **Doppia-A** e **Tripla-A**. 

Il livello più basso, A, garantisce l'accessibilità di base. Se raggiungi questo livello, non stai escludendo attivamente la maggior parte delle persone disabili. 

Il secondo livello, Double-A, garantisce l'accessibilità per la maggior parte delle persone con disabilità. Questo è il livello richiesto dalla maggior parte delle leggi e delle politiche. Per raggiungerlo, è necessario confermare tutti i criteri di successo che sono di livello A e Double-A.

Il terzo livello, Triple-A, sono difficili da raggiungere, ma può avere senso offrire funzionalità che rientrano in questo livello di conformità.

Di seguito si riportano alcuni criteri di successo:

- "Audio e immagini dell'elemento video hanno una trascrizione (Level AAA)";
- "Il contenuto dell'elemento audio ha un'alternativa testuale  (Level A)";
- "L'elemento audio o video evita la riproduzione automatica dell'audio (video muto) (Level A)";
- "L'elemento scorrevole è accessibile da tastiera (Level AAA)".

<!-- TODO 

## WAI-ARIA



, quindi l utente si deve avvalere della tastiera per navigare e di uno strumento di screen reader che possa leggere ad alta voce gli elementi sui quali naviga.

la percezione di una pagina web per un utente non vedente è completamente diversa dalla percezione che abbiamo noi, dato che gli strumenti di sintesi vocale descrivono gli elementi uno per volta quindi, l utente non ha un quadro di insieme ma ho una lista di elementi sui quali può spostarsi.


Le disabilità possono essere di tipo fisico e mentale, ad esempio una persona che non ha l'uso delle gambe usa la sedia a rotelle o un'altra seconda che ha un ritardo nell'apprendimento.


cecità ed ipovisione

cecità totale non vede nulla o distingue le luci dal buio o ha un campo visivo molto ristretto

cecità parziale 
disturbo nel vedere i colori troppo accesi o difficoltà nel vedere i colori
-->
