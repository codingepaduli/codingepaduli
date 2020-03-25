---
type: "tools"
title: "Gradle"
description: "Gradle è un sistema open source per automatizzare le fasi di compilazione, test, pacchettizzazione, deploy e tutte le altre fasi di sviluppo"
date: 2020-03-22
publishdate: 2020-03-22
lastmod: 2020-03-22
keywords: ["coding", "tools"]
draft: false
toc: false
notesforauthors: "Gradle è un sistema open source per automatizzare le fasi di compilazione, test, pacchettizzazione, deploy e tutte le altre fasi di sviluppo"
summary: "Gradle è un sistema open source per automatizzare le fasi di compilazione, test, pacchettizzazione, deploy e tutte le altre fasi di sviluppo"
---

Gradle è un sistema open source per automatizzare le fasi di compilazione, test, pacchettizzazione, deploy e tutte le altre fasi di sviluppo. 

I principali concetti su cui si basa Gradle sono i **progetti** ed i **task**.

Un progetto in Gradle può rappresentare un'applicazione web scritta in java, una libreria scritta in c++, ecc.. Un progetto può a sua volta essere composto da più progetti.

I task sono invece le azioni che Gradle effettua sui progetti. Un esempio di task può essere la compilarezione dei sorgenti, la creazione di un pacchetto, la generazione della documentazione, ecc...

Nel corso di questo articolo, si vedrà all'opera Gradle con un progetto Java.

## Gestione progetto con Gradle

### Creazione progetto

Il comando da utilizzare per creare un nuovo progetto è:

```bash
gradle init 
```

Attraverso una procedura guidata, all'utente vengono chieste le opzioni sulle quali creare un progetto:

```bash
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

La creazione di un progetto basato su Gradle comporta anche la creazione di un "wrapper" di Gradle.  

Questo "wrapper" permette a tutti gli utenti che non hanno installato Gradle di poter comunque eseguire i task di Gradle, dalla compilazione all'esecuzione, poichè scarica una versione di Gradle nella macchina dell'utente.

Il wrapper si può eseguire attraverso il comando ``gradlew`` per Linux e ``gradlew.bat`` per Windows. 

Se presente il file ``gradlew`` per Linux o ``gradlew.bat`` per Windows, allora è buona norma utilizzare il wrapper per eseguire tutti i task.

### Primi tasks

Creato il progetto, è possibile visualizzare quali azioni è possibile eseguire su Gradle:

```bash
gradle tasks
```

Dato che è presente il wrapper di Gradle, di seguito si utilizzerà il wrapper, quindi il comando precedente diventa:

```bash
gradlew tasks
```

Della lunga lista di task visualizzata in output si evidenziano i seguenti task:

- ``clean``                   - Pulizia della directory di build;
- ``compileJava``         - Compila i sorgenti java;
- ``jar``                       - Crea il file jar;
- ``compileTestJava``  - Compila i sorgenti delle classi di test;
- ``test``                     - Esegue gli "unit test";
- ``javadoc``                - Genera la documentazione Javadoc;
- ``run``                       - Esegue l'applicazione;
- ``projectReport``     - Crea il report dell'intero progetto (una sorta di sito web).

Per compilare ed eseguire l'applicazione java è necessario lanciare il comando:

```bash
gradlew run
```

Si possono anche eseguire più task con un singolo comando. Per pulire la cartella di "lavoro" ed eseguire gil "unit test", ad esempio, è necessario lanciare il comando:

```bash
gradlew clean test
```

Gradle non segue l'ordine dei task presente sulla linea di comando, ma li esegue in base ad un proprio "ordine" interno. 
Specificare che si desidera l'esecuzione dei test sottintende l'esecuzione dei task precedenti per la compilazione dei sorgenti e per la compilazione degli "unit test".

Sulla base di questa regola, il comando di esecuzione degli "unit test" appena visto corrisponde al comando:

```bash
gradlew clean compileJava compileTestJava test
```

E' possibile averne conferma visualizzando il piano di esecuzione di tutti i task che saranno eseguiti quando si esegue il task ``test``, attraverso il comando:

```bash
gradlew test --dry-run
```

L'output prodotto, di seguito riportato, ci da conferma di questa equivalenza in quanto indica tra i task da eseguire sia ``compileJava``, sia  ``compileTestJava``, sia ``test``.

```bash
:compileJava SKIPPED
:processResources SKIPPED
:classes SKIPPED
:compileTestJava SKIPPED
:processTestResources SKIPPED
:testClasses SKIPPED
:test SKIPPED
```

Per una descrizione più dettagliata dei task da utilizzare in un progetto Java, si rimanda ai capitoli sui plugins.

### Struttura progetto

I file creati in un progetto Gradle sono i seguenti:

```bash
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

Gradle provvede poi alla creazione delle classiche directory di un progetto java:

- ``src/main/java`` contiene i sorgenti java per l'applicazione (Gradle ha creato il file ``App.java`` nel package ``example`` );

- ``src/main/resources`` contiene altri file necessari durante l'esecuzione;

- ``src/test/java`` contiene i sorgenti java per gli "unit test" java (Gradle ha creato un esempio di test ``AppTest.java`` nel package ``example``);

- ``src/test/resources`` contiene altri file necessari durante i test;

Troviamo poi i file eseguibili ``gradlew`` per eseguire il "wrapper" su Linux e ``gradlew.bat`` per eseguire il wrapper su Windows.

La cartella ``gradle/wrapper`` contiene il wrapper mentre la cartella ``.gradle`` contiene la versione di Gradle che il wrapper scarica.

Tutti i file prodotti, dalle classi compilate al jar prodotto, alla documentazione javadoc, all'esito dei test, al report di progetto, sono creati nella cartella `build`.

## Concetti principali di Gradle

### Plugins

E' necessario indicare la tipologia dei progetti sui quali si lavora: progetti java, c++ o anche progetti con sorgenti html o file zip.

Questa tipologia viene indicata attraverso i plugins, che devono essere specificati nel file ``build.gradle`` attraverso la sezione ``plugins``.

E' possibile aggiungere vari tipi di plugin allo stesso progetto.

```groovy
plugins {
    id 'nome_plugin',
    id 'nome_altro_plugin'
}
```

Gradle fornisce di base una serie di plugin "core", che sono elencati all'indirizzo: [https://docs.gradle.org/current/userguide/java_plugin.html](https://docs.gradle.org/current/userguide/java_plugin.html).

Per importare un plugin "core" di Gradle è necessario semplicemente indicarne il nome nella sezione "plugins" del file `build.gradle`.

Tra i vari plugin core ci sono:

- Il Build Init plugin, che fornisce il task di ``init`` per la creazione di nuovi progetti; Non necessita configurazione;

- Il Base Plugin, che fornisce i vari task quali ``clean`` e ``build``; Va configurato:
  
  ```groovy
  plugins {
   id 'base'
  }
  ```

- Il Project Report Plugin, che fornisce funzionalità basilari per la gestione dei report di progetto attraverso il task ```projectReport``;
  
  Questo plugin deve essere configurato:
  
  ```groovy
  plugins {
      id 'project-report'
  }
  ```

Ogni plugin importa uno specifico insieme di task. Se nel file ``build.gradle`` non fosse presente l'indicazione del plugin (che indica la tipologia di progetto), Gradle non saprebbe su cosa deve lavorare, quindi utilizzarebbe il plugin di ``init`` . I task disponibili sarebbero quindi:

```groovy
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

Oltre ai plugin "core" di Gradle, sono disponibili una serie di plugin pubblicati dalla comunità sul portale Gradle all'indirizzo: [https://plugins.gradle.org/](https://plugins.gradle.org/). 

Questi plugin forniscono l'integrazione di tools quali Jetty (con plugin org.gretty), SpotBugs (con plugin com.github.spotbugs) e tanti altri. 

Per applicare un plugin dal portale, è necessario indicare nome e versione, come da esempio seguente:

```groovy
plugins {
    id 'com.jfrog.bintray' version '0.4.1'
}
```

### Configurazioni di dipendenza

In un progetto possiamo avere diversi tipi di dipendenze:

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
./gradlew -q dependencies
```

Per visualizzare le dipendenze di una singola configurazione

```bash
./gradlew -q dependencies --configuration api
```

## Scelta ed uso dei plugins per l'ambiente java

### Scelta di plugin per java

Per configurare il progetto come "progetto java", bisogna aggiungere uno dei plugin java messi a disposizione da Gradle . In questo modo Gradle viene configurato per l'uso di tutti i task e di tutte le configurazioni relativi alla compilazione del codice Java, come visto nei capitoli precedenti.

Esistono diversi tipi di plugin Java, ognuno con il proprio specifico compito:

- ~~``java``~~:  è un plugin da non usare direttamente, poichè viene esteso dai plugin java ``java-library`` e ``application``che sono più specifici. Questo plugin serve solo a fornire le operazioni e le configurazioni basilari per la gestione di un progetto java. 

- ``java-library``: è un plugin che estende il plugin ``java`` ed è specializzato per la gestione di una libreria java. La differenza chiave di questo plugin è l'uso di due configurazioni (in ottica produttore / consumatore) esposte;

- ``application``: è un plugin che estende il plugin ``java`` ed è specializzato nella gestione di un'applicazione java che deve essere eseguibile (anche durante lo sviluppo) e deve includere script di avvio per il sistema operativo considerato;

- ``java-platform``: è un plugin che permette la dichiarazione di una piattaforma, uno speciale tipo di componente software che non contiene sorgenti ma solo altre librerie. Non può essere usato nè in combinazione con il plugin ``java-library`` nè in combinazione con il plugin ``java-application``; 

- ``war``: è un plugin che estende il plugin `java` ed è specializzato nella gestione di un'applicazione web;

- ``ear``: è un plugin che estende il plugin `java` ed è specializzato nella gestione di un'applicazione enterprise; Non sarà trattato in questo articolo basilare.

- ``gretty``: è un plugin che in questo articolo viene aggiunto per completezza; Serve ad automatizzare ulteriormente le fasi di progetto gestendo il server ed il deploy dell'applicazione.

### Plugin java

Il plugin Java non deve essere usato direttamente, ma fornisce i task basilari per la gestione di un progetto java.

I task a messi a disposizione dal plugin ``java`` sono i seguenti:

- ``clean``                   : Pulizia della directory build;
- ``compileJava``         : Compila i sorgenti java;
- ``jar``                       : Crea il file jar;
- `javadoc`                : Genera la documentazione Javadoc;
- ``compileTestJava``  : Compila i sorgenti delle classi di test;
- ``test``                     : Esegue gli "unit test";
- ``build``                   : Esegue tutte le fasi di costruzione del progetto.
- ``projectReport``     : Crea i reports dell'intero progetto (una sorta di sito web).

Di seguito se ne riporta un grafo completo:

![](https://docs.gradle.org/current/userguide/img/javaPluginTasks.png)

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
- ``testRuntimeOnly`` estende `runtimeOnly`: dipendenze necessarie solo per la fase di esecuzione dei tests;  
- ``testRuntimeClasspath`` estende ~~``testRuntime``~~, ``testRuntimeOnly`` e ``testImplementation``.

## Plugin application

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
    mainClassName = 'org.gradle.sample.Main'
    applicationDefaultJvmArgs = ['-Dlanguage=en']
}
```

Le configurazioni di dipendenza di questo plugin sono ereditate dal plugin ``java``.

### Plugin java-library

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

### Plugin war

Il plugin ``war`` estende il plugin `java` e serve a facilitare la creazione di un'applicazione web. L'applicazione viene impacchettata come file "war", e la generazione del file "jar" (ereditata dal plugin java) viene disabilitata.

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

### Gretty

Gretty è un plugin che serve ad automatizzare ulteriormente la gestione del progetto. Permette di scaricare automaticamente il server, di avviarlo, riavviarlo e stopparlo, ed ancora di effettuare il deploy dell'applicazione web sul server. 

I task che il plugin mette a disposizione sono molteplici, ma gli essenziali sono:

- appStart: Scarica ed avvia il server, se necessario, poi effettua il deploy dell'applicazione sul server;
- appStop: Ferma il server.

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

## Esempio completo per applicazioni java

Di seguito un esempio completo per la gestione di un'applicazione Java con Gradle:

```groovy
plugins {
    // add support for building a Java application.
    id 'application'
    // add support for generating project's reports.
    id 'project-report'
}

// all these tasks to execute by default. 
// To get a complete list, run ./gradle run --dry-run
defaultTasks 'clean', 'compileJava', 'jar', 'assemble', 'compileTestJava', 'test', 'build', 'javadoc', 'projectReport', 'run'

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
    mainClassName = 'j2se.main.MainClass'
}
```

## Esempio completo per applicazioni web in java

```groovy

plugins {
    // add support for building a Java application.
    id 'war'
    // add support for generating project's reports.    
    id 'project-report'
    // add support for managing the servlet containers.
    id 'org.gretty' version '3.0.1' 
}

// all these tasks to execute by default.
 // To get a complete list, run ./gradle run --dry-run
defaultTasks 'clean', 'war', 'appStart'

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
}
```
