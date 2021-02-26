class Colore {
    constructor(r, g, b) {
        this.r = r;
        this.g = g;
        this.b = b;
    }
}

class PallinaColorata {
    constructor(x, y, d, c) {
        this.x = x;
        this.y = y;
        this.d = d;
        this.color = c;
    }
}

// Random value between min (inclusive) and max (inclusive)
function getRandomInt(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min + 1) + min);
}

const diameter = 24;
const radius = diameter/2;

let snake = [];
const snakeColor = new Colore(0, 255, 0);
const labirintColor = new Colore(255, 0, 0);
const preyColor = new Colore(0, 0, 255);

let directionKey = "ArrowDown";

let prey = new PallinaColorata(radius*9, radius*9, diameter, preyColor);

function setup() {
    createCanvas(800, 400);

    // snake iniziale con due palline
    snake[0] = new PallinaColorata(radius*3, radius, diameter, snakeColor);
    snake[1] = new PallinaColorata(radius*3, radius*3, diameter, snakeColor);
}

function draw() {
    background(0, 0, 0);

    // disegno le possibili posizioni dello snake
    fill(255, 0, 0);
    for(let X=radius; X<=width-radius; X=X+diameter) {
        for (let Y=radius;Y<=height-radius;Y=Y+diameter) {
            circle(X,Y,diameter);
        }
    }

    // Input: direzione dello snake
    directionKey = key != "" ? key : directionKey;

    // aggiungo una pallina in testa allo snake
    // (la pallina aggiunta ha la stessa posizione (X,Y) della pallina in testa (X,Y))
    fill(snakeColor.r,snakeColor.g,snakeColor.b);
    snake[snake.length] = new PallinaColorata(snake[snake.length-1].x, snake[snake.length-1].y, diameter, snakeColor);

    // valuto la direzione scelta dall'utente
    // e sposto la pallina aggiunta in testa allo snake
    // se direzione SU, la nuova testa avrà coordinata Y = Y - diametro
    // se direzione GIU, la nuova testa avrà coordinata Y = Y + diametro
    // se direzione DX, la nuova testa avrà coordinata X = X + diametro
    // se direzione SX, la nuova testa avrà coordinata X = X - diametro
    switch (directionKey) {
        case "ArrowUp":
            snake[snake.length-1].y = snake[snake.length-1].y - diameter;
            break;
        case "ArrowDown":
            snake[snake.length-1].y = snake[snake.length-1].y + diameter;
            break;
        case "ArrowRight":
            snake[snake.length-1].x = snake[snake.length-1].x + diameter;
            break;
        case "ArrowLeft":
            snake[snake.length-1].x = snake[snake.length-1].x - diameter;
            break;
        default:
    }

    if (prey.x == snake[snake.length-1].x && prey.y == snake[snake.length-1].y) {
        // Se catturo la preda,
        // cambio posizione alla preda
        prey.x = radius + diameter * getRandomInt(0, Math.floor((radius + width)/diameter) -1);
        prey.y = radius + diameter * getRandomInt(0, Math.floor((radius + height)/diameter) -1);
        console.info(`Prey: ${prey.x} ${prey.y}`);
    } else {
        // SE non ho catturato la preda
        // Sposto la coda di un elemento solo
        snake.shift(); // cancella elemento del vettore in posizione 0
    }

    // disegno lo snake
    for (let i=0; i<snake.length; i++) {
        fill(snake[i].color.r,snake[i].color.g,snake[i].color.b);
        circle(snake[i].x,snake[i].y,snake[i].d);
    }
    console.info(`Snake length: ${snake.length}`);

    // disegno la preda
    fill(preyColor.r,preyColor.g,preyColor.b);
    circle(prey.x,prey.y,prey.d);
}
