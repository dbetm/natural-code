var width = 600, height = 400;

void setup() {
    size(width, height);
    background(255);
    frameRate(1);
}

/* A function that will generate random numbers,
but prefer higher numbers.
Named after the Monte Carlo Method.
*/
var monteCarlo = function() {
    // We do this "forever" until we find a
    // qualifying random value
    while(true) {
        // Pick a random number
        var r1 = random(1);
        // Assign a probability
        var probability = r1;
        // Pick a second random value
        var r2 = random(1);
        // Does it qualify? If so, we're done
        if(r2 < probability) return r1;
    }
};

var xPos = [];

var refresh = function() {
    // Generate 10 random numbers and size ellipses based on them
    for(var i = 0; i < 10; i++) {
        var num = monteCarlo();
        println(num);
        xPos.push(num);
    }
};

void draw() {
    refresh();
    stroke(0);
    fill(33, 184, 175, 125);
    for(var i = 0; i < xPos.length; i++) {
        var radius = xPos[i]*30;
        ellipse(xPos[i]*(width-15), random(height-15)+15, radius, radius);
    }
}
