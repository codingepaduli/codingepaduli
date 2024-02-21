---
type: "html"
title: "HTML Lez. 07 - Codifica Unicode, HTML entities, emoji"
description: "HTML Lez. 07 - La codifica Unicode, le HTML entities e le emoji nelle pagine web"
date: 2019-08-05
publishdate: 2019-08-05
lastmod: 2023-11-03
spellcheck: 2020-12-11
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 07 - La codifica Unicode, le HTML entities e le emoji nelle pagine web"
weight: 9370

references:
    -   title: "EditorConfig"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "/tools/editorconfig/"
        description: "Articolo per la configurazione di Editorconfig"
    -   title: "Unicode Converter - Unicodes and text converter"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.branah.com/unicode-converter"
        description: "A tool to convert between Unicode and plain text"
    -   title: "Unicode Converter - Unicode code converter"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://r12a.github.io/app-conversion/"
        description: "Another tool to convert between Unicode and plain text"
    -   title: "Emoji Chart, v12.0"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.unicode.org/emoji/charts/full-emoji-list.html"
        description: "A full list of Emoji"
---

# Codifica Unicode

Nelle prime fasi dello sviluppo di internet le comunicazioni, all'incirca del 1963, le comunicazioni si avvalevano del codice ASCII a 7 bit che si basa su 95 caratteri stampabili, come i numeri, lettere ed i simboli di punteggiatura, e dai restanti caratteri di controllo, come l'invio a capo, che servivano a controllare le telescriventi dell'epoca.

Il codice ASCII non era un vero e proprio standard in quanto con l'estendersi della rete internet molte nazioni iniziarono ad adattarlo per includere quei caratteri che non facevano parte dell'alfabeto USA, ad esempio il Canada sostituì alcuni caratteri con quelli francesi, la Gran Bretagna aggiunse il simbolo della sterlina. Nel mondo iniziarono ad adottare delle codifiche simili all'ASCII, ad esempio in India si utilizzo la codifica ISCII mentre in Vietnam la codifica VISCII.

Nel tentativo di utilizzare una codifica dei caratteri che comprendesse più caratteri possibili, si crearono diversi standard, come la codifica ASCII a 8 bit e successive codifiche ISO prima a 12 bit, poi a 16 e così via. Vi furono notevoli problemi di incompatibilità a causa dei vari adattamenti dei codici delle varie nazioni.

Nel tentativo di realizzare un sistema che potesse codificare qualsiasi carattere esistente, di qualsiasi alfabeto, nacque il consorzio Unicode, un'organizzazione che aveva lo scopo di coordinare questi lavori.

Nacque quindi nel 1991 la prima versione del sistema Unicode, un sistema di codifica dei caratteri progettato per supportare a livello internazionale lo scambio, l'elaborazione e la visualizzazione dei testi scritti in linguaggi diversi, compresi i linguaggi tecnici delle varie discipline e le lingue morte. La parte visuale come ad esempio la dimensione del carattere, la forma, lo stile, eccetera, non fanno parte delle specifiche Unicode.

Il sistema Unicode assegna ad ogni carattere, numero, segno di punteggiatura o segno diacritico **un numero univoco in formato esadecimale**, che può essere utilizzato sia per identificare il carattere, sia per la trasmissione o l'elaborazione. Per distinguere il fatto che si fa riferimento ad un codice Unicode, questo numero identificativo viene indicato nella forma **U+numero**, ad esempio **U+01A2**.

Attualmente il codice Unicode prevede 17 piani di codifica, ma solo 3 sono utilizzati e sono i seguenti:

1. piano multilinguistico base (BMP) con caratteri identificati nell'intervallo da U+00000 ad U+0​FFFF;
2. piano multilinguistico supplementare (SMP) con caratteri identificati nell'intervallo da U+10000 ad U+1FFFF;
3. piano del codici ideografici supplementari (SIP) con caratteri identificati nell'intervallo da U+20000 ad U+2FFFF.

Il BMP contiene quasi tutti i sistemi di scrittura utilizzati, come l'arabo, il cirillico, l'esperanto, il greco, il latino, il mongolo, il thailandese, il persiano, il fenicio, il runico, la scrittura cuneiforme e tanti altri sistemi di scrittura. Per ogni sistema di scrittura sono presenti i nomi (con annesso significato) di ogni carattere, il corrispondente codice numerico assegnato e le possibili varianti del carattere.

Ad esempio per il sistema di scrittura latino, si ha:

![Specifiche Unicode del sistema latino](/static/coding/web/html/unicode-basic-latin.png "Le Specifiche Unicode associano ad ogni carattere del sistema latino un codice univoco")

Nel dettaglio sono riportati i nomi (con annesso significato) di ogni carattere e le possibili varianti, come ad esempio la lettera "C" che come variante ha il simbolo dei gradi centigradi:

![Specifiche Unicode del sistema latino in dettaglio](/static/coding/web/html/unicode-basic-latin-details.png "Le Specifiche Unicode indicano il nome di ogni carattere e le possibili varianti")

I concetti principali della codifica Unicode sono i seguenti:

- Un **punto di codice** è l'unità atomica di informazione, identificata da un numero.
- Un **grafema** è una sequenza di uno o più punti di codice che vengono visualizzati insieme come una singola unità grafica.

<!-- Grapheme clusters: Quando un grafema è composto da una sequenza di più punti di codice, spesso ci si riferisce con il termine "cluster di grafemi". -->

Ad esempio:

- Il grafema "è" può essere composto dal punto di codice "U+0065" (che rappresenta il grafema ``"``&#x0065;``"``) seguito dal punto di codice "U+0301" (che rappresenta un "accento acuto" ``"``&#x0301;``"``) e che insieme permettono di rappresentare il grafema ``"``&#x0065;&#x0301;``"``;
- Il grafema ``"``&#x1F468;&#x200D;&#x1F3ED;``"`` può essere composto dal punto di codice "U+1F468" (che rappresenta il grafema "uomo" ``"``&#x1F468;``"``) seguito dal punto di codice "U+200D" (che rappresenta una indicazione di combinazione ``"``&#x200D;``"``) seguito dal punto di codice "U+1F3ED" (che rappresenta il grafema "fabbrica" ``"``&#x1F3ED;``"``);
- Il grafema ``"``&#x1F6B5;&#x1F3FB;&#x200D;&#x2640;&#xFE0F;``"`` può essere composto dal punto di codice "U+1F6B5" (che rappresenta il grafema "ciclista in montagna" ``"``&#x1F6B5;``"``) seguito dal punto di codice "U+1F3FB" (che rappresenta una indicazione di modifica ``"``&#x1F3FB;``"``) seguito dal punto di codice "U+200D" (che rappresenta una indicazione di combinazione``"``&#x200D;``"``) seguito dal punto di codice "U+2640" (che rappresenta il grafema segno femminile ``"``&#x2640;``"``) seguito dal punto di codice "U+FE0F" (che rappresenta il punto di codice "sedicesima variazione" ``"``&#xFE0F;``"``);

- Il grafema ``"``&#x0079;&#x0316;&#x0320;&#x034D;&#x0318;&#x0347;&#x0357;&#x030F;&#x033D;&#x030E;&#x035E;``"`` può essere composto dalla seguente sequenza di punti di codice:
  1. dal punto di codice "U+0079" (che rappresenta il grafema "lettera y" ``"``&#x0079;``"``);
  2. dal punto di codice "U+0316" (che rappresenta la combinazione con un "accento grave sottostante" ``"``&#x0316;``"``);
  3. dal punto di codice "U+0320" (che rappresenta la combinazione con un "segno meno sottostante" ``"``&#x0320;``"``);
  4. dal punto di codice "U+034D" (che rappresenta la combinazione con un "freccia sottostante" ``"``&#x034D;``"``);
  5. dal punto di codice "U+0318" (che rappresenta il punto di codice "chiodo sottostante a sinistra" ``"``&#x0318;``"``);
  6. dal punto di codice "U+0347" (che rappresenta il punto di codice "segno uguale sottostante" ``"``&#x0347;``"``);

  7. dal punto di codice "U+0357" (che rappresenta il punto di codice "mezzo anello superiore" ``"``&#x0357;``"``);
  8. dal punto di codice "U+030F" (che rappresenta il punto di codice "doppio accento grave" ``"``&#x030F;``"``);
  9. dal punto di codice "U+033D" (che rappresenta il punto di codice "segno X soprastante" ``"``&#x033D;``"``);
  10. dal punto di codice "U+030E" (che rappresenta il punto di codice "doppia linea verticale soprastante" ``"``&#x030E;``"``);
  11. dal punto di codice "U+035E" (che rappresenta il punto di codice "segno diacritico soprastante ad indicare le vocali lunghe" ``"``&#x035E;``"``).

Un grafema può essere composto da un numero illimitato di punti di codice e quindi, per memorizzarlo, possono essere necessari un numero imprecisato di byte.

Le regole Unicode consentono ad un grafema composto da più punti di codice di essere interpretato come un grafema che ha già il proprio singolo punto di codice. Un esempio appena visto è il grafema che rappresenta la "lettera e accentata" che puo essere composto sia da una sequenza di un solo punto di codice "U+00E8", sia dalla sequenza di due punti di codice "U+0065" e "U+0301".

Dato che in Unicode esiste più di un modo per rappresentare un grafema, esiste anche la "forma normalizzata" che consente di capire se due grafemi sono equivalenti e di conseguenza se due frasi lo sono.

## Unicode Transformation Format (UTF)

Il sistema Unicode utilizza 32 bit per codificare un punto di codice ed è tipicamente indicato con il nome **UTF-32** (Unicode Transformation Format, 32 bit). La lunghezza in bit di ogni punto di codice è fissa ed è di 4 byte.

Lo svantaggio nell'utilizzare la codifica UTF-32 è che un messaggio trasmesso con questa codifica è 4 volte più grande dello stesso messaggio trasmesso con codifica ASCII. Lo stesso discorso vale per la memorizzazione, che richiede il quadruplo della dimensione necessaria.

Per ovviare a questa problematica, sono nati due sistemi che prevedono la codifica dei caratteri Unicode in sequenze di bit di lunghezza variabile:

- **UTF-8** (Unicode Transformation Format, 8 bit) usa una lunghezza da 1 a 4 byte;
- **UTF-16** (Unicode Transformation Format, 16 bit) usa una lunghezza da 2 a 4 byte.

Dato che la maggior parte dei caratteri utilizzatati si trova nel piano multilinguistico base (BMP), codificando ogni carattere non con 32 bit, ma con 16 bit, si ottiene un risparmio considerevole. Nel caso nel messaggio siano presenti caratteri non appartenenti al BMP, allora questi saranno codificati con una lunghezza maggiore. Nel caso di caratteri latini, questi avranno una lunghezza media di 8 bit, con un notevole risparmio.

É importante che il documento sia salvato con codifica UTF-8 in modo tale da poter inserire nel documento qualsiasi grafema, dall'alfabeto cinese a quello arabo, dalle lingue morte come latino e greco ai simboli matematici, alle figure geometriche, fino agli emoticons ed emoji.

**Senza la codifica giusta, molti caratteri potrebbero non essere visualizzati nel documento**.

## HTML ed Unicode

I documenti HTML devono essere salvati con la codifica corretta e devono indicarla nelle informazioni della pagina, all'interno dell'etichetta ``head``:

```html
<head>
    <meta charset="UTF-8">
</head>
```

Nei documenti HTML i grafemi possono essere codificati in differenti modalità.

La rappresentazione dei grafemi detta "HTML entities" è entrata in vigore prima dello standard Unicode e permette di codificare un grafema associandogli un codice mnemonico. La specifica delle HTML entities si trova al link [https://html.spec.whatwg.org/multipage/entities.json](https://html.spec.whatwg.org/multipage/entities.json "Link alla lista di HTML entities").

Tra i codici mnemonici delle "HTML entities" troviamo ad esempio:

- gt = greater than, ovvero il simbolo di maggiore (&gt;);
- lt = lower than, ovvero il simbolo di minore (&lt;);
- minus = segno meno (&minus;);
- amp = ampersand, ovvero il simbolo di "e commerciale" (&amp;);
- quot = quotation mark, ovvero il simbolo di doppi apici (&quot;);
- apos = apostrophe, ovvero il simbolo di apostrofo (&apos;);
- … ;

Questi codici mnemonici devono essere sempre inseriti tra il simbolo ``&`` ed il simbolo ``;``, come negli esempi ``&minus;`` (con risultato &minus; <!-- − -->) ed ``&amp;`` (con risultato &amp; <!-- & -->).

Con la nascita dello standard Unicode, la rappresentazione di un grafema avviene attraverso i punti di codice. Ogni punto di codice può essere inserito nel documento HTML utilizzando il corrispondente valore numerico espresso in formato decimale o esadecimale. La regola prevede che:

- se si utilizza il valore numerico espresso in formato decimale, allora è necessario inserirlo tra il simbolo ``&#`` ed il simbolo ``;``;
-se si utilizza il valore numerico espresso in formato esadecimale, allora è necessario inserirlo tra il simbolo ``&#x`` ed il simbolo ``;``.

Ad esempio, il grafema "lettera greca delta" &Delta; <!-- Δ --> può essere rappresentato con il codice numerico decimale 916 e con codice numerico esadecimale 394, quindi possiamo scrivere questo grafema sia con la notazione decimale ``&#916;`` (con risultato &#916;) sia con quella esadecimale ``&#x394;`` (con risultato &#x394;).

Altro esempio, il grafema "simbolo dell'euro" &euro; <!-- € --> può essere rappresentato con codice numerico decimale 8364 e con codice numerico esadecimale 20AC, quindi possiamo scrivere questo grafema sia con la notazione decimale ``&#8364;`` (con risultato &#8364;) sia con quella esadecimale ``&#x20AC;`` (con risultato &#x20AC;).

Anche gli emoticons e gli
[emoji](https://www.unicode.org/emoji/charts/full-emoji-list.html "Link alle specifiche degli emoji")
fanno parte della specifica Unicode, per cui possono essere rappresentati attraverso "HTML entities" o attraverso i punti di codice.

![Specifiche Unicode per gli emoji](/static/coding/web/html/unicode-emoji.png "Le Specifiche Unicode associano ad ogni emoji un codice univoco, un nome (con annesso significato) e visualizzano le possibili varianti")

Ad esempio, l'emoji "smiling face with halo" (faccia sorridente con aureola) è associata al codice numerico esadecimale 1F607, quindi possiamo scrivere questo emoji sia con la notazione decimale ``&#128519;`` (con risultato &#128519;) sia con la notazione esadecimale ``&#x1F607;`` (con risultato &#x1F607; <!-- 😇 -->).

Allo stesso modo, l'emoji "rolling on the floor laughing" (rotolando sul pavimento a ridere) è associata al codice numerico esadecimale 1F923, quindi possiamo scrivere questo emoji sia con la notazione decimale ``&#129315;`` (con risultato &#129315;) sia con la notazione esadecimale ``&#x1F923;`` (con risultato &#x1F923; <!-- 🤣 -->).

## Metodi di combinazione

Un primo metodo di combinazione dei grafemi è l'uso dei punti di codice detti **selezione di una variante**, che vanno da U+FE00 a U+FE0F. In particolare, i punti di codice U+FE0E ed U+FE0F sono specificamente utilizzati per selezionare le varianti di emoji.

Ad esempio, il grafema "forbici" &#x2702; è visualizzato dal punto di codice U+2702 e la sua variante &#x2702;&#xFE0F; è visualizzata usando la sequenza U+2702 + U+FE0F.

Un secondo metodo di combinazione dei grafemi è l'uso dei punti di codice detti **selezione del colore della pelle**, che vanno da U+1F3FB a U+1F3FF.

Ad esempio, il grafema "ballerina" &#x1F483; è visualizzato dal punto di codice U+1F483 e le varianti di colore della pelle sono U+1F483 + U+1F3FB &#x1F483;&#x1F3FB;, U+1F483 + U+1F3FC &#x1F483;&#x1F3FC;, U+1F483 + U+1F3FD &#x1F483;&#x1F3FD;, U+1F483 + U+1F3FE &#x1F483;&#x1F3FE; e U+1F483 + U+1F3FF &#x1F483;&#x1F3FF;.

Un terzo metodo di combinazione dei grafemi è l'uso del punto di codice U+200D detto **combinazione** o anche **Unione a larghezza zero**. Questo punto di codice deve essere inserito tra due emoji.

Ad esempio, il grafema "agricoltrice" &#x1F469;&#x200D;&#x1F33E; è visualizzato dalla sequenza di punti di codice U+1F469 (donna), U+200D (combinazione) e U+1F33E (riso).

Un quarto metodo di combinazione dei grafemi è l'uso dei punti di codice delle **lettere di indicazione regionale** che vanno da U+1F1E6 a U+1F1FF. Unendo due di questi punti di codice si ottiene una bandiera.

Ad esempio, il grafema "bandiera italiana" &#x1F1EE;&#x1F1F9; è visualizzato dalla sequenza di punti di codice U+1F1EE (lettera di indicazione regionale "i" rappresentata dal grafema &#x1F1EE;) e U+1F1F9 (lettera di indicazione regionale "t" rappresentata dal grafema &#x1F1F9;).

Un quinto metodo di combinazione dei grafemi è l'uso dei punti di codice del **tastierino numerico** U+FE0F + U+20E3. Unendo un numero (da zero a nove) con i due punti di codice U+FE0F + U+20E3 si ottiene numero racchiuso in un quadrato con lo stile del tastierino numerico; Vale anche per i caratteri "*" e "#".

Ad esempio, il grafema "cancelletto del tastierino numerico" #&#xFE0F;&#x20E3; è visualizzato dalla sequenza di punti di codice # + U+FE0F + U+20E3.

## Errori di progettazione ?

Unicode era nato per assegnare ad ogni singolo "carattere" un singolo valore numerico, ma non ha mantenuto questo obiettivo, dato che i singoli caratteri che l'utente visualizza, ovvero i grafemi, possono essere espressi come combinazioni di punti di codice.

Le regole che indicano le combinazioni di punti di codice non sono coerenti. Perché a volte si usa il punto di codice **combinazione** o **unione a larghezza zero** mentre altre volte si usa la **selezione del colore della pelle** ed altre ancora la **selezione di una variante**? Perché le combinazioni non sono tutte espresse con il punto di codice **combinazione**?

Le regole che indicano le combinazioni di punti di codice sono revisionate ad ogni nuova versione dello standard Unicode. Il continuo cambiamento comporta numerosi problemi di visualizzazione del testo, dato che lo stesso messaggio può essere visualizzato differentemente passando da una versione dello standard alla successiva.

Non tutti gli strumenti di scrittura e visualizzazione del testo gestiscono correttamente i grafemi, che dovrebbero essere trattati come entità inscindibili, ma numerosi strumenti per errore tentano di separare i singoli punti di codice portando a problemi di visualizzazione del messaggio.

Dato che due grafemi distinti possono visualizzare lo stesso "carattere", la ricerca di parole nel testo spesso non funziona. Non tutti gli strumenti di scrittura e visualizzazione del testo passano alla "forma normalizzata" descritta dallo standard Unicode prima di effettuare una ricerca.

Unicode è ancora legato alla localizzazione di chi scrive, lo stesso grafema può essere visualizzato in maniera molto differente a seconda che sia visualizzato su un computer con localizzazione Cinese, Giapponese o Koreana. E la localizzazione non può essere salvata in un messaggio Unicode.

Purtroppo alcune scelte risultano incomprensibili, ma lo standard Unicode è diffusissimo ed utilizzato ovunque, quindi bisogna conviverci e imparare a gestire queste situazioni utilizzando gli strumenti opportuni.
