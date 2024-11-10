---
type: "interesting"
title: "iframe Remover"
description: "iframe Remover"
date: 2024-11-10
publishdate: 2024-11-10
lastmod: 2024-11-10
categories: ["interesting"]
keywords: ["interesting"]
draft: false
toc: false
summary: "iframe Remover"
---

# iframe Remover

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
