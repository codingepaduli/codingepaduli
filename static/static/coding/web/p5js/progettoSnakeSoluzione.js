//array per memorizzare le coordinate X e Y di ogni pallina
let snakeX = [];
let snakeY = [];

//posizione della testa dello snake
//il valore -1 indica che la testa non è presente
let posTestaSnake = -1;


function creaSnake(snakeX, snakeY) {

    //primo step è quello di aggiungere palline allo snake
    //aggiunta pallina 0 allo snake
    posTestaSnake = 0;
    snakeX[0] = 50;
    snakeY[0] = 400;

    //aggiunta prima pallina allo snake
    posTestaSnake = 1;
    snakeX[1] = 50 + 50;
    snakeY[1] = 400;

    //aggiunta seconda pallina allo snake
    posTestaSnake = 2;
    snakeX[2] = 50 + 100;
    snakeY[2] = 400;

    //aggiunta terza pallina allo snake
    posTestaSnake = 3;
    snakeX[3] = 50 + 100;
    snakeY[3] = 400 - 50;

    //aggiunta quarta pallina allo snake
    posTestaSnake = 4;
    snakeX[4] = 50 + 100;
    snakeY[4] = 400 - 100;

    //aggiunta quinta pallina allo snake
    posTestaSnake = 5;
    snakeX[5] = 50 + 100;
    snakeY[5] = 400 - 150;

    //aggiunta sesta pallina allo snake
    posTestaSnake = 6;
    snakeX[6] = 50 + 50;
    snakeY[6] = 400 - 150;

    //aggiunta settima pallina allo snake
    posTestaSnake = 7;
    snakeX[7] = 50 + 50;
    snakeY[7] = 400 - 200;

    //aggiunta ottava pallina allo snake
    posTestaSnake = 8;
    snakeX[8] = 50 + 50;
    snakeY[8] = 400 - 200;

    //aggiunta nona pallina allo snake
    posTestaSnake = 9;
    snakeX[9] = 50 + 50;
    snakeY[9] = 400 - 250;

    //aggiunta decima pallina allo snake
    posTestaSnake = 10;
    snakeX[10] = 50 + 100;
    snakeY[10] = 400 - 250;

    //aggiunta undicesima pallina allo snake
    posTestaSnake = 11;
    snakeX[11] = 50 + 150;
    snakeY[11] = 400 - 250;

    //aggiunta dodicesima pallina allo snake
    posTestaSnake = 12;
    snakeX[12] = 50 + 200;
    snakeY[12] = 400 - 250;

    //aggiunta tredicesima pallina allo snake
    posTestaSnake = 13;
    snakeX[13] = 50 + 200;
    snakeY[13] = 400 - 200;

    //aggiunta quattordicesima pallina allo snake
    posTestaSnake = 14;
    snakeX[14] = 50 + 200;
    snakeY[14] = 400 - 150;

    //aggiunta quindicesima pallina allo snake
    posTestaSnake = 15;
    snakeX[15] = 50 + 250;
    snakeY[15] = 400 - 150;

    //aggiunta sedicesima pallina allo snake
    posTestaSnake = 16;
    snakeX[16] = 50 + 300;
    snakeY[16] = 400 - 150;

    //aggiunta diciasettesima pallina allo snake
    posTestaSnake = 17;
    snakeX[17] = 50 + 300;
    snakeY[17] = 400 - 200;

    //aggiunta diciottesima pallina allo snake
    posTestaSnake = 18;
    snakeX[18] = 50 + 300;
    snakeY[18] = 400 - 250;

    //aggiunta diciottesima pallina allo snake
    posTestaSnake = 19;
    snakeX[19] = 50 + 300;
    snakeY[19] = 400 - 300;

    //aggiunta ventesima pallina allo snake
    posTestaSnake = 20;
    snakeX[20] = 50 + 350;
    snakeY[20] = 400 - 300;

    //aggiunta ventunesima pallina allo snake
    posTestaSnake = 21;
    snakeX[21] = 50 + 400;
    snakeY[21] = 400 - 300;

    //aggiunta ventiduesima pallina allo snake
    posTestaSnake = 22;
    snakeX[22] = 50 + 450;
    snakeY[22] = 400 - 300;

    //aggiunta ventitreesima pallina allo snake
    posTestaSnake = 23;
    snakeX[23] = 50 + 500;
    snakeY[23] = 400 - 300;

    //aggiunta ventiquattresima pallina allo snake
    posTestaSnake = 24;
    snakeX[24] = 50 + 500;
    snakeY[24] = 400 - 250;

    //aggiunta venticinquesima pallina allo snake
    posTestaSnake = 25;
    snakeX[25] = 50 + 500;
    snakeY[25] = 400 - 200;

    //aggiunta ventiseiesima pallina allo snake
    posTestaSnake = 26;
    snakeX[26] = 50 + 500;
    snakeY[26] = 400 - 150;

    //aggiunta ventisettesima pallina allo snake
    posTestaSnake = 27;
    snakeX[27] = 50 + 500;
    snakeY[27] = 400 - 100;

    //aggiunta ventottesima pallina allo snake
    posTestaSnake = 28;
    snakeX[28] = 50 + 500;
    snakeY[28] = 400 - 50;

    //aggiunta ventinovesima pallina allo snake
    posTestaSnake = 29;
    snakeX[29] = 50 + 450;
    snakeY[29] = 400 - 50;

    return posTestaSnake;
}

function disegnaSnake(snakeX, snakeY) {

    //indice per il ciclo FOR
    let i1 = 0;

    //indice per il ciclo WHILE
    let i2 = 0;

    //indice per il ciclo DO-WHILE
    let i3 = 0;


    //ciclo FOR per poter disegnare le prime 5 palline

    //ISTRUZIONI
    //condizione iniziale : i1=0
    //condizione finale : i1<=4
    //condizione di incremento : i1++

    //SINTASSI
    //utilizzeremo un ciclo FOR = (i1 = 0; i1 <=4; i1++)
    //in caso questa condizione sia vera, disegneremo, con una funzione circle, un cerchio che avrà come coordinate:
    //-> snakeX[i1] per le X
    //-> snakeY[i1] per le Y
    //-> e infine il diametro

    //COLORE
    //il colore utilizzato è il ROSSO
    fill(180, 0, 0);

    for (i1 = 0; i1 <= 4; i1++) {
        circle(snakeX[i1], snakeY[i1], 50);
    }


    //ciclo WHILE per poter disegnare le successive 5 palline

    //ISTRUZIONI
    //condizione iniziale : i2=5
    //condizione finale : i2<=10
    //condizione di incremento : i2+1

    //SINTASSI
    //inizialmente inseriremo la nostra condizione iniziale i2=5, per poi inserire
    //all'interno del while la condizione i2 <= 10
    //in caso questa condizione sia vera, disegneremo, con una funzione circle, un cerchio con coordinate:
    //-> snakeX[i2] per le X
    //-> snakeY[i2] per le Y
    //-> il diametro
    //e infine inseriremo l'incremento i2++

    //COLORE
    //il colore utilizzato è il VERDE
    fill(0, 180, 0);

    i2 = 5;
    while (i2 <= 10) {
        circle(snakeX[i2], snakeY[i2], 50);
        i2++;
    }


    //ciclo DO-WHILE per poter disegnare le successive 5 palline

    //ISTRUZIONI
    //condizione iniziale : i3=11
    //condizione finale : i3<=15
    //condizione di incremento : i3+1

    //SINTASSI
    //inizialmente inseriremo la condizione iniziale i3 = 11
    //poi all'interno del DO inseriremo le istruzioni per disegnare le successive 5 palline
    //all'interno della funzione circle inseriremo:
    //-> snakeX[i3] per le X
    //-> snakeY[i3] per le Y
    //-> il diametro
    //e infine inseriremo l'incremento i2++
    //Nel while, inseriremo la condizione finale i3 <= 15

    //COLORE
    //il colore utilizzato è il BLUE
    fill(0, 0, 180);

    i3 = 11;
    do {
        circle(snakeX[i3], snakeY[i3], 50);
        i3++;
    } while (i3 <= 15);


    //ciclo FOR per poter disegnare le successiva 5 palline

    //ISTRUZIONI
    //condizione iniziale : i1=16
    //condizione finale : i1<=20
    //condizione di incremento : i1++

    //SINTASSI
    //utilizzeremo un ciclo FOR = (i1 = 16; i1 <=20; i1++)
    //in caso questa condizione sia vera, disegneremo, con una funzione circle, un cerchio che avrà come coordinate:
    //-> snakeX[i1] per le X
    //-> snakeY[i1] per le Y
    //-> e infine il diametro

    //COLORE
    //il colore utilizzato è il ROSSO
    fill(180, 0, 0);

    for (i1 = 16; i1 <= 20; i1++) {
        circle(snakeX[i1], snakeY[i1], 50);
    }


    //ciclo WHILE per poter disegnare le successive 5 palline

    //ISTRUZIONI
    //condizione iniziale : i2=21
    //condizione finale : i2<=25
    //condizione di incremento : i2+1

    //SINTASSI
    //inizialmente inseriremo la nostra condizione iniziale i2=21, per poi inserire
    //all'interno del while la condizione i2 <= 25
    //in caso questa condizione sia vera, disegneremo, con una funzione circle, un cerchio con coordinate:
    //-> snakeX[i2] per le X
    //-> snakeY[i2] per le Y
    //-> il diametro
    //e infine inseriremo l'incremento i2++

    //COLORE
    //il colore utilizzato è il VERDE
    fill(0, 180, 0);

    i2 = 21;
    while (i2 <= 25) {
        circle(snakeX[i2], snakeY[i2], 50);
        i2++;
    }


    //ciclo DO-WHILE per poter disegnare le successive 5 palline

    //ISTRUZIONI
    //condizione iniziale : i3=26
    //condizione finale : i3<=30
    //condizione di incremento : i3+1

    //SINTASSI
    //inizialmente inseriremo la condizione iniziale i3 = 26
    //poi all'interno del DO inseriremo le istruzioni per disegnare le successive 5 palline
    //all'interno della funzione circle inseriremo:
    //-> snakeX[i3] per le X
    //-> snakeY[i3] per le Y
    //-> il diametro
    //e infine inseriremo l'incremento i2++
    //Nel while, inseriremo la condizione finale i3 <= 30

    //COLORE
    //il colore utilizzato è il BLUE
    fill(0, 0, 180);

    i3 = 26;
    do {
        circle(snakeX[i3], snakeY[i3], 50);
        i3++;
    } while (i3 <= snakeX.length);
}

/**
 * Controlla se la testa dello snake, che si trova in snakeX[snakeX.length - 1]
 * colpisce un qualsiasi altro elemento dello snake, rappresentato da snakeX[i].
 */
function finale(snakeX, snakeY) {
    //variabile utilizzata per concludere il gioco
    let end = false;
    //ciclo FOR per far bloccare il gioco quando lo snake colpirà il proprio corpo

    //ISTRUZIONI
    //condizione iniziale : i=0
    //condizione finale : i<snakeX.lenght - 2
    //condizione di incremento : 1++

    //SINTASSI
    //utilizzeremo un ciclo FOR = (i = 0; i < snakeX.length - 2; i++)
    for (let i = 0; i < snakeX.length - 2; i++) {
        if (snakeX[snakeX.length - 1] == snakeX[i] && snakeY[snakeY.length - 1] == snakeY[i]) {
            end = true;
        }
    }

    return end;
}

/**
 * Aggiunge una pallina in testa allo snake nella direzione scelta dall'utente.
 */
function scegliTasto(snakeX, snakeY, tasto) {

    switch (tasto) {
        case "ArrowUp":
            //aggiunta testa dello snake
            snakeX[snakeX.length] = snakeX[snakeX.length - 1];
            snakeY[snakeY.length] = snakeY[snakeY.length - 1] - 50;
            break;

        case "ArrowDown":
            //aggiunta testa dello snake
            snakeX[snakeX.length] = snakeX[snakeX.length - 1];
            snakeY[snakeY.length] = snakeY[snakeY.length - 1] + 50;
            break;

        case "ArrowRight":
            //aggiunta testa dello snake
            snakeX[snakeX.length] = snakeX[snakeX.length - 1] + 50;
            snakeY[snakeY.length] = snakeY[snakeY.length - 1];
            break;

        case "ArrowLeft":
            //aggiunta testa dello snake
            snakeX[snakeX.length] = snakeX[snakeX.length - 1] - 50;
            snakeY[snakeY.length] = snakeY[snakeY.length - 1];
            break;

        default:
            break;
    }
    return posTestaSnake;
}

//variabili delle mele casuali
let iCasuale = 0;
let jCasuale = 0;

//tasto precedente e corrente utilizzati per muovere il serpente
let tastoPrecedente = '';
let tastoCorrente = '';

//variabile utilizzata per il game over
let end = false;

//posizione mela
let melaX = 100;
let melaY = 400;

//max posizioni
let maxPosX;
let maxPosY;

function preload() {
    console.info("displayWidth / displayHeight: " + displayWidth + " " + displayHeight);
    console.info("windowWidth / windowHeight: " + windowWidth + " " + windowHeight);
    console.info("pixelDensity: " + pixelDensity());
}

function setup() {
    let canvasNode = document.querySelector('#progettoSnake');
    let cw = Math.floor(canvasNode.parentNode.clientWidth * 0.9);
    let ch = Math.floor(windowHeight * 0.8);
    createCanvas(cw, ch).parent('progettoSnake');
    console.debug(`width: ${cw}, height: ${ch}`);


    creaSnake(snakeX, snakeY);

    // massima posizione visibile X e Y
    maxPosX = Math.floor(cw / 50);
    maxPosY = Math.floor(ch / 50);

    // utilizzato per lo spawn casuale delle mele
    iCasuale = Math.floor(Math.random() * maxPosX);
    jCasuale = Math.floor(Math.random() * maxPosY);
    console.debug(`iCasuale: ${iCasuale}, jCasuale: ${jCasuale}`);

}


function draw() {

    frameRate(10);
    background(176, 224, 230);

    disegnaSnake(snakeX, snakeY);

    melaX = 50 * iCasuale;
    melaY = 50 * jCasuale;

    fill(255, 0, 0);
    circle(melaX, melaY, 25);

    //tasti premuti dall'utente
    tastoPrecedente = tastoCorrente;
    tastoCorrente = key;

    scegliTasto(snakeX, snakeY, tastoCorrente, tastoPrecedente);

    //condizione if per far bloccare lo snake ad inizio gioco
    if (tastoCorrente != '')
        if (snakeX[snakeX.length - 1] == melaX && snakeY[snakeY.length - 1] == melaY) {
            iCasuale = Math.floor(Math.random() * maxPosX);
            jCasuale = Math.floor(Math.random() * maxPosY);
            console.debug(`iCasuale: ${iCasuale}, jCasuale: ${jCasuale}`);

        } else {
            //tolgo il primo elemnto dagli array
            snakeX.shift();
            snakeY.shift();
        }

    //richiamata funzione per la fine dello snake
    end = finale(snakeX, snakeY);

    //scritta game over
    if (end) {
        textSize(150);
        fill(255, 255, 0);
        text("GAME OVER", 170, 450);
        noLoop();
    }
    //console per visualizzare che la dimensione dello snake stia aumentando
    console.info("Snake di lunghezza " + snakeX.length);
}
