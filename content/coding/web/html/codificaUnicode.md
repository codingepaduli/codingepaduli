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
    -   title: "The Unicode Standard - Core Specification"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://www.unicode.org/versions/latest/core-spec/"
        description: "The Unicode Standard - Core Specification"
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
    -   title: "Whitespace character"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://en.wikipedia.org/wiki/Whitespace_character"
        description: "A list of whitespace character"
    -   title: "HTML entity references"
        disableNextLineWorkaround: <!-- markdown-link-check-disable-next-line -->
        link: "https://en.wikipedia.org/wiki/List_of_XML_and_HTML_character_entity_references"
        description: "List of XML and HTML character entity references"
---

# Codifica Unicode

Nelle prime fasi dello sviluppo di internet, all'incirca del 1963, le comunicazioni si avvalevano del codice ASCII a 7 bit che si basa su 95 caratteri stampabili, come i numeri, lettere ed i simboli di punteggiatura, e dai restanti caratteri di controllo, come l'invio a capo e la tabulazione, che servivano a controllare le telescriventi dell'epoca.

Il codice ASCII non era un vero e proprio standard in quanto con l'estendersi della rete internet molte nazioni iniziarono ad adattarlo per includere quei caratteri che non facevano parte dell'alfabeto USA, ad esempio il Canada sostituì alcuni caratteri con quelli francesi, la Gran Bretagna aggiunse il simbolo della sterlina. Nel mondo iniziarono ad adottare delle codifiche simili all'ASCII, ad esempio in India si utilizzo la codifica ISCII mentre in Vietnam la codifica VISCII.

Questi adattamenti portarono notevoli problemi di incompatibilità nel trasferimento delle informazioni, ad esempio via email, perché i caratteri inviati con il sistema di codifica del mittente venivano ricevuti ed interpretati utilizzando il sistema di codifica del ricevente, che era differente. Nel concreto, un messaggio contenente il simbolo della sterlina e lettere accentate inviato usando la codifica ASCII, una volta ricevuto ed interpretato da un sistema che utilizzava la codifica VISCII poteva risultare con il simbolo della sterlina sostituito con quello della moneta del Vietnam e con i caratteri accentati sostituiti dai simboli da quelli di punteggiatura del sistema VISCII.

Nel tentativo di realizzare un sistema che potesse codificare qualsiasi carattere esistente di qualsiasi alfabeto, si crearono diversi standard, come la codifica ASCII a 8 bit e successive codifiche ISO prima a 12 bit, poi a 16 e così via, fino alla nascita del consorzio Unicode, un'organizzazione che aveva lo scopo di coordinare questi lavori.

La prima versione del sistema Unicode nacque nel 1991, un sistema di codifica dei caratteri progettato per supportare a livello internazionale lo scambio, l'elaborazione e la visualizzazione dei testi scritti in linguaggi diversi, compresi i linguaggi tecnici delle varie discipline e le lingue morte.

La Codifica Unicode è progettata per essere:

- Universale: deve includere tutti i caratteri utilizzati nelle codifiche internazionali, nazionali e di settore;
- Efficiente: la codifica è in formato testuale, facile da analizzare, senza stati o "sequenze di escape" speciali, che consente una rapida sincronizzazione dei caratteri in un flusso di testo. Ordinamento, ricerca, visualizzazione e modifica del testo devono essere efficienti.
- Univoco: ogni carattere deve essere interpretato univocamente.

Il sistema Unicode assegna ad ogni carattere, numero, segno di punteggiatura o segno diacritico **un numero univoco in formato esadecimale**, detto **punto di codice** che è utilizzato per identificare il carattere.

Nella specifica Unicode, il **punto di codice** è l'unità atomica di informazione ed è identificata da **un numero univoco in formato esadecimale** indicato nella forma **U+numeroEsadecimale**.

Ad esempio il punto di codice "U+0079" è utilizzato per identificare la "lettera &#x0079;" <!-- lettera y --> ed il punto di codice "U+0039" è utilizzato per identificare il "numero &#x0039;" <!-- numero 9 -->.

Nel sistema Unicode i caratteri, identificati dai punti di codice, sono trattati come entità astratte, come "LATIN CAPITAL LETTER A" o "BENGALI DIGIT FIVE".

Il termine **glifo** si riferisce invece al segno visivo che appare su uno schermo o su carta, un glifo è quindi una rappresentazione grafica concreta del carattere, ciò che gli utenti vedono e riconoscono visivamente.

**Il sistema Unicode non definisce la forma, la dimensione o la formattazione dei caratteri visualizzati su schermo o su carta, quindi non indica come disegnare i glifi.**. Questo compito è demandato ai software di scrittura e stampa, che utilizzano i "font" (termine usato in contesto tipografico) di caratteri per definire le proprietà grafiche dei caratteri.

Le specifiche Unicode forniscono istruzioni dettagliate e una vasta quantità di dati riguardanti la gestione del testo, in particolare:

- Divisione delle parole e interruzione delle righe: informazioni per gestire correttamente la separazione delle parole e delle righe in modo che il testo appaia leggibile e ben formattato;
- Ordinamento del testo in diverse lingue: informazioni su come ordinare correttamente il testo in base alle regole specifiche di ciascuna lingua, tenendo conto delle differenze culturali e linguistiche;
- Formattazione di numeri, date e orari: informazioni su come formattare correttamente numeri, date e orari in modo che siano appropriati per diverse località, rispettando le convenzioni locali;
- Visualizzazione del testo per lingue con scrittura da destra a sinistra: indicazioni su come visualizzare correttamente il testo in lingue come l'arabo o l'ebraico, che si scrivono da destra a sinistra;
- Gestione del testo con forme scritte che si dividono, combinano e riordinano: Le specifiche affrontano le complessità delle lingue del Sud Asia, dove i caratteri possono cambiare forma e posizione a seconda del contesto;
- Sicurezza riguardo ai caratteri simili: Viene trattata la questione della sicurezza, in particolare per quanto riguarda i caratteri che possono sembrare simili tra loro provenienti da diversi sistemi di scrittura, il che è cruciale per evitare confusione e potenziali problemi di sicurezza.

I punti di codice sono divisi in queste categorie:

- Grafici: Lettere, segni, numeri, punteggiatura, simboli e spazi;
- Formattazione: caratteri invisibili ma che influiscono sui caratteri vicini; un esempio sono i separatori di linea e di paragrafo;
- Controllo: sono definiti da protocolli o standard esterni al Sistema Unicode. Sono definiti in due intervalli specifici:
  1. da U+0000 a U+001F (codici di controllo C0) per compatibilità con il sistema ASCII;
  2. da U+007F a U+009F (codici di controllo C1) per compatibilità con il set di caratteri ISO/IEC 8859;
- Uso privato: uso definito da accordi privati al di fuori del Sistema Unicode; Sono definiti in tre intervalli specifici:
  1. da U+E000 a U+F8FF (Primary Private Use Area);
  2. da U+100000 a U+100FFF (Supplementary Private Use Area A - Supplemental Multilingual Plane);
  3. da U+200000 a U+2FFFFF (Supplementary Private Use Area A - Supplemental Ideographic Plane);
- Surrogati: Riservati solo ed esclusivamente alla codifica UTF-16; Definiti nell'intervallo da U+D800 a U+DFFF;
- Non character: Riservati per uso interno; Definiti nell'intervallo da U+FDD0 a U+FDEF più tutti i caratteri terminanti con codifica FFFE ed FFFF;
- Riservato, interscambio ristretto: Riservato per future assegnazioni.

## Piani di codifica

Attualmente il codice Unicode prevede 17 piani di codifica, ma solo 3 sono utilizzati, 11 sono inutilizzati e 3 sono riservati ad uso privato. I piani di codifica sono:

1. piano multilinguistico base (BMP) con caratteri identificati nell'intervallo da U+000000 ad U+00​FFFF;
2. piano multilinguistico supplementare (SMP) con caratteri identificati nell'intervallo da U+010000 ad U+01FFFF;
3. piano del codici ideografici supplementari (SIP) con caratteri identificati nell'intervallo da U+020000 ad U+02FFFF;
4. dodici piani di codifica non utilizzati, da U+030000 a U+0EFFFF;
5. due piani di codifica supplementari ad uso privato, il piano 16 da U+0F0000 a U+0FFFFF ed il piano 17 da U+100000 ad U+10FFFF;

Attualmente solo 21 bit sono utilizzati per identificare i caratteri, con l'ultimo carattere dell'ultimo piano di codifica identificato da U+10FFFF, che codificato in binario da ``0001 0000 1111 1111 1111 1111``.

Il BMP contiene quasi tutti i sistemi di scrittura utilizzati, come l'arabo, il cirillico, l'esperanto, il greco, il latino, il mongolo, il thailandese, il persiano, il fenicio, il runico, la scrittura cuneiforme e tanti altri. Per ogni sistema di scrittura sono presenti i nomi (con annesso significato) di ogni carattere, il corrispondente codice numerico assegnato e le possibili varianti del carattere.

Ad esempio per il sistema di scrittura latino, si ha:

![Specifiche Unicode del sistema latino](/static/coding/web/html/unicode-basic-latin.png "Le Specifiche Unicode associano ad ogni carattere del sistema latino un codice univoco")

Nel dettaglio sono riportati i nomi (con annesso significato) di ogni carattere e le possibili varianti, come ad esempio la lettera "C" che come variante ha il simbolo dei gradi centigradi:

![Specifiche Unicode del sistema latino in dettaglio](/static/coding/web/html/unicode-basic-latin-details.png "Le Specifiche Unicode indicano il nome di ogni carattere e le possibili varianti")

Nel piano multilinguistico base (BMP) si trova, per questioni di compatibilità, il Basic Latin Unicode block, una volta chiamato ASCII block, che contiene i 128 caratteri del codice ASCII a 7 bit e che sono rappresentati da U+0000 ad U+007F. Il Basic Latin Unicode block è così composto:

|    | U+000x | U+001x | U+002x | U+003x | U+004x | U+005x | U+006x | U+007x |
|----|--------|--------|--------|--------|--------|--------|--------|--------|
| 0  | NUL    | DLE    |  SP    | 0      | @      | P      | `      | p      |
| 1  | SOH    | DC1    | !      | 1      | A      | Q      | a      | q      |
| 2  | STX    | DC2    | "      | 2      | B      | R      | b      | r      |
| 3  | ETX    | DC3    | #      | 3      | C      | S      | c      | s      |
| 4  | EOT    | DC4    | $      | 4      | D      | T      | d      | t      |
| 5  | ENQ    | NAK    | %      | 5      | E      | U      | e      | u      |
| 6  | ACK    | SYN    | &      | 6      | F      | V      | f      | v      |
| 7  | BEL    | ETB    | '      | 7      | G      | W      | g      | w      |
| 8  |  BS    | CAN    | (      | 8      | H      | X      | h      | x      |
| 9  |  HT    |  EM    | )      | 9      | I      | Y      | i      | y      |
| A  |  LF    | SUB    | *      | :      | J      | Z      | j      | z      |
| B  |  VT    | ESC    | +      | ;      | K      | [      | k      | {      |
| C  |  FF    |  FS    | ,      | <      | L      | \      | l      | \|     |
| D  |  CR    |  GS    | -      | =      | M      | ]      | m      | }      |
| E  |  SO    |  RS    | .      | >      | N      | ^      | n      | ~      |
| F  |  SI    |  US    | /      | ?      | O      | _      | o      | DEL    |

Nel Basic Latin Unicode block si possono notare:

- i codici di controllo, rappresentati da U+0000 to U+001F e dal singolo U+007F;
- i numeri da 0 a 9, rappresentati da U+0030 to U+0039;
- le lettere maiuscole, rappresentate da U+0041 to U+005A;
- le lettere minuscole, rappresentate da U+0061 to U+007A;
- simboli e punteggiatura, rappresentati dagli altri codici numerici.

## Grafemi come sequenza di punti di codice

Un **grafema** è un'unità minima di un sistema di scrittura che rappresenta un suono o un'idea ed ha una propria funzione linguistica. Ad esempio la lettera "a" (con lo stesso suono) oppure le combinazioni di caratteri come "ch", "gn" e "sc" che formano i suoni come "chi", "gnu" e "sci". I grafemi "ch", "gn" e "sc" sono rappresentati da due glifi, ma rappresentano un solo grafema. Una lettera accentata è tipicamente considerata un grafema perché rappresenta un suono specifico e ha un significato proprio nel contesto linguistico.

Nella standard Unicode un grafema può essere individuato da una sequenza di uno o più punti di codice che possono essere visualizzati insieme come una singola unità grafica. In questo contesto si parla di **gruppo di grafemi** o **cluster di grafemi** ed è specificato che **un grafema o un cluster di grafemi devono essere considerati unità indivisibili nei processi di visualizzazione e manipolazione del testo**, al fine di mantenerne il significato e l'integrità , poiché la divisione dei singoli punti di codice potrebbe portare a una rappresentazione o interpretazione errata o confusa del testo.

Di seguito vediamo come un grafema o un cluster di grafemi può essere realizzato con una sequenza di punti di codice:

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

Dato che in Unicode esiste più di un modo per rappresentare un grafema, esiste la **forma normalizzata** che consente di capire se due grafemi (o cluster di grafemi) sono equivalenti e di conseguenza se due frasi lo sono.

## Unicode Transformation Format (UTF)

Il sistema Unicode utilizza 32 bit per codificare un punto di codice ed è tipicamente indicato con il nome **UTF-32** (Unicode Transformation Format, 32 bit). La lunghezza in bit di ogni punto di codice è fissa ed è di 4 byte.

Lo svantaggio nell'utilizzare la codifica UTF-32 è che un messaggio trasmesso con questa codifica è 4 volte più grande dello stesso messaggio trasmesso con codifica ASCII ad 8 bit. Lo stesso discorso vale per la memorizzazione, che richiede il quadruplo della dimensione necessaria.

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
- se si utilizza il valore numerico espresso in formato esadecimale, allora è necessario inserirlo tra il simbolo ``&#x`` ed il simbolo ``;``.

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

### Caratteri invisibili

Molti caratteri non hanno una rappresentazione visibile e possono essere problematici perché possono causare spazi o righe vuote inaspettate, problemi nella ricerca di parole o frasi e problemi nella formattazione e nella lettura del testo. Di seguito sono elencati alcuni di questi caratteri:

- U+0009: tabulazione orizzontale (Horizontal Tab ``&Tab;``);
- U+000A: fine riga (Line Feed ``&NewLine;``);
- U+000B: tabulazione verticale (Vertical Tab) è un fine riga;
- U+000C: interruzione di pagina (Form Feed) è un fine riga;
- U+000D: fine riga (Carriage Return) è un fine riga;
- U+0020: Spazio;
- U+0085: Interruzione di riga;
- U+00A0: Spazio che impedisce la divisione di parola (No-Break Space);
- U+00AD: Trattino di sillabazione (syllable hyphen) per spezzare una parola e andare a capo, è visibile solo se la parola si trova a fine riga e viene divisa in sillabe per andare a capo;
- da U+2000 a U+200A: spazi a larghezza variabile;
- U+200B: Spazio a "larghezza zero" (zero-width space);
- U+200E: Indicatore di direzione del testo da sinistra a destra (Left-to-right mark);
- U+200F: Indicatore di direzione del testo da destra a sinistra (Right-to-left mark);
- U+2028: Separatore di riga (Line Separator);
- U+2029: Separatore di paragrafo (Paragraph Separator);
- U+205F: Spazio matematico (medium mathematical space);
- U+3000: Spazio usato con caratteri ideografici (ideographic space);
- U+FEFF: Byte Order Mark;

Se scriviamo nel seguente modo la frase:

Al``&#x200B;``fa``&#x00A0;``be``&#x00AD;``t``&#x200E;&#x200F;``o clas``&#x200A;``sico;

il risultato sarà:

Al&#x200B;fa&#x00A0;be&#x00AD;t&#x200E;&#x200F;o clas&#x200A;sico

ma per gli strumenti di ricerca testo, lettura e scrittura sarà difficile la ricerca delle parole "alfa" e "classico".

## Unicode e byte-order mark (BOM)

I sistemi di memorizzazione dati, di trasmissione, di codifica e decodifica utilizzano modalità differenti per immagazzinare in memoria dati testuali e per trasmetterli. In particolare i caratteri rappresentati con una dimensione maggiore di un byte (stringhe multi-byte di caratteri) sono soggetti alla codifica "Big Endian" o "Little Endian":

- nella codifica **little-endian** la memorizzazione/trasmissione inizia dal byte più meno (estremità più piccola) per finire col meno significativo. L'ordine di memorizzazione/invio dei dati è detto ordine little-endian.
- nella codifica **big-endian** la memorizzazione/trasmissione inizia dal byte più significativo (estremità più grande) per finire col meno significativo. L'ordine di memorizzazione/invio dei dati è detto ordine big-endian. Dato che la codifica **big-endian** è stato scelta come standard in molti protocolli utilizzati in Internet, l'ordine big-endian è anche detto **network byte order**;

Prendiamo ad esempio il valore esadecimale ``0x01234567``:

- nella codifica **big-endian** sarà memorizzato/trasmesso come ``0x01``|``0x23``|``0x45``|``0x67``;
- nella codifica **little-endian** sarà memorizzato/trasmesso come ``0x67``|``0x45``|``0x23``|``0x01``.

Per distinguere le due codifiche, il primi byte memorizzati o trasmessi sono quelli del carattere Unicode ``U+FEFF`` detto **Byte Order Mark** (BOM). Prendiamo nuovamente ad esempio il valore esadecimale ``0x01234567``:

- nella codifica **big-endian** sarà memorizzato/trasmesso come ``0xFE``|``0xFF``|``0x01``|``0x23``|``0x45``|``0x67``;
- nella codifica **little-endian** sarà memorizzato/trasmesso come ``0xFF``|``0xFE``|``0x67``|``0x45``|``0x23``|``0x01``.

L'uso del BOM non è consigliato, ma molti editor di testi lo aggiungono automaticamente all'inizio di un file, come ad esempio fa Notepad su Windows; altri editor permettono di scegliere se aggiungere il BOM o meno, ad esempio Visual Studio Code:

![Codifica UTF-8 con BOM](/static/coding/web/html/codificaUnicode_UTF8_with_BOM.png "Codifica UTF-8 con BOM")

<!-- TODO to add
I termini big-endian e little-endian derivano dai nomi di due popolazioni che abitavano nelle favolose isole di Lilliput e Blefuscu nel romanzo I viaggi di Gulliver di Jonathan Swift. Queste erano entrate in rivalità per il modo in cui aprivano le uova - rompendo la punta o il fondo: a Lilliput, per editto dell'imperatore il cui figlio una volta si tagliò aprendo un uovo dall'estremità più grande, fu ordinato di aprire le uova dall'estremità più piccola (little endians); a Blefuscu si rifugiarono gli oppositori che volevano conservare la tradizione di rompere le uova dall'estremità più grande (big endians). A causa di questa differenza e della sua legittimazione imperiale era scoppiata tra le due isole una guerra sanguinosa. 
-->
