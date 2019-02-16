var width = 800, height = 300;
var standardDeviation = 2, mean = 0;

void setup() {
    size(width, height);
    background(0);
}

// Constructor
var Walker = function() {
    this.x = width/2;
    this.y = height/2;
};

// Method: Display in canvas-screen
Walker.prototype.display = function() {
    strokeWeight(floor(random(4))+1);
    stroke(floor(random(256))); // gray scales
    point(this.x, this.y);
};

// Method: Walk
// Randomly move up, down, left, right, or stay in one place
Walker.prototype.walk = function() {
    var xStepSize = randomGaussian() * standardDeviation + mean;
    var yStepSize = randomGaussian() * standardDeviation + mean;

    this.x += xStepSize;
    this.x %= width;
    this.y += yStepSize;
    this.y %= height;
};

// Instance Walker class
var w = new Walker();

void draw() {
    w.display();
    w.walk();
}
