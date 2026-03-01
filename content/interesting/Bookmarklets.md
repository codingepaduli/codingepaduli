---
type: "interesting"
title: "Bookmarklets"
description: "Bookmarklets"
date: 2026-03-01
publishdate: 2026-03-01
lastmod: 2026-03-01
categories: ["interesting"]
keywords: ["interesting"]
draft: false
toc: false
summary: "Bookmarklets"
---

# Bookmarklets

## Alohomora - Show the hidden things

```javascript
javascript:(function() {
  const allElements = document.querySelectorAll('*');
  const hiddenElements = Array.from(allElements).filter(element => {
    return window.getComputedStyle(element).display === 'none';
  });
  hiddenElements.forEach(element => {
    element.style.display='block';
  });
})();
```

## iframe Remover

```javascript
javascript:(function() {
  let iframes = document.querySelectorAll("iframe");
  let parentElement;
  iframes.forEach(element => {
    parentElement = element.parentNode;
    parentElement.removeChild(element);
  });
})();
```

## Link viewer

```javascript
javascript:(function() {
  let links = document.querySelectorAll("a[href]");
  links.forEach(element => {
    console.log(element.href);
  });
})();
```

## Google Moduli checker

```javascript
javascript:(function() {
    let domande = document.querySelectorAll('#SchemaEditor > div > div:nth-child(n+2) > div > div > div > div [role="checkbox"]');

    let box = document.querySelectorAll('#SchemaEditor > div > div:nth-child(n+2) > div > div > div > div:has([role="checkbox"])');

    let risposteObbligatorie = document.querySelectorAll('#SchemaEditor > div > div:nth-child(n+2) > div > div > div > div [role="checkbox"][aria-checked="true"]');

    let counter=0;
    box.forEach(element => {
      counter++;
      let mandatoryNode = element.querySelector('[role="checkbox"][aria-checked="true"]');
      const regex = /. punt./;
      let points = Array.from(element.querySelectorAll(':not(:has(*))')).filter(child => regex.test(child.textContent));
      const header = document.createElement('h1');
      header.textContent = "Domanda: " + counter + " - obbligatoria: " + (mandatoryNode ? 'SI' : 'NO' ) + " punti " + (points.length === 1 ? points[0].textContent : " ");
      element.appendChild(header);
    }); 

    alert("Totale: " + box.length + " - obbligatorie: " + risposteObbligatorie.length);

})();
```

<!-- others -->
