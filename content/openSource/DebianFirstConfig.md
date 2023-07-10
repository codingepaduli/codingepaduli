---
type: "openSource"
title: "Prima configurazione del sistema Debian GNU/Linux"
description: "Prima configurazione del sistema Debian GNU/Linux, dai pacchetti da installare in un ambiente desktop alle configurazioni da applicare"
date: 2023-07-10
publishdate: 2023-07-10
lastmod: 2023-07-10
categories: ["open source", "software"]
keywords: ["open source", "software"]
draft: true
toc: false
summary: "Prima configurazione del sistema Debian GNU/Linux"
---

# Prima configurazione del sistema Debian GNU/Linux

[Debian GNU/Linux](https://www.debian.org/), il sistema operativo universale e completamente Libero.

## Localizzazione

Le [localizzazioni](https://it.wikipedia.org/wiki/Locale_(informatica)) sono parametri che permettono di impostare il formato della data e dell'ora, dei numeri, della moneta, della carta e così via. Quelle disponibili nel sistema si verificano con il comando ``localectl list-locales`` che visualizza in output:

```plaintext
C.UTF-8
en_US.UTF-8
it_IT.UTF-8
```

### Verifica localizzazioni

Per visualizzare la localizzazione corrente del sistema, si utilizza il comando ``localectl status`` che visualizza in output:

```plaintext
System Locale: LANG=it_IT.UTF-8
VC Keymap: it2
X11 Layout: it
```

Per verificare la localizzazione di uno specifico utente, si esegue il comando ``locale``, che visualizza in output:

```plaintext
LANG=it_IT.UTF-8
LANGUAGE=
LC_CTYPE="it_IT.UTF-8"
LC_NUMERIC=it_IT.UTF-8
LC_TIME=it_IT.UTF-8
LC_COLLATE="it_IT.UTF-8"
LC_MONETARY=it_IT.UTF-8
LC_MESSAGES="it_IT.UTF-8"
LC_PAPER=it_IT.UTF-8
LC_NAME=it_IT.UTF-8
LC_ADDRESS=it_IT.UTF-8
LC_TELEPHONE=it_IT.UTF-8
LC_MEASUREMENT=it_IT.UTF-8
LC_IDENTIFICATION=it_IT.UTF-8
LC_ALL=
```

Se si vuole impostare la localizzazione dell'utente, si possono includere queste variabili nel file ``.profile`` presente nella cartella home dell'utente.

### Impostare una localizzazione

Per impostare la localizzazione di sistema in un linguaggio tra quelli disponibili, si utilizza il comando seguente, indicando i parametri da impostare:

```bash
sudo localectl set-locale LANG=it_IT.UTF-8 LANGUAGE=it_IT.UTF-8
```

Se è necessario, può essere invocato il comando di riconfigurazione della localizzazione:

```bash
sudo dpkg-reconfigure locales
```

Nel caso un localizzazione non sia disponibile, può essere invocato il comando di generazione della nuova localizzazione ``locale-gen en_US.UTF8``.
