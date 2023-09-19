---
type: "css"
title: "CSS "
description: "Il linguaggio CSS"
date: 2023-09-19
publishdate: 2023-09-19
lastmod: 2023-09-19
categories: ["coding", "web", "CSS"]
keywords: ["coding", "web", "CSS"]
draft: true
toc: false
summary: "Il linguaggio CSS, l'evoluzione e le caratteristiche"
---

# Il linguaggio CSS

Il linguaggio CSS (Cascading Style Sheets) è un linguaggio di fogli di stile utilizzato per descrivere l'aspetto di un documento HTML o XML. È uno dei principali linguaggi del World Wide Web ed è standardizzato dal W3C.

Il linguaggio CSS è nato nel 1994 con lo scopo di separare il contenuto (in HTML) dallo stile da applicare e con il tempo si è evoluto in tre revisioni (CSS1, CSS2 e CSS3) che hanno aggiunto sempre più funzionalità.

Nonostante la sua relativa facilità d'uso, CSS richiede tempo per essere appreso correttamente, soprattutto per quanto riguarda le sue funzionalità più avanzate.

## Fogli di stile per principianti

Esistono numerosi stili CSS già pronti per l'utilizzo, è necessario solamente indicarli nella pagina HTML. Si può scegliere ad esempio uno dei seguenti:

W3C Core - Modernist:

```html
<link rel="stylesheet" href="https://www.w3.org/StyleSheets/Core/Modernist" type="text/css">
```

W3C Core - Chocolate

```html
<link rel="stylesheet" href="https://www.w3.org/StyleSheets/Core/Chocolate" type="text/css">
```

MVP CSS

```html
<link rel="stylesheet" href="https://unpkg.com/mvp.css"> 
```

Si può anche scegliere uno stile da un menu a tendina, inserendo in pagina il codice seguente:

```html
<script src="https://dohliam.github.io/dropin-minimal-css/switcher.js" type="text/javascript"></script>
```

Esempio di CSS

```css
/* Un esempio di codice CSS */
body {
  background-color: #f0f0f0;
  font-family: Arial, sans-serif;
}

h1 {
  color: #333;
}

p {
  color: #666;
}
```
