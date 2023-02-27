---
type: "tools"
title: "Vagrant"
description: "Vagrant, uno strumento open-source per la creazione e la gestione di ambiente virtualizzato attraverso un workflow, seguendo la metodologia DevOps"
date: 2020-03-19
publishdate: 2020-03-19
lastmod: 2020-03-19
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: false
toc: false
summary: "Vagrant, uno strumento open-source per la creazione e la gestione di ambiente virtualizzato attraverso un workflow, seguendo la metodologia DevOps."
---

# Vagrant

Vagrant, uno strumento open-source per la creazione e la gestione di ambiente virtualizzato attraverso un workflow, seguendo la metodologia DevOps.

Per workflow si intende l'automazione parziale o totale di un'attività. Nel caso di Vagrant, il workflow consiste nella creazione e gestione delle macchine virtuali che fanno parte dell'ambiente virtuale.

Funziona con molti software "hypervisor", denominati providers, tra cui l'hypervisor di VirtualBox e  l'hypervisor KVM presente nel kernel Linux.

## Concetti base di Vagrant

Vagrant crea le macchine virtuali partendo da dei "box", ovvero delle immagini di macchine virtuali già configurate con determinati sistemi operativi, che possono essere scelti all'indirizzo:
[https://vagrantcloud.com/search](https://vagrantcloud.com/search "Vagrant - Pagina web contenente i 'box'").

Quando si crea una macchina virtuale (a partire da un box), Vagrant crea un file, di nome "Vagrantfile", che contiene la configurazione della macchina virtuale creata. Questo file può essere esteso per creare un'intero ambiente virtuale composto da più macchine virtuali.

Quando si vuole avviare, stoppare, sospendere o riavviare una macchina virtuale, Vagrant deve leggere il file "Vagrantfile" che descrive l'ambiente virtuale. Per questo motivo, i comandi di  Vagrant devono essere eseguiti nella stessa cartella che contiene il "Vagrantfile".

Si consiglia quindi la creazione di una nuova cartella per ogni macchina virtuale (o ambiente virtuale) che si intende creare ed eseguire i comandi di creazione e gestione dell macchina virtuale (o dell'ambiente virtuale) nella cartella contenente il Vagrantfile.

## Gestione macchine virtuali

Per creare una macchina virtuale si deve scegliere il nome del box.
Una volta scelto il box della macchina virtuale (sul sito di Vagrant), ad esempio "debian/buster64", si può creare la macchina virtuale attraverso il comando seguente:

```bash
vagrant init debian/buster64
```

Questo comando crea il file 'Vagrantfile' che contiene la configurazione della macchina virtuale. Nel Vagrantfile sono memorizzati anche il nome della macchina virtuale e l'ID associati alla macchina virtuale creata.

E possibile avviare la macchina virtuale creata eseguendo (nella stessa cartella contenente il Vagrantfile) il comando:

```bash
vagrant up
```

Per stoppare la macchina virtuale, si esegue (nella stessa cartella contenente il Vagrantfile) il comando:

```bash
vagrant halt
```

Se si sceglie un box con interfaccia grafica, questa è visibile all'utente che può loggarsi (il più delle volte con username "vagrant" e password "vagrant").

Se si sceglie un box senza interfaccia grafica, c'è la possibilità che la macchina virtuale venga eseguita in modalità "headless" (dall'inglese "senza testa", si intende senza interfaccia grafica). La macchina virtuale è in esecuzione, non viene presentata l'interfaccia all'utente ma è disponibile l'accesso SSH (è abilitato di default nel Vagrantfile), per cui l'utente deve fare accesso da terminale eseguendo (nella stessa cartella contenente il Vagrantfile) il comando:

```bash
vagrant ssh
```

Anche per SSH il login avviene il più delle volte con username "vagrant" e password "vagrant", mentre per chiudere la connessione SSH si usa il comando:

```bash
logout
```

La macchina virtuale si può avviare anche per nome o ID, per cui si esegue (nella stessa cartella che contiene il Vagrantfile) il comando:

```bash
vagrant up nome_macchina # avvia la macchina virtuale per nome
vagrant up id_macchina # avvia la macchina virtuale per ID
```

Allo stesso modo si può stoppare la macchina virtuale per nome o ID, per cui si esegue (nella stessa cartella che contiene il Vagrantfile) il comando:

```bash
vagrant halt nome_macchina # stoppa la macchina virtuale per nome
vagrant halt id_macchina # stoppa la macchina virtuale per ID
```

Più in generale i comandi possono essere eseguiti su tutte le macchine virtuali descritte nel Vagrantfile o si può specificare di eseguire il comando su una specifica macchina virtuale appartenente all'ambiente virtuale (descritto nel Vagrantfile).

Per cui di seguito si descriveranno i comandi con l'opzione facoltativa del nome o dell'ID della macchina virtuale.

Per visualizzare lo stato dell'ambiente virtuale o di una macchina virtuale, si esegue (nella stessa cartella che contiene il Vagrantfile) il comando:

```bash
vagrant status [nome | ID]
```

Per sospendere l'esecuzione dell'ambiente virtuale o di una macchina virtuale, si esegue (nella stessa cartella che contiene il Vagrantfile) il comando:

```bash
vagrant suspend [nome | ID]
```

Per riavviare l'esecuzione dell'ambiente virtuale o di una macchina virtuale, si esegue (nella stessa cartella che contiene il Vagrantfile) il comando:

```bash
vagrant resume [nome | ID]
```

Per distruggere un'ambiente virtuale o una macchina virtuale, si esegue (nella stessa cartella che contiene il Vagrantfile) il comando:

```bash
vagrant destroy [nome | ID]
```

Per visualizzare lo stato globale di tutte le macchine virtuali, si esegue (nella stessa cartella che contiene il Vagrantfile) il comando::

```bash
vagrant global-status
```

## Gestione dei box

Attraverso la linea di comando si possono gestire i Box di Vagrant:

Per aggiungere un box (bisogna avere il nome del box):

```bash
vagrant box add debian/buster64
```

Per rimuovere un box (bisogna avere il nome del box):

```bash
vagrant box remove debian/buster64
```

Per un elenco dei box aggiungi:

```bash
vagrant box list
```

Per un elenco dei box da aggiornare:

```bash
vagrant box list outdated --global
```

Per aggiornare i box:

```bash
vagrant box update
```

Per rimuovere vecchie versioni di uno specifico box:

```bash
vagrant box prune --name debian/buster64
```

Per elencare tutte le versioni vecchie di tutti i box che potrebbero essere rimosse, ma non lo saranno (perchè si è aggiunto il flag --dry-run):

```bash
vagrant box prune --dry-run
```

## Sintassi del Vagrantfile e variabili definite

Il Vagrantfile è il file che contiene la configurazione dell'ambiente virtuale ed è scritto in linguaggio ruby. In esso sono specificate le configurazioni di tutte le macchina virtuali appartenenti all'ambiente virtuale.

Per fare un riferimento alla sintassi del file, un blocco di istruzioni in Ruby è definito da

```ruby
do |variabile|
    # blocco istruzioni
end
```

Quindi il seguente blocco di istruzioni definisce la variabile config come ambiente virtuale.

```ruby
Vagrant.configure("2") do |config|

end
```

Allo stesso modo il seguente blocco di istruzioni definisce la variabile vb come provider della macchina virtuale vm appartenente all'ambiente config (l'ambiente virtuale):

```ruby
config.vm.provider "virtualbox" do |vb|

end
```

Partendo da queste poche informazioni sulla sintassi, possiamo analizzare il Vagrantfile creato quando si crea una macchina virtuale:

```ruby
Vagrant.configure("2") do |config|
    config.vm.box = "debian/buster64"
    config.vm.hostname = "debianBuster"

    config.vm.provider "virtualbox" do |vb|
        vb.name = "exe1DebianBuster"
        vb.gui = true
        vb.memory = "1024"
        vb.cpus = "2"
    end
end
```

Si notano i due blocchi descritti in precedenza che definiscono le seguenti variabili:

- config indica l'ambiente virtuale (la configurazione desiderata);
- vb indica il provider della macchina virtuale indicata da config.vm

Inoltre si nota la variabile "vm" che appartiene a config e che in pratica indica la macchina virtuale.

## Proprietà di una macchina virtuale definite nel Vagrantfile

A partire dalle regole di sintassi e dal Vagrantfile appena visto, possiamo indicare le proprietà della macchina virtuale chè sarà creata:

- il box da utilizzare per creare la macchina virtuale

```ruby
config.vm.box = "debian/buster64"
```

- il nome della macchina virtuale

```ruby
config.vm.hostname = 'database'
```

- il provider (hypervisor) della macchina virtuale

```ruby
config.vm.provider "virtualbox"
```

Tra le proprietà non viste che è comunque possibile definire, abbiamo:

- l'ip virtuale di una rete privata:

```ruby
config.vm.network "private_network", ip: "192.168.33.12"
```

- le porte da aprire sulla macchina virtuale e far corrispondere a quelle della macchina ospitante:

```ruby
config.vm.network "forwarded_port", guest: 80, host: 8082
config.vm.network "forwarded_port", guest: 22, host: 10124, id: "ssh"
```

- le cartelle da condividere tra macchina virtuale e macchina ospitante:

```ruby
config.vm.synced_folder "../data", "/vagrant_data"
```

Per un elenco completo di tutte le proprietà che è possibile definire, si faccia comunque riferimento alla documentazione online.

Tra le proprietà del provider (hypervisor) che sono ancora definite nel Vagrantfile visto precedentemente sono:

- il nome della macchina virtuale per il provider (hypervisor)

```ruby
vb.name = "exe1DebianBuster"
```

- la memoria che il provider (hypervisor) dovrà fornire alla macchina virtuale

```ruby
vb.memory = "1024"
```

- il numero di CPU che il provider (hypervisor) dovrà fornire alla macchina virtuale

```ruby
vb.cpus = "2"
```

- il modo in cui il provider (hypervisor) dovrà avviare la macchina virtuale (con interfaccia grafica o in modalità headless)

```ruby
vb.gui = true
```

Un esempio completo di Vagrantfile con tutte le proprietà appena viste è di seguito riportato:

```ruby
Vagrant.configure("2") do |config|

    config.vm.hostname = 'web'
    config.vm.box = "debian/buster64"
    config.vm.box_url = "debian/buster64"

    config.vm.network "forwarded_port", guest: 80, host: 8080
    config.vm.network "forwarded_port", guest: 22, host: 10122, id: "ssh"

    config.vm.network "private_network", ip: "192.168.33.10"

    # Share an additional folder to the guest VM.
    config.vm.synced_folder "../data", "/vagrant_data"

    config.vm.provider "virtualbox" do |vb|
        vb.gui = true
        vb.name = "web"
        vb.memory = "1024"
        vb.cpus = "2"
    end
end
```

## Macchine virtuali multiple

All'interno dell'ambiente virtuale è possibile definire più macchine virtuali, ognuna con la propria configurazione ed il proprio hypervisor (provider).

Per definire 2 macchine virtuali assegnate rispettivamente alle variabili "web" e "database", si devono creare due blocchi del tipo:

```ruby
Vagrant.configure("2") do |config|
    config.vm.define "web" do |web|
        web.vm.box = "debian/buster64"
        web.vm.hostname = 'web'

        web.vm.provider "virtualbox" do |vb|
            vb.gui = true
            vb.name = "vm1-Debian"
            vb.memory = "1024"
            vb.cpus = "2"
        end
    end

    config.vm.define "database" do |database|
        database.vm.box = "debian/buster64"
        database.vm.hostname = 'database'

        database.vm.provider "virtualbox" do |vb|
            vb.gui = true
            vb.name = "vm2-Debian"
            vb.memory = "1024"
            vb.cpus = "2"
        end
    end
end
```

Se molte opzioni sono comuni, si può ridurre il codice rendendolo parametrico e definendo tutti i parametri differenti in un array:

```ruby
vm1 = {'name' => "web",     'v-name' => "vm1-Debian", 'ip' => "192.168.5.224"}
vm2 = {'name' => "databas", 'v-name' => "vm2-Debian", 'ip' => "192.168.5.225"}
vms = [vm1, vm2]

Vagrant.configure(2) do |config|
    vms.each do |node|
        config.vm.define node['name'] do |node_config|
            node['name'].vm.box = "debian/buster64"
            node['name'].vm.hostname = node['name']
            node['name'].vm.network "private_network", ip: node['ip']

            node['name'].vm.provider "virtualbox" do |vb|
                vb.gui = true
                vb.name = node['v-name']
                vb.memory = "1024"
                vb.cpus = "2"
            end
        end
    end
end
```

## Provisioning

Le macchine virtuali create a partire dai box devono poter essere ulteriormente configurare, installando software o configurando servizi di rete.

Per far cio si usa la tecnica del provisioning, ovvero si crea una "ricetta" (in stile Chef o Ansible) o uno script (in Bash o Powershell) che viene eseguito alla creazione della macchina virtuale.

Per associare uno script Bash si può usare la proprietà:

```ruby
config.vm.provision :shell, path: "bootstrap.sh"
```

Per associare una ricetta ansible, si può usare la proprietà:

```ruby
config.vm.provision :ansible_local, playbook: "bootstrap.yaml"
```

Quando si modificano gli script e si vuole aggiornare tutte le macchine virtuali con gli script aggiornati, si usa il comando:

```bash
vagrant reload --provision
```

## Deploy su macchine ospitanti

Le macchine virtuali definite nel file Vagrant vengono create sulla macchina locale, possono però essere "deployate" sull'ambiente reale (sui propri server) attraverso il comando:

```bash
vagrant push
```

Per deployare le macchine esistono diverse strategie:

- deploy in locale
- deploy via FTP
- deploy attraverso i servizi Heroku o Atlas

```ruby
config.push.define "ftp" do |push|
    push.host = "ftp.company.com"
    push.username = "username"
    push.password = "mypassword"
end
```
