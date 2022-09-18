---
type: "html"
title: "HTML Lez. 07 - Codifica UTF-8, HTML entities ed emoji"
description: "HTML Lez. 07 - Codifica UTF-8 delle pagine web, HTML entities ed emoji"
date: 2019-08-05
publishdate: 2019-08-05
lastmod: 2019-08-05
spellcheck: 2020-12-11
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 07 - Codifica UTF-8 delle pagine web, HTML entities ed emoji"
weight: 9370

references:
    -   title: "EditorConfig"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "/coding/tools/editorconfig/"
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

## UTF-8 UTF-16 e UTF-32

Il sistema Unicode utilizza 32 bit per codificare un carattere ed è tipicamente indicato con il nome **UTF-32** (Unicode Transformation Format, 32 bit). La lunghezza in bit di ogni carattere è fissa ed è di 4 byte.

Lo svantaggio nell'utilizzare la codifica UTF-32 è che un messaggio trasmesso con questa codifica è 4 volte più grande dello stesso messaggio trasmesso con codifica ASCII. Lo stesso discorso vale per la memorizzazione, che richiede il quadruplo della dimensione necessaria.

Per ovviare a questa problematica, sono nati due sistemi che prevedono la codifica dei caratteri Unicode in sequenze di bit di lunghezza variabile:

- **UTF-8** (Unicode Transformation Format, 8 bit) usa una lunghezza da 1 a 4 byte;
- **UTF-16** (Unicode Transformation Format, 16 bit) usa una lunghezza da 2 a 4 byte.

Dato che la maggior parte dei caratteri utilizzatati si trova nel piano multilinguistico base (BMP),codificando ogni carattere non con 32 bit, ma con 16 bit, si ottiene un risparmio considerevole. Nel caso nel messaggio siano presenti caratteri non appartenenti al BMP, allora questi saranno codificati con una lunghezza maggiore. Nel caso di caratteri latini, questi avranno una lunghezza media di 8 bit, con un notevole risparmio.

É importante che il documento HTML sia salvato con codifica UTF-8 in modo tale da poter inserire nel documento qualsiasi carattere o simbolo, dall'alfabeto cinese a quello arabo, dalle lingue morte come latino e greco ai simboli matematici, alle figure geometriche, fino agli emoticons ed emoji.

**Senza la codifica giusta, molti caratteri potrebbero non essere visualizzati nella pagina web**.

Una volta che le pagine web sono state salvate con la codifica giusta, è necessario indicarla nelle informazioni della pagina, all'interno dell'etichetta ``head``:

```html
<head>
    <meta charset="UTF-8">
</head>
```

## HTML entities ed emoji

Talvolta può capitare che i documenti debbano essere memorizzati in una codifica non Unicode oppure che l'uso di alcuni caratteri possa essere non consentito, quindi ci si deve affidare a rappresentazioni alternative per poterli includere.

Per quanto riguarda le pagine web, è stata progettata una rappresentazione alternativa, detta "HTML entities", dei caratteri più comuni che è al tempo stesso anche più intuitiva.

Le HTML entities codificano un carattere associandogli un codice mnemonico. La specifica delle HTML entities si trova al link [https://html.spec.whatwg.org/multipage/entities.json](https://html.spec.whatwg.org/multipage/entities.json "Link alla lista di HTML entities"). Tra le varie HTML entities elencate, troviamo ad esempio:

- gt = greater than, ovvero il simbolo di maggiore (&gt;);
- lt = lower than, ovvero il simbolo di minore (&lt;);
- minus = segno meno (&minus;);
- amp = ampersand, ovvero il simbolo di "e commerciale" (&amp;);
- quot = quotation mark, ovvero il simbolo di doppi apici (&quot;);
- apos = apostrophe, ovvero il simbolo di apostrofo (&apos;);
- … ;

Questi codici mnemonici devono essere sempre inseriti tra il simbolo ``&`` ed il simbolo ``;``, come negli esempi ``&minus;`` (con risultato &minus; <!-- − -->) ed ``&amp;`` (con risultato &amp; <!-- & -->).

Questa rappresentazione è stata poi estesa per permettere anche l'inserimento di un qualsiasi carattere Unicode, utilizzando il codice numerico associato al carattere sia in decimale che in esadecimale.

La rappresentazione di un carattere Unicode attraverso questo schema prevede che il codice numerico espresso in decimale sia inserito tra il simbolo ``&#`` ed il simbolo ``;``.

Se invece si vuole utilizzare il codice numerico del carattere espresso in esadecimale, allora deve essere inserito tra il simbolo ``&#x`` ed il simbolo ``;``.

Ad esempio, la lettera greca &Delta; <!-- Δ --> è associata al codice numerico decimale 916 ed al codice numerico esadecimale 394, quindi possiamo scrivere questo carattere sia con la notazione decimale ``&#916;`` (con risultato &#916;) sia con quella esadecimale ``&#x394;`` (con risultato &#x394;).

Altro esempio, il simbolo dell'euro &euro; <!-- € --> è associato al codice numerico decimale 8364 ed al codice numerico esadecimale 20AC, quindi possiamo scrivere questo carattere sia con la notazione decimale ``&#8364;`` (con risultato &#8364;) sia con quella esadecimale ``&#x20AC;`` (con risultato &#x20AC;).

Anche gli emoticons e gli
[emoji](https://www.unicode.org/emoji/charts/full-emoji-list.html "Link alle specifiche degli emoji")
fanno parte della specifica Unicode, per cui se la codifica del documento lo permette li si scrive direttamente, altrimenti li si include attraverso "HTML entities" (se presenti) o attraverso rappresentazione con codice decimale/esadecimale.

![Specifiche Unicode per gli emoji](/static/coding/web/html/unicode-emoji.png "Le Specifiche Unicode associano ad ogni emoji un codice univoco, un nome (con annesso significato) e visualizzano le possibili varianti")

Ad esempio, l'emoji "smiling face with halo" (faccia sorridente con aureola) è associata al codice numerico esadecimale 1F607, quindi possiamo scrivere questo carattere sia con la notazione decimale ``&#128519;`` (con risultato &#128519;) sia con la notazione esadecimale ``&#x1F607;`` (con risultato &#x1F607; <!-- 😇 -->).

Allo stesso modo, l'emoji "rolling on the floor laughing" (rotolando sul pavimento a ridere) è associata al codice numerico esadecimale 1F923, quindi possiamo scrivere questo carattere sia con la notazione decimale ``&#129315;`` (con risultato &#129315;) sia con la notazione esadecimale ``&#x1F923;`` (con risultato &#x1F923; <!-- 🤣 -->).
