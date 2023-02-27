---
type: "tools"
title: "Hugo"
description: "Hugo - An open-source static site generators"
date: 2020-04-21
publishdate: 2020-04-21
lastmod: 2020-04-21
weight: 1
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: true
toc: false
summary: "Hugo - An open-source static site generators"
---

# Hugo

[Hugo](https://gohugo.io/ "Sito web di Hugo") è un generatore di siti "statici". Un sito web statico ha le pagine web salvate in semplici file HTML, a differenza di un sito web dinamico, in cui le pagine web sono salvate in un database e gestite attraverso un CMS (Content Site Management).

## Creazione di un sito web

Hugo crea un nuovo sito web, ad esempio ``codingepaduli``, attraverso il comando:

```bash
hugo new site codingepaduli
```

Il sito creato è vuoto e senza uno stile grafico, per cui l'anteprima del sito è inutilizzabile. Anche aggiungendo un contenuto, senza un tema non viene mostrato nulla nell'anteprima.

Di conseguenza, i primi passi consistono nel creare una pagina web da utilizzare come esempio e nello scegliere un tema grafico.

Per creare una pagina ``index.html`` si può utilizzare il comando:

```bash
hugo new esempio.md
```

I temi grafici che è possibile scegliere sono visualizzabili sul sito [Hugo Themes](https://themes.gohugo.io/ "Hugo - Sito web dei temi grafici"). Il tema scelto deve essere salvato all'interno della cartella ``themes`` del sito web creato.

Il tema può essere scaricato:

- sia come file compresso, quindi da estrarre nella cartella ``themes``;
- sia come sotto-modulo di ``git`` (utile per chi utilizza git), come nei seguenti comandi:

```bash
git submodule add https://github.com/budparr/gohugo-theme-ananke.git themes/ananke
git submodule add https://github.com/bjacquemet/personal-web.git  themes/personal-web
git submodule add https://github.com/gcushen/hugo-academic.git  themes/hugo-academic
git submodule add https://github.com/alex-shpak/hugo-book.git  themes/hugo-book
```

Una volta salvato il tema, è importante prendere nota del nome effettivo del tema, che si trova nel file ``theme.toml``, inoltre è importante verificare che questo file si trovi effettivamente nella cartella:

```plaintext
SITO_WEB/themes/TEMA_SCELTO/theme.toml
```

Scelto il tema e creato il contenuto, si passa alla configurazione di Hugo, modificando il file ``config.toml`` presente nella cartella principale del sito web. Le voci principali sono le seguenti:

```toml
baseURL = "http://codingepaduli.github.io/"
languageCode = "it"
title = "Coding e Paduli"

theme = "ananke"
```

Le voci principali sono l'URL di base del sito web, il linguaggio utilizzato, il titolo ed il nome del tema da utilizzare (come indicato nelle istruzioni precedenti).

L'anteprima del sito avviene al link ``localhost:1313`` con il comando:

```bash
hugo server --debug --verbose --gc --buildDrafts --disableFastRender
```

Il sito web viene generato nella cartella ``public`` mediante il comando:

```bash
hugo --debug --verbose --gc
```

## Creazione contenuti

Tutti i contenuti di Hugo devono essere situati nella cartella ``content``. Questa cartella ed ogni sotto-cartella devono avere un file ``_index.md`` contenente solo il **front-matter**, ovvero le proprietà della pagina.

Le proprietà possono essere espresse nel linguaggio:

- **TOML** nella forma ``chiave = valore`` e vanno racchiuse dai tre simboli ``+++``;
- **YAML** nella forma ``chiave : valore`` e vanno racchiuse dai tre simboli ``---``;
- **JSON** nella forma ``chiave : valore`` e vanno racchiuse dai simboli ``{`` e ``}``;

Bisogna prestare attenzione a salvare le stringhe tra doppi apici perché possono causare errori di generazione della pagina.

Di seguito un esempio di proprietà in YAML:

```YAML
---
type: "pagina"
title: "Titolo"
description: "Descrizione"
date: 2020-04-21
publishdate: 2020-04-21
expiryDate: 2020-05-21
lastmod: 2020-04-21
draft: false
categories: ["coding", "blog"]
summary: "Descrizione"
---
```

Le proprietà principali sono:

- ``type`` indica un tipo di pagina;
- ``draft`` con valore ``true`` indica una bozza, con valore ``false`` indica un articolo da pubblicare;
- ``date`` indica la data di scrittura dell'articolo;
- ``publishdate`` indica la data di pubblicazione dell'articolo;
- ``expiryDate`` indica la data di scadenza dell'articolo;
- ``lastmod`` indica la data di ultima modifica;
- ``categories`` indica le categorie delle quale l'articolo fa parte.

Solo i contenuti che non sono bozze (in inglese "draft") e che hanno una data di scrittura contenuta tra la data di pubblicazione e di scadenza saranno generati nella cartella di pubblicazione.

Creato il file ``_index.md``, si può procedere alla creazione delle pagine del sito.

Ogni file creato nella cartella ``content``, a parte il file ``_index.md``, rappresenta una pagina del sito web e deve essere creata secondo le seguenti regole:

- deve avere un nome che non inizi con il carattere ``_``;
- deve contenere il **front-matter**;
- dopo il front-matter si può aggiungere il contenuto, che può essere espresso in linguaggio **HTML** oppure **Markdown**;

## Analytics e meta informations per social network

Hugo mette a disposizione dei template interni per disqus, google analytics, opengraph e twitter_cards.

Disqus e Google analytics forniscono le chiavi di identificazione per attivarli. Queste chiavi devono essere impostare nel file ``config.toml``:

```ini
disqusShortname = "yourdiscussshortname"
googleAnalytics = "UA-123-45"
```

I tag per i social si attivano impostando le seguenti informazioni nel file ``config.toml``:

```ini
opengraph = true                # Abilita OpenGraph se impostato a true
twitter_cards = true            # Abilita Twitter Cards se impostato a true
images = ["/static/wifi-5.svg"] # Immagini per Twitter Cards and OpenGraph
title = "My cool site"          # Titolo del sito
```

Impostatala configurazione, vengono automaticamente incluse nelle pagine web le informazioni da presentare sui social, quali data, titolo, descrizione, immagini o video. In ogni pagina è possibile indicare espressamente una di queste informazioni utilizzando la relativa proprietà del **front-matter**.

## Tipologie di pagine e ordinamento contenuti

In hugo ci sono diversi tipi di pagine, in particolare la tipologia "lista di articoli" e la tipologia "articolo". La homepage è un tipo di pagina, ma la si può considerare comunque come una "lista di articoli".

Una pagina della tipologia "lista di articoli" viene creata quando si crea il file ``_index.md`` nella cartella ``$SITE\content\`` o in una qualunque sottocartella.

Gli articoli mostrati nella pagina "lista di articoli" sono tutti quelli che si trovano nella stessa cartella del file ``_index.md`` e saranno ordinati per priorità secondo i seguenti parametri:
``weight`` > ``date`` > ``linktitle`` > FilePath.

Prima si ordina per il parametro ``weight``, poi per ``date``, poi per ``linktitle`` e poi per file path, seguendo l'ordinamento numerico o alfanumerico naturale (A–Z, 1–100) per i parametri numerici ed alfanumerici, e seguendo l'ordinamento cronologico inverso per le date (prima i nuovi articoli, poi quelli piú vecchi).

Per poter essere ordinato correttamente, un articolo deve avere impostate nel ``front-matter`` le proprietà appena elencate.

## Contenuti della Home Page

Per poter selezionare i contenuti della home page tra gli articoli creati, inserire nel file ``config.toml`` la seguente proprietà:

```toml
[params]
  mainSections = ["coding", "news", "shopping"]
```

In questo modo, gli articoli che fanno parte di una categoria compresa tra quelle elencate nella proprietà ``mainSections`` saranno visualizzati anche sulla home page.

Ad esempio, una pagina "page.md", con il seguente front-matter, comparirà tra gli articoli pubblicati sulla home page, perché fa parte della categoria ``coding`` che è tra quelle elencate in ``mainSections``.

```YAML
---
type: "pagina"
categories: ["coding", "blog"]
...
---
```

## Menu principale

Per aggiungere una pagina al menu, inserire nel **front-matter** di una pagina le seguenti proprietà:

```ini
menu: "main"
linktitle: "Open Source"
```

La proprietà ``linktitle`` indica il testo da visualizzare nel menù, mentre la proprietà ``menu`` deve avere valore ``main`` indicante proprio il menu principale.

Se si vuole aggiungere una intera categoria di pagine, queste proprietà possono essere aggiunte ad uno dei file ``_index.md``.

## Personalizzazione della configurazione

Si possono creare più ambienti di lavoro per il sito web, ad esempio in un ambiente di lavoro si può lavorare con il tema grafico scelto, in un altro ambiente di lavoro si può provare il sito con un tema grafico differente. Inoltre, è possibile che tutti gli ambienti condividano una configurazione predefinita (in inglese "default").

Per creare più ambienti di lavoro è necessario spostare il file di configurazione dal percorso ``SITO_WEB/config.toml`` al percorso ``SITO_WEB/config/_default/config.toml``. In questo modo, tutti gli ambienti di lavoro utilizzeranno questo file come configurazione predefinita.

Oltre alla configurazione predefinita, è possibile creare altri ambienti di lavoro, creando nella cartella ``SITO_WEB/config/`` altre cartelle, una per ogni nuovo ambiente da creare. In ogni cartella creata, è necessario creare il file ``config.toml`` contenente le proprietà che si intende aggiungere o sovrascrivere per il nuovo ambiente di lavoro.

Ad esempio, è possibile creare tre ambienti di lavoro, uno predefinito, uno chiamato "mainroad" ed un secondo chiamato "watercss", si realizza la seguente alberatura:

```plaintext
SITO_WEB
├── _default/config.toml
├── mainroad/config.toml
└── watercss/config.toml
```

Ogni ambiente può essere avviato specificando l'ambiente, ad esempio:

```bash
hugo server --environment watercss
```

Ipotizzando la seguente configurazione nel file ``mainroad/config.toml``:

```ini
theme = "mainroad"
publishDir = "public"
layoutDir = "layouts/mainroad"
```

Ipotizzando la seguente configurazione nel file``watercss/config.toml``:

```ini
theme = "watercss"
publishDir = "watercss-public"
layoutDir = "layouts/watercss"
```

Con le configurazioni precedenti, l'ambiente di lavoro "mainroad" utilizza il tema "mainroad", utilizza la cartella ``public`` per creare il sito web finale ed utilizza la cartella ``layouts/mainroad`` per la gestione dei template parziali.

Sempre con le configurazioni precedenti, l'ambiente di lavoro "watercss" utilizza il tema "watercss", utilizza la cartella ``watercss-public`` per creare il sito web finale ed utilizza la cartella ``layouts/watercss`` per la gestione dei template parziali.

Dato che entrambe le configurazioni non sovrascrivono il titolo del sito, questo sarà recuperato dalla configurazione predefinita che si trova nel file ``_default/config.toml``.

## Gestione dei modelli parziali del tema

I temi grafici si trovano nella cartella ``SITO_WEB/themes``. Ogni tema ha la sua cartella con, all'interno, il file di configurazione ``theme.toml`` ed una importante sotto-cartella ``layouts``.

Questa cartella ``layouts`` contiene a sua volta due cartelle, ``_default`` e ``partials``. La prima contiene i modelli (in inglese "template") **di base** con i quali le varie pagine del sito saranno trasformate in HTML, la seconda contiene i modelli **parziali** dei singoli componenti, ad esempio il modello per i commenti, il modello per la paginazione, ecc..

```plaintext
SITO_WEB
└── themes
    └── TEMA-SCELTO
        ├── theme.toml
        └── layouts
            ├── _default
            ├── main.html
            │   ├── baseof.html
            │   └── ...
            └── partials
                ├── comments.html
                ├── pagination.html
                └── ...
```

La cartella del tema non deve essere modificata. Per sovrascrivere un tema, è necessario copiare la cartella ``layouts`` presente all'interno del tema nella cartella ``SITO_WEB/layouts``.

Non è necessario copiare l'intera cartella, è possibile copiare anche solo il singolo file del modello parziale, rispettando però il percorso in cui si trova.

Ad esempio, per modificare il modello con cui sono creati i commenti, nella cartella ``SITO_WEB/layouts`` è necessario creare la sotto-cartella ``partials`` e poi copiare all'interno di quest'ultima il file ``comments.html`` dalla cartella del tema.

Attenzione, se si lavora con più ambienti di lavoro, si può aver sovrascritto il percorso della cartella ``layouts``, ad esempio con la configurazione

```ini
layoutDir = "layouts/mainroad"
```

In questo caso, è nella cartella ``layouts/mainroad`` che si deve lavorare.

## Shortcodes

Non tutti i componenti della pagina vengono gestiti attraverso i modelli parziali. Alcuni componenti sono gestiti attraverso gli "shortcodes", cioè attraverso delle abbreviazioni.

Queste abbreviazioni evitano la presenza di codice HTML nel file Markdown. Inoltre, permettono la gestione centralizzata di tutti i componenti dello stesso tipo.

Ad esempio, per includere video, tweet, si può usare una delle abbreviazioni già fornite da Hugo, includendola nella pagina del contenuto con:

```html
{{ < tweet 877500564405444608 > }}
```

Per una lista di tutti gli Shortcodes già disponibili di Hugo si rimanda alla documentazione ufficiale.

Se si vuole creare nuove abbreviazioni personalizzate, queste devono essere posizionate nella cartella ``layouts/shortcodes``. Si rimanda alla documentazione ufficiale per le regole di creazione di nuovi Shortcodes.

## Code highlighting

Per visualizzare i vari linguaggi supportati dal motore GoldMark (che processa i file ``,md`` e che si basa su Chroma per il code highlight), guardare al link:

[https://github.com/alecthomas/chroma#supported-languages](https://github.com/alecthomas/chroma#supported-languages "https://github.com/alecthomas/chroma#supported-languages")

## Gestione sottomoduli di git

I sottomoduli di git vengono gestiti attraverso i comandi:

```bash
git submodule sync
git submodule init
git submodule update
git submodule foreach git pull origin master
```
