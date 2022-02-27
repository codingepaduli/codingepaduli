function arrow(x1, y1, x2, y2) {
    var teta = 0;
    var b = x2 - x1;
    var h = y2 - y1;
    var d = Math.sqrt(b*b + h*h);
    
    if (x2!=x1) {
        teta = Math.atan(h/b);
    } else {
        teta = (y2>y1) ? HALF_PI : HALF_PI + PI;
    }
    
    if (x2 < x1) {
        teta = teta + PI;
    }
    
    line(x1, y1, x1 + d * Math.cos(teta), y1 + d * Math.sin(teta));
    
    line(x2, y2, x2 - 20 * Math.cos(teta + 0.2), y2 - 20 * Math.sin(teta + 0.2));
    
    line(x2, y2, x2 - 20 * Math.cos(teta - 0.2), y2 - 20 * Math.sin(teta - 0.2));
}

function drawGridPoints(centerX, centerY, gridStep) {
    if (gridStep > 0) {
        for (var r = 0; r < width; r = r + gridStep) {
            for (var c = 0; c < height; c = c + gridStep) {
                point(centerX - r, centerY - c);
                point(centerX - r, centerY + c);
                point(centerX + r, centerY - c);
                point(centerX + r, centerY + c);
            }
        }
    }
}
    
function drawAxes(centerX, centerY, gridStep) {
    arrow(0, centerY, width, centerY);
    arrow(centerX, 0, centerX, height);
}

function drawGrid(centerX, centerY, gridStep) {
    if (gridStep > 0) {
        for (var r = 0; r < width; r = r + gridStep) {
        line(centerX + r, 0, centerX + r, height);
        line(centerX - r, 0, centerX - r, height);
        }
        for (var c = 0; c < height; c = c + gridStep) {
        line(0, centerY + c, width, centerY + c);
        line(0, centerY - c, width, centerY - c);
        }
    }
}

function setup() {
    var canvas = createCanvas(600, 600);
    canvas.parent('axes');
}

function draw() {
    var X = width/2;
    var Y = height/2;
    var step=100;
    
    strokeWeight(3); 
    
    background(200);
    drawAxes(X, Y);
    drawGrid(X, Y, step);
    
    drawGridPoints(X, Y, step);
    
    arrow(100, 100, 0, 0);
    arrow(100, 100, 25, 0);
    arrow(100, 100, 100, 0);
    arrow(100, 100, 165, 0);
    arrow(100, 100, 200, 0);
    
    arrow(100, 100, 0, 25);
    arrow(100, 100, 200, 25);
    
    arrow(100, 100, 200, 65);
    
    arrow(100, 100, 0, 100);
    arrow(100, 100, 200, 100);
    
    
    arrow(100, 100, 0, 165);
    arrow(100, 100, 200, 165);
    
    arrow(100, 100, 0, 200);
    arrow(100, 100, 25, 200);
    arrow(100, 100, 100, 200);
    arrow(100, 100, 165, 200);
    arrow(100, 100, 200, 200);

}
