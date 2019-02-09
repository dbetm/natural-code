var width = 600, height = 400;

void setup() {
    size(width, height);
    background(15, 23, 89);
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

/* Randomly (with different probability) move up, down, left, right */
Walker.prototype.walk = function() {
    var ran = random(1);
    // It will be most likely to move to the up
    if(ran < 0.1) this.x++; // right
    else if(ran < 0.2) this.x--; // left
    else if(ran < 0.4) this.y++; // down
    else this.y--; // up
};

// End: Class

var w = new Walker();

// Infintie loop
void draw() {
    w.walk();
    w.display();
}
