---
type: "tools"
title: "Gradle"
description: "Gradle è un sistema open source per automatizzare le fasi di compilazione, test, pacchettizzazione, deploy e tutte le altre fasi di sviluppo"
date: 2020-03-22
publishdate: 2020-03-22
lastmod: 2020-03-27
categories: ["coding", "tools"]
keywords: ["coding", "tools"]
draft: false
toc: false
summary: "Gradle è un sistema open source per automatizzare le fasi di compilazione, test, pacchettizzazione, deploy e tutte le altre fasi di sviluppo"
---

# Gradle

[Gradle](https://gradle.org/ "Sito web di Gradle") è un sistema open source per automatizzare le fasi di compilazione, test, pacchettizzazione, deploy e tutte le altre fasi di sviluppo.

Nel corso di questo articolo si descriveranno i concetti fondamentali (validi per qualsiasi tipo di progetto) e si utilizzerà Gradle per la gestione di un progetto Java.

## Gestione progetto con Gradle

### Creazione progetto Java

Il comando da utilizzare per creare un nuovo progetto è:

```bash
gradle init
```

Attraverso una procedura guidata, all'utente vengono chieste le opzioni sulle quali creare un progetto:

```plaintext
Select type of project to generate:
  1: basic
  2: application
  3: library
  4: Gradle plugin
Enter selection (default: basic) [1..4] 2

Select implementation language:
  1: C++
  2: Groovy
  3: Java
  4: Kotlin
  5: Swift
Enter selection (default: Java) [1..5] 3

Select build script DSL:
  1: Groovy
  2: Kotlin
Enter selection (default: Groovy) [1..2] 1

Select test framework:
  1: JUnit 4
  2: TestNG
  3: Spock
  4: JUnit Jupiter
Enter selection (default: JUnit 4) [1..4] 1

Project name (default: gradle-example): example
Source package (default: gradle-example): example
```

### Gradle wrapper

La creazione di un progetto basato su Gradle comporta anche la creazione di un "wrapper" di Gradle, salvato nel pacchetto ``gradle/wrapper/gradle-wrapper.jar``, e di un corrispondente file di proprietà, salvato nel file ``gradle/wrapper/gradle-wrapper.properties``, che tra le varie opzioni indica la versione di Gradle utilizzata.

Tutti gli utenti che non hanno installato Gradle possono, quindi, utilizzare il "wrapper" per eseguire i task del progetto, usando il comando ``gradlew`` (per Linux) o ``gradlew.bat`` (per Windows).

L'utente può in qualsiasi momento aggiornare la versione di Gradle da utilizzare, seguendo una delle due strade:

- aggiornare manualmente la voce ``distributionUrl`` presente nel file ``gradle/wrapper/gradle-wrapper.properties``;
- ricreare il "wrapper" presente nel progetto, specificando la versione di Gradle desiderata, utilizzando il comando:

```bash
./gradlew wrapper --gradle-version 6.8.3
```

### Primi task

Creato il progetto, è possibile eseguire, nella cartella principale di progetto, i seguenti task (utilizzando il wrapper di gradle):

- Task di pulizia (cancella la cartella ``build``):

```bash
  gradlew clean
```

- Task di compilazione dei sorgenti Java, di creazione del pacchetto "jar" e di creazione dei pacchetti da distribuire:

```bash
  gradlew build
```

- Task di esecuzione dell'applicazione Java:

```bash
  gradlew run
```

- Task per la generezione della documentazione dei sorgenti:

```bash
  gradlew javadoc
```

Si possono anche eseguire più task con un singolo comando. Per pulire la cartella di "lavoro" ``build``, eseguire la compilazione, creare i pacchetti da distribuire ed eseguire l'applicazione, è possibile, sempre nella cartella principale di progetto, eseguire il comando:

```bash
gradlew clean build javadoc run
```

Tutti i file prodotti vengono memorizzati nella cartella ``build``.

Per una descrizione più dettagliata dei task da utilizzare in un progetto Java, si rimanda ai capitoli successivi.

### Struttura progetto

I file creati in un progetto Gradle sono i seguenti:

```plaintext
example
├── build.gradle
├── gradle
│   └── wrapper
│       ├── gradle-wrapper.jar
│       └── gradle-wrapper.properties
├── gradlew
├── gradlew.bat
├── settings.gradle
└── src
    ├── main
    │   ├── java
    │   │   └── example
    │   │       └── App.java
    │   └── resources
    └── test
        ├── java
        │   └── example
        │       └── AppTest.java
        └── resources
```

Il file ``settings.gradle`` contiene le proprietà del progetto Gradle;

Il file ``build.gradle`` contiene le dipendenze, i repository, i plugin e tutte le istruzioni necessarie alle varie fasi del progetto quali compilazione, esecuzione, deploy, ...,  .

Gradle provvede poi alla creazione delle classiche directory di un progetto Java:

- ``src/main/java`` contiene i sorgenti Java per l'applicazione (Gradle ha creato il file ``App.java`` nel package ``example`` );

- ``src/main/resources`` contiene altri file necessari durante l'esecuzione;

- ``src/test/java`` contiene i sorgenti Java per gli "unit test" Java (Gradle ha creato un esempio di test ``AppTest.java`` nel package ``example``);

- ``src/test/resources`` contiene altri file necessari durante i test;

Sono presenti poi i file ``gradlew`` per eseguire il "wrapper" su Linux e ``gradlew.bat`` per eseguire il wrapper su Windows.

La cartella ``gradle/wrapper`` contiene il wrapper mentre la cartella ``.gradle`` contiene la versione di Gradle che il wrapper scarica.

Tutti i file prodotti, dalle classi compilate al jar prodotto, alla documentazione javadoc, all'esito dei test, al report di progetto, sono creati nella cartella `build`.

## Concetti principali di Gradle

I principali concetti su cui si basa Gradle sono i **progetti**, i **plugin**, i **task** e le **configurazioni di dipendenza**.

Un **progetto** in Gradle può rappresentare un'applicazione web scritta in Java, una libreria scritta in c++, ecc..

Si può decidere di automatizzare diverse fasi in un progetto, dalla compilazione dei sorgenti al deploy su server, dalla realizzazione della documentazione al report di progetto.

I **task** servono ad automatizzare queste fasi. Gradle mette a disposizione task per compilare, task per realizzare la documentazione, task per avviare il server ed effettuare il deploy dell'applicazione web sullo stesso.

Sono i **plugin** a rendere disponibili i task nel progetto: il plugin per applicazioni Java rende disponibili i task per la compilazione e la realizzazione della documentazione. Il plugin per i report rende disponibili i task per la generazione dei report di progetto.

I plugin mettono a disposizione anche le **configurazioni di dipendenza**, che permettono allo sviluppatore di gestire le dipendenze dell'applicazione.

### Plugin

La tipologia dei progetti sui quali si lavora, che siano progetti Java, c++, HTML o di altra natura, deve essere indicata attraverso i plugin.

Gradle fornisce di base una serie di plugin "core", che sono elencati all'indirizzo: [https://docs.gradle.org/current/userguide/java_plugin.html](https://docs.gradle.org/current/userguide/java_plugin.html "Gradle - Pagina web contenente l'elenco di plugin 'core' disponibili").

Oltre ai plugin "core" di Gradle, sono disponibili una serie di plugin pubblicati dalla comunità sul portale Gradle all'indirizzo: [https://plugins.gradle.org/](https://plugins.gradle.org/ "Gradle - Pagina web contenente l'elenco di plugin pubblicati dalla comunità").

Ogni plugin fornisce determinate funzionalità, come la pulizia del progetto, l'integrazione di tools, la gestione dei reports, la pubblicazione su portali esterni, e così via. Ad esempio, il plugin ``java`` fornisce le funzionalità tipiche di un progetto Java, come la compilazione, la creazione di un pacchetto jar, e cosi via.

E' possibile aggiungere più plugin allo stesso progetto.

Una volta scelti i plugin **core** adatti al progetto, questi devono essere specificati nel file ``build.gradle``, includendoli nella sezione ``plugins``:

```groovy
plugins {
    id 'nome_plugin_core',
    id 'nome_altro_plugin_core'
}
```

I plugin non core, scelti quindi dal portale, devono essere indicati inserendo nome e versione, come da esempio seguente:

```groovy
plugins {
    id 'nome_plugin_core',
    id 'nome_altro_plugin_core'
    id 'plugin_non_core' version '0.4.1'
    id 'altro_plugin_non_core' version '1.2.1'
}
```

Alcuni plugin "core" meritano di essere menzionati:

- Il Build Init Plugin permette la creazione di nuovi progetti. Non necessita configurazione. Mette a disposizione il task di ``init``.

- Il Base Plugin permette la pulizia e la pacchettizzazione del progetto. Fornisce i vari task quali ``clean`` e ``build``. Deve essere configurato nell'apposita sezione:

```groovy
  plugins {
      id 'base'
  }
```

- Il Project Report Plugin abilita funzionalità basilari per la gestione dei report di progetto. Fornisce il task ``projectReport``. Deve essere configurato nell'apposita sezione:

```groovy
  plugins {
      id 'project-report'
  }
```

### Task

I task sono le azioni che è possibile effettuare su un progetto. Ogni plugin importato rende disponibili nuovi ``task`` sul progetto, anche se è sempre possibile crearne dei nuovi.

Per visualizzare una lista di task disponibili in un progetto, dalla cartella principale del progetto è necessario lanciare:

```bash
gradlew tasks
```

Dato che molti task sono importati specificando un plugin, se non fosse presente l'indicazione del plugin, Gradle utilizzerebbe il plugin di ``init``. In questo caso, utilizzando il comando ``gradlew tasks`` per visualizzare i task disponibili sul progetto, si otterrebbe il seguente elenco:

```plaintext
gradlew tasks

Build Setup tasks
-----------------
init - Initializes a new Gradle build.
wrapper - Generates Gradle wrapper files.

Help tasks
----------
help - Displays a help message.
tasks - Displays the tasks runnable from root project 'example'.
...
```

Per eseguire dei task, dalla cartella principale del progetto è necessario eseguire il comando ``gradlew`` passando i vari task come parametri:

```bash
gradlew task1 task2 task3
```

E' possibile crearne di personalizzati, aggiungendoli al file ``build.gradle``, come nel seguente esempio:

```groovy
task('hello') {
    doLast {
        println "Hello world!"
    }
}
```

Per eseguire il task creato, è necessario eseguire il comando:

```bash
gradlew hello
```

L'output del comando è il seguente:

```bash
Hello world!
```

Oltre ai task personalizzati aggiunti al progetto, è possibile comunque invocare i task messi a disposizione dai plugin configurati nel progetto.

Gradle non esegue i task secondo l'ordine presente sulla linea di comando, ma crea un proprio piano di esecuzione dei task. Per visualizzarlo, è necessario aggiungere il flag ``--dry-run`` alla linea di comando.

Ad esempio, per visualizzare il piano di esecuzione dei task per il comando ``build``:

```bash
gradlew build --dry-run
```

L'output prodotto, per un progetto Java, è il seguente:

```plaintext
:compileJava SKIPPED
:processResources SKIPPED
:classes SKIPPED
:jar SKIPPED
:assemble SKIPPED
:compileTestJava SKIPPED
:processTestResources SKIPPED
:testClasses SKIPPED
:test SKIPPED
:check SKIPPED
:build SKIPPED
```

Il piano di esecuzione indica che per eseguire il task ``jar`` per la creazione del pacchetto Java è necessario prima eseguire il task ``compileJava`` che compila le classi Java. Il che è un ragionamento ovvio.

### Configurazioni di dipendenza

In un progetto si possono avere diversi tipi di dipendenze:

- dipendenza da una libreria necessaria per la compilazione e l'esecuzione;

- dipendenza da una libreria necessaria solo per i test;

- dipendenza da una libreria fornita a runtime dal server, quindi necessaria per la compilazione ma da non inglobare nel pacchetto da creare (tar/zip/jar) e nemmeno necessaria a runtime;

- ...

Una configurazione rappresenta proprio l'insieme di dipendenze necessarie ad un preciso scopo ed è rappresentata da un nome univoco.

Una congiruazione può dichiarare differenti tipi di dipendenze:

- dipendenza da moduli (pubblicati sui repository, tipo Maven Central o Ivy). Si può usare nella seguente forma:

```groovy
  dependencies {
      nomeConfigurazione: 'org.hibernate:hibernate:3.0.5'
  }
```

- dipendenza da file presenti su disco. Si può usare nella seguente forma:

```groovy
  dependencies {
      nomeConfigurazione: files('libs/lang.jar', 'libs/log4j.jar')
      nomeConfigurazione: fileTree('tools') { include '*.exe' }
  }
```

- dipendenza tra progetti, da usare nella seguente forma:

```groovy
  dependencies {
      nomeConfigurazione project(':shared')
  }
```

Un concetto chiave sul quale Gradle basa la risoluzione delle dipendenze è la prospettiva con cui il produttore ed il consumatore vedono il progetto.

La prospettiva del produttore è quella di chi si occupa di costruire il progetto e quindi fa uso di tutte le librerie necessarie per la compilazione, l'esecuzione ed i test.

La prospettiva del consumatore invece è quella di usare un progetto o una libreria come dipendenza, in modo tale da poter compilare o eseguire il suo prodotto.

Gradle fa spesso questa differenza, soprattutto nella gestione di progetti di libreria, che prevedono differenti configurazioni:

- la configurazione ``api`` definisce le dipendenze necessarie in fase di compilazione e che devono essere visibili anche al consumatore;

- la configurazione ``implementation`` definisce dipendenze necessarie in fase di compilazione e che non devono essere visibili al consumatore;

Il motivo per cui una dipendenza deve essere visibile al consumatore è che un'interfaccia o una classe del proprio progetto rendono visibile  al consumatore una classe, un'istanza o un oggetto definito all'interno della dipendenza stessa.

Un esempio d'uso delle dipendenze quindi può essere il seguente:

```groovy
dependencies {
    api 'org.apache.httpcomponents:httpclient:4.5.7'
    implementation 'org.apache.commons:commons-lang3:3.5'
}
```

Supponendo di avere le dipendenze appena citate nel nostro progetto personale, se dovessimo esponesse una firma del tipo:

```java
int getResponseCode(HttpResponse response) throws ClientProtocolException {
    ...
}
```

allora il consumatore che utilizza il nostro progetto riuscirebbe a compilare ed eseguire il suo progetto perchè la libreria ``httpclient`` è visibile e quindi gli oggetti ``HttpResponse`` e ``ClientProtocolException`` sarebbero riconducibili alla libreria ``httpclient``.

Se invece, ancora facendo riferimento all'esempio corrente, dovessimo esporre una firma del tipo:

```java
int getCode(BitField bitField) throws ContextedException {
    ...
}
```

allora il consumatore che utilizza il nostro progetto riscontrerebbe errori di compilazione ed esecuzione dato che la libreria ``commons-lang3`` non è visibile al consumatore e quindi gli oggetti ``BitField`` e  ``ContextedException`` sarebbero sconosciuti.

Per visualizzare le dipendenze di tutte le configurazioni:

```bash
gradlew -q dependencies
```

Per visualizzare le dipendenze di una singola configurazione

```bash
gradlew -q dependencies --configuration api
```

## Scelta ed uso dei plugin per l'ambiente Java

### Plugin per Java

Per configurare il progetto come "progetto Java", bisogna aggiungere uno dei plugin Java messi a disposizione da Gradle . In questo modo Gradle viene configurato per l'uso di tutti i task e di tutte le configurazioni relativi alla compilazione del codice Java, come visto nei capitoli precedenti.

Esistono diversi tipi di plugin Java, ognuno con il proprio specifico compito:

- ~~``java``~~:  è un plugin da non usare direttamente, poichè viene esteso dai plugin Java ``java-library`` e ``application``che sono più specifici. Questo plugin serve solo a fornire le operazioni e le configurazioni basilari per la gestione di un progetto Java.

- ``java-library``: è un plugin che estende il plugin ``java`` ed è specializzato per la gestione di una libreria Java. La differenza chiave di questo plugin è l'uso di due configurazioni (in ottica produttore / consumatore) esposte;

- ``application``: è un plugin che estende il plugin ``java`` ed è specializzato nella gestione di un'applicazione Java che deve essere eseguibile (anche durante lo sviluppo) e deve includere script di avvio per il sistema operativo considerato;

- ``java-platform``: è un plugin che permette la dichiarazione di una piattaforma, uno speciale tipo di componente software che non contiene sorgenti ma solo altre librerie. Non può essere usato nè in combinazione con il plugin ``java-library`` nè in combinazione con il plugin ``java-application``;

- ``war``: è un plugin che estende il plugin ``java`` ed è specializzato nella gestione di un'applicazione web;

- ``ear``: è un plugin che estende il plugin ``java`` ed è specializzato nella gestione di un'applicazione enterprise; Non sarà trattato in questo articolo basilare;

- ``gretty``: è un plugin che in questo articolo viene aggiunto per completezza; Serve ad automatizzare ulteriormente le fasi di progetto gestendo il server ed il deploy dell'applicazione;

- ``eclipse-wtp``: è un plugin che che estende il plugin ``eclipse`` ed in questo articolo viene aggiunto per completezza; Serve ad automatizzare la creazione di file necessari a lavorare con Eclipse IDE.

### Plugin ``java``

Il plugin Java non deve essere usato direttamente, ma fornisce i task basilari per la gestione di un progetto Java.

I task a messi a disposizione dal plugin ``java`` sono i seguenti:

- ``clean``                   : Pulizia della directory build;
- ``compileJava``         : Compila i sorgenti Java;
- ``jar``                       : Crea il file jar;
- ``javadoc``                : Genera la documentazione JavaDoc;
- ``compileTestJava``  : Compila i sorgenti delle classi di test;
- ``test``                     : Esegue gli "unit test";
- ``build``                   : Esegue tutte le fasi di costruzione del progetto.

Di seguito se ne riporta un grafo completo:

![Gradle - Grafo dei task](https://docs.gradle.org/current/userguide/img/javaPluginTasks.png "Gradle - Grafo dei task")

Le configurazioni di dipendenza messe a disposizione dal plugin ``java`` per le fasi di compilazione ed esecuzione sono le seguenti:

- ``annotationProcessor``: dipendenze per la fase di annotazione durante la compilazione;
- ~~``compile``~~: (Deprecated);
- ``compileOnly``: dipendenze necessarie solo per la fase di compilazione;
- ``compileClasspath``: estende ~~``compile``~~, ``compileOnly`` ed ``implementation`` e sono le dipendenze necessarie alla fase di compilazione usate dal task ``compileJava``;
- ``implementation`` estende ~~``compile``~~, dipendenze necessarie per la fase di compilazione ed esecuzione;
- ~~``runtime``~~: (Deprecated) estende ~~``compile``~~;
- ``runtimeOnly``: dipendenze necessarie solo per la fase di esecuzione;
- ``runtimeClasspath`` estende ``runtimeOnly``, ~~``runtime``~~ ed ``implementation`` e sono le dipendenze necessarie alla fase di esecuzione usate dal task ``run``;
- ``default`` estende ~~``runtime``~~.

Allo stesso modo sono messe a disposizione, per le fasi di compilazione ed esecuzione dei test, le seguenti configurazioni di dipendenza:

- ~~``testCompile``~~: (Deprecated) estende ~~``compile``~~;
- ``testImplementation`` estende ~~``testCompile``~~ ed ``implementation``: dipendenze necessarie per la fase di consumazione ed esecuzione dei tests;
- ``testCompileOnly``: dipendenze necessarie solo per la fase di compilazione dei tests;
- ``testCompileClasspath`` estende ~~``testCompile``~~, ``testCompileOnly`` e ``testImplementation``;
- ~~``testRuntime``~~: (Deprecated) estende ~~``runtime``~~ e ~~``testCompile``~~;
- ``testRuntimeOnly`` estende ``runtimeOnly``: dipendenze necessarie solo per la fase di esecuzione dei tests;
- ``testRuntimeClasspath`` estende ~~``testRuntime``~~, ``testRuntimeOnly`` e ``testImplementation``.

## Plugin ``application``

Il plugin ``application`` estende il plugin ``java`` e serve a facilitare la creazione di un'applicazione eseguibile. L'applicazione viene impacchettata come file "tar" o "zip" e vengono inclusi gli script per il sistema operativo utilizzato.

I task che il plugin mette a disposizione sono:

- ``run``: esegue l'applicazione;

- ``startScripts``: crea gli script;

- ``installDist``: installa l'applicazione nella cartella;

- ``distTar``: crea il pacchetto "tar" contenente l'applicazione, le librerie e lo script di avvio;

- ``distZip``: crea il pacchetto "zip" contenente l'applicazione, le librerie e lo script di avvio;

- ``assemble``: (ereditato dal plugin ``java``) crea sia il pacchetto "tar" che il pacchetto "zip";

La configurazione del proprio progetto per l'uso del plugin prevede:

- la dichiarazione del plugin;

- il nome completo della classe che contiene il metodo ``main``  da eseguire;

- il nome dell'applicazione;

- la lista di parametri da utilizzare quando si esegue l'applicazione;

```groovy
plugins {
    id 'application'
}

applicationName = 'my-app'

application {
    mainClass = 'org.gradle.sample.Main'
    applicationDefaultJvmArgs = ['-Dlanguage=en']
}
```

Le configurazioni di dipendenza di questo plugin sono ereditate dal plugin ``java``.

### Plugin ``java-library``

Il plugin ``java-library`` estende il plugin ``java`` e serve a facilitare la creazione di una libreria che deve essere "consumata" da altre applicazioni.

Questo plugin non prevede task aggiuntivi a quelli ereditati dal plugin ``java``.

Le configurazioni di dipendenza di questo plugin, oltre a quelle ereditate del plugin ``java``, sono:

- ``api``: contiene le dipendenze di compilazione che devono essere esportate ai "consumatori" della libreria;

- ``implementation``: contiene le dipendenze di compilazione che non devono essere esportate ai consumatori della libreria;

La configurazione del proprio progetto per l'uso del plugin prevede la sola dichiarazione del plugin:

```groovy
plugins {
    id 'java-library'
}
```

### Plugin ``war``

Il plugin ``war`` estende il plugin ``java`` e serve a facilitare la creazione di un'applicazione web. L'applicazione viene impacchettata come file "war", e la generazione del file "jar" (ereditata dal plugin ``java``) viene disabilitata.

I task che il plugin mette a disposizione sono:

- ``war``: Assembla il pacchetto contenente l'applicazione web.

Le configurazoni di dipendenza di questo plugin, oltre a quelle ereditate dal plugin ``java`` sono:

- ``providedCompile``: Rappresenta le dipendenze, da utilizzare in fase di compilazione, che sono fornite direttamente dal server (dal container).

- ``providedRuntime``: Rappresenta le dipendenze, da utilizzare in fase di esecuzione, che sono fornite direttamente dal server (dal container).

Queste due configurazioni rappresentano dipendenze che non saranno aggiunte al pacchetto "war".

La configurazione del proprio progetto per l'uso del plugin prevede la sola dichiarazione del plugin:

```groovy
plugins {
    id 'war'
}
```

### Plugin ``gretty``

Gretty è un plugin che serve ad automatizzare ulteriormente la gestione del progetto. Permette di scaricare automaticamente il server, di avviarlo, riavviarlo e stopparlo, ed ancora di effettuare il deploy dell'applicazione web sul server.

I task che il plugin mette a disposizione sono molteplici, ma gli essenziali sono:

- ``appStart``: Scarica ed avvia il server, se necessario, poi effettua il deploy dell'applicazione sul server;
- ``appStop``: Ferma il server.

Questo plugin non prevede configurazioni di dipendenza.

La configurazione del proprio progetto per l'uso del plugin prevede la dichiarazione del plugin e la scelta delle opzioni relative al server:

```groovy
plugins {
    id 'org.gretty' version '3.0.1'
}


gretty {
    servletContainer 'jetty9.4'
    httpPort 8080
    contextPath '/web'
}
```

Una scelta opinabile riguarda il salvataggio dei log del server nella cartella "home" dell'utente. Per cambiare tale scelta, si utilizzano le seguenti proprietà:

```plaintext
    // logging configuration
    logDir "${buildDir}/log" // pay attention to double quote
    logFileName 'calcolatrice'
    loggingLevel 'TRACE'     // (loggingLevel 'ALL', 'DEBUG', 'ERROR', 'INFO', 'OFF', 'TRACE', 'WARN')
```

### Plugin ``eclipse-wtp``

eclipse-wtp è un plugin che estende il plugin ``eclipse`` e serve ad automatizzare la creazione di file necessari ad Eclipse IDE.

I task che il plugin mette a disposizione sono principalmente:

- ``cleanEclipse``: Rimuove i file ``.project``, ``.classpath`` e ``.settings/org.eclipse.jdt.core.prefs``;
- ``eclipse``: Crea i file ``.project``, ``.classpath`` e ``.settings/org.eclipse.jdt.core.prefs``.

La configurazione del proprio progetto per l'uso del plugin prevede la sola dichiarazione del plugin:

```groovy
plugins {
    id 'eclipse-wtp'
}
```

## Esempio completo per applicazioni Java

Di seguito un esempio completo per la gestione di un'applicazione Java con Gradle:

```groovy
plugins {
    // add support for building a Java application.
    id 'application'
    // add support for generating project's reports.
    id 'project-report'
    // add support for Eclipse IDE.
    id 'eclipse-wtp'
}

// all these tasks to execute by default.
// To get a complete list, run ./gradle run --dry-run
defaultTasks 'clean', 'compileJava', 'jar', 'assemble', 'compileTestJava', 'test', 'build', 'eclipse', 'javadoc', 'projectReport', 'run'

repositories {
    // Use jcenter for resolving dependencies.
    // You can declare any Maven/Ivy/file repository here.
    jcenter()
}

group = 'groupID'
version = '0.1.0'
description = "Java application"

dependencies {
    // These dependencies are NOT exported to consumers.
    implementation 'org.apache.commons:commons-math3:3.6.1'

    // This dependency is used by Gradle.
    implementation 'com.google.guava:guava:28.1-jre'

    // These dependencies are only used for unit test
    testImplementation 'junit:junit:4.12'
}

jar {
    manifest {
        attributes('Implementation-Title': project.name,
                   'Implementation-Version': project.version)
    }
}

application {
    // Define the main class for the application.
    mainClass = 'j2se.main.MainClass'
}
```

Si nota che è stato aggiunto sia il plugin ``application`` per la gestione e l'esecuzione di un progetto Java, sia il plugin ``project-report`` per la creazione dei report di progetto, sia il plugin ``eclipse`` per gestire il progetto con Eclipse IDE.

E stata definita la lista (quasi completa) di task che si desidera vengano lanciati di default, sono state configurate delle voci da aggiungere al file ``Manifest.mf`` del pacchetto "jar" ed è indicata la classe Java che contiene il metodo "main" da eseguire per lanciare l'applicazione.

## Esempio completo per applicazioni web in Java

Di seguito un esempio completo per la gestione di un'applicazione web Java con Gradle:

```groovy
plugins {
    // add support for building a Java application.
    id 'war'
    // add support for generating project's reports.
    id 'project-report'
    // add support for Eclipse IDE.
    id 'eclipse-wtp'
    // add support for managing the servlet containers.
    id 'org.gretty' version '3.0.1'
}

// all these tasks to execute by default.
 // To get a complete list, run ./gradle run --dry-run
defaultTasks 'clean', 'war', 'eclipse', 'appStart'

repositories {
    // Use jcenter for resolving dependencies.
    // You can declare any Maven/Ivy/file repository here.
    jcenter()
}

group = 'j2ee'
version = '0.1.0'
description = "Applicazione web."

dependencies {
    implementation 'jstl:jstl:1.2'
    implementation 'org.eclipse.jetty:jetty-annotations:9.4.20.v20190813'
    implementation 'org.eclipse.jetty:jetty-servlets:9.4.20.v20190813'
    implementation 'javax:javaee-api:8.0'

    // This dependency is used by the application.
    implementation 'com.google.guava:guava:28.1-jre'

    // Use JUnit test framework
    testImplementation 'junit:junit:4.12'
}

gretty {
    servletContainer 'jetty9.4'
    httpPort 8080
    contextPath '/web'

    // logging configuration
    logDir "${buildDir}/log" // pay attention to double quote
    logFileName 'calcolatrice'
    loggingLevel 'TRACE'     // (loggingLevel 'ALL', 'DEBUG', 'ERROR', 'INFO', 'OFF', 'TRACE', 'WARN')

}
```

Si nota che è stato aggiunto sia il plugin ``war`` per la gestione di un'applicazione web in Java, sia il plugin ``project-report`` per la creazione dei report di progetto, sia il plugin ``eclipse`` per gestire il progetto con Eclipse IDE, sia il plugin ``org.gretty`` per la gestione del servletContainer.

E stata definita la lista di task che si desidera vengano lanciati di default, sono state configurate le opzioni relative al server da avviare per deployare ed eseguire l'applicazione.

### Esempio di file src/main/webapp/WEB-INF/web.xml per chiamate CORS

Per abilitare le chiamate CORS (Cross-Origin resource sharing) sul server Jetty, è necessario aggiungere al progetto il seguente file di configurazione ``src/main/webapp/WEB-INF/web.xml``:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xmlns="http://java.sun.com/xml/ns/javaee"
  xmlns:web="http://java.sun.com/xml/ns/javaee"
  xsi:schemaLocation="http://java.sun.com/xml/ns/javaee
  http://java.sun.com/xml/ns/javaee/web-app_3_0.xsd"
  version="3.0">
  <filter>
     <filter-name>cross-origin</filter-name>
     <filter-class>org.eclipse.jetty.servlets.CrossOriginFilter</filter-class>
     <init-param>
         <param-name>allowedOrigins</param-name>
         <param-value>*</param-value>
     </init-param>
     <init-param>
         <param-name>allowedMethods</param-name>
         <param-value>GET,POST,OPTIONS,DELETE,PUT,HEAD</param-value>
     </init-param>
     <init-param>
         <param-name>allowedHeaders</param-name>
         <param-value>origin, content-type, accept, authorization</param-value>
     </init-param>
   </filter>
   <filter-mapping>
       <filter-name>cross-origin</filter-name>
       <url-pattern>*</url-pattern>
   </filter-mapping>
</web-app>
```

Come si nota, il filtro ``org.eclipse.jetty.servlets.CrossOriginFilter``, a cui è stato assegnato il nome ``cross-origin``, abilita le richieste:

- effettuate attraverso HTTP **GET, POST, OPTIONS, DELETE, PUT, HEAD**, (come indicato in ``allowedMethods``);
- di qualsiasi risorsa (quindi su qualsiasi URL, come indicato in ``url-pattern``);
- provenienti da qualsiasi origine (come indicato in ``allowedOrigins``);
- solo se indicano nell'header HTTP uno dei parametri a scelta tra **origin, content-type, accept, authorization** (come indicato in ``allowedHeaders``).
