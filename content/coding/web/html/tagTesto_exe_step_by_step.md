---
type: "html"
title: "HTML Lez. 03.1 - Creazione prima pagina web"
description: "HTML Lez. 03.1 - Creazione prima pagina web"
date: 2019-07-19
publishdate: 2019-07-19
lastmod: 2022-10-15
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: true
toc: false
summary: "HTML Lez. 03.1 - Creazione prima pagina web"
weight: 9734
---

# Creazione prima pagina web

## Crea la cartella

Click con il secondo tasto del mouse, nel menu a comparsa scegliere il menù "Nuovo" e poi scegliere la voce "nuova cartella"

![Crea cartella](/static/coding/web/html/tagTesto_exe_CreazioneCartella.png)

## Visualizza le estensioni dei file

Apriamo la cartella col doppio click, poi clicchiamo sul menu "visualizza" e ci assicuriamo che la voce "estensioni nomi file" sia selezionata.

![Menù visualizza](/static/coding/web/html/tagTesto_exe_EstensioniFile.png)

## Crea il file HTML

Click con il secondo tasto del mouse in uno spazio vuoto, scegliere il menù "Nuovo" e poi scegliere la voce "documento di testo"

![Creazione file HTML](/static/coding/web/html/tagTesto_exe_CreazioneFileHTML.png)

Inseriamo il nome del file seguito dall'estensione ``.html``

![Nome file HTML](/static/coding/web/html/tagTesto_exe_inserimentoNomeFileHTML.png)

Alla domanda di modifica dell'estensione, confermare.

![Conferma nome](/static/coding/web/html/tagTesto_exe_modificaEstensioneFileHTML.png)

## Scrivi il documento HTML

Click con il secondo tasto del mouse sul file appena creato e scegliamo la voce "Modifica con Notepad++"

![Modifica con Notepad++](/static/coding/web/html/tagTesto_exe_modificaFileHTML.png)

## Scrivi la struttura base del documento HTML

La struttura base del documento HTML è la seguente, copiamola nel file HTML:

```html
<!doctype html>
<html lang="it">
  <body>
  </body>
</html>
```

## Inserire il titolo della pagina web

Il titolo è indicato tra le etichette ``h1``:

```html
<h1>Sanremo</h1>
```

## Salva e visualizza la pagina web

Salviamo il file cliccando sulla terza icona partendo da sinistra, ha la forma quadrata co l'immagine del floppy.

![Salva file](/static/coding/web/html/tagTesto_exe_salvaEditorFileHTML.png)

Visualizziamo la pagina web effettuando un doppio click sul file che verrà visualizzato nel browser.

![Visualizza pagina web](/static/coding/web/html/tagTesto_exe_visualizzazionepaginaWeb.png)

## Inseriamo i contenuti

Strutturiamo la pagina in tre sezioni:

- Introduzione
- Serate
- Classifica

Per ogni sezione inseriamo un titolo di secondo livello, che saranno indicati con le etichette ``h2``:

```html
<h2>Introduzione</h2>

<h2>Serate</h2>

<h2>Classifica</h2>
```

Per ogni sezione, quindi sotto ogni titolo di secondo livello, inserisco anche un paragrafo descrittivo. Il paragrafo si crea con l'etichetta ``p``:

```html
<h2>Introduzione</h2>
<p>Il Festival di Sanremo è un festival musicale che si tiene ogni anno in Italia, a Sanremo, a partire dal 1951.</p>

<h2>Serate</h2>
<p>Il Festival è suddiviso in più serate, di cui l'ultima è la finale</p>

<h2>Classifica</h2>
<p>Le canzoni sono votate dal direttore artistico, dalla Commissione musicale del Festival e dal pubblico, in percentuali uguali.
```

Si salva nuovamente la pagina web, poi nel browser si aggiorna la pagina.

## Formattazione del testo

Inseriamo nella prima sezione un nuovo paragrafo con la frase "Il **Festival di Sanremo** è una *celebrazione* della musica italiana" inserendo lo stile grassetto e corsivo.

Lo stile grassetto si crea con l'etichetta ``strong``, mentre lo stile corsivo si crea con l'etichetta ``em``:

```html
<p>
  <strong>
    Il Festival di Sanremo
  </strong>
  è una 
  <em>celebrazione</em>
  della musica italiana.
</p>
```

Inseriamo nella prima sezione un nuovo paragrafo con la frase "La kermesse si tiene al teatro Ariston di Sanremo" inserendo lo stile sottolineato ed evidenziato.

Lo stile sottolineato si crea con l'etichetta ``u``, mentre lo stile evidenziato si crea con l'etichetta ``mark``:

```html
<p>
  <p>
    <u>La kermesse</u> si tiene al <mark>teatro Ariston</mark> di Sanremo.
  </p>
</p>
```

## Inseriamo la lista di cantanti

Inseriamo nella seconda sezione una lista di cantanti famosi che hanno partecipato alle serate di Sanremo.

Per creare la lista dobbiamo inserire l'etichetta ``ul``:

```html
<ul>

</ul>
```html

Ogni elemento della lista deve essere inserito nelle etichette ``li``:

```html
<ul>
  <li>Annalisa</li>
  <li>Geolier</li>
  <li>Angelina</li>
</ul>
```

## Creiamo la tabella della classifica

<!-- TODO -->