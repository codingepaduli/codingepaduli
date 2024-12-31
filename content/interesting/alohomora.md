---
type: "interesting"
title: "alohomora"
description: "alohomora"
date: 2024-11-10
publishdate: 2024-11-10
lastmod: 2024-11-10
categories: ["interesting"]
keywords: ["interesting"]
draft: false
toc: false
summary: "alohomora"
---

# alohomora

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

