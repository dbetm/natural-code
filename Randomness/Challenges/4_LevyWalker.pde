var width = 800, height = 400;

void setup() {
    size(width, height);
    background(0);
}

// Greater chance of taking small steps
// Generates random numbers using the Monte Carlo Method
var monteCarlo = function() {
    while(true) {
        var r1 = random(1);
        var prob = r1;
        var r2 = random(1);
        if(r2 > prob) return r1;
    }
};

// Constructor
var Walker = function() {
    this.x = width/2;
    this.y = height/2;
};

Walker.prototype.display = function() {
    strokeWeight(2);
    stroke(5, 255, 210);
    point(this.x, this.y);
};

// Randomly move up, down, left, right, or stay in one place
Walker.prototype.walk = function() {
    var stepSize = monteCarlo() * 15;
    var xStepSize = random(-stepSize, stepSize);
    var yStepSize = random(-stepSize, stepSize);
    this.x += xStepSize;
    this.y += yStepSize;
};

// Instance
var w = new Walker();

void draw() {
    w.walk();
    w.display();
}
