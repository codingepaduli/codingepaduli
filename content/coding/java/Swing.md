# Componenti di Swing in Java

- **JFrame**: Finestra principale dell'applicazione.
- **JPanel**: Contenitore generico per organizzare altri componenti.
- **JButton**: Pulsante che può eseguire un'azione quando viene cliccato.
- **JLabel**: Etichetta per visualizzare testo o immagini.
- **JTextField**: Campo di testo a singola riga per l'input dell'utente.
- **JTextArea**: Area di testo multi-riga per l'input o la visualizzazione di testo.
- **JCheckBox**: Casella di controllo per le selezioni boolean.
- **ButtonGroup**: Raggruppa i pulsanti radio per assicurare che solo uno sia
- **JRadioButton**: Pulsanti per scegliere una sola opzione da un gruppo.
- **JList**: Componente per visualizzare un elenco di elementi selezionabili.
- **JScrollPane**: Contenitore che fornisce barre di scorrimento per altri componenti.
- **JMenuBar**: Barra dei menu per le opzioni dell'applicazione.
- **JMenu**: Crea il singolo menu nella barra, come "File" e "Impostazioni".
- **JMenuItem**: Voci di menu.
- **JCheckBoxMenuItem**: Campo selezione multipla
- **JRadioButtonMenuItem**: Campo selezione singola.

## Costruttori e composizione

```java
// costruttori
JFrame frame = new JFrame("Esempio di Swing");

JMenuBar menuBar = new JMenuBar();
JMenu fileMenu = new JMenu("File");
JMenuItem newItem = new JMenuItem("Nuovo");
JMenuItem openItem = new JMenuItem("Apri");
JMenuItem exitItem = new JMenuItem("Esci");

JPanel panel = new JPanel();
JLayout layout = new FlowLayout();
JLabel label = new JLabel("Inserisci il tuo nome:");
JTextField textField = new JTextField(20);
JButton button = new JButton("Saluta");
JTextArea textArea = new JTextArea(5, 30);
JPanel scrollpanel = new JScrollPane(textArea);
ButtonGroup buttonGroup = new ButtonGroup();
JRadioButton option1 = new JRadioButton("Modalita light");
JRadioButton option2 = new JRadioButton("Modalita dark");
JCheckBox check1 = new JCheckBox("Opzione A");
JCheckBox check2 = new JCheckBox("Opzione B");

// composizione menu
frame.add(menuBar);
fileMenu.add(newItem);
fileMenu.add(openItem);
fileMenu.addSeparator(); // Aggiungere un separatore
fileMenu.add(exitItem);

// composizione pannello
frame.add(panel);
panel.setLayout(layout);
panel.add(label);
panel.add(textField);
panel.add(scrollpanel);
panel.add(button);
panel.add(buttonGroup);
buttonGroup.add(option1);
buttonGroup.add(option2);
panel.add(check1);
panel.add(check2);

// Creare una JList
String[] names = {"Alice", "Bob", "Charlie", "Diana", "Eva"};
JList<String> jList = new JList<>(names);
jList.setSelectionMode(ListSelectionModel.MULTIPLE_INTERVAL_SELECTION);
JScrollPane scrollPaneList = new JScrollPane(jList);
panel.add(scrollPaneList);

// Rendi il frame visibile
frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
frame.setSize(400, 300);
frame.setVisible(true);
```
