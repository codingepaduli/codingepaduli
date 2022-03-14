function setup() {
    var canvas = createCanvas(1400, 800);
    canvas.parent('clock');
    angleMode(DEGREES);
}

function drawClock(x, y, d, h, m, s, clockWise) {
    push(); // Start a new drawing state

    var r = d/2;

    var rh = r * 60 / 100;
    var rm = r * 80 / 100;
    var rs = r * 95 / 100;

    circle(x, y, d);

    textAlign(CENTER, CENTER);
    for (var hour = 1; hour <= 12; hour = hour+1) {
        text(hour, x + rm * cos(hour*30-90), y + rm * sin(hour*30-90));
    }

    var hoursToDegree = h * 30 - 90;
    var minutesToDegree = m * 6 - 90;

    arrow(x, y, x + rh * cos(hoursToDegree), y + rh * sin(hoursToDegree));
    arrow(x, y, x + rm * cos(minutesToDegree), y + rm * sin(minutesToDegree));

    if (s != null && s >= 0 && s < 60) {
        var secondsToDegree = s * 6 - 90;
        arrow(x, y, x + rs * cos(secondsToDegree), y + rs * sin(secondsToDegree));
    }

    if (clockWise) {
      arrowArc(x, y, r, hoursToDegree, minutesToDegree, clockWise, false, true);
    } else {
      //arrowArc(x, y, r, minutesToDegree, hoursToDegree);
      arrowArc(x, y, r, hoursToDegree, minutesToDegree, clockWise, false, true);
    }

    pop();  // Restore original state
}

function draw() {
    background('white');
    stroke(10);

    fill('black');
    textSize(36);
    text("Angoli misurati in senso orario (clockwise)", 80, 50);
    text("Angoli misurati in senso antiorario (counterclockwise)", 20, 300);
    text("Orologio analogico funzionante", 20, 550);

    noFill();
    textSize(14);

    // clockwise arc
    drawClock(80, 150, 120, 3, 15+7.5, null, true);
    text("Angolo di 45 gradi",  20, 150+80);

    drawClock(240, 150, 120, 3, 15+15, null, true);
    text("Angolo di 90 gradi",  180, 150+80);

    drawClock(400, 150, 120, 3, 15+15+7.5, null, true);
    text("Angolo di 135 gradi",  340, 150+80);

    drawClock(560, 150, 120, 3, 15+30, null, true);
    text("Angolo di 180 gradi",  500, 150+80);

    drawClock(720, 150, 120, 3, 15+45, null, true);
    text("Angolo di 270 gradi",  660, 150+80);

    drawClock(880, 150, 120, 3, 15+60, null, true);
    text("Angolo di 360 gradi",  820, 150+80);

    // counterclockwise arc
    drawClock(80, 400, 120, 3, 15-7.5, null, false);
    text("Angolo di 45 gradi",  20, 400+80);

    drawClock(240, 400, 120, 3, 0, null, false);
    text("Angolo di 90 gradi",  180, 400+80);

    drawClock(400, 400, 120, 3, 60-7.5, null, false);
    text("Angolo di 135 gradi",  340, 400+80);

    drawClock(560, 400, 120, 3, 60-15, null, false);
    text("Angolo di 180 gradi",  500, 400+80);

    drawClock(720, 400, 120, 3, 60-30, null, false);
    text("Angolo di 270 gradi",  660, 400+80);

    drawClock(880, 400, 120, 3, 15+60, null, false);
    text("Angolo di 360 gradi",  820, 400+80);

    var h = new Date().getHours();
    var m = new Date().getMinutes();
    var s = new Date().getSeconds();

    drawClock(250, 650, 120, h, m, s, false);
}
