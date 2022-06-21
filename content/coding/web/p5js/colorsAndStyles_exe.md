---
type: "p5js"
title: "p5.js Lez. 03.1 - Esercizi di grafica 2D a colori"
description: "Esercizi di grafica 2D a colori"
date: 2020-09-15
publishdate: 2020-09-15
lastmod: 2020-09-15
spellcheck: 2020-12-11
categories: ["coding", "web", "p5.js"]
keywords: ["coding", "web", "p5.js"]
draft: false
toc: false
summary: "Esercizi di grafica 2D a colori"
---

# Esercizi di grafica 2D a colori

## Questionario

Il modello RGB è un modello di colori in cui ogni colore è espresso dalla somma dei tre colori “primari”, che sono:

1. Rosso Verde Blu
2. Rosso Giallo Blu
3. Rosso Grigio Blu
4. Giallo Grigio Blu

Ogni colore primario del modello RGB può assumere un valore nel seguente dominio:

1. da 0 a 100;
2. da 1 a 100;
3. da 0 a 255;
4. da 1 a 1000;

Nel modello RGB il colore bianco è espresso dalla seguente terna di colori primari:

1. (0, 0, 0);
2. (1, 1, 1);
3. (100, 100, 100);
4. (255, 255, 255);

Nel modello RGB il colore nero è espresso dalla seguente terna di colori primari:

1. (0, 0, 0);
2. (1, 1, 1);
3. (100, 100, 100);
4. (255, 255, 255);

La funzione ``background`` serve ad impostare:

1. il colore dell'area da disegno;
2. il colore delle figure da disegnare;
3. il colore dei contorni delle figure;
4. il colore del testo da scrivere;

La funzione ``fill(30, 100, 255)`` indica il colore da utilizzare, espresso come somma delle seguenti quantità dei colori primari:

1. quantità di rosso=30, quantità di verde=100, quantità di blu=255;
2. quantità di verde=30, quantità di blu=100, quantità di rosso=255;
3. quantità di rosso=30, quantità di giallo=100, quantità di blu=255;
4. quantità di rosso=30, quantità di grigio=100, quantità di blu=255;

## Disegno di un robot a colori

Creare una pagina web contenente un disegno a piacere di un robot con occhi, bocca, naso, antenne, corpo, braccia, ruote o gambe. Dimensione massima del robot deve essere 300 per 300 punti, i colori dei vari componenti sono a scelta dell'autore. La parte destra e sinistra del robot devono essere simmetriche.

![p5.js - Disegno di un robot a colori](/static/coding/web/p5js/colors_and_styles_exe_robot.png "p5.js - Disegno di un robot a colori")

## Disegno di un'astronave a colori

Creare una pagina web contenente un disegno a piacere di un'astronave con 4 ali armate di missili, 2 turbine ed oblò del pilota. La dimensione massima dell'astronave deve essere 150 per 150 punti. L'astronave deve essere simmetrica rispetto al proprio asse verticale, i colori dei vari componenti sono a scelta dell'autore.

![p5.js - Disegno di un robot a colori](/static/coding/web/p5js/colors_and_styles_exe_astronavi.png "p5.js - Disegno di un'astronave a colori")

## Disegno di un aereo a colori

Creare una pagina web contenente un disegno a piacere di un aereo con 2 ali anteriori armate di missili, una coda con 2 ali posteriori, la testa con l'oblò del pilota ed un contorno di nuvole. La dimensione massima dell'aereo deve essere 150 per 150 punti. L'astronave deve essere simmetrica rispetto al proprio asse verticale o orizzontale, i colori dei vari componenti sono a scelta dell'autore.

![p5.js - Disegno di un aereo a colori](/static/coding/web/p5js/colors_and_styles_exe_aerei.png "p5.js - Disegno di un aereo a colori")

## Disegno di una scena del gioco "Snake"

Realizzare una scena del gioco Snake delle dimensioni indicate di seguito. La forma che il serpente "Snake" deve assumere è a scelta dell'autore, deve essere però composta da almeno 16 pedine che devono essere perfettamente tangenti (cioè non devono sovrapporsi e non devono essere separate da uno spazio vuoto).

Dimensioni dell'area da disegno e del diametro di una pedina per ogni computer:

- pc1: area da disegno 300 x 300, dimensione pedine 34;
- pc2: area da disegno 330 x 330, dimensione pedine 38;
- pc3: area da disegno 360 x 360, dimensione pedine 42;
- pc4: area da disegno 390 x 390, dimensione pedine 46;
- pc5: area da disegno 420 x 420, dimensione pedine 50;
- pc6: area da disegno 450 x 450, dimensione pedine 54;
- pc7: area da disegno 480 x 480, dimensione pedine 58;
- pc8: area da disegno 510 x 510, dimensione pedine 61;
- pc9: area da disegno 540 x 540, dimensione pedine 65;
- pc10: area da disegno 570 x 570, dimensione pedine 70;
- pc11: area da disegno 600 x 600, dimensione pedine 73;
- pc12: area da disegno 630 x 630, dimensione pedine 75;
- pc13: area da disegno 660 x 660, dimensione pedine 80;
- pc14: area da disegno 690 x 690, dimensione pedine 85;
- pc15: area da disegno 720 x 720, dimensione pedine 88;
- pc16: area da disegno 750 x 750, dimensione pedine 92;
- pc17: area da disegno 780 x 780, dimensione pedine 95;
- pc18: area da disegno 810 x 810, dimensione pedine 97;
- pc19: area da disegno 840 x 840, dimensione pedine 99;
- pc20: area da disegno 870 x 870, dimensione pedine 106;
- pc21: area da disegno 900 x 900, dimensione pedine 110;
- pc22: area da disegno 930 x 930, dimensione pedine 114;
- pc23: area da disegno 960 x 960, dimensione pedine 118;
- pc24: area da disegno 990 x 990, dimensione pedine 121;
- pc25: area da disegno 1110 x 1110, dimensione pedine 136;
- pc26: area da disegno 1140 x 1140, dimensione pedine 140;

![p5.js - Disegno di una scena del gioco "Snake"](/static/coding/web/p5js/colors_and_styles_exe_snake.png "p5.js - Disegno di una scena del gioco 'Snake'")

## Disegno di una scena del gioco "Dama"

Realizzare una scena del gioco "Dama" delle dimensioni indicate di seguito. I colori sono a scelta dell'autore. La scacchiera deve essere di 8 righe ed 8 colonne equamente distribuite e deve riempire completamente l'area da disegno. Il numero minimo di pedine da inserire deve essere 6. Le pedine devono essere centrate all'interno della rispettiva casella e devono avere la circonferenza tangente tutti e quattro i lati della casella.

Dimensioni dell'area da disegno (e della scacchiera):

- pc1: area da disegno 300 x 300;
- pc2: area da disegno 330 x 330;
- pc3: area da disegno 360 x 360;
- pc4: area da disegno 390 x 390;
- pc5: area da disegno 420 x 420;
- pc6: area da disegno 450 x 450;
- pc7: area da disegno 480 x 480;
- pc8: area da disegno 510 x 510;
- pc9: area da disegno 540 x 540;
- pc10: area da disegno 570 x 570;
- pc11: area da disegno 600 x 600;
- pc12: area da disegno 630 x 630;
- pc13: area da disegno 660 x 660;
- pc14: area da disegno 690 x 690;
- pc15: area da disegno 720 x 720;
- pc16: area da disegno 750 x 750;
- pc17: area da disegno 780 x 780;
- pc18: area da disegno 810 x 810;
- pc19: area da disegno 840 x 840;
- pc20: area da disegno 870 x 870;
- pc21: area da disegno 900 x 900;
- pc22: area da disegno 930 x 930;
- pc23: area da disegno 960 x 960;
- pc24: area da disegno 990 x 990;
- pc25: area da disegno 1110 x 1110;
- pc26: area da disegno 1140 x 1140;

![p5.js - Disegno di una scena del gioco "Dama"](/static/coding/web/p5js/colors_and_styles_exe_dama.png "p5.js - Disegno di una scena del gioco 'Dama'")

## Disegno di una scena del gioco "Tris"

Realizzare una scena del gioco Tris come nell'immagine riportata di seguito. La scacchiera deve essere di 3 righe e 3 colonne equamente distribuite e deve riempire completamente l'area da disegno, con i colori a scelta dell'autore. Tutte le caselle devono essere riempite dalle figure  "X" (due linee)  e "O" (un cerchio). La figura "X" si realizza con 2 linee incrociate che devono iniziare e terminare negli angoli della casella in cui è disegnata. La figura "O" si realizza con un cerchio posto al centro della rispettiva casella e con la circonferenza tangente tutti e quattro i lati della casella in cui è disegnato.

Dimensioni dell'area da disegno (e della scacchiera):

- pc1: area da disegno 300 x 300;
- pc2: area da disegno 330 x 330;
- pc3: area da disegno 360 x 360;
- pc4: area da disegno 390 x 390;
- pc5: area da disegno 420 x 420;
- pc6: area da disegno 450 x 450;
- pc7: area da disegno 480 x 480;
- pc8: area da disegno 510 x 510;
- pc9: area da disegno 540 x 540;
- pc10: area da disegno 570 x 570;
- pc11: area da disegno 600 x 600;
- pc12: area da disegno 630 x 630;
- pc13: area da disegno 660 x 660;
- pc14: area da disegno 690 x 690;
- pc15: area da disegno 720 x 720;
- pc16: area da disegno 750 x 750;
- pc17: area da disegno 780 x 780;
- pc18: area da disegno 810 x 810;
- pc19: area da disegno 840 x 840;
- pc20: area da disegno 870 x 870;
- pc21: area da disegno 900 x 900;
- pc22: area da disegno 930 x 930;
- pc23: area da disegno 960 x 960;
- pc24: area da disegno 990 x 990;
- pc25: area da disegno 1110 x 1110;
- pc26: area da disegno 1140 x 1140;

![p5.js - Disegno di una scena del gioco "Tris"](/static/coding/web/p5js/colors_and_styles_exe_tris.png "p5.js - Disegno di una scena del gioco 'Tris'")

## Disegno di una scena del gioco "Forza 4"

Realizzare una scena del gioco Forza 4 come nell'immagine riportata di seguito. La scacchiera deve essere di 6 righe e 7 colonne equamente distribuite e deve riempire completamente l'area da disegno, con i colori a scelta dell'autore. Il numero minimo di pedine da inserire deve essere 18. Le pedine devono essere centrate all'interno della rispettiva casella e devono avere la circonferenza tangente tutti e quattro i lati della casella.

Dimensioni dell'area da disegno e del diametro di una pedina per ogni computer:

- pc1: area da disegno 300 x 270, dimensione pedine 34;
- pc2: area da disegno 330 x 295, dimensione pedine 38;
- pc3: area da disegno 360 x 320, dimensione pedine 42;
- pc4: area da disegno 390 x 345, dimensione pedine 46;
- pc5: area da disegno 420 x 370, dimensione pedine 50;
- pc6: area da disegno 450 x 395, dimensione pedine 54;
- pc7: area da disegno 480 x 420, dimensione pedine 58;
- pc8: area da disegno 510 x 445, dimensione pedine 61;
- pc9: area da disegno 540 x 470, dimensione pedine 65;
- pc10: area da disegno 570 x 495, dimensione pedine 70;
- pc11: area da disegno 600 x 520, dimensione pedine 73;
- pc12: area da disegno 630 x 545, dimensione pedine 75;
- pc13: area da disegno 660 x 570, dimensione pedine 80;
- pc14: area da disegno 690 x 595, dimensione pedine 85;
- pc15: area da disegno 720 x 620, dimensione pedine 88;
- pc16: area da disegno 750 x 645, dimensione pedine 92;
- pc17: area da disegno 780 x 670, dimensione pedine 95;
- pc18: area da disegno 810 x 695, dimensione pedine 97;
- pc19: area da disegno 840 x 720, dimensione pedine 99;
- pc20: area da disegno 870 x 745, dimensione pedine 106;
- pc21: area da disegno 900 x 770, dimensione pedine 110;
- pc22: area da disegno 930 x 795, dimensione pedine 114;
- pc23: area da disegno 960 x 820, dimensione pedine 118;
- pc24: area da disegno 990 x 845, dimensione pedine 121;
- pc25: area da disegno 1110 x 870, dimensione pedine 136;
- pc26: area da disegno 1140 x 895, dimensione pedine 140;

![p5.js - Disegno di una scena del gioco "Forza 4"](/static/coding/web/p5js/colors_and_styles_exe_forza4.png "p5.js - Disegno di una scena del gioco 'Forza 4'")
