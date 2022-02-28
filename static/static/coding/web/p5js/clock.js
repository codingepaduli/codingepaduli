function setup() {
    var canvas = createCanvas(800, 400);
    canvas.parent('clock');
    angleMode(DEGREES);
}

function drawClock(x, y, d, h, m, s) {
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
   
    if (s) { 
        var secondsToDegree = s * 6 - 90;
        arrow(x, y, x + rs * cos(secondsToDegree), y + rs * sin(secondsToDegree));
    }
    
    arrowArc(x, y, r, hoursToDegree, minutesToDegree);
}

function draw() {
    background(5, 0, 100);
    stroke(255);
    noFill();
    
    var h = new Date().getHours();
    var m = new Date().getMinutes();
    var s = new Date().getSeconds();
    
    for (var min = 15; min < 80; min = min + 15) {
        drawClock(min * 10, 120, 120, 3, min);
    }
    
    drawClock(250, 250, 120, s, m);
}
