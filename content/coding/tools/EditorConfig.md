---
type: "tools"
title: "EditorConfig"
description: "EditorConfig, uno strumento per condividere le stesse impostazioni di stile e codifica tra gli sviluppatori che lavorano sullo stesso progetto con vari editors e IDEs"
date: 2019-08-20
publishdate: 2019-08-20
lastmod: 2019-08-20
categories: ["coding, tools"]
keywords: ["coding, tools"]
draft: false
toc: false
notesforauthors: "EditorConfig, installazione su Atom"
summary: "EditorConfig, uno strumento per condividere le stesse impostazioni di stile e codifica tra gli sviluppatori che lavorano sullo stesso progetto con vari editors e IDEs"
---

<p><a href="https://editorconfig.org">EditorConfig</a> è uno strumento per condividere le stesse impostazioni di stile e codifica tra gli sviluppatori, che lavorano sullo stesso progetto con vari editors e IDEs. 
Alcuni di questi editors e IDEs sono giá abilitati all'uso di EditorConfig, mentre per altri è necessario installare un plugin (vedere sul sito la lista di editor giá abilitati o che prevedono dei plugin x supportarlo).</p>

<p>EditorConfig si configura creando, nella cartella principale del sito web, un file di testo con nome <code class="html">.editorconfig</code>, in cui impostare le opzioni di codifica, spaziatura e indentazione. Questo file va condiviso su tutti gli ambienti e tra tutti gli sviluppatori.</p>

<p>Il contenuto di questo file prevede poche regole:</p>

<pre>
  <code class="html">
    root = true

    [*] 
    end_of_line = lf
    insert_final_newline = true
    charset = utf-8
    indent_style = space
    indent_size = 4
  </code>
</pre>

<p><strong>root</strong> impostato a <code class="html">true</code>, indica la cartella principale di progetto, altrimenti deve avere valore <code class="html">false</code>.</p>

<p><strong>[*]</strong> indica che le impostazioni presenti nelle righe successive devono essere applicate a tutti i files.</p>

<p><strong>end_of_line</strong> indica il carattere di <a href="https://it.m.wikipedia.org/wiki/Ritorno_a_capo">"Ritorno a capo"</a> ("invio") da utilizzare nei file di testo. Puó essere il carattere <code class="html">LF</code> (utilizzato su Unix o Linux) oppure <code class="html">CRLF</code> (utilizzato su Windows).</p>

<p><strong>insert_final_newline</strong> impostato a <code class="html">true</code>, viene aggiunta una riga vuota, se non presente, alla fine del file, ogni volta che si salva il file. Impostato a <code class="html">false</code> non sono aggiunte righe.</p>

<p><strong>charset</strong> indica la codifica del file, di default è UTF-8.</p>

<p><strong>indent_style</strong> indica il carattere per indentare il codice. Puó essere <code class="html">space</code> per usare lo spazio, oppure <code class="html">tab</code> per utilizzare il TAB.</p>

<p><strong>indent_size</strong> indica il numero di spazi da usare per l'indentazione.</p>
