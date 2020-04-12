---
type: "tools"
title: "EditorConfig"
description: "EditorConfig, uno strumento per condividere le stesse impostazioni di stile e codifica tra gli sviluppatori che lavorano sullo stesso progetto con vari editors e IDEs"
date: 2019-08-20
publishdate: 2019-08-20
lastmod: 2019-08-20
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: false
toc: false
summary: "EditorConfig, uno strumento per condividere le stesse impostazioni di stile e codifica tra gli sviluppatori che lavorano sullo stesso progetto con vari editors e IDEs"
---

# EditorConfig

[EditorConfig](https://editorconfig.org) è uno strumento per condividere le stesse impostazioni di stile e codifica tra gli sviluppatori, che lavorano sullo stesso progetto con vari editors e IDEs. Alcuni di questi editors e IDEs sono giá abilitati all'uso di EditorConfig, mentre per altri è necessario installare un plugin (vedere sul sito la lista di editor giá abilitati o che prevedono dei plugin x supportarlo).

EditorConfig si configura creando, nella cartella principale del sito web, un file di testo con nome ``.editorconfig``, in cui impostare le opzioni di codifica, spaziatura e indentazione. Questo file va condiviso su tutti gli ambienti e tra tutti gli sviluppatori.

Il contenuto di questo file prevede poche regole:

```ini
root = true

[*] 
end_of_line = lf
insert_final_newline = true
charset = utf-8
indent_style = space
indent_size = 4
```

**root** impostato a ``true``, indica che è la cartella principale di progetto. In caso non fosse la cartella principale,  deve essere impostato a ``false``, in modo che la cartella principale viene cercata tra le .

**[*]** indica che le impostazioni presenti nelle righe successive devono essere applicate a tutti i files.

**end_of_line** indica il carattere di ["Ritorno a capo"](https://it.m.wikipedia.org/wiki/Ritorno_a_capo), cioè "invio", da utilizzare nei file di testo. Puó essere il carattere **LF** (utilizzato su Unix o Linux) oppure **CRLF** (utilizzato su Windows).

**insert_final_newline** impostato a ``true``, viene aggiunta una riga vuota, se non presente, alla fine del file, ogni volta che si salva il file. Impostato a ``false`` non sono aggiunte righe.

**charset** indica la codifica del file, di default è UTF-8.

**indent_style** indica il carattere per indentare il codice. Puó essere ``space`` per usare lo spazio, oppure ``tab`` per utilizzare il carattere di tabulazione "TAB".

**indent_size** indica il numero di spazi da usare per l'indentazione.
