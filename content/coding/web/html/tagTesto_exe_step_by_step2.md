---
type: "html"
title: "HTML Lez. 03.2 - Esercitazione pagina web auto leggendarie con formattazione testo"
description: "HTML Lez. 03.2 - Esercitazione pagina web auto leggendarie con formattazione testo"
date: 2026-09-19
publishdate: 2026-09-19
lastmod: 2026-09-19
categories: ["coding", "web", "HTML"]
keywords: ["coding", "web", "HTML"]
draft: false
toc: false
summary: "HTML Lez. 03.2 - Esercitazione pagina web auto leggendarie con formattazione testo"
weight: 9734
---

# Creazione pagina web con formattazione testo

## Passi fondamentali

Per creare la pagina web si deve sempre ripartire dai passi fondamentali indicati nell'esercitazione [Creazione prima pagina web](/coding/web/html/tagTesto_exe_step_by_step.md).

La struttura base del documento HTML deve essere sempre la stessa, con l'accortezza di personalizzare il titolo della pagina web:

```html
<!doctype html>
<html lang="it">
  <body>
    <h1>Auto leggendarie</h1>
  </body>
</html>
```

## I contenuti

La pagina web può essere strutturata in più sezioni, ognuna con il suo titolo ed i suoi paragrafi.

Supponiamo di volere creare una sezione con titolo e descrizione per ogni auto leggendaria indicata nel seguente elenco:

- **Ferrari 250 GT Spider California**: una cabriolet sportiva ed elegante pensata soprattutto per il mercato americano;
- **Alfa Romeo 33 Stradale**: Versione stradale dell'omonima vettura da competizione, ne furono realizzate solo 18 esemplari. E' caratterizzata da porte ad apertura a farfalla e motore centrale posteriore;
- **Dodge Charger**: un’icona cinematografica e televisiva con aspetto aggressivo e carrozzeria con profilo a bottiglia di Coca-Cola;
- **Bugatti Type 57 SC Atlantic**: progettata da Jean Bugatti, ne furono costruiti soltanto quattro esemplari, rendendola una delle automobili più preziose al mondo;
- **DeLorean DMC-12 (1981)**: Prima e unica automobile prodotta dalla DeLorean Motor Company. E' l'auto utilizzata nel film "Ritorno al futuro"..

Tutti i contenuti devono essere inseriti dopo il titolo di primo livello ``<h1>Auto leggendarie</h1>``.

Per ogni sezione inseriamo un titolo di secondo livello, indicato con le etichette ``h2``:

```html
<h1>Auto leggendarie</h1>

<h2>Ferrari 250 GT Spider California</h2>

<h2>Alfa Romeo 33 Stradale</h2>

<h2>Dodge Charger</h2>

<h2>Bugatti Type 57 SC Atlantic</h2>

<h2>DeLorean DMC-12 (1981)</h2>
```

Salviamo nuovamente la pagina web, poi nel browser la aggiorniamo, il risultato è il seguente:

![Auto leggendarie](/static/coding/web/html/tagTesto_exe_auto_1.png)

Dopo ogni titolo di secondo livello inserisco uno o piu paragrafi descrittivi. Il paragrafo si crea con l'etichetta ``p``:

```html
<h1>Auto leggendarie</h1>

<h2>Ferrari 250 GT Spider California</h2>
<p>Una cabriolet sportiva ed elegante pensata soprattutto per il mercato americano</p>

<h2>Alfa Romeo 33 Stradale</h2>
<p>Versione stradale dell'omonima vettura da competizione, ne furono realizzate solo 18 esemplari.</p>
<p>E' caratterizzata da porte ad apertura a farfalla e motore centrale posteriore.</p>

<h2>Dodge Charger</h2>
<p>Un’icona cinematografica e televisiva con aspetto aggressivo e carrozzeria con profilo a bottiglia di Coca-Cola.</p>

<h2>Bugatti Type 57 SC Atlantic</h2>
<p>Progettata da Jean Bugatti, ne furono costruiti soltanto quattro esemplari, rendendola una delle automobili più preziose al mondo</p>

<h2>DeLorean DMC-12 (1981)</h2>
<p>Prima e unica automobile prodotta dalla DeLorean Motor Company. E' l'auto utilizzata nel film "Ritorno al futuro".</p>
```

Salviamo nuovamente la pagina web, poi nel browser la aggiorniamo, il risultato è il seguente:

![Auto leggendarie](/static/coding/web/html/tagTesto_exe_auto_2.png)

## Formattazione del testo

Applichiamo la formattazione del testo ai paragrafi.

Lo stile grassetto si crea con l'etichetta ``strong``, lo stile corsivo si crea con l'etichetta ``em``, lo stile sottolineato con l'etichetta ``u``, lo stile evidenziato con l'etichetta ``mark``
Certo: la formattazione va applicata alle parole nei paragrafi, non nei titoli. Ecco la versione corretta:

```html
<h1>Auto leggendarie</h1>

<h2>Ferrari 250 GT Spider California</h2>
<p>Una <mark>cabriolet</mark> <strong>sportiva</strong> ed elegante pensata <u>soprattutto</u> per il <em>mercato americano</em>.</p>

<h2>Alfa Romeo 33 Stradale</h2>
<p>Versione stradale dell'omonima vettura da <mark>competizione</mark>, ne furono realizzati solo <strong>18 esemplari</strong>.</p>
<p>È caratterizzata da porte ad apertura a <u>farfalla</u> e motore <em>centrale posteriore</em>.</p>

<h2>Dodge Charger</h2>
<p>Un’<strong>icona cinematografica e televisiva</strong> con aspetto <mark>aggressivo</mark> e carrozzeria con profilo a <em>bottiglia di Coca-Cola</em>.</p>

<h2>Bugatti Type 57 SC Atlantic</h2>
<p>Progettata da <mark>Jean Bugatti</mark>, ne furono costruiti soltanto <strong>quattro esemplari</strong>, rendendola una delle automobili <u>più preziose al mondo</u>.</p>

<h2>DeLorean DMC-12 (1981)</h2>
<p>Prima e unica automobile prodotta dalla <u>DeLorean Motor Company</u>. È l'auto utilizzata nel film <mark>“Ritorno al futuro”</mark>.</p>
```

Salviamo nuovamente la pagina web, poi nel browser la aggiorniamo, il risultato è il seguente:

![Auto leggendarie](/static/coding/web/html/tagTesto_exe_auto_3.png)
