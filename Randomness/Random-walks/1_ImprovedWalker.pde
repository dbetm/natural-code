var width = 600, height = 400;

void setup() {
    size(width, height);
    background(0, 0, 0);
}

// Begin: Class

// Constructor
var Walker = function() {
    this.x = width / 2;
    this.y = height / 2;
};

Walker.prototype.display = function() {
    stroke(255, 255, 255);
    point(this.x, this.y);
};

// More posibilities for move
Walker.prototype.walk = function() {
    // -1, 0 ó 1
    var stepX = floor(random(3))-1;
    var stepY = floor(random(3))-1;
    this.x += stepX;
    this.y += stepY;
};

// End: Class

var w = new Walker();

// Infintie loop
void draw() {
    w.walk();
    w.display();
}
