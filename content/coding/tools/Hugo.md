---
type: "tools"
title: "Hugo"
description: "Hugo - An open-source static site generators"
date: 2020-04-21
publishdate: 2020-04-21
lastmod: 2020-04-21
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: true
toc: false
summary: "Hugo - An open-source static site generators"
---

# Hugo

[Hugo](https://gohugo.io/ "Sito web di Hugo") è un generatore di siti "statici". Un sito web statico ha le pagine web salvate in semplici file html, a differenza di un sito web dinamico, in cui le pagine web sono salvate in un database e gestite attraverso un CMS (Content Site Management).

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

I temi grafici che è possibile scegliere sono visualizzabili sul sito [Hugo Themes](https://themes.gohugo.io/ "Hugo - Sito web dei temi grafici"). Il tema scelto deve essere salvato all'interno della cartella ``themes`` del sito web.

Il tema può essere scaricato:

- sia come file compresso, quindi da estrarre nella cartella ``themes``;
- sia come sotto-modulo di ``git`` (utile per chi utilizza git), attraverso il comando:

```bash
git submodule add https://github.com/budparr/gohugo-theme-ananke.git themes/ananke
git submodule add https://github.com/bjacquemet/personal-web.git  themes/personal-web
git submodule add https://github.com/gcushen/hugo-academic.git  themes/hugo-academic
git submodule add https://github.com/alex-shpak/hugo-book.git  themes/hugo-book
```

Una volta salvato il tema, è importante prendere nota del nome effettivo del tema, che si trova nel file ``theme.toml``, inoltre è importante verificare che questo file si trovi effettivamente nella cartella:

```output
SITO_WEB/themes/TEMA_SCELTO/theme.toml
```

Scelto il tema e creato il contenuto, si passa alla configurazione di Hugo, modificando il file ``config.toml`` presente nella cartella principale del sito web. Le voci principali sono le seguenti:

```ini
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

Tutti i contenuti di Hugo devono essere situati nella cartella ``content``. Questa cartella ed ogni sottocartella devono avere un file ``_index.md`` contenente solo il **front-matter**, ovvero le proprietà della pagina.

Le proprietà possono essere espresse nel linguaggio:

- **TOML** nella forma ``chiave = valore`` e vanno racchiuse dai tre simboli ``+++``;
- **YAML** nella forma ``chiave : valore`` e vanno racchiuse dai tre simboli ``---``;
- **JSON** nella forma ``chiave : valore`` e vanno racchiuse dai simboli ``{`` e ``}``;

Bisogna prestare attenzione a salvare le stringhe tra doppi apici perchè non sono gestite automaticamente e causano errori.

Di seguito un esempio di proprietà in YAML:

```ini
---
type: "pagina"
title: "Titolo"
description: "Descrizione"
date: 2020-04-21
publishdate: 2020-04-21
expiryDate: 2020-05-21
lastmod: 2020-04-21
draft: false
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

Solo i contenuti che non sono bozze e che hanno una data di scrittura contenuta tra la data di pubblicazione e di scadenza saranno generati nella cartella di pubblicazione.

Le pagine del sito devono avere un nome che non inizi con il carattere ``_``, devono contenere il **front-matter** ed il contenuto espresso in linguaggio **HTML** oppure **Markdown**;

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

Impostate queste informazioni, automaticamente le informazioni da presentare sui social, quali data, titolo, descrizione, immagini o video, vengono incluse nelle pagine web. In ogni pagina è possibile indicare espressamente una di queste informazioni utilizzando la relativa proprietà del **front-matter**.

## Menu

Per aggiungere una pagina al menu, inserire nel **front-matter** le seguenti proprietà:

```ini
menu: "main"
linktitle: "Open Source"
```

La proprietà ``linktitle`` indica il testo da visualizzare nel menù, mentre la proprietà ``menu`` deve avere valore ``main`` indicante proprio il menu principale.

## Gestione sottomoduli di git

I sottomoduli di git vengono gestiti attraverso i comandi:

```bash
git submodule sync
git submodule init
git submodule update
git submodule foreach git pull origin master
```
