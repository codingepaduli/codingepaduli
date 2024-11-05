---
type: "interesting"
title: "Google Moduli checker"
description: "Google Moduli checker"
date: 2024-10-30
publishdate: 2024-10-30
lastmod: 2024-10-30
categories: ["interesting"]
keywords: ["interesting"]
draft: false
toc: false
summary: "Google Moduli checker"
---

# Google Moduli checker

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