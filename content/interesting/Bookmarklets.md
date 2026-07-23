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

Visualizza tutti gli elementi nascosti.

```javascript
javascript:(function() {
  const allElements = document.querySelectorAll('*');
  /* di tutti gli elementi, filtra quelli con display 'none' */
  const hiddenElements = Array.from(allElements).filter(element => {
    return window.getComputedStyle(element).display === 'none';
  });
  hiddenElements.forEach(element => {
    element.style.display='block';
  });
})();
```

## iframe Remover

Rimuove tutti gli iFrame.

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

Visualizza tutti i link nella console.

```javascript
javascript:(function() {
  let links = document.querySelectorAll("a[href]");
  links.forEach(element => {
    console.log(element.href);
  });
})();
```

## Wall Remover

Gli elementi che si sovrappongono agli altri sono spostati sotto gli altri.

```javascript
javascript:(function(){
  try{
    let all=document.querySelectorAll('*');
    all.forEach(el=>{
      /* valori finali applicati (el.style contiene solo quelli inline) */
      let cs=window.getComputedStyle(el);
      let z=cs.getPropertyValue('z-index');
      /* z può essere 'auto', null, '', ecc..
         In tal caso parseInt(z, 10) restituisce NaN
         solo parseInt(z) con z="0x" è interpretato in base 16 */
      let zi=parseInt(z,10); 
      if(!isNaN(zi)&&zi!==0){
        el.style.zIndex = String(-Math.abs(zi));
      }
    });
  } catch(e){
    console.error(e);
  }
})();
```

## Image Contrast

Riduce il contrasto delle immagini.

```javascript
javascript:(function() {
  let imgs = document.querySelectorAll("img");
  imgs.forEach(element => {
    element.style.filter = "contrast(30%)";
    console.log(element.src);
  });
})();
```

## EnableSelection

Rende la pagina selezionabile.

```javascript
javascript:(() => {
  const styleId = '__unblock_select__';

  /* Forza user-select: text */
  const css = `
    * {
      -webkit-user-select: text !important;
      user-select: text !important;
    }
    -webkit-touch-callout: default !important;

    /* Se qualche sito tratta gli elementi come non-selezionabili */
    [contenteditable="false"] {
      -webkit-user-select: text !important;
      user-select: text !important;
    }

    img, svg, canvas {
      -webkit-user-drag: auto !important;
      user-select: text !important;
    }
  `;

  /* Rimuove la regola CSS */
  const old = document.getElementById(styleId);
  if (old) old.remove();

  /* Inserisce nuovamente la regola CSS */
  const style = document.createElement('style');
  style.id = styleId;
  style.textContent = css;
  document.head.appendChild(style);

  /* Neutralizza eventuali blocchi su selectstart (fase di cattura)
  Nota: qui NON possiamo "stornare" listener altrui; proviamo solo a non peggiorare. */
  document.addEventListener(
    'selectstart',
    (e) => {
      /* Se qualcosa chiude la selezione, proviamo a riabilitarla.
         In generale il ripristino CSS è ciò che conta.
         (preventDefault qui può essere controproducente, quindi lo evitiamo) */
    },
    true
  );

  /* Lascia Ctrl+A libero: non invochiamo preventDefault */
})();
```

## getYTTranscription

Prende la trascrizione dalla pagina web.

```javascript
javascript:(() => {
  const copyText = (text) => {
    /* Copia negli appunti (clipboard) con fallback */
    const ok = () => alert('Testo copiato negli appunti.');
    const fail = () => {
      const ta = document.createElement('textarea');
      ta.value = text;
      document.body.appendChild(ta);
      ta.select();
      document.execCommand('copy');
      ta.remove();
      alert('Testo copiato.');
    };

    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(ok).catch(fail);
    } else {
      fail();
    }
  };

  const extractText = () => {
    /* Cerca la trascrizione */
    const root = document.querySelector('yt-item-section-renderer');
    if (!root) {
      alert('Elemento yt-item-section-renderer non trovato.');
      return '';
    }

    /* Clona l'elemento e ne prende il testo */
    const clone = root.cloneNode(true);
    let text = (clone.innerText || '').trim();

    /* Regex per rimuovere il timestamp del tipo
          - "4:244 minuti e 24 secondi"
          - "1:071 minuto e 7 secondi"
          - "0:2929 secondi"
    Spiegazione regex:
       (?: ... )?        : gruppo opzionale (m:sss)
          - \d{1,4}      : numeri prima dei due punti
          - :            : separatore
          - \d+          : numeri dopo i due punti
          - \s*          : spazi successivi
       (?:(?:minuti|minuto)\s*e\s*)?    : frase opzionale "minuti/minuto e "
          - (?:minuti|minuto)           :    è suddivisa in "minuti"|"minuto"
          - \s*e\s*                     :    e poi "e" con spazi intorno
       \d+\s*(?:secondi|secondo)        : obbligatoria la parte finale:
          - \d+                         : numero finale
          - \s*                         : spazi opzionali
          - (?:secondi|secondo)         : "secondi" o "secondo"
      Note: il primo blocco (?:\d{1,4}:\d+\s*)? può matchare 0:2929
        il secondo blocco (minuti/ minuo + e) è opzionale
        alla fine matcha "secondi"
      quindi la regex fa match anche con "0:2929 secondi"
    */
    const durationRegex =
      /(?:\d{1,4}:\d+\s*)?(?:(?:minuti|minuto)\s*e\s*)?\d+\s*(?:secondi|secondo)/gi;

    /* Sostituisce ogni match con uno spazio ' ' */
    text = text.replace(durationRegex, ' ');

    /* Ripulisce spazi multipli e normalizza newline */
    text = text.replace(/[ \t\u00A0]+/g, ' ');
    text = text.replace(/\s*\n\s*/g, '\n');
    text = text.replace(/\n{3,}/g, '\n\n').trim();

    return text;
  };

  const text = extractText();
  if (text) copyText(text);
})();
```

## GetText

Estrae tutto il testo dalla pagina.

TO FIX Restituisce il testo piu volte.

```javascript
javascript:(() => {
  /* Seleziona e copia solo il "testo a blocchi" con a capo tra paragrafi/list item (rispetta una formattazione leggibile: paragrafi separati da doppio a capo) */

  const copyText = (text) => {
    const ok = () => alert('Testo copiato negli appunti.');
    const fail = () => {
      const ta = document.createElement('textarea');
      ta.value = text;
      document.body.appendChild(ta);
      ta.select();
      document.execCommand('copy');
      ta.remove();
      alert('Testo copiato.');
    };

    if (navigator.clipboard && navigator.clipboard.writeText) {
      navigator.clipboard.writeText(text).then(ok).catch(fail);
    } else {
      fail();
    }
  };

  const extractText = () => {
    /* Prendi contenuto principale (article/main) o fallback (body) */
    const root = document.querySelector('article,main') || document.body;

    /* Clona per non toccare la pagina */
    const clone = root.cloneNode(true);

    /* Rimuove roba che inquina la copia */
    const elemToRemove='script,style,noscript,template,svg,canvas,form,iframe,object,embed';
    clone.querySelectorAll(elemToRemove).forEach((el) => el.remove());

    /* Rimuove campi interattivi */
    clone.querySelectorAll('*').forEach((el) => {
      const tag = el.tagName.toLowerCase();
      if (tag === 'textarea' || tag === 'input' || tag === 'button') el.remove();
    });

    /* Tag considerati "blocchi" per ottenere a capo tra paragrafi */
    const blocks = clone.querySelectorAll(
      'p,li,h1,h2,h3,h4,blockquote,pre,div,span'
    );

    const out = [];

    /* Normalizza spazi e a capo */
    const normalize = (s) => {
      s = s.replace(/\r/g, '');
      s = s.replace(/[ \t]+\n/g, '\n');
      s = s.replace(/\n{3,}/g, '\n\n');
      return s.trim();
    };

    /* Converte i blocchi in testo, separati da doppio a capo */
    blocks.forEach((el) => {
      const raw = (el.innerText || '').trim();
      if (!raw) return;

      const tag = el.tagName.toLowerCase();

      if (tag === 'li') {
        out.push('• ' + normalize(raw));
      } else {
        out.push(normalize(raw));
      }
    });

    let text = out.join('\n\n');

    /* Fallback */
    if (!text) text = normalize(clone.innerText || '');

    return text;
  };

  const text = extractText();
  copyText(text);
})();
```

## Google Moduli checker

Controlla i moduli google (da completare).

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
